<?php

class models_menu_service_left extends vtm_vc_map {
	function loadAssets(){

	}
}

new models_menu_service_left(
	array(
		'name'     => __( 'Models Menu Services Left', 'models' ),
		'base'     => 'models_menu_service_left',
		'category' => __( 'Themes Elements', 'models' ),
		'params'   => array(
			/*array(
				'type' => 'param_group', 'heading' => 'Items',
				'param_name' => 'content_view', 'params' => array(
					array(
						'type' => 'textfield', 'heading' => 'Title',
						'param_name' => 'title', 'admin_label' => true
					),
					array(
						'type' => 'attach_image', 'heading' => 'Image',
						'param_name' => 'img'
					),
					array(
						'type' => 'vc_dropdown_multil', 'heading' => 'Link',
						'param_name' => 'link'
					),
					
				)
			),*/
			
		
		)
		)
	);