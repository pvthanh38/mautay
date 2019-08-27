<?php

class models_home_s_body extends vtm_vc_map {
	function loadAssets(){

	}
}

new models_home_s_body(
	array(
		'name'     => __( 'Models Home', 'models' ),
		'base'     => 'models_home_s_body',
		'category' => __( 'Themes Elements', 'models' ),
		'params'   => array(
			array(
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
			),
			
		
		)
		)
	);