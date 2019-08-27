<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    //$items = vc_param_group_parse_atts( $atts['content_view'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');

?>
<div class="fts-block-1">
    <div class="row">
        <div class="col-md-12">
            <div class="box-text">
                <h3 class="subtitle"><?php echo $atts['title']; ?></h3>
                <div class="text">
                    <p><?php echo $content; ?></p>
                </div>
                <div class="separator-star"><img src="<?php echo $image; ?>" alt=""></div>
            </div>
        </div>
    </div>
</div>