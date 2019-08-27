<?php if ( !isset( $atts['content_view'] ) ) return; ?>

<?php
    $items = vc_param_group_parse_atts( $atts['content_view'] );

?>
<div class="cus-block-2">
        <div class="row">
		<?php foreach( $items as $item ) { ?>
            <div class="col-md-4">
                <div class="box-info">
                    <div class="box-inner">
                        <div class="info">
                            <i class="fas fa-mobile-alt"></i>
                            <h3><?php echo $item['title']; ?></h3>
                            <p><?php echo $item['des']; ?></p>
                        </div>
                    </div>
                </div>
            </div>
		<?php } ?>
            
        </div>
</div>