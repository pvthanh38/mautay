<div class="s-left">
	<div id="s-left" class="s-mod">
		<div class="s-block-category">
			<div class="s-block-title">
				<div class="s-block-title-left">
					<div class="s-block-title-right">
						<div class="s-block-title-bg">
							<h3><a href="<?php echo get_site_url() ?>/services">Services</a></h3></div>
					</div>
				</div>
			</div>

			<div class="s-block-content ver-down-cat">
				<ul class="ver-down-cat">
					<?php
					$post_hien = [];
					$services_cat = $terms = get_terms( 'services_cat', array('hide_empty' => false,'orderby' => 'term_id') );
					foreach($services_cat as $cat){
						$status = get_field('services_left_menu', 'services_cat_' . $cat->term_id);
						if($status){
						if($status[0] == 'hien'){
						$args = array(
						'post_type' => 'services',
						'posts_per_page' => 1,
						'tax_query' => array(
							array(
							'taxonomy' => 'services_cat',
							'field' => 'term_id',
							'terms' => $cat->term_id
							 )
						  )
						);
						$q = new WP_Query( $args );
						if(count($q->posts) > 0){
							$post_hien[] = $q->posts[0]->ID;
						}
						//
					?>
					<li class="category"><a href="<?php echo get_term_link($cat->term_id); ?>"><span><span><?php echo $cat->name; ?></span></span></a></li>
					<?php }}}
					//print_r($post_hien);
					?>
				</ul>
			</div>
			<div class="clb"></div>
		</div>
	</div>
</div>