<?php get_header(); ?>
<?php if (have_posts()) the_post();
setpostview(get_the_ID()); ?>
<div id="s-body">
   <div class="container">
      <div class="body clearfix">
         <div class="s-left">
            <div id="s-left" class="s-mod">
               <div class="s-block-category">
                  <div class="s-block-title">
                     <div class="s-block-title-left">
                        <div class="s-block-title-right">
                           <div class="s-block-title-bg">
                              <h3><a href="http://tay-models.com/Blog">Blog</a></h3>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="s-block-content">
                     <ul class="ver-down-cat">
                       <?php 
                        $terms = get_terms( array( 'taxonomy' => 'category', 'hide_empty' => false) );
                        foreach($terms as $term){
                            $k = get_term($term,'category');
                            //print_r($k);
                        ?>
                            <li class="category"><a href="<?php echo get_term_link($k->term_id,'category'); ?>"><span><span><?php echo $k->name; ?></span></span></a></li>
                            
                        <?php } ?>
                  </div>
                  <div class="clb"></div>
               </div>
            </div>
         </div>
         <div class="s-center" >
            <div id="s-content">
               <script type="text/javascript" src="http://tay-models.com/js/jquery.tabs.js"></script>
               <div class="content">
                  <h1 class="title"><?php echo get_the_title(); ?></h1>
                  <span class="date"></span>
                  <div style="text-align:center; padding:20px 0;">
                  	<img src="<?php the_post_thumbnail_url('full');?>" width="360" title="THE QUEEN " alt="THE QUEEN " border="0"></div>
                  <div class="brief clb">
                     <p style="text-align: center;">
                     	<?php the_field('brief', the_ID()); ?>
                     </p>
                  </div>
                  <div class="clb"></div>
                  <div class="content">
                     <?php the_content(); ?>
                  </div>
                  <!-- <script type="text/javascript">var switchTo5x=true;</script>
                  <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
                  <script type="text/javascript">stLight.options({publisher: "ur-d7c4e3c3-1de9-501-1a16-699a1de5f7d2"});</script>	
                  <div class="share-button">
                     <span class="st_sharethis" displaytext="ShareThis" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets sharethis">ShareThis</span></span></span>
                     <span class="st_facebook" displaytext="Facebook" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets facebook">Facebook</span></span></span>
                     <span class="st_twitter" displaytext="Tweet" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets twitter">Tweet</span></span></span>
                     <span class="st_googleplus" displaytext="Google +" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets googleplus">Google +</span></span></span>
                     <span class="st_linkedin" displaytext="LinkedIn" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets linkedin">LinkedIn</span></span></span>
                     <span class="st_pinterest" displaytext="Pinterest" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets pinterest">Pinterest</span></span></span>
                     <span class="st_email" displaytext="Email" st_processed="yes"><span style="text-decoration:none;color:#000000;display:inline-block;cursor:pointer;" class="stButton"><span class="chicklets email">Email</span></span></span>
                  </div> -->
                  	<br/>
					<div class="addthis_inline_share_toolbox"></div>
					<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-550b934e62dc8908"></script>
                  	<div class="clb">
                     	<div class="fb-like col-lg-12" data-send="true" data-width="" data-show-faces="true" style="padding:10px 0;"></div>
                  	</div>
                  <div class="article-other">
                     <h3 class="title">Others</h3>
                     <ul>
                        <?php
							$related = new  WP_Query( array(  'post_type' => 'post','post_status' => 'publish', 'posts_per_page' => 10, 'post__not_in' => array(get_the_ID()) ) );
							
							if( $related ){
								foreach( $related->posts as $post ) {
								 ?>
								<li><a href="<?php echo get_permalink($post->ID); ?>" class="title"><?php echo $post->post_title; ?></a> <span></span></li>
								
								
							<?php }} ?>
                     </ul>
                  </div>
                  <div class="clb"></div>
               </div>
            </div>
            <div class="clb"></div>
         </div>
         <link href="<?php echo get_site_url(); ?>/files/ver-down.css" rel="stylesheet" type="text/css">
<div class="s-right">
	<div id="s-right" class="s-mod">
	   <div class="s-block-archive">
		  <div class="s-block-title">
			 <div class="s-block-title-left">
				<div class="s-block-title-right">
				   <div class="s-block-title-bg">
					  <h3>Archives</h3>
				   </div>
				</div>
			 </div>
		  </div>
		  <div class="s-block-content">
			 <ul class="year">
			 <?php
				$i = 1;
				$terms = get_terms( array( 'taxonomy' => 'archives', 'orderby'  => 'id','order'=> 'ASC','hide_empty' => false) );
				foreach($terms as $term){
					$k = get_term($term,'archives');
					if($k->parent == 0 && $i == 1){ $i++;
					?>
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><span><span><?php echo $k->name; ?></span></span></a>
					<ul class="month">
					<?php }elseif ($k->parent == 0 && $i != 1){ $i=1; ?>
						</ul>
					</li>
					<li class="category"><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }else{ 
					if($k->parent != 0 && $i == 1){ $i++;
					?>
					<ul class="month">
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }else{ ?>
					<li class=""><a href="<?php echo get_term_link($k->term_id,'archives'); ?>"><?php echo $k->name; ?></a></li>
					<?php }}  } ?>
				</ul>
		  </div>
		  <div class="clb"></div>
	   </div>
	</div>
 </div>
      </div>
   </div>
</div>
<?php get_footer(); ?>
