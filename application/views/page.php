<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div>
	<div>
		<h2><?php echo $page->subject;?></h2>
		<div><?php echo $page->text;?></div>
		<div>Posted : <?php echo date('Y-m-d, D',$page->added);?></div>
	</div>
</div>
<div>
	<?php foreach ($pages as $page) { ?>
		<div><h2><a href="<?php echo base_url($menu.'/page/'.$page->name);?>"><?php echo $page->subject;?></a></h2></div>
	<?php } ?>
</div>