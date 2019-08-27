<div class="s-left">
	<div id="s-left" class="s-mod">
		<div class="s-block-category">
			<div class="s-block-title">
				<div class="s-block-title-left">
					<div class="s-block-title-right">
						<div class="s-block-title-bg">
							<h3><a href="<?php echo get_site_url() ?>/academy">ACADEMY</a></h3>
					</div>
				</div>
			</div>

			<div class="s-block-content ver-down-cat">
				<ul class="ver-down-cat">
					<?php
					$i = 1;
					$terms = get_terms( array( 'taxonomy' => 'academy_cat', 'orderby'  => 'id','order'=> 'ASC','hide_empty' => false) );
					foreach($terms as $term){
						$k = get_term($term,'academy_cat');
						if($k->parent == 0 && $i == 1){
						?>
						<li class="category"><a href="<?php echo get_term_link($k->term_id,'academy_cat'); ?>"><span><span><?php echo $k->name; ?></span></span></a>
						<ul class="dropdown">
						<?php }elseif ($k->parent == 0 && $i != 1){ $i=1; ?>
							</ul>
						</li>
						<li class="category"><a href="<?php echo get_term_link($k->term_id,'academy_cat'); ?>"><?php echo $k->name; ?></a></li>
						<?php }else{ ?>
						<li class=""><a href="<?php echo get_term_link($k->term_id,'academy_cat'); ?>"><?php echo $k->name; ?></a></li>
					<?php } $i++; } ?>
				</ul>
			</div>
			<div class="clb"></div>
		</div>
	</div>
	</div>
	
</div>