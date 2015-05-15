<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll">
                        <a href="#intro" id="totop" title="Scroll to Top" class="btn btn-primary back-top">
							<i class="fa fa-angle-up animated"></i>
						</a>
					</div>
					</div>
                   
                    <div><a href="<?php echo base_url('read/page/contact');?>"/>Contact</a> | <a href="<?php echo base_url('read/page/terms');?>"/>Terms</a></div>
                    <div>&copy; Copyright 2015 - <?php echo config_item('developer_name');?>. All rights reserved.</div>
                    
				</div>
			</div>	
		</div>
	</footer>