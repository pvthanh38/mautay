<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');

?>
<div class="cus-block-1">
    <div class="row">
        <div class="col-md-6">
            <h3 class="subtitle"><?php echo $atts['tencot']; ?></h3>
            <h2 class="t-title"><?php echo $atts['title']; ?></h2>
            <div class="text">
				<?php echo $content; ?>                
            </div>
        </div>
        <div class="col-md-6">
            <div class="box-img">
                <img src="<?php echo $image; ?>">
            </div>
        </div>
    </div>
</div>