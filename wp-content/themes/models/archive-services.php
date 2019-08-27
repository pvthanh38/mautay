<?php get_header(); ?>
<link href="<?php echo get_site_url(); ?>/files/layout3.css" rel="stylesheet" type="text/css">
    <div id="s-body">
    <div class="container">
        <div class="body clearfix">
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

                        <div class="s-block-content">
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

            <div class="s-center">
                <div id="s-content">
                    <div class="content">
					<?php 
					$args = array(
					'post_type' => 'services',
					'posts_per_page' => 1,
					'post__in' => $post_hien,
					);
					$q = new WP_Query( $args );
					if(count($q->posts) > 0) {
					foreach($q->posts as $l){
						$cats = wp_get_post_terms( $l->ID, 'services_cat', array( 'orderby' => 'term_id' ) );
					?>
                        <div class="article-category-3 none">
                            <div class="category-title">
                                <div class="category-title-left">
                                    <div class="category-title-right">
                                        <div class="category-title-bg">
                                            <h2 align="center"><a href="<?php if($cats){ echo get_term_link($cats[0]->term_id); } ?>"><?php if($cats){ echo $cats[0]->name; } ?></a></h2></div>
                                    </div>
                                </div>
                            </div>
                            <div class="article-content">
                                <div class="article-top">
                                    <h3 class="clb"><a href="<?php echo get_permalink($l->ID); ?>" class="title" title="<?php echo $l->post_title; ?>"><?php echo $l->post_title; ?></a></h3>
                                    <a href="<?php echo get_permalink($l->ID); ?>" title="<?php echo $l->post_title; ?>"><img src="<?php echo get_the_post_thumbnail_url($l->ID); ?>" width="210" height="210" title="TAYMODELS SERVICES " alt="TAYMODELS SERVICES " border="0"></a>
                                    <div class="bg-img"></div>
                                </div>

                                <div class="article-other">
                                    <ul>

                                    </ul>
                                </div>
                            </div>
                        </div>
					<?php }} ?>
                        

                        <div class="clb"></div>
                    </div>
                </div>
                <div class="clb"></div>
            </div>

        </div>
    </div>
</div>
<?php get_footer(); ?>