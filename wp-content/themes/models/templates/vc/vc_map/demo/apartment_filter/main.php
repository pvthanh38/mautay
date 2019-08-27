<?php

class gasha_Apartment_Filter extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_Apartment_Filter(
	array(
		'name'     => __( 'Gasga filter Apartment', 'gasha' ),
		'base'     => 'apartment_filter',
		'category' => __( 'Themes Elements', 'gasha' ),
		'params'   => array(
			
			array(
						'type' => 'textfield', 'heading' => 'Số bài hiển thị',
						'param_name' => 'num', 'admin_label' => true
					),
		
		)
	)
);