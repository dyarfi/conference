<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
        
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle navbar-inverse" data-toggle="collapse" data-target=".navbar-main-collapse">
				<i class="fa fa-bars fa-inverse"></i>
			</button>
			<a class="logo" href="<?=base_url();?>">
				<img class="img-responsive" src="<?=base_url();?>assets/static/img/logo.png"/>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
			  <li class="active"><a href="<?php echo base_url();?>" title="Home">Home</a></li>
			  <li><a href="#about">About</a></li>
			  <li><a href="#service">Service</a></li>
			  <?php 
              if (!$this->participant) { ?>
                <li><a href="<?php echo base_url('account');?>">Account</a></li>
              <?php 
              } else {
              ?>      
                <li><a href="<?php echo base_url('account/dashboard');?>"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
                <li><a href="<?php echo base_url('account/logout');?>"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
              
              <?php } ?>
			  <!--<li><a href="#contact">Contact</a></li>-->
			  <!--li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">Example menu</a></li>
				  <li><a href="#">Example menu</a></li>
				  <li><a href="#">Example menu</a></li>
				</ul>
			  </li-->
			</ul>
		</div>
		
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>