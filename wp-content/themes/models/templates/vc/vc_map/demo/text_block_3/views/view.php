<?php if ( !isset( $atts['title'] ) ) return; ?>

<?php
    //$items = vc_param_group_parse_atts( $atts['content_view'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');
	//$image = wp_get_attachment_image_url($atts['img'], 'full');
?>
<div class="introduction">
    <div class="content">
        <h6 class="sub-title"><?php echo $atts['tencot']; ?></h6>
        <h1 class="title"><?php echo $atts['title']; ?></h1>
        <?php echo $content ?>
        <a class="more-a" href="<?php echo $atts['url']; ?>">Read more</a>
    </div>
    <div class="img">
        <img src="<?php echo $image; ?>" alt="Image">
    </div>
</div>