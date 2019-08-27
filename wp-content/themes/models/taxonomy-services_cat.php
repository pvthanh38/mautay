<?php get_header(); 
$object = get_queried_object();
$term_id = $object->term_id;


?>
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

                        <div class="s-block-content ver-down-cat">
                            <ul class="ver-down-cat">
								<?php
								$post_hien = [];
								$services_cat = $terms = get_terms( 'services_cat', array('hide_empty' => false,'orderby' => 'term_id') );
								foreach($services_cat as $cat){
									$status = get_field('services_left_menu', 'services_cat_' . $cat->term_id);
									if($status){
									if($status[0] == 'hien'){
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
					<?php
					$args = array(
					'post_type' => 'services',
					'posts_per_page' => -1,
					'tax_query' => array(
						array(
						'taxonomy' => 'services_cat',
						'field' => 'term_id',
						'terms' => $term_id
						 )
					  )
					);
					$q = new WP_Query( $args );
					if(count($q->posts) > 0){
					foreach($q->posts as $l){
					?>
						<div class="content">
							<h1 class="title"><?php echo $object->name; ?></h1>
							<br>
							<div class="article-list">
								<h3><a href="<?php echo get_permalink($l->ID); ?>" class="title"><?php echo $l->post_title; ?></a></h3><span class="date"></span>
								<div style="text-align:center; padding:20px 0;">
									<a href="<?php echo get_permalink($l->ID); ?>" class="title"><img src="<?php echo get_the_post_thumbnail_url($l->ID); ?>" width="210" height="210" title="<?php echo $l->post_title; ?>" alt="<?php echo $l->post_title; ?>" border="0"></a>
								</div>
								<div class="brief clb">
									<p><?php echo $l->post_excerpt; ?></p>
								</div>
								<div class="read-more"><a title="Read more" href="<?php echo get_permalink($l->ID); ?>">Read more</a></div>
							</div>
							<div class="line"></div>

						</div>
						<div class="page">
							<br>
						</div>
					<?php }} ?>
					</div>
					<div class="clb"></div>
				</div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>