<?php
/*
Plugin Name: GeoDataSource Country Region Dropdown
Plugin URI: https://www.geodatasource.com/software/country-region-dropdown-menu
Description: Provides country and region dropdown with shortcodes specified.
Version: 1.0.1
Author: GeoDataSource
Author URI: https://www.geodatasource.com/
*/

class GeoDataSourceCountryRegionDropDown {

	function init() {
		add_action( 'admin_menu', array( &$this, 'admin_page' ) );
		add_shortcode( 'gds-country-dropdown', array( &$this, 'gds_country_wp' ) );
		add_shortcode( 'gds-region-dropdown', array( &$this, 'gds_region' ) );

		// Checks if Contact Form 7 is installed.
		if ( class_exists( 'WPCF7' ) ) {
			wpcf7_add_form_tag( 'gds_country_dropdown', array( &$this, 'gds_country_handler' ), array( 'name-attr' => true ) );
			wpcf7_add_form_tag( 'gds_region_dropdown', array( &$this, 'gds_region' ) );
		}
	}

	function admin_page() {
		add_options_page( 'GeoDataSource Country Region DropDown', 'GeoDataSource Country Region DropDown', 'edit_pages', 'geodatasource-country-region-dropdown', array( &$this, 'admin_options' ) );
	}

	function admin_options() {
		if ( !is_admin() ) {
			return;
		}

		echo '
		<div class="wrap">
			<h1>GeoDataSource Country Region DropDown</h1>
			<p>
				GeoDataSource Country Region DropDown plugin use the shortcode to display the country and region dropdown. A dropdown menu created with javascript that allows user to implement country-region dropdown list effortlessly. Country-Region Dropdown Menu is needed mostly in forms where the region field will get updated automatically when there is a change on the country field. It can be applied as easy as by entering the given required shortcode into the post, article, page or Contact Form.
			</p>

			<p><strong>Note: The region field is depending on the country field. Therefore, the region field will not work if it is stand-alone.</strong></p>

			<p>&nbsp;</p>

			<div>
				<div style="border-bottom:1px solid #ccc;">
					<h2>Shortcode for WordPress</h2>
				</div>

				<p>
					The following shortcode is required to be embedded in any post, article or page. Then the country or region dropdown will be displayed.

					<h4>Shortcode used to show country dropdown</h4>
					<code> [gds-country-dropdown] </code>

					<h4>Shortcode used to show country dropdown with default country value (ISO3166-1 alpha-2 Country Code)</h4>
					<code> [gds-country-dropdown default="US"] </code>

					<h4>Shortcode used to show region dropdown</h4>
					<code> [gds-region-dropdown] </code>
				</p>
			</div>

			<p>&nbsp;</p>

			<div>
				<div style="border-bottom:1px solid #ccc;">
					<h2>Shortcode for Contact Form 7</h2>
				</div>

				<p>
					The following shortcode is required to be embedded in Contact Form. Then the country or region dropdown will be shown.

					<h4>Shortcode used to show country dropdown</h4>
					<code> [gds_country_dropdown] </code>

					<h4>Shortcode used to show country dropdown with default country value (ISO3166-1 alpha-2 Country Code)</h4>
					<code> [gds_country_dropdown gds_country "US"] </code>

					<h4>Shortcode used to show region dropdown</h4>
					<code> [gds_region_dropdown] </code>
				</p>
			</div>

			<p>&nbsp;</p>

			<p>If you like this plugin, please leave us a <a href="https://wordpress.org/support/view/plugin-reviews/geodatasource-country-region-dropdown">5 stars rating</a>. Thank You!</p>
		</div>';
	}

	function gds_country_wp( $atts ) {
		$a = shortcode_atts( array(
			'default' => '',
		), $atts );

		wp_enqueue_script( 'geodatasource_country_region_dropdown_cr_js', plugins_url( 'assets/js/geodatasource-cr.min.js', __FILE__ ), array('jquery-ui-selectmenu'), null, true );

		$gds_country_wp = '
			<select class="gds-cr" country-data-region-id="gds-cr-one" country-data-default-value="' . $a["default"] . '"></select>
		';
		return $gds_country_wp;
	}

	function gds_country_handler( $tag ) {
		$default = isset( $tag->values[0] ) ? $tag->values[0] : '' ;

		wp_enqueue_script( 'geodatasource_country_region_dropdown_cr_js', plugins_url( 'assets/js/geodatasource-cr.min.js', __FILE__ ), array('jquery-ui-selectmenu'), null, true );

		$gds_country_handler = '
			<select class="gds-cr" country-data-region-id="gds-cr-one" country-data-default-value="' . $default . '"></select>
		';
		return $gds_country_handler;
	}

	function gds_region() {
		$gds_region = '
			<select id="gds-cr-one" ></select>
		';
		return $gds_region;
	}

}

$geodatasource_country_region_dropdown = new GeoDataSourceCountryRegionDropDown();
$geodatasource_country_region_dropdown->init();

?>