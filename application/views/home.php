<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<!-- Section: intro -->
<div id="intro" data-speed="0.2" class="intro parallax-window" data-parallax="scroll" data-image-src="">
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
                
            <?php if($banners) { ?>
            <div class="clearfix marginbot-30">
                <div class="col-lg-12 col-md-12 col-sm-12 column">
                    <div class="carousel-top slide" id="carousel-468004">                
                        <ol class="carousel-indicators">
                            <?php
                            $j=0;
                            foreach ($banners as $banner) { ?>
                                <li class="<?php echo $j == 0 ? 'active' :'';?>" data-slide-to="<?php echo $j;?>" data-target="#carousel-468004"></li>
                            <?php $j++;
                            } ?>
                        </ol>
                        <div class="carousel-inner">
                        <?php
                        $i=1;
                        foreach ($banners as $banner) { ?>
                            <div class="item <?php echo $i == 1 ? 'active' :'';?>">
                                <a href="#"><img alt="" class="img-responsive" src="<?php echo base_url('uploads/banners').'/'.$banner->file_name; ?>"></a>
                                <?php if ($banner->title) { ?>
                                <div class="carousel-caption">
                                    <!--<h4><?php echo $banner->title;?></h4>-->
                                    <p><?php echo $banner->title;?></p>
                                </div>						
                                <?php } ?>
                            </div>
                        <?php 
                        $i++;
                        } ?>
                        </div> 
                        <a class="left carousel-control" href="#carousel-468004" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a> 
                        <a class="right carousel-control" href="#carousel-468004" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>                
            </div>
            <?php } ?>
                
                
                <!--div class="lead">
                    <img class="img-thumbnail" width="100%" src="<?php echo base_url('uploads/conferences').'/'.$conference->cover_photo; ?>"/>
                </div-->
                
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
                    <?php if($schedules) { ?>
                        <div class="marginbot-30">
                        <?php foreach ($schedules as $schedule) { ?>
                        <ul class="list-unstyled">
                            <li class="list-group-item"><span class="fa fa-calendar fa-2x"></span> &nbsp;
                                <?php 
                                //print_r(time());
                                //$how_long = timespan('3',10242342);
                                //print_r($how_long);
                                echo date('l, d F Y', strtotime($schedule->date));?>
                                <div class="text-success">
                                    <span><?php echo strip_tags($schedule->subject);?></span>
                                </div>     
                            </li>
                        </ul>
                        <?php } ?>
                        </div>
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
</div>
<!-- /Section: intro -->

<?php if ($informations) { ?>
<div id="information">
	<h3 class="text-center">Information</h3>
	<div class="row-fluid clearfix">
		<div class="col-lg-12 col-md-12 col-sm-12 column">
			<div class="row-fluid">

				<!--div class="row-fluid control-handler">
					<div class="pull-right clearfix">
						<a class="right carousel-control" href="#myCarousel3" data-slide="prev">
							<span class="glyphicon glyphicon-backward">PREV</span>
						</a>
						<a class="left carousel-control" href="#myCarousel3" data-slide="next">
							<span class="glyphicon glyphicon-play">NEXT</span>
						</a>
					</div>	
				</div-->	
					
				<div id="myCarousel3" class="carousel-bot slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="item active">
							<?php foreach ($informations as $information) { ?>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="thumbnail">
										<div class="thumb-holder">
											<?php if ($information->cover) { ?>
                                                <div style="max-width:100%;height:180px;overflow:hidden;margin:0 auto 10px auto" class="img-rounded">
                                                    <img width="100%" class="img-responsive" src="<?php echo base_url('uploads/informations').'/'.$information->cover;?>"/>
                                                </div>
											<?php } ?>
										</div>
										<div class="caption">
											<h5><?php echo $information->subject;?></h5>
											<!--div class="clearfix history btn-sm">
												<span class="pull-left"><span class="glyphicon glyphicon-time"></span> 03 DEC 2014</span>
												<span class="pull-right"><span class="glyphicon glyphicon-edit"></span> JANE DOE</span>
											</div-->
											<div class="marginbot-30"><?php echo word_limiter(strip_tags($information->description,'<strong><b><a><table><tbody><tr><td>'));?></div>
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
</div>	
<?php } ?>

<?php if ($submission) { ?>
<div id="submission" class="marginbot-30 clearfix boxed-grey">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<h3 class="text-center page-header">Submission</h3>
			<?php foreach ($submission as $submiss) { ?>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<h5><?php echo $submiss->subject;?></h5>
					<?php if ($submiss->photo) { ?>
						<div style="max-width:100%;height:180px;overflow:hidden;margin:0 auto 10px auto" class="img-rounded"><img class="img-responsive" src="<?php echo base_url('uploads/speakers').'/'.$submiss->photo;?>"/></div>
					<?php } ?>
					<div class="text-left">
						<?php echo word_limiter(strip_tags($submiss->description,'<strong><b><a><table><tbody><tr><td>'));?>
					</div>
				</div>
			<?php } ?>
		</div>
	</div>
</div>	
<?php } ?>

<?php if ($speakers) { ?>
<!--<div id="speakers">-->
<div id="speakers" class="marginbot-30">
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<h3 class="text-center page-header">Speakers</h3>
			<?php foreach ($speakers as $speaker) { ?>
                <div class="col-lg-4 col-md-4 col-sm-4">
					<h5 class="text-center"><?php echo $speaker->subject;?></h5>
					<?php if ($speaker->photo) { ?>
                    <div class="marginbot-10 img-rounded" style="max-width:100%;height:180px;overflow:hidden;margin:0 auto 10px auto"><img width="100%" class="center-block" src="<?php echo base_url('uploads/speakers').'/'.$speaker->photo;?>"/></div>
					<?php } else { ?>
                    <div class="boxed-grey"><div class="center-block"><span class="fa fa-user fa-5x clearfix"></span></div></div>
                    <?php } ?>
                    <?php if ($speaker->biography) { ?>
					<div class="content">
						<?php echo word_limiter(strip_tags($speaker->biography,'<strong><b><br><p>'));?>
					</div>
                    <?php } ?>                    
				</div>
            <?php } ?>
		</div>
	</div>
</div>	
<?php } ?>


