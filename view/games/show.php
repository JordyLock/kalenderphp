<!DOCTYPE html>
<html>
<head>
	<title>Show</title>
	<link rel="stylesheet" type="text/css" href="../../public/css/style.css">
</head>
<body>
<table border="1">
	<tr>
	<th>Games</th>	
	</tr>
		<tr>
			<?php foreach($games as $game) { ?>
			<td><?= $game["name"]; ?></td>
			
		</tr>
<?php } ?>

</table>
</body>
</html>