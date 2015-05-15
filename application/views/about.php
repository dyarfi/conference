<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

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
            <?php if($conference->cover_photo) { ?> 
                <div class="lead">
                    <img class="img-thumbnail" width="100%" src="<?php echo base_url('uploads/conferences').'/'.$conference->cover_photo; ?>"/>
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
    </div>
</section>
<!-- /Section: intro -->
