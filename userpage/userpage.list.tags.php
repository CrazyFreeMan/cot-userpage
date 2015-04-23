<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=page.list.tags
Tags=page.list.tpl:{LIST_USERPAGES}
[END_COT_EXT]
==================== */
require_once  cot_langfile('userpage', 'plug');
$mypages = "<a href=".cot_url('page', $list_url_path + array('authorid' => $usr['id'])).">".$L['show_my_pages']."</a>";
$t->assign("LIST_USERPAGES", $mypages);