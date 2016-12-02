<?php

defined('_JEXEC') or die;

class UsersModelUserAdmins extends JModelList{

	public function __construct($config = array()){

		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'a.id',
				'name', 'a.name',
				'username', 'a.username',
				'email', 'a.email',
				'block', 'a.block',
				'sendEmail', 'a.sendEmail',
				'registerDate', 'a.registerDate',
				'lastvisitDate', 'a.lastvisitDate',
			);
		}

		parent::__construct($config);

	}

	protected function populateState($ordering = null, $direction = null){
	
		// Initialise variables.
		$app = JFactory::getApplication('administrator');

		// Adjust the context to support modal layouts.
		if ($layout = JRequest::getVar('layout', 'default')) {
			$this->context .= '.'.$layout;
		}

		// Load the filter state.
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		$state = $this->getUserStateFromRequest($this->context.'.filter.state', 'filter_state', '', 'array');
		$this->setState('filter.state', $state);
	
		// Load the parameters.
		$params		= JComponentHelper::getParams('com_users');
		$this->setState('params', $params);

		// List state information.
		parent::populateState('a.name', 'asc');

	}

	protected function getStoreId($id = ''){

		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.state');
		
		return parent::getStoreId($id);

	}

	public function getItems(){
	
		// Get a storage key.
		$store = $this->getStoreId();

		// Try to load the data from internal storage.
		if(empty($this->cache[$store])) {

			$groups = $this->getState('filter.groups');
			$groupId = $this->getState('filter.group_id');

			if (isset($groups) && (empty($groups) || $groupId && !in_array($groupId, $groups))) {
				$items = array();

			}else{
				$items = parent::getItems();
			}

			// Bail out on an error or empty list.
			if (empty($items)) {

				$this->cache[$store] = $items;

				return $items;

			}

			// Joining the groups with the main query is a performance hog.
			// Find the information only on the result set.
			// First pass: get list of the user id's and reset the counts.

			$userIds = array();

			foreach ($items as $item){

				$userIds[] = (int) $item->id;

				$item->group_count = 0;
				$item->group_names = '';

			}

			// Get the counts from the database only for the users in the list.
			$db		= $this->getDbo();
			$query = $db->getQuery(true); 

			// Join over the group mapping table.
			$query->select('map.user_id, COUNT(map.group_id) AS group_count')
				->from('#__user_usergroup_map AS map')
				->where('map.user_id IN ('.implode(',', $userIds).')')
				->group('map.user_id')
				// Join over the user groups table.
				->select('GROUP_CONCAT(g2.title SEPARATOR '.$db->Quote("\n").') AS group_names')
				->join('LEFT', '#__usergroups AS g2 ON g2.id = map.group_id');
			$db->setQuery($query);

			// Load the counts into an array indexed on the user id field.
			$userGroups = $db->loadObjectList('user_id');
			$error = $db->getErrorMsg();

			if ($error) {
				$this->setError($error);

				return false;

			}

			// Second pass: collect the group counts into the master items array.
			foreach ($items as &$item){

				if (isset($userGroups[$item->id])) {
					$item->group_count = $userGroups[$item->id]->group_count;
					$item->group_names = $userGroups[$item->id]->group_names;
				}

//				$item->empresa = $this->companiesbyuserid($item->id); 
			
			}

			// Add the items to the internal cache.
			$this->cache[$store] = $items;

		}
	
		return $this->cache[$store];

	}

	protected function getListQuery(){
		
		$my = JFactory::getUser();
			
		// Create a new query object.
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				'a.*'
			)
		);

		$query->from('`#__users` AS a');
			
		// If the model is set to check item state, add to the query.
		$state = $this->getState('filter.state');

		if ($state = $this->getState('filter.state')) {
			if($state = $this->separador($state, $nombre))$query->where('a.block IN '.$state);
		}
		
		$query->where('a.id not in (461,467)');
		//$query->where('a.core_compania = '. $my->core_compania);

		// Filter the items over the search string if set.
		if ($this->getState('filter.search') != '') {
			
			// Escape the search token.
			$token	= $db->Quote('%'.$db->getEscaped($this->getState('filter.search')).'%');

			// Compile the different search clauses.
			$searches	= array();
			$searches[]	= 'a.name LIKE '.$token;
			$searches[]	= 'a.username LIKE '.$token;
			$searches[]	= 'a.email LIKE '.$token;

			// Add the clauses to the query.
			$query->where('('.implode(' OR ', $searches).')');

		}
		
		// Add the list ordering clause.
		$query->order($db->qn($db->escape($this->getState('list.ordering', 'a.name'))) . ' ' . $db->escape($this->getState('list.direction', 'ASC')));
			
		return $query;

	}

}

