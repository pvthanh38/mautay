<div class="s-left">
	<div id="s-left" class="s-mod">
		<div class="s-block-category">
			<div class="s-block-title">
				<div class="s-block-title-left">
					<div class="s-block-title-right">
						<div class="s-block-title-bg">
							<h3><a href="<?php echo get_site_url() ?>/blog">Blog</a></h3>
					</div>
				</div>
			</div>

			<div class="s-block-content ver-down-cat">
				<ul class="ver-down-cat">
					<?php
					$i = 1;
					$terms = get_terms( array( 'taxonomy' => 'category', 'orderby'  => 'id','order'=> 'ASC','hide_empty' => false) );
					foreach($terms as $term){
						$k = get_term($term,'category');
						if($k->name != 'Uncategorized'){
						?>
						
						<li class="category"><a href="<?php echo get_term_link($k->term_id,'category'); ?>"><?php echo $k->name; ?></a></li>
					<?php }} ?>
				</ul>
			</div>
			<div class="clb"></div>
		</div>
	</div>
	</div>
	
</div>