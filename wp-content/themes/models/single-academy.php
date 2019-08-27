<?php get_header(); 
$post = get_post(get_the_ID());
setpostview(get_the_ID());
$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
?>
<link href="<?php echo get_site_url(); ?>/files/layout3.css" rel="stylesheet" type="text/css">
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=715603241959374&autoLogAppEvents=1"></script>
<?php //the_title();?>
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
                                            <h3><a href="<?php echo get_site_url() ?>/academy">ACADEMY</a></h3>
                                        </div>
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
                <div class="s-center">
					<div id="s-content">
						<div class="content">
							<h1 class="title">Academy</h1>
							<br>
							
							<div class="article-list">
								<h3><a href="<?php the_permalink();?>" class="title"><?php the_title();?></a></h3><span class="date"></span>
								<div style="text-align:center; padding:20px 0;">
									<a href="<?php the_permalink();?>" class="title"><img src="<?php echo get_the_post_thumbnail_url();?>" width="360" title="<?php the_title();?>" alt="<?php the_title();?>" border="0"></a>
								</div>
								<div class="brief clb"></div>
								<div>
									<p><?php the_excerpt();?></p>
								</div>
								<div>
									<p><?php echo $post->post_content;?></p>
								</div>
								<div id="icons">
									<div class="view"><span><?php echo getpostviews(get_the_ID()); ?></span></div>
									<div class="comment"><a href="<?php the_permalink();?>#comments">0 Comments</a></div>
								</div>
							</div>
							<div class="line"></div>
							<div class="addthis_inline_share_toolbox"></div>
							<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-550b934e62dc8908"></script>
                            </br>
							<div class="fb-like" data-href="<?php echo $actual_link; ?>" data-width="" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
							</br>
							<div class="fb-comments" data-href="<?php echo $actual_link; ?>" data-width="100%" data-numposts="5"></div>
							<div class="article-other">
								<h3 class="title">Others</h3>
								<ul>
											
									
								
								
							<?php
							$related = new  WP_Query( array('post_type' => 'academy',  'post_status' => 'publish', 'posts_per_page' => 10, 'post__not_in' => array($post->ID) ) );
							
							if( $related ){
								foreach( $related->posts as $post ) {
								 ?>
								<li><a href="<?php echo get_permalink($post->ID); ?>" class="title"><?php echo $post->post_title; ?></a> <span></span></li>
								
								
							<?php }} ?>
							</ul>
							</div>
						</div>
						
					</div>
					<div class="clb"></div>
				</div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>