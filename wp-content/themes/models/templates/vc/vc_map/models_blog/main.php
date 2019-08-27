<?php

class models_blog extends vtm_vc_map {
	function loadAssets(){

	}
}

new models_blog(
	array(
		'name'     => __( 'Models Blog', 'models' ),
		'base'     => 'models_blog',
		'category' => __( 'Themes Elements', 'models' ),
		'params'   => array(
			
			),
			
		
		)
	);