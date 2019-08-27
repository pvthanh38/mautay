<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	
?>
<div id="s-body">
    <div class="container">
        <div class="body clearfix">
            <div class="s-center">
                <div id="s-content">
                    <div class="lookbook">
                        <h2 class="gallery"><a href="http://tay-models.com/"></a></h2>
                        <div class="row">
						<?php
						foreach($items as $item){
							$img = wp_get_attachment_image_url($item['img'], 'full');
							//$term = "";
							$title = "";
							
							if ( $item['link'] != "images" ){
								$term = get_term($item['link'],'object');
								$link = get_term_link($term->term_id,'object');
								
								if($term){
									$title = $term->name;
								}
								//echo 888888;
								//print_r( $link);die;
							}else{
								$link = get_post_type_archive_link( 'images' );
								$title = 'Images';
								
							}
							
							if ( isset( $item['title'] ) ){
								$title = $item['title'];
							}
							//echo 888888;
								//echo $link;die;
						?>
                            <div class="item item-1">
                                <div class="cap">
                                    <h2><a href="<?php echo $link; ?>"><?php echo $title; ?></a></h2>
                                </div>
                                <a href="<?php echo $link; ?>">
                                    <img src="<?php echo $img; ?>" title="<?php echo $title; ?>" alt="<?php echo $title; ?>">
                                </a>
                            </div>
                        <?php
						}
						?>
                        </div>
                    </div></div>
                <div class="clb"></div>
            </div>

        </div>
    </div>
</div>