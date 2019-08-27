<?php get_header();
$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
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
                                            <h3><a href="<?php echo $actual_link; ?>">Images</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-block-content">
                                <ul class="ver-down-cat">
									
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
										<img src="<?php echo get_the_post_thumbnail_url() ? get_the_post_thumbnail_url() : 'http://demo.sictas.com/models/wp-content/uploads/2019/07/icon-image.png';?>" width="120" height="160" title="<?php the_title();?>" alt="<?php the_title();?>" border="0">
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