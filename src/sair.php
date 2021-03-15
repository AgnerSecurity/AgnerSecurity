<?php
// Inicia a sessão
session_start();

// Destrói a sessão
$_SESSION = array();
session_destroy();

// Redireciona para o login.php
header('location: ../login.php');
