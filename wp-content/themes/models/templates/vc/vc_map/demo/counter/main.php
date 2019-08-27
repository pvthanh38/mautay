<?php

class gasha_counter extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_counter(
	array(
		'name'     => __( 'Gasga Counter', 'gasha' ),
		'base'     => 'counter',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			array(
				'type' => 'textfield', 'heading' => 'Title',
				'param_name' => 'title', 'admin_label' => true
			),
			array(
				'type' => 'textarea', 'heading' => 'Mô tả',
				'param_name' => 'des', 'admin_label' => true
			),
			array(
				'type' => 'param_group', 'heading' => 'Count',
				'param_name' => 'content_view', 'params' => array(
					array(
						'type' => 'textfield', 'heading' => 'Title',
						'param_name' => 'title', 'admin_label' => true
					),
					array(
						'type' => 'textfield', 'heading' => 'Count',
						'param_name' => 'count', 'admin_label' => true
					)
					
				)
			)
		
		)
		)
	);