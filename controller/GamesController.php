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
	render("games/create");
	if (isset( $_POST['name'])) 
	{
		$name = $_POST['name'];
		$price = $_POST['price'];
		$publishers_id = $_POST['publishers_id'];
		
		$result = createGame($name, $price, $publishers_id);

		if($result == "Successfully")
		{
			header('location: /games');
		}
	}
}


