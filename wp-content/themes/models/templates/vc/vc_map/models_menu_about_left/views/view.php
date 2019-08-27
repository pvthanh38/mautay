<link href="<?php echo get_site_url(); ?>/files/ver-down.css" rel="stylesheet" type="text/css">
<div class="s-left">
    <div id="s-left" class="s-mod">
        <div class="s-block">
            <div class="s-block-title">
                <div class="s-block-title-left">
                    <div class="s-block-title-right">
                        <div class="s-block-title-bg">
                            <h3>About</h3></div>
                    </div>
                </div>
            </div>

            <div class="s-block-content ver-down-cat">
                <ul class="ver-down">
				<?php
				$theme_locations = get_nav_menu_locations();
				
				$menu_obj = get_term( $theme_locations['about_left_menu'], 'nav_menu' );
				$menu_name = $menu_obj->name;
				$itemss = wp_get_nav_menu_items($menu_obj);
				//print_r($itemss); die;
				foreach($itemss as $item){
				 ?>
					<li class=""><a href="<?php echo $item->url ?>"><span><span><?php echo $item->title ?></span></span></a></li>
				<?php } ?>
                    
                    
                </ul>
            </div>
            <div class="clb"></div>
        </div>
    </div>
</div>