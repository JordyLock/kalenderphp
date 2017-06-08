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
	return "Success";
	
}
function takeGame($id){
	$db = openDatabaseConnection();

	$query = $db->prepare("SELECT * FROM games_db WHERE id = (:id)");
    $query->bindParam(':id', $id);
    $query->execute();

    return $query->fetch(PDO::FETCH_ASSOC);
}
function deleteGame() 
{

}

function editGame ($id, $game, $publishers_id, $price) {
	
	$db = openDatabaseConnection();

	$sql = "UPDATE games_db SET name = (:name), publishers_id = (:publishers_id), price = (:price) WHERE id = (:id)";
	$query = $db->prepare($sql);
	$query->bindParam(':id', $id);
	$query->bindParam(':name', $game);
	$query->bindParam(':publishers_id', $publishers_id);
	$query->bindParam(':price', $price);
	$query->execute();
	$db = null;
	return "Yes";
}

