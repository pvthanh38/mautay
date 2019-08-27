<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');
	$icon = wp_get_attachment_image_url($atts['icon'], 'full');

?>
<div class="">
    <div class="row">
        <div class="col-lg-12">
            <div class="text-box">
                <h3 class="subtitle"><?php echo $atts['tencot']; ?></h3>
                <h2 class="t-title"><?php echo $atts['title']; ?></h2>
                <div class="separator-star"><img src="<?php echo $icon; ?>" alt=""></div>
                <div class="text">
                    <p><?php echo $atts['des']; ?></p>
                </div>
            </div>
        </div>
    </div>
</div>