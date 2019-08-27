<?php

class models_home_s_banner extends vtm_vc_map {
	function loadAssets(){

	}
}

new models_home_s_banner(
	array(
		'name'     => __( 'Models Home Banner', 'models' ),
		'base'     => 'models_home_s_banner',
		'category' => __( 'Themes Elements', 'models' ),
		'params'   => array(
			array(
				'type' => 'textfield', 'heading' => 'Tiêu đề',
				'param_name' => 'title', 'admin_label' => true
			),
			array(
				'type' => 'textfield', 'heading' => 'Url',
				'param_name' => 'url', 'admin_label' => true
			),
			array(
				'type' => 'attach_image', 'heading' => 'Image',
				'param_name' => 'img'
			),
			
			
		
		)
		)
	);