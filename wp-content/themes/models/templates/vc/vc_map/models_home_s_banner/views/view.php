<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    //$items = vc_param_group_parse_atts( $atts['content_view'] );
	$img = wp_get_attachment_image_url($atts['img'], 'full');
?>
<div class="s-banner">
    <div id="s-banner" class="s-mod container">
        <div class="image-slider s-block">
            <div>
                <div id="owl-slider-4" class="owl-carousel owl-theme">
                    <div class="item">
						<a href="<?php echo $atts['url']; ?>">
							<img src="<?php echo $img; ?>" title="<?php echo $atts['title']; ?>" alt="<?php echo $atts['title']; ?>" border="0">
						</a>
						<div class="caption">
							<a href="<?php echo $atts['url']; ?>"><span><?php echo $atts['title']; ?></span></a>
						</div>
					</div>
                    
                </div>
            </div>
        </div></div>
</div>