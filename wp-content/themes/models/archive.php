<?php get_header(); 

?>
    <style>
        #icons {
            text-align: left;
        }
        #icons .view {
            display: inline-block;
            background: url(<?php echo get_site_url(); ?>/files/view.gif) no-repeat scroll left center transparent;
            padding-left: 20px;
            color: #494D55;
        }
        #icons .comment {
            display: inline-block;
            background: url(<?php echo get_site_url(); ?>/files/comment.gif) no-repeat scroll 0 0 transparent;
            padding-left: 20px;
            height: 16px;
            margin-left: 20px;
        }
    </style>
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
                                            <h3><a href="<?php echo get_site_url(); ?>/blog">Blog</a></h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="s-block-content">
                                <ul class="ver-down-cat">
                                     <?php 
                                    $terms = get_terms( array( 'taxonomy' => 'category', 'hide_empty' => false,'orderby'  => 'id','order'=> 'ASC') );
                                    foreach($terms as $term){
                                        $k = get_term($term,'category');
                                        if($k->name != 'Uncategorized'){
                                    ?>
                                        <li class="category"><a href="<?php echo get_term_link($k->term_id,'category'); ?>"><span><span><?php echo $k->name; ?></span></span></a></li>
                                        
                                    <?php }} ?>
                                </ul>
                            </div>
                            <div class="clb"></div>
                        </div>
                    </div>
                </div>
                <div class="s-center" style="width: 66%;">
                    <div id="s-content">
                        <div class="content">
						<?php $obj = get_queried_object(); ?>
                            <h1 class="title"><?php echo $obj ? $obj->name: 'BLOG'; ?></h1>
                            <br>
                            <?php if ( have_posts() ) : ?>
                            <?php
                            // Start the Loop.
                            while ( have_posts() ) :
                                the_post();
                              ?>
                            <div class="article-list">
                                <h3><a href="<?php the_permalink();?>" class="title"><?php the_title();?></a></h3><span class="date"></span>
                                <div style="text-align:center; padding:20px 0;">
                                    <a href="<?php the_permalink();?>" class="title"><img src="<?php echo get_the_post_thumbnail_url();?>" width="360" title="<?php the_title();?>" alt="<?php the_title();?>" border="0"></a>
                                </div>
                                <div class="brief clb"></div>
                                <div>
                                    <p><?php the_excerpt();?></p>
                                </div>
                                <div id="icons">
                                    <div class="view"><span><?php echo getpostviews(get_the_ID()); ?></span></div>
                                    <div class="comment"><a href="<?php the_permalink();?>#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>

                            <?php
                                endwhile;
                                echo '</ul>';
                                echo '<div class="page">';
                                // Previous/next page navigation.
                                the_posts_pagination( array(
                                    'prev_text'          => __( '&#x2190; Previous', 'twentyfifteen' ),
                                    'next_text'          => __( '&#x2192; Next', 'twentyfifteen' ),
                                    'before_page_number' => '',
                                ) );
                                echo '</div>';
                            else :?>
                                <li>
                                    <p style="text-align: left;">Không có nội dung nào được tìm thấy.</p>
                                </li>
                                </ul>
                            <?php
                            endif;
                            ?>

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