<!DOCTYPE html>
<!-- saved from url=(0022)http://tay-models.com/ -->
<html <?php language_attributes() ?>>
<head>
    <?php do_action( 'vtm_after_head_start' ); ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <?php if ( is_front_page() ) {
        ?>
        <title><?php bloginfo( 'name' ) ?></title>
        <?php
    } else {
        ?>
        <title><?php bloginfo( 'name' ); ?> - <?php wp_title(); ?></title>
        <?php
    } ?>
    <!--<base href="http://tay-models.com/">--><base href=".">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Tay Models là một công ty chuyên hoạt động trong lĩnh vực cung cấp người mẫu và tài năng nước ngoài.">
    <meta name="keywords" content="cung cấp người mẫu Việt Nam và nước ngoài, sản xuất chiến dịch quảng bá sản phẩm, tổ chức sự kiện, tư vấn giải pháp sáng tạo, tư vấn chiến lược Marketing">
    <meta name="author" content="skyoss.net">
    <meta name="copyright" content="© Copyright 2013 Tay-Models.com">

    <link rel="icon" href="<?php echo get_site_url(); ?>/files/favicon.ico" type="image/ico">
    <link rel="shortcut icon" href="<?php echo get_site_url(); ?>/files/favicon.ico" type="image/ico">

    <link href="<?php echo get_site_url(); ?>/files/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/style.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/layout.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/layout2.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/style2.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/dropdown.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/files/ver-down-cat.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_site_url(); ?>/wp-content/themes/models/style.css" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script type="text/javascript" src="<?php echo get_site_url(); ?>/files/owl.carousel.min.js"></script>
    <script async="" src="<?php echo get_site_url(); ?>/files/analytics.js"></script>
    <script src="<?php echo get_site_url(); ?>/files/bootstrap.min.js"></script>
    <script src="<?php echo get_site_url(); ?>/files/scroll.js"></script>
    <script src="<?php echo get_site_url(); ?>/files/jquery.matchHeight.js"></script>
    <script src="<?php echo get_site_url(); ?>/files/slick.min.js"></script>
    

    <?php wp_head(); ?>
    <?php do_action( 'vtm_before_head_end' ); ?>
</head>
<body <?php body_class(); ?>>

<div id="s-header">
    <div class="container">
        <div id="s-logo" class="s-mod"><p><a href="<?php echo get_site_url(); ?>"><img alt="" src="<?php the_field('logo', 'option'); ?>"></a></p></div>
        <div id="s-language" class="s-mod"><div class="lang">
                <a href="<?php echo get_site_url(); ?>" class="selected"><img src="<?php echo get_site_url(); ?>/files/en.gif" alt="English" border="0"></a>


            </div></div>
        <div id="menu">
			<div class="container">
				<div id="s-mainmenu" class="s-mod">
					<div class="navbar navbar-default">
						<div class="navbar-header hidden-lg hidden-md hidden-sm">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
							<a class="navbar-brand" href="<?php echo get_site_url(); ?>"><img src="<?php the_field('logo_mobile', 'option'); ?>" class="fl"></a>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav navbar-left">
							<?php
							$theme_locations = get_nav_menu_locations();
							//
							$menu_obj = get_term( $theme_locations['main-menu'], 'nav_menu' );
							$menu_name = $menu_obj->name;
							$itemss = wp_get_nav_menu_items($menu_obj);
							//print_r($itemss); die;
							foreach($itemss as $item){
								if($item->menu_item_parent == 0){
								?>
								<li class="has-dropdown  none"><a href="<?php echo $item->url ?>"><span><span><?php echo $item->title ?></span></span></a>
									<ul class="dropdown">
									<?php
									foreach($itemss as $item1){
									if($item1->menu_item_parent == $item->ID){
									?>
										<li class=""><a href="<?php echo $item1->url ?>"><?php echo $item1->title ?></a></li>
									<?php }} ?>
									</ul>
								</li>
							<?php }} ?>
									
									
								
							
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</div>