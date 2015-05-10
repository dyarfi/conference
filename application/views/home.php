<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<!-- Section: intro -->
<section id="intro" data-speed="0.2" class="intro parallax-window" data-parallax="scroll" data-image-src="">
    <!--div class="page-scroll wow">
		<a href="#service" class="btn btn-circle wow animated bounceInUp" data-wow-delay="0.1s">
		    <i class="fa fa-angle-double-down animated"></i>
		</a> 
    </div-->
    <div class="container">
            <!--<h2><?php //echo url_title(strtolower($conference->subject), '-');?></h2>-->        
            <div class="col-lg-8 col-md-8 col-sm-8 text-left">
            <h2 class="page-header text-center"><?php echo $conference->name;?></h2>
            <h3 class="text-center capitalize"><?php echo $conference->subject;?></h3>
            <?php if($conference->synopsis) { ?>
                <div class="lead"><?php echo $conference->synopsis;?></div><br/>
            <?php } ?>
            <?php if($conference->photo) { ?> 
                <div class="lead">
                    <img class="img-thumbnail" src="<?php echo base_url('uploads/conferences').'/'.$conference->photo; ?>"/>
                </div>
            <?php } ?>
            <?php 
                echo $conference->description;
            ?>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="boxed-grey">
                    <fieldset><legend>Conference Date</legend>
                    <?php echo date('d - M - Y',strtotime($conference->open_date)); ?>
                        
                    <?php if($conference->messages) { ?>
                        <div><?php echo strip_tags($conference->messages);?></div><br/>
                    <?php } ?>
                    </fieldset>     
                    
                    <fieldset><legend>Other Activities</legend>
                    <?php if($conference->messages) { ?>
                        <div><?php echo strip_tags($conference->messages);?></div><br/>
                    <?php } ?>
                    </fieldset>     
                    
                    <fieldset><legend>Important Dates</legend>
                    <?php if($conference->messages) { ?>
                        <div><?php echo strip_tags($conference->messages);?></div><br/>
                    <?php } ?>
                    </fieldset>
                    <?php 
                    if ($this->participant) { ?>
                    <div>
                        <a href="<?php echo base_url('account/dashboard');?>" class="btn btn-primary">My Dashboard</a>
                    </div>
                    <?php } else { ?>
                    <div>
                        <a href="<?php echo base_url('account/register');?>" class="btn btn-primary">Join the Conference</a>
                    </div>
                    <?php } ?>
                </div>
            </div>
    </div>
</section>
<!-- /Section: intro -->

