<?php get_header(); 

?>
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
                                            <h3><a href="<?php echo get_site_url() ?>/artists">ARTISTS</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-block-content">
                                <ul class="ver-down-cat">
								<?php 
								$terms = get_terms( array( 'taxonomy' => 'artists_cat', 'hide_empty' => false) );
								foreach($terms as $term){
									$k = get_term($term,'artists_cat');
									//print_r($k);
								?>
                                    <li class="category"><a href="<?php echo get_term_link($k->term_id,'artists_cat'); ?>"><span><span><?php echo $k->name; ?></span></span></a></li>
                                    
                                <?php } ?>
								</ul>
                            </div>
                            <div class="clb"></div>
                        </div>
                    </div>
                </div>
                <div class="s-center">
                    <div id="s-content">
                        <div class="content">
                            <ul class="models-list">
							<?php if ( have_posts() ) : ?>
							<?php
                            // Start the Loop.
                            while ( have_posts() ) :
                                the_post();
                              ?>
                                <li style="height: 201px;">
                                    <a href="<?php the_permalink();?>" class="title" title="<?php the_title();?>">
										<img src="<?php echo get_the_post_thumbnail_url();?>" width="120" height="160" title="<?php the_title();?>" alt="<?php the_title();?>" border="0">
									</a>
                                    <h4 class="clb"><a href="<?php the_permalink();?>" class="title" title="<?php the_title();?>"><?php the_title();?> </a></h4>
                                </li>
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