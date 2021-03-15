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
<!doctype html>
<html><head>
<meta http-equiv="refresh" content="30; url=/dashboard/index.php">
    <meta charset="utf-8">
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="RR64">

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />

    <link href="css/main.css" rel="stylesheet">
    <link href="css/font-style.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">

    <script type="text/javascript" src="js/jquery.js"></script>    
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="js/lineandbars.js"></script>
    
	<script type="text/javascript" src="js/dash-charts.js"></script>
	<script type="text/javascript" src="js/gauge.js"></script>
	
	<!-- NOTY JAVASCRIPT -->
	<script type="text/javascript" src="js/noty/jquery.noty.js"></script>
	<script type="text/javascript" src="js/noty/layouts/top.js"></script>
	<script type="text/javascript" src="js/noty/layouts/topLeft.js"></script>
	<script type="text/javascript" src="js/noty/layouts/topRight.js"></script>
	<script type="text/javascript" src="js/noty/layouts/topCenter.js"></script>
	
	<!-- You can add more layouts if you want -->
	<script type="text/javascript" src="js/noty/themes/default.js"></script>
    <!-- <script type="text/javascript" src="assets/js/dash-noty.js"></script> This is a Noty bubble when you init the theme-->
	<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>
	<script src="js/jquery.flexslider.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/admin.js"></script>
      
    <style type="text/css">
      body {
        padding-top: 60px;
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
   

  	<!-- Google Fonts call. Font Used Open Sans & Raleway -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

<script type="text/javascript">
    $(document).ready(function () {

        $("#btn-blog-next").click(function () {
            $('#blogCarousel').carousel('next')
        });
        $("#btn-blog-prev").click(function () {
            $('#blogCarousel').carousel('prev')
        });

        $("#btn-client-next").click(function () {
            $('#clientCarousel').carousel('next')
        });
        $("#btn-client-prev").click(function () {
            $('#clientCarousel').carousel('prev')
        });

    });

    $(window).load(function () {

        $('.flexslider').flexslider({
            animation: "slide",
            slideshow: true,
            start: function (slider) {
                $('body').removeClass('loading');
            }
        });
    });

</script>    
  </head>
  <body>
  
  	<!-- NAVIGATION MENU -->

   

    <div class="container">

	  <!-- FIRST ROW OF BLOCKS -->     
      <div class="row">

      <!-- USER PROFILE BLOCK -->
        <div class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
	      		<dtitle>Rede escaneada</dtitle>
	      		<hr>
				<div class="thumbnail">
					<img src="images/logoprovedor.png" alt="" class="img-circle">
				</div><!-- /thumbnail -->
				<h1><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/nomeempresa.txt "); ?></h1>
				<h3><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/localempresa.txt "); ?></h3>
				<br>
				<h3><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/meu_asn.txt "); ?></h3>
				</div>
        </div>

      <!-- DONUT CHART BLOCK -->
        <div  onclick="window.location='/dashboard/mikrotik/index.php';" class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
		  		<dtitle>Escaneamento dos mikrotiks na rede</dtitle>
		  		<hr>
	        	<div id="load"></div>
	        	<h3>Escaneamento dos Mikrotiks</h3> 
				<h2>Ver mais detalhes</h2>
				
			</div>
        </div>
		

      <!-- DONUT CHART BLOCK -->
        <div onclick="window.location='/dashboard/tcpudp.php';" class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
		  		<dtitle>Escaneamento das portas da rede</dtitle>
		  		<hr>
	        	<div id="space"></div>
	        	<h3>Escaneamento das portas</h3>
				<h2>Ver mais detalhes</h2>
			</div>
        </div>
        
        <div class="col-sm-3 col-lg-3">

      <!-- LOCAL TIME BLOCK -->
      		

      <!-- SERVER UPTIME -->
			
		
      </div><!-- /row -->
      
      
	  <!-- SECOND ROW OF BLOCKS -->     
 
      

	  <!-- GRAPH CHART - lineandbars.js file -->     
        <div onclick="window.location='/dashboard/honeypot/index.php';" class="col-sm-3 col-lg-3">
      		<div class="dash-unit">
      		<dtitle>Users e ips que tentam invadir sua rede</dtitle>
      		<hr>
			    <div class="section-graph">
			      <div id="importantchart"></div>
			     
	        	<h3>Ips tentando invadir sua rede</h3>
				<h2>Ver mais detalhes</h2>
			    </div>
			</div>
        </div>
		

	  <!-- LAST MONTH REVENUE -->     
       
		
		
		
      </div>
     <div class="half-unit">
	      		<dtitle>Status do servidor</dtitle>
	      		<hr>
	      		<div class="cont">
					<p><img src="images/up.png" alt=""> <bold>Servidor UP desde: <?php echo shell_exec(" uptime -s "); ?> </bold> </p>
				</div>
				
			

        </div>
       <div class="half-unit">
	      		<dtitle>Último scan feito</dtitle>
	      		<hr>
		      		<div class="clockcenter">
			      		<h2><?php echo shell_exec(" sed -n '1p'  /var/www/html/nmap/portasespecificas/data.txt "); ?></h2>
		      		</div>
			</div>
      
	</div> <!-- /container -->
	
	<div id="footerwrap">
      	<footer class="clearfix"></footer>
      	<div class="container">
      		<div class="row">
      			<div class="col-sm-12 col-lg-12">
      			<p><img src="images/logo.png" alt=""></p>
      			<p>Agner Security - Todos os direitos reservados 2021</p>
				<p>Ferramenta criada por Luis Carlos Agner Claro</p>
      			</div>

      		</div><!-- /row -->
      	</div><!-- /container -->		
	</div><!-- /footerwrap -->
          
</body></html>
