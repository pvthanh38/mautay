<?php

class gasha_icon_block extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_icon_block(
	array(
		'name'     => __( 'Gasha Icon', 'gasha' ),
		'base'     => 'icon_block',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			array(
					'type' => 'param_group', 'heading' => 'Icons',
					'param_name' => 'content_view', 'params' => array(
						
						array(
							'type' => 'textfield', 'heading' => 'Title',
							'param_name' => 'title', 'admin_label' => true
						),
						
						array(
							'type' => 'attach_image', 'heading' => 'Icon',
							'param_name' => 'img', 'admin_label' => true
						),
						
					)
				)
			)
		)
);