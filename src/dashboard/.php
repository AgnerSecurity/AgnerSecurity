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
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="refresh" content="60; url=/dashboard/snmp.php">
  <title>Portas SNMP abertas</title>
  <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<h1><span class="blue"></span><span class="blue"></span> <span class="yellow">Portas Abertas</pan></h1>
<h2>Tabela com IPS com <a target="_blank">Portas SNMP abertas na rede</a></h2>



<table class="container">
	<thead>
		<tr>
			<th><h1>Ips com portas 161 abertas</h1></th>
		
			<th><h1>Data de escaneamento</h1></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
		<tr>
			<td><?php echo shell_exec(" sed -n '2p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
		<tr>
			<td><?php echo shell_exec(" sed -n '3p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
    <tr>
			<td><?php echo shell_exec(" sed -n '4p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
    <tr>
			<td><?php echo shell_exec(" sed -n '5p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
    <tr>
			<td><?php echo shell_exec(" sed -n '6p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '7p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '8p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '9p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '10p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '11p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '12p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '13p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '14p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	 <tr>
			<td><?php echo shell_exec(" sed -n '15p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	<tr>
			<td><?php echo shell_exec(" sed -n '16p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	<tr>
			<td><?php echo shell_exec(" sed -n '17p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	<tr>
			<td><?php echo shell_exec(" sed -n '18p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	<tr>
			<td><?php echo shell_exec(" sed -n '19p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	<tr>
			<td><?php echo shell_exec(" sed -n '20p'  /var/www/html/nmap/portasespecificas/nmap161.txt "); ?></td>
			<td><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></td>
		</tr>
	</tbody>

</table>
<h1 align='center' onClick="window.print()"> Click aqui para salvar relatório em PDF </h1>
<h1 align='center' onclick="window.location='/dashboard/portas.php';"> Click aqui para voltar ao menu </h1>
<div id="footerwrap">
      	<footer class="clearfix"></footer>
      	<div class="container">
      		<div class="row">
      			<div class="col-sm-12 col-lg-12">
      			<p align='center'><img src="/dashboard/images/logo.png"></p>
      			<p align='center'>Agner Security - Todos os direitos reservados 2020</p>
					<p align='center' onclick="window.location='https://br.linkedin.com/in/luiscarlosagnerclaro';">Criado por Luis Carlos Agner Claro</p>
      			</div>

      		</div><!-- /row -->
      	</div><!-- /container -->		
	</div><!-- /footerwrap -->
<!-- partial -->
  
</body>
</html>
