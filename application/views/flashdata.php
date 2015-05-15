<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="container-fluid">
    <div class="row">
    <?php if ($this->session->flashdata('flashdata')): ?>
    <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button class="close" aria-label="Close" data-dismiss="alert" type="button">
            <span aria-hidden="true">×</span>
        </button>
        <span>		
            <div class="flashdata"><?php echo $this->session->flashdata("flashdata"); ?></div>
        </span>
    </div>		
    <?php endif; ?>
    <?php if ($this->session->flashdata('message')): ?>
    <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button class="close" aria-label="Close" data-dismiss="alert" type="button">
            <span aria-hidden="true">×</span>
        </button>
        <span>		
            <div class="message"><?php echo $this->session->flashdata("message"); ?></div>
        </span>
    </div>	
    <?php endif; ?>
    </div>
</div>