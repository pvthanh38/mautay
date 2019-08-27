<?php get_header(); 

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
				<div class="s-center">
					<div id="s-content">
						<div class="content">
							<h1 class="title">Academy</h1>
							<br>
							<?php if ( have_posts() ) : ?>
							<?php
                            // Start the Loop.
                            while ( have_posts() ) :
                                the_post();
                              ?>
							<div class="article-list">
								<h3><a href="<?php the_permalink();?>" class="title"><?php the_title();?></a></h3><span class="date"></span>
								<div style="text-align:center; padding:20px 0;">
									<a href="<?php the_permalink();?>" class="title"><img src="<?php echo get_the_post_thumbnail_url();?>" width="360" title="<?php the_title();?>" alt="<?php the_title();?>" border="0"></a>
								</div>
								<div class="brief clb"></div>
								<div>
									<p><?php the_excerpt();?></p>
								</div>
								<div id="icons">
									<div class="view"><span><?php echo getpostviews(get_the_ID()); ?></span></div>
									<div class="comment"><a href="<?php the_permalink();?>#comments">0 Comments</a></div>
								</div>
							</div>
							<div class="line"></div>
							<?php
								endwhile;
								echo '</ul>';
								echo '<div class="page">';
								// Previous/next page navigation.
								the_posts_pagination( array(
									'prev_text'          => __( '&#x2190; Previous', 'twentyfifteen' ),
									'next_text'          => __( '&#x2192; Next', 'twentyfifteen' ),
									'before_page_number' => '',
								) );
								echo '</div>';
							else :?>
								<li>
									<p style="text-align: left;">Không có nội dung nào được tìm thấy.</p>
								</li>
								</ul>
							<?php
							endif;
							?>

						</div>
						
					</div>
					<div class="clb"></div>
				</div>
                
            </div>
        </div>
    </div>
<?php get_footer(); ?>