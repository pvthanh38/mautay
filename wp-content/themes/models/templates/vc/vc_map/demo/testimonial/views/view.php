<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
//print_r($content);
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	
    /*$rights = vc_param_group_parse_atts( $atts['content_right'] );
    $centers = vc_param_group_parse_atts( $atts['content_center'] );
	$image = wp_get_attachment_image_url($atts['img'], 'full');
	$icon = wp_get_attachment_image_url($atts['icon'], 'full');*/

?>
<div class="testimonial">
    <h2 class="title"><?php echo $atts['title']; ?></h2>
    <div class="list-testimonial container">
	<?php foreach( $items as $item ) { $image = wp_get_attachment_image_url($item['img'], 'full'); ?>
        <div class="box">
            <img src="<?php echo $image; ?>" alt="Avatar">
            <div class="content">
                <p class="description"><?php echo $item['des']; ?></p>
                <div class="detail">
                    <h3 class="name"><?php echo $item['name']; ?></h3>
                    <p class="position"><?php echo $item['position']; ?></p>
                </div>
            </div>
        </div>
	<?php } ?>
        
    </div>
</div>