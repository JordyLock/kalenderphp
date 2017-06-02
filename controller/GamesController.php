<?php

Require(ROOT . "model/GamesModel.php");

function index()
{
	
	render ('games/index', array('publishers' =>getPublishers()))
;

}

function show($publishers_id){ 
	render ("games/show", array (
   "games"=> getGamesFromPublisher($publishers_id)));  


}
function create() 
{
render ("games/create");
}
function createsave()
{
	render ("games/create");
}

function edit($id)
{

}

function editSave()
{

}

function delete()
{

}
function deleteSave()
{
	# code...
}
