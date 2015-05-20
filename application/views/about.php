<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); 

// print_r($banners);
// exit;
?>
<!-- Section: intro -->
<section id="intro" data-speed="0.2" class="intro parallax-window" data-parallax="scroll" data-image-src="">
    <div class="container">
            <!--<h2><?php //echo url_title(strtolower($conference->subject), '-');?></h2>-->        
            <div class="col-lg-12 col-md-12 col-sm-12 text-left">
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
                                <a href="#"><img alt="" class="img-responsive" width="100%" src="<?php echo base_url('uploads/banners').'/'.$banner->file_name; ?>"></a>
                                <?php if ($banner->title) { ?>
                                <div class="carousel-caption">
                                    <!--h4><?php //echo $banner->title;?></h4-->
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
                
      
            <?php 
                echo $conference->description;
            ?>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="boxed-grey marginbot-30">
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
                </div>
            </div>
        
            <?php if($gallery) { ?>
            <div class="clearfix marginbot-50">
                <div class="col-lg-12 col-md-12 col-sm-12 column">
                    <div class="carousel-top slide" id="carousel-468005">                
                        <ol class="carousel-indicators visible-lg visible-md">
                            <?php
                            $j=0;
                            foreach ($gallery as $image) { ?>
                                <li class="<?php echo $j == 0 ? 'active' :'';?>" data-slide-to="<?php echo $j;?>" data-target="#carousel-468005"></li>
                            <?php $j++;
                            } ?>
                        </ol>
                        <div class="carousel-inner">
                        <?php
                        $i=1;
                        foreach ($gallery as $image) { ?>
                            <div class="item <?php echo $i == 1 ? 'active' :'';?>">
                                <a href="#"><img alt="" class="img-responsive" width="100%" src="<?php echo base_url('uploads/conferences').'/'.$image->file_name; ?>"></a>
                                <?php if ($image->title) { ?>
                                <div class="carousel-caption">
                                    <!--h4><?php echo $image->title;?></h4-->
                                    <p><?php echo $image->title;?></p>
                                </div>						
                                <?php } ?>
                            </div>
                        <?php 
                        $i++;
                        } ?>
                        </div> 
                        <a class="left carousel-control" href="#carousel-468005" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a> 
                        <a class="right carousel-control" href="#carousel-468005" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>                
            </div>
            <?php } ?>
                
      
    </div>
</section>
<!-- /Section: intro -->
