<link href="<?php echo get_site_url(); ?>/files/ver-down.css" rel="stylesheet" type="text/css">
<div class="s-right">
	<div id="s-right" class="s-mod">
	   <div class="s-block-archive">
		  <div class="s-block-title">
			 <div class="s-block-title-left">
				<div class="s-block-title-right">
				   <div class="s-block-title-bg">
					  <h3>Archives</h3>
				   </div>
				</div>
			 </div>
		  </div>
		  <div class="s-block-content">
			 <ul class="year">
			 <?php
				$i = 1;
				$terms = get_terms( array( 'taxonomy' => 'archives', 'orderby'  => 'id','order'=> 'ASC','hide_empty' => false) );
				foreach($terms as $term){
					$k = get_term($term,'archives');
					if($k->parent == 0 && $i == 1){ $i++;
					?>
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><span><span><?php echo $k->name; ?></span></span></a>
					<ul class="month">
					<?php }elseif ($k->parent == 0 && $i != 1){ $i=1; ?>
						</ul>
					</li>
					<li class="category"><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }else{ 
					if($k->parent != 0 && $i == 1){ $i++;
					?>
					<ul class="month">
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }else{ ?>
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }}  } ?>
				</ul>
		  </div>
		  <div class="clb"></div>
	   </div>
	</div>
 </div>
