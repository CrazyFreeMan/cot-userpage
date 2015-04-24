<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=page.list.query
[END_COT_EXT]
==================== */

if($cfg['plugin']['userpage']['only_for_author']){
	$page_owner = cot_import('authorid', 'G', 'TXT');	
	($page_owner == $usr['id']) ? $where['owner'] ='page_ownerid = ' . $usr['id'] : '' ;
}else{
	$page_owner = cot_import('authorid', 'G', 'INT');
	($page_owner > 0) ? $where['owner'] ='page_ownerid = ' . $page_owner : '' ;	
}