<?php

class gasha_text_block_2 extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_text_block_2(
	array(
		'name'     => __( 'Gasha Text Block Style 2', 'gasha' ),
		'base'     => 'text_block_2',
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
				'type' => 'attach_image', 'heading' => 'Ảnh',
				'param_name' => 'img'
			),
			array(
				'type' => 'textarea_html', 'heading' => 'Mô tả',
				'param_name' => 'content', 'admin_label' => true
			),
		)
		)
	);