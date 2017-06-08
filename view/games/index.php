<!DOCTYPE html>
<html>
<head>
	<title>Publishers</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

</body>
</html>

<table border="1">
	<tr>
		<th>Publishers</th>
		
	</tr>
	<?php foreach($publishers as $publisher) { ?>
	<tr>
		<td><?= $publisher["publisher"]; ?></td>
		<td><?php echo '<a href="' . 'games/show/' . $publisher['id'] . '">Show</a>';  ?></td>
		<td><?php echo '<a href="' . 'games/create/' . '">Add</a>';  ?></td>
	</tr>
	<?php } ?>
</table>