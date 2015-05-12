<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<section id="account" class="account">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-10 col-md-10 col-sm-10 forgot-password">
                <div class="boxed-grey">
                <fieldset><legend>Forgot Password</legend>
                  <?php echo form_open_multipart(base_url('account/forgot_password'),array('id'=>'form-forgot-password'));?>
                    <div class="form-group">
                        <label class="control-label" for="email">Email Address</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                            <input type="email" class="form-control" id="email" name="email" value="<?php echo set_value('email', $fields['email']) ?>" placeholder="Enter email" required="required" />
                        </div>
                        <small class="text-danger"><?php echo $errors['email'];?></small>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="email">Password</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            <input type="password" class="form-control" id="password" name="password" value="<?php echo set_value('password', $fields['password']) ?>" placeholder="Enter password" required="required" />
                        </div>
                        <small class="text-danger"><?php echo $errors['password'];?></small>
                    </div> 
                    <?php echo form_submit('submit','LOGIN','class="btn btn-primary"');?>
                    <div class="pull-right"><a href="<?php echo base_url('account/forgot_password');?>" class="forgot-password">Forgot Password</a></div>
                  <?php echo form_close();?>
                </fieldset>
                </div>    
            </div>
        </div>
    </div>
</section>