<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');

?>
<div class="wwd-block-1">
    <div class="row">
        <div class="col-lg-12">
            <div class="box-img" style="background: url('<?php echo $image; ?>')">
                <div class="box-info">
                    <h3 class="subtitle"><?php echo $atts['tencot']; ?></h3>
                    <h2 class="t-title"><?php echo $atts['title']; ?></h2>
                    <p><?php echo $atts['des']; ?></p>
                </div>
            </div>
        </div>
    </div>
</div>