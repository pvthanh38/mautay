<?php get_header(); 

?>

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
                                            <h3><a href="<?php echo get_site_url() ?>/artists">ARTISTS</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-block-content ver-down-cat">
                                <ul class="ver-down-cat">
								<?php 
								$terms = get_terms( array( 'taxonomy' => 'artists_cat', 'hide_empty' => false) );
								if(count($terms) > 0){
								foreach($terms as $t){
									$k = get_term($t,'artists_cat');
									//print_r($k);?>
                                    <li class="category"><a href="<?php echo get_term_link($k->term_id,'artists_cat'); ?>"><span><span><?php echo $k->name; ?></span></span></a></li>
                                <?php }} ?>
                                </ul>
                            </div>
                            <div class="clb"></div>
						
                        </div>
                    </div>
                </div>
                <div class="s-center">
                    <div id="s-content">
                        <div class="content">
                            <div align="center">
                                <div class="path">
                                    <?php dimox_breadcrumbs(); ?>
                                </div>
                            </div>
                            <ul id="icons">
                            </ul>
                            <div class="models">
                                <div id="gallery" class="slider-image">
								<?php 
								$gallery = get_field('images', get_the_ID());
								//print_r($gallery);
								if(count($gallery) > 0){
								foreach($gallery as $g){
								?>
                                    <div><img src="<?php echo $g['url']; ?>" title="<?php echo get_the_title(); ?> " alt="<?php echo get_the_title(); ?> " border="0"></div>
                                <?php }} ?>
                                </div>
								
                                <div class="models-info">
                                    <div class="info">
                                        <div class="details">
										
                                            <ul>
											<?php 
											$tags = wp_get_post_terms( get_the_ID(), 'post_tag', array( 'orderby' => 'term_id' ) );
											
											foreach($tags as $tag){
											?>
                                                <li><?php echo $tag->name; ?></li>
                                            <?php } ?>
                                            </ul>
                                            <ul>
                                            <?php 
											
											$tags = wp_get_post_terms( get_the_ID(), 'tag_en', array( 'orderby' => 'term_id' ) );
											foreach($tags as $tag){
											?>
                                                <li><?php echo $tag->name; ?></li>
                                            <?php } ?>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="share-button fr">
                                        <!-- AddThis Button BEGIN -->
										
               
				<!-- Go to www.addthis.com/dashboard to customize your tools -->

									<div class="addthis_inline_share_toolbox"></div>
									<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-550b934e62dc8908"></script>
                                        
                                       
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div id="thumbs" class="models-img">
                                    <ul class="thumbs clearfix">
									<?php
									$gallery = get_field('images', get_the_ID());
									//print_r($gallery);
									if(count($gallery) > 0){
									foreach($gallery as $o=>$g){
									?>
                                        <li style="height: 206px;"><a class="thumb" onclick="gotoSlide(this, <?php echo $o; ?>); return false;"><img src="<?php echo $g['url']; ?>" title="<?php echo get_the_title(); ?> " alt="<?php echo get_the_title(); ?> " border="0"></a></li>
                                    <?php }} ?>
                                    </ul>
                                </div>
                            </div>
                            <div class="modal fade">
                            </div>
                            <div class="models-other">
                                <div id="model-polaroids" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h2 class="modal-title">Polaroids</h2>
                                            </div>
                                            <div class="modal-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="model-portfolio" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h2 class="modal-title">Portfolio</h2>
                                            </div>
                                            <div class="modal-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="model-video" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h2 class="modal-title">Video</h2>
                                            </div>
                                            <div class="modal-body">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clb"></div>
                </div>
            </div>
        </div>
    </div>
<?php get_footer(); ?>