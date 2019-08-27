<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );

?>
<div class="team">
    <h2 class="title"><?php echo $atts['title']; ?></h2>
    <div class="list-team row">
<?php foreach( $items as $item ) { $image = wp_get_attachment_image_url($item['img'], 'full'); ?>
        <div class="box col-lg-4">
            <img src="<?php echo $image; ?>" alt="Romain Piasecki">
            <div class="content">
                <h3 class="name"><?php echo $item['name']; ?></h3>
                <h4 class="position"><?php echo $item['position']; ?></h4>
                <p class="description">
                    <?php echo $item['des']; ?>
                </p>
            </div>
        </div>
<?php } ?>
        
    </div>
</div>