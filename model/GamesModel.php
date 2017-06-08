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
function createGame($name, $price, $publishers_id) 
{
$db = openDatabaseConnection();
	
	$sql = "INSERT INTO games_db (name, price, publishers_id) VALUES (:name, :price, :publishers_id)";


	$stmt = $db->prepare($sql);
	$stmt->bindParam(':name', $name);
	$stmt->bindParam(':price', $price);
	$stmt->bindParam(':publishers_id', $publishers_id);


	$stmt->execute();
	$db = null;
	return "Successfully";
	
}

function deleteGame() 
{

}

function editGames() 
{

}