<link href="<?php echo get_site_url(); ?>/files/layout3.css" rel="stylesheet" type="text/css">

         <div class="s-center" style="width: 100%;">
            <div id="s-content">
               <div class="content">
               	<?php
					
					$post_hien = [];
					$terms = get_terms( array( 'taxonomy' => 'category', 'hide_empty' => false ));
					foreach($terms as $term){
						$k = get_term($term,'category');
						$args = array(
						'post_type' => 'post',
						'posts_per_page' => 1,
						'tax_query' => array(
							array(
							'taxonomy' => 'category',
							'field' => 'term_id',
							'terms' => $term->term_id
							 )
						  )
						);
						$q = new WP_Query( $args );
						if(count($q->posts) > 0){
							$post_hien[] = $q->posts[0]->ID;
						}
					}
					
					$args = array(
					'post_type' => 'post',
					'post__in' => $post_hien,
					);
					$q = new WP_Query( $args );
					//print_r($q->posts);
					if(count($q->posts) > 0) {
					foreach($q->posts as $l){
						$cats = wp_get_post_terms( $l->ID, 'category', array( 'orderby' => 'term_id' ) );
					?>
	                  <div class="blog-category-3 none">
	                     <div class="category-title">
	                        <div class="category-title-left">
	                           <div class="category-title-right">
	                              <div class="category-title-bg">
	                                 <h2 align="left"><a href="<?php if($cats){ echo get_term_link($cats[0]->term_id); } ?>"><?php if($cats){ echo $cats[0]->name; } ?></a></h2>
	                              </div>
	                           </div>
	                        </div>
	                     </div>
	                     <div class="article-content">
	                        <div class="article-top">
	                           <h3 class="clb"><a href="<?php echo get_permalink($l->ID); ?>" class="title" title="<?php echo $l->post_title; ?>"><?php echo $l->post_title; ?></a></h3>
	                           <a href="<?php echo get_permalink($l->ID); ?>" title="<?php echo $l->post_title; ?>"><img src="<?php echo get_the_post_thumbnail_url($l->ID); ?>" width="210" height="280" title="<?php echo $l->post_title; ?> " alt="<?php echo $l->post_title; ?> " border="0"></a>
	                           <div class="bg-img"></div>
	                           <div class="brief">
	                              <p><?php echo $l->post_excerpt;?></p>
	                           </div>
	                           <div class="read-more"><a title="Read more" href="<?php echo get_permalink($l->ID); ?>">Read more</a></div>
	                           <div id="icons">
	                              <div class="view"><span><?php echo getpostviews($l->ID); ?></span></div>
	                              <div class="comment"><a href="<?php echo get_permalink($l->ID); ?>#comments">0 Comments</a></div>
	                           </div>
	                        </div>
	                        <div class="article-other">
	                           <ul>
	                           </ul>
	                        </div>
	                     </div>
	                  </div>
					<?php }} ?>
                  <div class="clb"></div>
               </div>
            </div>
            <div class="clb"></div>
         </div>
         
      