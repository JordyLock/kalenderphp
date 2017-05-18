<?php

function getPublishers() 
{
		$db = openDatabaseConnection();
		$query = $db->prepare("SELECT * FROM publishers");
		$query->execute();

		return $query->fetchAll(); 

}
Function getGamesFromPublisher($publishers_id){ 
	$db = openDatabaseConnection();
	$query = $db->prepare("SELECT * FROM games_db WHERE publishers_id = :publishers_id");  
	$query->bindParam(":publishers_id", $publishers_id);

	$query->execute();

	return $query->fetchAll();


}
function createGames() 
{

}

function deleteGames() 
{

}

function editGames() 
{

}