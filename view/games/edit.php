<!DOCTYPE html>
<html>
<head>
	<title>Publishers</title>
	<link rel="stylesheet" type="text/css" href="../../public/css/style.css">
</head>
<body>

</body>
</html>

<?php echo '<form action="' . URL . 'games/editSave' . '" method="post">'; ?>
<table>
	<tr>
		<th>Edit</th>
		
	</tr>
	<tr>
		
			<td>Name: <input type="text" name="name"><br><br>
			Price: <input type="text" name="price"><br><br>
			
			<input type="number" hidden min="1" max="7"  value="<?= $games['publishers_id'] ?>" name="publishers_id">
			<input type="number" hidden name="id" value="<?= $games['id'] ?>">
			<input type="submit" value="submit"></td><br><br>
	</tr>
</table>