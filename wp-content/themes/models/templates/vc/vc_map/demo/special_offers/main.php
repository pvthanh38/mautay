<?php

class gasha_special_offers extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_special_offers(
	array(
		'name'     => __( 'Gasha Special Offers', 'gasha' ),
		'base'     => 'special_offers',
		'category' => __( 'Themes Elements', 'gasha' ),
        'params'   => array(
            array(
                'type' => 'textfield', 'heading' => 'Block Title',
                'param_name' => 'block_title', 'admin_label' => true
            ),
            array(
                'type' => 'param_group', 'heading' => 'terms',
                'param_name' => 'terms', 'params' => array(
                    array(
                        'type' => 'attach_image', 'heading' => 'Image',
                        'param_name' => 'img'
                    ),
                    array(
                        'type' => 'textfield', 'heading' => 'Title',
                        'param_name' => 'title', 'admin_label' => true
                    ),
                    array(
                        'type' => 'textfield', 'heading' => 'text',
                        'param_name' => 'text', 'admin_label' => true
                    ),
                    array(
                        'type' => 'vc_link', 'heading' => 'link',
                        'param_name' => 'link', 'admin_label' => true
                    )

                )
            )

        )
		)
	);