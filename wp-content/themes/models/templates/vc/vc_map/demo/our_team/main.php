<?php

class gasha_our_team extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_our_team(
	array(
		'name'     => __( 'Gasha Our Team', 'gasha' ),
		'base'     => 'our_team',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			array(
				'type' => 'textfield', 'heading' => 'Title',
				'param_name' => 'title', 'admin_label' => true
			),
			array(
					'type' => 'param_group', 'heading' => 'Content',
					'param_name' => 'content_view', 'params' => array(
						
						array(
							'type' => 'textfield', 'heading' => 'Name',
							'param_name' => 'name', 'admin_label' => true
						),
						array(
							'type' => 'textfield', 'heading' => 'Position',
							'param_name' => 'position', 'admin_label' => true
						),
						array(
							'type' => 'attach_image', 'heading' => 'Image',
							'param_name' => 'img', 'admin_label' => true
						),
						
						array(
							'type' => 'textarea', 'heading' => 'Description',
							'param_name' => 'des', 'admin_label' => true
						),
						
						
						
					)
				)
			)
		)
		
	);