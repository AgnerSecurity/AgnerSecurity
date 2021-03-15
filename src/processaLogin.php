<?php
// começar ou retomar uma sessão
session_start();
 if (empty($_POST)) {
?>
	<meta http-equiv="refresh" content="0; URL='login.php '"/>
<?php
	}
// se vier um pedido para login
if (!empty($_POST)) {
 
	// estabelecer ligação com a base de dados
	mysql_connect('127.0.0.1', 'root', 'tE9e!uHvDvB1') or die(mysql_error());
	mysql_select_db('users_login');
 
	// receber o pedido de login com segurança
	$username = mysql_real_escape_string($_POST['username']);
	$password = sha1($_POST['password']);
 
	// verificar o utilizador em questão (pretendemos obter uma única linha de registos)
	$login = mysql_query("SELECT id, username FROM users WHERE username = '$username' AND password = '$password'");
	

 
	if ($login && mysql_num_rows($login) == 1) {
 
		// o utilizador está correctamente validado
		// guardamos as suas informações numa sessão
		$_SESSION['id'] = mysql_result($login, 0, 0);
		$_SESSION['username'] = mysql_result($login, 0, 1);
 ?>
		<meta http-equiv="refresh" content="0; URL='/dashboard/index.php '"/>
		<?php
	} else {
  ?>     
		
		<meta http-equiv="refresh" content="0; URL='/login.php '"/>
		
		<?php
	}
}
?>
