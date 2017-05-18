<?php

require(ROOT . "model/birthdaymodel.php");

function index()
{
	render('birthday/index', array(
		'birthdays' => getAllBirthdays()
	));
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
