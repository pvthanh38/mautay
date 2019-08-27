<?php
    $terms = vc_param_group_parse_atts( $atts['terms'] );
?>
<div class="f-special-offer">
    <h2 class="title"><?php echo $atts['block_title'];?></h2>
    <div class="special-offer row">
        <?php foreach ($terms as $term) {
            $image = wp_get_attachment_image_url($term['img'], 'full');
            $link = vc_build_link($term['link']);
            ?>
        <div class="box col-lg-4 col-md-6">
            <div class="img-box">
                <a href="<?php echo $link['url']; ?>"><img src="<?php echo $image; ?>" alt="Img"></a>
            </div>
            <div class="body-box">
                <h3 class="title">
                    <a href="<?php echo $link['url']; ?>"><?php echo $term['title']; ?></a>
                </h3>
                <p class="text">
                    <?php echo $term['text']; ?>
                </p>
            </div>
        </div>
        <?php }?>
    </div>
</div>