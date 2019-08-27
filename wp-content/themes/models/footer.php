<div class="s-footer">
    <div class="container clearfix" style="padding:10px;">
        <div class="left">
            <div class="copyright"><?php the_field('copyright', 'option'); ?></div>
            <div id="s-bottommenu" class="s-mod">
                <ul class="menu-bottom">
				<?php
							$theme_locations = get_nav_menu_locations();
							
							$menu_obj = get_term( $theme_locations['footer_menu'], 'nav_menu' );
							$menu_name = $menu_obj->name;
							$itemss = wp_get_nav_menu_items($menu_obj);
							//print_r($itemss); die;
							foreach($itemss as $item){
							 ?>
								<li class="  none"><a href="<?php echo $item->url ?>"><span><span><?php echo $item->title ?></span></span></a></li>
							<?php } ?>
				</ul></div>
        </div>
        <div class="right">
            <div id="s-footer" class="s-mod"><p><span>Follow us:</span></p>
                <ul>
                    <li class="youtube"><a target="_blank" href="<?php the_field('youtube', 'option'); ?>"><img alt="" src="<?php echo get_site_url(); ?>/files/youtube.png"></a></li>
                    <li class="facebook"><a target="_blank" href="<?php the_field('facebook', 'option'); ?>"><img alt="" src="<?php echo get_site_url(); ?>/files/facebook.png"></a></li>
                    <li class="twitter"><a target="_blank" href="<?php the_field('twitter', 'option'); ?>"><img alt="" src="<?php echo get_site_url(); ?>/files/twitter.png"></a></li>
                    <li class="instagram"><a target="_blank" href="<?php the_field('instagram', 'option'); ?>"><img alt="" src="<?php echo get_site_url(); ?>/files/instagram.png"></a></li>
                </ul></div>
				
            <div class="skyoss">
                <?php the_field('powered_by', 'option'); ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    var S_WEB_URL = "http://tay-models.com/"
    var PHP_SELF = ""
    //-->
</script>



<div id="lbdictex_find_popup" class="lbexpopup hidden" style="position: absolute; top: 0px; left: 0px;">
    <div class="lbexpopup_top">
        <h2 class="fl popup_title">&nbsp;</h2>
        <ul>
            <li>
                <a class="close_main popup_close" href="http://tay-models.com/#">&nbsp;</a>
            </li>
        </ul>
        <div class="clr"></div>
    </div>
    <div class="popup_details"></div>
    <div class="popup_powered">abc</div>
</div>
<div id="lbdictex_ask_mark" class="hidden" style="position: absolute; top: 0px; left: 0px;">
    <a class="lbdictex_ask_select" href="http://tay-models.com/#">&nbsp;</a>
</div>
<?php
wp_footer();
do_action('vtm_before_body_end');
?>
</body>
</html>