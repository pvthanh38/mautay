<?php if ( !isset( $atts['num'] ) ) return; ?>

<?php
	//$terms = get_terms( array( 'taxonomy' => 'apartment-cat', 'hide_empty' => false,) );
	
?>
<?php
	global $wp_query;
	$array = [
		'post_status' => 'publish',
		'post_type' => 'apartments',
	];

	/*if ( isset( $_GET['type'] ) ){
		if ( $_GET['type'] != "" ){
			$array['tax_query'] =  array(
										array (
											'taxonomy' => 'apartment-cat',
											'field' => 'term_id',
											'terms' => $_GET['type'],
										)
									);
		}
	}
	*/
	if ( isset( $_GET['w'] ) ){
		if ( $_GET['w'] != "" ){
			$array['s'] = $_GET['w'];
			$array['sentence'] = true;
			
		}
	}
	
	if ( isset( $_GET['price'] ) ){
		if($_GET['price'] == 0){
			$array['meta_query'] = array(
				'relation'		=> 'AND',
				
				array(
					'key'		=> 'price_vnd',
					'value'		=> 0,
					'type'		=> 'NUMERIC',
					'compare'	=> '>='
				),
			);
		}
		if($_GET['price'] == 1){
			$array['meta_query'] = array(
				'relation'		=> 'AND',
				
				array(
					'key'		=> 'price_vnd',
					'value'		=> 20000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '<'
				),
			);
		}
		if($_GET['price'] == 2){
			$array['meta_query'] = array(
				'relation'		=> 'AND',
				
				array(
					'key'		=> 'price_vnd',
					'value'		=> 20000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '>='
				),
				array(
					'key'		=> 'price_vnd',
					'value'		=> 50000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '<='
				)
			);
		}
		if($_GET['price'] == 3){
			$array['meta_query'] = array(
				'relation'		=> 'AND',
				
				array(
					'key'		=> 'price_vnd',
					'value'		=> 50000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '>='
				),
				array(
					'key'		=> 'price_vnd',
					'value'		=> 100000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '<='
				)
			);
		}
		if($_GET['price'] == 4){
			$array['meta_query'] = array(
				'relation'		=> 'AND',
				
				array(
					'key'		=> 'price_vnd',
					'value'		=> 100000000,
					'type'		=> 'NUMERIC',
					'compare'	=> '>='
				),
				
			);
		}
	}
	if ( isset( $_GET['status'] ) ){
		if ( $_GET['status'] != "" ){
			$array['meta_query'][] = array(
					'key'		=> 'status',
					'value'		=> 'Available',
					'compare'	=> '='
				);
		}
	}
	if ( isset( $_GET['type'] ) ){
		if ( $_GET['type'] != "" ){
			$array['meta_query'][] = array(
					'key'		=> 'type',
					'value'		=> $_GET['type'],
					'compare'	=> 'LIKE'
				);
		}
	}
	if ( isset( $_GET['sort'] ) ){
		if($_GET['sort'] == 1){
			$array['orderby'] = 'date';
			$array['order'] = 'ASC';
		}
		if($_GET['sort'] == 2){
			$array['orderby'] = 'title';
			$array['order'] = 'ASC';
		}
		if($_GET['sort'] == 3){
			$array['orderby'] = 'title';
			$array['order'] = 'DESC';
		}
		if($_GET['sort'] == 4){
			$array['orderby'] = 'price_vnd';
			$array['order'] = 'ASC';
		}
		if($_GET['sort'] == 5){
			$array['orderby'] = 'price_vnd';
			$array['order'] = 'DESC';
		}
		
	}
	$array['posts_per_page'] =  $atts['num'];
	if ( isset( $_GET['paging'] ) ){
		if ( $_GET['paging'] != "" ){
			$array['paged'] =  $_GET['paging'];
			
		}
	}
	
    $q = new WP_Query($array);
	$wp_query = $q;
	$terms ="";
	foreach($q->posts as $q1){  
		$post_id = $q1->ID;
		$field = get_field_object('type', $post_id);
		if($field){
			$terms = $field['choices'];
		}
	}

