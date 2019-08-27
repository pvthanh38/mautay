<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
//print_r($atts);
    $items = vc_param_group_parse_atts( $atts['content_view'] );
    /*$rights = vc_param_group_parse_atts( $atts['content_right'] );
    $centers = vc_param_group_parse_atts( $atts['content_center'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');
	$icon = wp_get_attachment_image_url($atts['icon'], 'full');*/

?>
<div class="wwd-block-3">
    <div class="row">
        <div class="number-counter clearfix">
            <div class="wrapper">
			<?php foreach( $items as $item ) { ?>
                <div class="col-lg-3">
                    <div class="counter col_fourth">
                        <h2 class="timer count-title count-number" data-to="<?php echo $item['count']; ?>" data-speed="2500"></h2>
                        <p class="count-text "><?php echo $item['title']; ?></p>
                    </div>
                </div>
			<?php } ?>
            </div>
        </div>
		<?php if ( isset( $atts['title'] ) ) { ?>
        <div class="text-box">
            <h2 class="t-title">
                <span><?php echo $atts['title']; ?></span>
            </h2>
            <div class="text">
                <p><?php echo $atts['des']; ?></p>
            </div>
        </div>
		<?php } ?>
    </div>
</div>