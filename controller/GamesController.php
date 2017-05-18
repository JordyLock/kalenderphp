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

}
function createSave()
{
	# code...
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
