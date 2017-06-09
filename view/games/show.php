<!DOCTYPE html>
<html>
<head>
	<title>Show</title>
	<link rel="stylesheet" type="text/css" href="../../public/css/style.css">
	<script type="text/javascript">
		function checkDelete() {
			return confirm('Are you sure?');
		}
	</script>
</head>
<body>
<h1><a href="javascript:history.back(1)">Back</a></h1>
<table border="1">
	<tr>
	<th>Games</th>	
	<th>Price</th>

	</tr>
		<tr>
			<?php foreach($games as $game) { ?>
			<td><?= $game["name"]; ?></td>
			<td><?= $game["price"]; ?></td>
			<td><?php echo '<a href="' . URL . '/games/edit/' . $game['id'] . '">Edit</a>';  ?></td>
			<td><?php echo '<a href="' . URL . '/games/delete/' . $game['id'] . '"onclick="return checkDelete()"' . '>Delete</a>';  ?></td>
			
		</tr>
<?php } ?>

</table>
</body>
</html>