<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );
	
?>
<div class="core-value container">
    <div class="row">
		<?php foreach( $items as $item ) { 
		$image = wp_get_attachment_image_url($item['img'], 'full');
		?>
        <div class="box col-lg-3 col-md-6">

            <div class="img">
                <img src="<?php echo $image ?>" alt="Integrity">
            </div>
            <div class="content">
                <h3 class="title"><?php echo $item['title'] ?></h3>
            </div>
        </div>
		<?php } ?>
        
    </div>
</div>