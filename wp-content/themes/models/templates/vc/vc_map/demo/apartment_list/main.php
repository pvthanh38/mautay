<?php

class gasha_Apartment_List extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_Apartment_List(
	array(
		'name'     => __( 'Gasga Banner What We Do', 'gasha' ),
		'base'     => 'what_we_do',
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
				'type' => 'textfield', 'heading' => 'Mô tả',
				'param_name' => 'des', 'admin_label' => true
			),
			array(
				'type' => 'attach_image', 'heading' => 'Ảnh',
				'param_name' => 'img'
			),
			/*
			array(
				'type' => 'param_group', 'heading' => 'Breadcrum',
				'param_name' => 'content_view', 'params' => array(
					array(
						'type' => 'textfield', 'heading' => 'Title',
						'param_name' => 'title', 'admin_label' => true
					),
					array(
						'type' => 'textfield', 'heading' => 'Link',
						'param_name' => 'link', 'admin_label' => true
					),
					/*
					array(
						'type' => 'attach_image', 'heading' => 'Ảnh',
						'param_name' => 'img'
					),
					
				)
			)*/
		
		)
	)
);