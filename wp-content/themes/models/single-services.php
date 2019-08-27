<?php get_header(); 
$object = get_queried_object();
$term_id = $object->term_id;
$post = get_post(get_the_ID());

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
						<script type="text/javascript" src="http://tay-models.com/js/jquery.tabs.js"></script>
						<div class="content">
							<h1 class="title"><?php the_title(); ?></h1><span class="date"></span>
							<div style="text-align:center; padding:20px 0;"><img src="<?php echo get_the_post_thumbnail_url(get_the_ID()); ?>" width="360" title="TAYMODELS SERVICES " alt="TAYMODELS SERVICES " border="0"></div>
							<div class="brief clb">
								<p><?php echo $post->post_excerpt; ?></p>
							</div>
							<div class="clb"></div>
							<div class="content">
								<?php echo $post->post_content; ?>
							</div>

							
							<div class="share-button">
								<div class="addthis_inline_share_toolbox"></div>
								<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-550b934e62dc8908"></script>
                                     
							</div>

							<div class="article-other">
								<h3 class="title"></h3>
								<ul>

								</ul>
							</div>
							<div class="clb"></div>
						</div>
					</div>
					<div class="clb"></div>
				</div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>