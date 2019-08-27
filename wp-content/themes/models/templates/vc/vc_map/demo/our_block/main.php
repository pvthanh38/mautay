<?php

class gasha_our_block extends vtm_vc_map {
	function loadAssets(){

	}
}

new gasha_our_block(
	array(
		'name'     => __( 'Gasha Our', 'gasha' ),
		'base'     => 'our_block',
		'category' => __( 'Themes Elements', 'gasha' )
		)
	);