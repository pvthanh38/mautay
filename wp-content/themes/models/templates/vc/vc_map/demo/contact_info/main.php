<?php

class gasha_contact_info extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_contact_info(
	array(
		'name'     => __( 'Gasha Contact Info', 'gasha' ),
		'base'     => 'contact_info',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			array(
				'type' => 'param_group', 'heading' => 'Nội dung',
				'param_name' => 'content_view', 'params' => array(
					array(
						'type' => 'textfield', 'heading' => 'Title',
						'param_name' => 'title', 'admin_label' => true
					),
					array(
						'type' => 'textarea', 'heading' => 'Mô tả',
						'param_name' => 'des', 'admin_label' => true
					)
					
				)
			)
		
		)
		)
	);