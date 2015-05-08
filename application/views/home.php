<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<!-- Section: intro -->
<section id="intro" data-speed="0.2" class="intro parallax-window" data-parallax="scroll" data-image-src="">
    <div class="page-scroll wow">
		<a href="#service" class="btn btn-circle wow animated bounceInUp" data-wow-delay="0.1s">
		    <i class="fa fa-angle-double-down animated"></i>
		</a>

		<div class="container">

				<h2><?php echo $conference->subject;?></h2>
			
				<?php if($conference->photo) { ?> 
					<div><img class="img-thumbnail" src="<?php echo base_url('uploads/conferences').'/'.$conference->photo; ?>"/> </div>
				<?php } ?>
				<div class="col-lg-12">
				<?php 
					echo $conference->description;
				?>
				</div>
				<div>
					<?php foreach ($informations as $information) { ?>
						<div>
							<h3><?php echo $information->subject;?></h3>
							<?php if ($information->cover) { ?><img class="img-thumbnail" src="<?php echo base_url('uploads/informations').'/'.$information->cover;?>"/><?php } ?>
							<div class="text-left"><?php echo $information->description;?></div>
						</div>
					<?php } ?>
				</div>
		</div>


    </div>
</section>
<!-- /Section: intro -->
	
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
