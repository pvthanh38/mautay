<?php get_header(); ?>
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
                                </ul>
                            </div>
                            <div class="clb"></div>
                        </div>
                    </div>
                </div>
                <div class="s-center">
                    <div id="s-content">
                        <div class="content">
                            <h1 class="title">NEWS</h1>
                            <br>
                            <div class="article-list">
                                <h3><a href="http://tay-models.com/Blog/Magda-c32a53.html" class="title">THE QUEEN</a></h3>
                                <span class="date"></span>
                                <div style="text-align:center; padding:20px 0;"><a href="http://tay-models.com/Blog/Magda-c32a53.html" class="title"><img src="http://tay-models.com/media/article/1409765379_1.jpg" width="360" title="THE QUEEN " alt="THE QUEEN " border="0"></a></div>
                                <div class="brief clb">
                                    <p style="text-align: center;"><strong>Model</strong>: Magda - <strong>Photographer</strong>: Manhbi - <strong>Stylist:</strong> Duy Anh - <strong>Make up</strong>: Cao Tuan Dat - <strong>Hair</strong>: Gil Nguyen - <strong>Designer</strong>: Bui Thanh Thuy<strong> <br><br>
                                        </strong>
                                    </p>
                                </div>
                                <div>
                                    <p style="text-align: center;"><strong>SANH DIEU MAG, SEPT 2104 ISSUE </strong></p>
                                    <p style="text-align: center;">&nbsp;</p>
                                    <p style="text-align: center;"><img width="960" height="658" alt="" src="/media/fck/image/10494660_691522550932688_3863642463754546189_n.jpg"></p>
                                    <p style="text-align: center;">&nbsp;</p>
                                    <p style="text-align: center;"><img width="690" height="960" alt="" src="/media/fck/image/Sanh%20dieu/10338711_691522507599359_4942422286220768572_n.jpg"></p>
                                    <p style="text-align: center;">&nbsp;</p>
                                    <p style="text-align: center;"><img width="698" height="960" alt="" src="/media/fck/image/Sanh%20dieu/10411089_691522654266011_3576121096548620648_n.jpg"></p>
                                    <p style="text-align: center;">&nbsp;</p>
                                    <p style="text-align: center;"><img width="690" height="960" alt="" src="/media/fck/image/Sanh%20dieu/10620513_691522687599341_6386112315515974830_n.jpg"></p>
                                    <p style="text-align: center;">&nbsp;</p>
                                    <p style="text-align: center;"><img width="704" height="960" alt="" src="/media/fck/image/Sanh%20dieu/10645193_691522604266016_9105790372036747379_n.jpg"></p>
                                </div>
                                <div id="icons">
                                    <div class="view"><span>24115</span> views</div>
                                    <div class="comment"><a href="http://tay-models.com/Blog/Magda-c32a53.html#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="article-list">
                                <h3><a href="http://tay-models.com/Blog/LA-MUSE-DUN-PEINTRE-c32a51.html" class="title">LA MUSE DUN PEINTRE</a></h3>
                                <span class="date"></span>
                                <div style="text-align:center; padding:20px 0;"><a href="http://tay-models.com/Blog/LA-MUSE-DUN-PEINTRE-c32a51.html" class="title"><img src="http://tay-models.com/media/article/1402765478_chon.jpg" width="360" title="LA MUSE DUN PEINTRE" alt="LA MUSE DUN PEINTRE" border="0"></a></div>
                                <div class="brief clb">
                                    <p style="text-align: justify;">Helena looks absolutely amazing in the latest editorial photo shoot for Hang Hieu magazine, June 2014 issue</p>
                                    <br>
                                    <div style="position: absolute; top: -1999px; left: -1988px; text-align: justify;" id="stcpDiv">TOM PECHEU</div>
                                </div>
                                <div>
                                    <p style="text-align: center;"><img width="1500" height="1011" src="/media/fck/image/helena%20/0-1.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/3.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/4.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/5.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/6.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/7.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/9.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/10.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/11.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/12.jpg" alt=""></p>
                                    <p style="text-align: center;"><img width="1275" height="1718" src="/media/fck/image/helena%20/13.jpg" alt=""></p>
                                </div>
                                <div id="icons">
                                    <div class="view"><span>565</span> views</div>
                                    <div class="comment"><a href="http://tay-models.com/Blog/LA-MUSE-DUN-PEINTRE-c32a51.html#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="article-list">
                                <h3><a href="http://tay-models.com/Blog/THOMAS BANNER-c32a50.html" class="title">ROCK &amp; ANNIE SHOW</a></h3>
                                <span class="date"></span>
                                <div style="text-align:center; padding:20px 0;"><a href="http://tay-models.com/Blog/THOMAS BANNER-c32a50.html" class="title"><img src="http://tay-models.com/media/article/1384944839_COVERTOM.jpg" width="360" title="ROCK &amp; ANNIE SHOW " alt="ROCK &amp; ANNIE SHOW " border="0"></a></div>
                                <div class="brief clb">
                                    <p>Our model, Thomas Banner, paired with Vietnamese model Quanh Di opened Rock &amp; Annie show last night at Hanoi Club hotel. </p>
                                </div>
                                <div>
                                    <p style="text-align: left;">Here are some photos of the show:<br>
                                        <br>
                                        <img width="420" height="629" src="/media/fck/image/kate%20for%20headphone/thomas_banner_la_nguoi_mau_trong_show_thoi_trang_cua_rock_va_annie.jpg" alt=""><br>
                                        <br>
                                        <img width="424" height="640" src="/media/fck/image/kate%20for%20headphone/do_lot_rock__annie_4.jpg" alt=""><br>
                                        <br>
                                        <img width="350" height="524" src="/media/fck/image/kate%20for%20headphone/nguoi_mau_thomas_banner_va_nguoi_mau_quanh_di_bieu_dien_trong_show_thoi_trang_cua_rock_va_annie_0.jpg" alt=""><br>
                                        <br>
                                        &nbsp;
                                    </p>
                                </div>
                                <div id="icons">
                                    <div class="view"><span>86528</span> views</div>
                                    <div class="comment"><a href="http://tay-models.com/Blog/THOMAS BANNER-c32a50.html#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="article-list">
                                <h3><a href="http://tay-models.com/Blog/exclusive photo shoot-c32a49.html" class="title">KATE FOR LOA.COM.VN</a></h3>
                                <span class="date"></span>
                                <div style="text-align:center; padding:20px 0;"><a href="http://tay-models.com/Blog/exclusive photo shoot-c32a49.html" class="title"><img src="http://tay-models.com/media/article/1384739742_cover.jpg" width="360" title="KATE FOR LOA.COM.VN " alt="KATE FOR LOA.COM.VN " border="0"></a></div>
                                <div class="brief clb">
                                    <p>Kate shows off her unique beauty in an old village&nbsp;</p>
                                </div>
                                <div>
                                    <p>&nbsp;</p>
                                    <p><img width="682" height="1024" src="/media/fck/image/kate%20for%20headphone/1.jpg" alt=""></p>
                                    <p><br>
                                        <img width="1024" height="683" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs.jpg" alt=""><br>
                                        &nbsp;
                                    </p>
                                    <p><img width="1024" height="683" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs_8.jpg" alt=""><br>
                                        &nbsp;
                                    </p>
                                    <p><img width="682" height="1024" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs_9.jpg" alt=""></p>
                                    <p><br>
                                        <img width="1024" height="683" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs_12.jpg" alt="">
                                    </p>
                                    <p><br>
                                        <img width="1024" height="683" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs_13.jpg" alt=""><br>
                                        &nbsp;
                                    </p>
                                    <p><img width="682" height="1024" src="/media/fck/image/kate%20for%20headphone/DuongLam_SVHouse_Sennheiser_Nocs_21.jpg" alt=""></p>
                                    <p><br>
                                        Photographer: Manhbi<br>
                                        Stylist: Lyskeli <br>
                                        Make up artist: Cao Tuan Dat<br>
                                        Model: Kate - Taymodels <br>
                                        Costume: 31 Boutique
                                    </p>
                                </div>
                                <div id="icons">
                                    <div class="view"><span>107248</span> views</div>
                                    <div class="comment"><a href="http://tay-models.com/Blog/exclusive photo shoot-c32a49.html#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>
                            <div class="article-list">
                                <h3><a href="http://tay-models.com/Blog/Editorial-c32a48.html" class="title">STYLE COVER GIRL</a></h3>
                                <span class="date"></span>
                                <div style="text-align:center; padding:20px 0;"><a href="http://tay-models.com/Blog/Editorial-c32a48.html" class="title"><img src="http://tay-models.com/media/article/1383455532_covergirl.jpg" width="360" title="STYLE COVER GIRL" alt="STYLE COVER GIRL" border="0"></a></div>
                                <div class="brief clb">
                                    <p>After a month of waiting for next issue, the newest publication of Style magazine is finally on the air and it brings us a big "wow" when seeing our super beautiful model, Kate on the cover. </p>
                                </div>
                                <div></div>
                                <div id="icons">
                                    <div class="view"><span>13958</span> views</div>
                                    <div class="comment"><a href="http://tay-models.com/Blog/Editorial-c32a48.html#comments">0 Comments</a></div>
                                </div>
                            </div>
                            <div class="line"></div>
                        </div>
                        <div class="page">
                            <a href="javascript:void(0)" class="page_no_selected">
                                <div>1</div>
                            </a>
                            <a class="page_no" href="http://tay-models.com/Blog/NEWS ?page=2">
                                <div>2</div>
                            </a>
                            <br>
                        </div>
                    </div>
                    <div class="clb"></div>
                </div>
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
                                    <li>
                                        <a href="http://tay-models.com/Blog?y=2014">2014</a>
                                        <ul class="month">
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2014&amp;m=09">September (1)</a>
                                            </li>
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2014&amp;m=08">August (1)</a>
                                            </li>
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2014&amp;m=06">June (1)</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="http://tay-models.com/Blog?y=2013">2013</a>
                                        <ul class="month">
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2013&amp;m=11">November (6)</a>
                                            </li>
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2013&amp;m=10">October (3)</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="http://tay-models.com/Blog?y=2012">2012</a>
                                        <ul class="month">
                                            <li>
                                                <a href="http://tay-models.com/Blog?y=2012&amp;m=08">August (1)</a>
                                            </li>
                                        </ul>
                                    </li>
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