?>
<div class="gasha-main-content ">
    <div class="apm-bg">
        <div class="apm-block-1">
            <div class="container">
                <div class="row">
                    <form action="">
                        <div class="col-md-4">
                            <div class="search">
                                <span><i class="fas fa-search"></i></span>
                                <input type="text" id="search" name="w" placeholder="Search now..." value="<?php echo $_GET['w']; ?>">
                                <input type="hidden" class="status_a" name="status" value="<?php echo $_GET['status']; ?>" >
                                <input type="submit" id="button" value="SEARCH">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="type">
                                <span>Type</span>
                                <select name="type" id="type">
									<option value="">All type</option>
								<?php foreach($terms as $t){ ?>
                                    <option <?php echo $_GET['type'] == $t ? "selected" : ""; ?> value="<?php echo $t ?>"><?php echo $t ?></option>
                                <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="price">
                                <span>Price</span>
                                <select name="price" id="price">
									<option value="0" <?php echo $_GET['price'] == 0 ? "selected" : ""; ?>>All price</option>
									<option value="1" <?php echo $_GET['price'] == 1 ? "selected" : ""; ?>>< 20,000,000 ₫</option>
                                    <option value="2" <?php echo $_GET['price'] == 2 ? "selected" : ""; ?>>20,000,000 ₫ - 50,000,000 ₫</option>
                                    <option value="3" <?php echo $_GET['price'] == 3 ? "selected" : ""; ?>>50,000,000 ₫ - 100,000,000 ₫</option>
                                    <option value="4" <?php echo $_GET['price'] == 4 ? "selected" : ""; ?>>> 100,000,000 ₫</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="sort">
                                <span>Sorting</span>
                                <select name="sort" id="sort">
                                    <option value="0" <?php echo $_GET['sort'] == 0 ? "selected" : ""; ?>>New</option>
                                    <option value="1" <?php echo $_GET['sort'] == 1 ? "selected" : ""; ?>>Old</option>
                                    <option value="2" <?php echo $_GET['sort'] == 2 ? "selected" : ""; ?>>A-Z</option>
                                    <option value="3" <?php echo $_GET['sort'] == 3 ? "selected" : ""; ?>>Z-A</option>
                                    <option value="4" <?php echo $_GET['sort'] == 4 ? "selected" : ""; ?>>Price asc</option>
                                    <option value="5" <?php echo $_GET['sort'] == 5 ? "selected" : ""; ?>>Price desc</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
	<style>
	.available{
		    position: absolute;
			top: 6px;
			background: #cc0d0d;
			padding: 10px 19px;
			color: #fff;
			left: 5px;
	}
	.sold{
		    position: absolute;
			top: 6px;
			background: #000;
			padding: 10px 19px;
			color: #fff;
			left: 5px;
	}
	</style>
	<div class="apm-block-2">
            <div class="container">
                <div class="filter-apartment">
                    <div class="onoffswitch">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch">
                        <label class="onoffswitch-label" for="myonoffswitch">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch" style="<?php echo $_GET['status'] == 1 ? 'right: 3px;':''; ?>"></span>
                        </label>
                    </div>
                    <div class="description">Only available house, apartment</div>
                </div>
                <div class="row">
				<?php 
				
				foreach($q->posts as $q1){  $post_id = $q1->ID; 
					//$terms = get_field_object('type',$post_id);
					//echo "<pre>";
					//print_r($terms); die;
					$img = get_the_post_thumbnail_url($post_id);?>
                    <div class="col-md-4">
                        <div class="items">
                            <div class="box-img">
                                <a href="<?php echo get_permalink($post_id); ?>"><img src="<?php echo $img; ?>" alt=""></a>
                                <span class="status <?php echo get_field("status",$q1->ID) == "Available" ? "available" : "sold"; ?>"><?php echo get_field("status",$q1->ID); ?></span>
                            </div>
                            <div class="box-info">
                                <a href="<?php echo get_permalink($post_id); ?>"><h2 class="title"><?php echo $q1->post_title ?></h2></a>
                                <h3 class="address"><?php echo get_field("address",$q1->ID); ?></h3>
                                <div class="group">
								<?php $field = get_field_object('type',$post_id); 
								$terms1 =  $field['value'];
								if($terms1){
								//print_r($terms1);
								foreach($terms1 as $tr){  ?>
								
								<span><?php echo $tr ?></span>
								<?php }} ?>
								</div>
                                <div class="price"><span class="price-left" price="<?php echo get_field("price_vnd",$q1->ID) ?>"><?php echo get_field("price_vnd",$q1->ID) ? number_format(get_field("price_vnd",$q1->ID), 0, '', ',') : ""; ?> ₫</span> ≈ <span class="price-right">$<?php echo get_field("price_dola",$q1->ID); ?> /  1 <?php echo get_field("option",$q1->ID) ?></span></div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
				<script>
				jQuery('.onoffswitch-label').click(function(){
					var vl = jQuery('.status_a').val();
					if(vl == ""){
						jQuery('.status_a').val(1);
						jQuery('.onoffswitch-switch').css('right','3px');
					}
					if(vl == 1){
						jQuery('.status_a').val("");
						jQuery('.onoffswitch-switch').css('right','21px');
					}
					jQuery(".apm-block-1 form").submit();
					
				});
				jQuery('#sort').change(function(){
					jQuery(".apm-block-1 form").submit();
				});
				</script>
				<style>
				.page-nav-container{
					text-align: center;
				}
				.pagenav{
					    background: #F4F4F4;
						width: fit-content;
						margin: 0 auto;
						padding: 10px 0px;
						cursor: pointer;
				}
				.page-nav-container a{
					background: #F4F4F4;
					color: #000;
					padding: 10px 15px;
				}
				.page-nav-container span.current{
					background: #2B3249;
					color: #fff;
					padding: 10px 15px;
				}
				</style>
				
				<?php
				$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
				$total_pages = $wp_query->max_num_pages;
				if($_GET['paging'] != ""){
					$str = paginate_links(array(
						'total' => $q->max_num_pages,
						'current' => $_GET['paging'],
						'prev_text' => __('<'),
						'next_text' => __('>')
					));
				}else{
					$str = paginate_links(array(
						'total' => $q->max_num_pages,
						'prev_text' => __('<'),
						'next_text' => __('>')
					));
				}
				preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $str, $match);
				if($match[0]){
					if(count($match[0]) > 0){
						foreach($match[0] as $k=>$mat){
							$link = explode('/',$mat);
							$link = array_filter($link);
							if (strpos(end($link), '?') !== false) {
								$num = count($link);
								unset($link[$num]);
							}
							$link = explode('?',end($link));
							
							$link1 = "";
							$actual_link = str_replace('&paging='.$_GET['paging'],'',$actual_link);
							$actual_link = str_replace('paging='.$_GET['paging'],'',$actual_link);
							if((int)$link[0] != 0){
								if (strpos($actual_link, '?') !== false) {
								
									$link1 =  $actual_link.'&paging='.$link[0];
								}else{
									//echo 2;
									$link1 =  $actual_link.'?paging='.$link[0];
								}	
							}else{
								if (strpos($actual_link, '?') !== false) {
									$link1 =  $actual_link.'&paging=1';
								}else{
									$link1 =  $actual_link.'?paging=1';
								}
							}
							
							
							$str = str_replace($mat,$link1,$str);
							
						}
					}
				}
				echo "<div class='page-nav-container'><div class='pagenav'>" . $str. "</div></div>";
				
				?>
                
            </div>
        </div>
		
</div>