<?php if ($informations) { ?>
<section id="information">
	<h3 class="text-center">Information</h3>
	<div class="row-fluid clearfix">
		<div class="col-lg-12 col-md-12 col-sm-12 column">
			<div class="row-fluid">

				<div class="row-fluid control-handler">
					<div class="pull-right clearfix">
						<a class="right carousel-control" href="#myCarousel3" data-slide="prev">
							<span class="glyphicon glyphicon-backward">PREV</span>
						</a>
						<a class="left carousel-control" href="#myCarousel3" data-slide="next">
							<span class="glyphicon glyphicon-play">NEXT</span>
						</a>
					</div>	
				</div>	
					
				<div id="myCarousel3" class="carousel-bot slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="item active">
							<?php foreach ($informations as $information) { ?>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="thumbnail">
										<div class="thumb-holder">
											<?php if ($information->cover) { ?>
												<div style="max-width:100%;height:180px;overflow:hidden;margin:0 auto 10px auto" class="img-rounded"><img class="img-responsive" src="<?php echo base_url('uploads/informations').'/'.$information->cover;?>"/></div>
											<?php } ?>
										</div>
										<div class="caption">
											<h4><?php echo $information->subject;?></h4>
											<!--div class="clearfix history btn-sm">
												<span class="pull-left"><span class="glyphicon glyphicon-time"></span> 03 DEC 2014</span>
												<span class="pull-right"><span class="glyphicon glyphicon-edit"></span> JANE DOE</span>
											</div-->
											<div><?php echo word_limiter(strip_tags($information->description,'<strong><b>'));?></div>
											<div>
												<a class="btn-link" href="<?php echo base_url('information') .'/'. $information->name;?>">Read More</a>
											</div>
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>	
				</div>

			</div>
		</div>
	</div>
</section>	
<?php } ?>

<?php if ($speakers) { ?>
<section id="speakers">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<h3 class="text-center">Speakers</h3>
			<?php foreach ($speakers as $speaker) { ?>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<h5><?php echo $speaker->subject;?></h5>
					<?php if ($speaker->photo) { ?>
						<div style="max-width:100%;height:180px;overflow:hidden;margin:0 auto 10px auto" class="img-rounded"><img class="img-responsive" src="<?php echo base_url('uploads/speakers').'/'.$speaker->photo;?>"/></div>
					<?php } ?>
					<div class="text-left">
						<?php echo word_limiter(strip_tags($speaker->biography,'<strong><b>'));?>
						<a class="" href="<?php echo base_url('information') .'/'. $speaker->name;?>">Detail</a>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</section>	
<?php } ?>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
	<div class="modal-content">
	  <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">We're hiring!</h4>
	  </div>
	  <div class="modal-body">

	<div class="vacancy-list-holder clearfix">
		<div class="col-sm-3 col-md-3">
			<div class="service-box">
				<div class="service-desc">
					<h5>Account Manager</h5>
					<p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
				</div>
				<a href="<?=base_url();?>vacancy/apply" data-fancybox-type="ajax" class="btn btn-danger btn-sm apply-btn"/>Apply</a>
	</div>
    </div>
		<div class="col-sm-3 col-md-3">
	<div class="service-box">
				<div class="service-desc">
					<h5>Creative Director</h5>
					<p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
				</div>
				<a href="<?=base_url();?>vacancy/apply" data-fancybox-type="ajax" class="btn btn-danger btn-sm apply-btn"/>Apply</a>
	</div>
    </div>
		<div class="col-sm-3 col-md-3">
	<div class="service-box">
				<div class="service-desc">
					<h5>System Analyst</h5>
					<p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
				</div>

				<a href="<?=base_url();?>vacancy/apply" data-fancybox-type="ajax" class="btn btn-danger btn-sm apply-btn"/>Apply</a>
	</div>
    </div>
		<div class="col-sm-3 col-md-3">
	<div class="service-box">
				<div class="service-desc">
					<h5>Cloud System</h5>
					<p>Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.</p>
				</div>

				<a href="<?=base_url();?>vacancy/apply" data-fancybox-type="ajax" class="btn btn-danger btn-sm apply-btn"/>Apply</a>
	</div>
    </div>
	</div>  

		  <div class="vacancy-form-holder">
				<div class="boxed-grey">							
					<h4>Apply vacancy for <span class="vacancy-title"></span>
				   <a href="javascript:;" class="btn btn-link btn-sm pull-right back">back <span class="fa fa-chevron-right"></span></a>
				  </h4>				
				  <form id="vacancy-form" action="" class="" method="POST">
					  <div class="row">
						  <div class="col-md-6">
							  <div class="form-group">
								  <label for="name">Name</label>
								  <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
							  </div>
							  <div class="form-group">
								  <label for="email">Email Address</label>
								  <div class="input-group">
									  <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
									  </span>
									  <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
							  </div>
							  <!--div class="form-group">
								  <label for="subject">
									  Subject</label>
								  <select id="subject" name="subject" class="form-control" required="required">
									  <option value="na" selected="">Choose One:</option>
									  <option value="service">General Customer Service</option>
									  <option value="suggestions">Suggestions</option>
									  <option value="product">Product Support</option>
								  </select>
							  </div-->			
							  <div class="form-group">
								  <label for="exampleInputFile">CV File</label>
								  <div class="fileUpload btn btn-danger">
									<span>Upload</span><input type="file" class="upload" value="" name="cv_file" />
								  </div>				
								  <div class="file-label text-primary"></div>
								  <div class="checkbox">
									  <p class="help-block">With submitting this form you are agree for the used of your credentials information to us.</p>						 <label><input type="checkbox">I Agree</label>
								  </div>
							  </div>
						  </div>
						  <div class="col-md-6">
							  <div class="form-group">
								  <label for="name">Message</label>
								  <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message"></textarea>
							  </div>
						  </div>
						  <div class="col-md-12">
							  <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">Send</button>
						  </div>
					  </div>
				  </form>
			  </div>
		  </div>

	  </div>

	<div class="modal-footer">&nbsp;
	<!--button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	<button type="button" class="btn btn-primary">Save changes</button-->
	</div>

	</div>
  </div>
</div>
