<?php
// iniciar uma sessão
session_start();
 
if (empty($_SESSION['id'])) {
 
	// não existe sessão iniciada
	// neste caso, levamos o utilizador para a página de login
	header('Location: /login.php');
	exit();
}
?>
<meta http-equiv="refresh" content="0; url=/dashboard/index.php">
