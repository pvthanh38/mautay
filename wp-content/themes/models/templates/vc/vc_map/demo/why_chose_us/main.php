<?php

class gasha_why_chose_us extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_why_chose_us(
	array(
		'name'     => __( 'Gasga Why Chose Us', 'gasha' ),
		'base'     => 'why_chose_us',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			array(
					'type' => 'textfield', 'heading' => 'Tên cột',
					'param_name' => 'tencot', 'admin_label' => true
				),
			array(
				'type' => 'textfield', 'heading' => 'Tiêu đề',
				'param_name' => 'title', 'admin_label' => true
			),
			array(
				'type' => 'attach_image', 'heading' => 'Icon',
				'param_name' => 'icon'
			),
			array(
				'type' => 'textfield', 'heading' => 'Mô tả',
				'param_name' => 'des', 'admin_label' => true
			),
			
		)
		)
	);