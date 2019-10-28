
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eduline — Eduline在线教育平台|在线网校系统|在线教育系统|在线教育解决方案|在线教育系统|在线学习系统|在线培训系统</title>
    <meta content="在线教育，教育系统，在线教育系统，在线教育平台，在线教育网站，在线教育解决方案，网络教学系统，直播系统，点播系统，录播系统，在线约课，在线考试，在线题库，题库系统，在线教育app，在线网校系统，网校系统，培训系统，企业培训系统，企业内训系统，在线培训系统，在线教育系统，在线学习系统，慕课系统，教育系统源码，教育源码，教育源码" name="keywords">
    <meta content="Eduline多机构在线教育交易平台" name="description">
    <meta name="viewport" charset="UTF-8" content="user-scalable=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">

    <link rel="shortcut icon" href="http://try.51eduline.com/data/upload/2018/0808/14/5b6a91bca0b3b.ico" type="image/x-icon">

    <!-- 站点css -->
    <!--<link href="http://try.51eduline.com/addons/theme/stv1/_static/css/css.php?t=css&f=common_new.css,basic_new.css,common.css,index.css,logincss.css,media.css,style.css,style_add.css,style_new.css,wenda.css,_header_footer.css&v=20180814.css" rel="stylesheet" type="text/css" />-->
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/rest.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfont.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/common.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/index.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/css/style.css?v=20180814">
    <link rel="stylesheet" type="text/css" href="http://try.51eduline.com/addons/theme/stv1/_static/js/tbox/box.css?v=20180814">
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;}
    </style>
    <!--<script src="http://try.51eduline.com/addons/theme/stv1/_static/js/js.php?t=js&f=jquery.form.js,common.js,core.js,module.js,module.common.js,jwidget_1.0.0.js,jquery.atwho.js,jquery.caret.js,ui.core.js,ui.draggable.js,plugins/core.comment.js,plugins/core.digg.js&v=20180814.js"></script>-->
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.atwho.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery.caret.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/core.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.common.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/common.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/script.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/user.js?v=20180814"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/plugins/core.comment.js?v=20180814"></script>

    <script>
        //全局变量
        var SITE_URL  = 'http://try.51eduline.com';
        var UPLOAD_URL= 'http://try.51eduline.com/data/upload';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'course';
        var MID		  = '1668';
        var UID		  = '1668';
        var initNums  =  '140';
        var SYS_VERSION = '20180814';
        var _ROOT_    = 'http://try.51eduline.com';

        //注册登录模板
        var REG_LOGIN="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=regLogin";
        //邮箱验证地址
        var CLICK_EMIL="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=clickEmail";
        //异步注册地址
        var REG_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=ajaxReg";
        //异步登录
        var LOGIN_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=ajaxLogin";
        //退出登录
        var LOGINOUT_ADDRESS="http://try.51eduline.com/index.php?app=basic&mod=Passport&act=logout";
        //手机号正则
        var PHONE_MATCH = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/;
        //邮箱正则
        var EMAIL_MATCH = /([\w\-\.]+\@[\w\-\.]+\.[\w\-\.]+)/;

        $(function(){
            $('.backtop').click(function(){
                $('body,html').animate({scrollTop:0},300);
                return false;
            });
            $('.full-course').hover(function(){
                $(this).addClass('hover');
            },function(){
                $(this).removeClass('hover');
            });

            $(".search_index_val span a").click(function(){
                var span_Val = $(this).text();
                var a_Attr = $(this).attr("attr");
                $(".search_index_val p").html(span_Val);
                $("#search_cate").val(a_Attr);
                $(".search_index #search_combo_input").attr("placeholder","搜索"+span_Val);
                $(this).hide().siblings().show();
            })

            $(".search_index input").focus(function(){
                $(".search_index").css("width","250px");
                $(".search_index input").css("width","140px");
            })

        });

        $(window).scroll(function(){
            if($(window).scrollTop()>300){
                $('.backtop').fadeIn(300);
            }else{
                $('.backtop').fadeOut(200);
            }
        });

        if(navigator.userAgent.match(/(iPhone|Android|ios)/i)) {
            $(window).load(function () {
                $('.modular,.logos,.window-box').show();
                $('.users').attr('style','display:block');
            });
        }

        function closeMsg(obj){
            $(".news-msg").remove();
        }
    </script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ui.layer.js"></script>

    <!-- 站点js -->
    <!--[if lt IE 9]>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/html5shiv.js"></script>
    <![endif]-->
    <!--[if lt IE 9]><script src="js/html5.js" type="text/javascript"></script><![endif]-->

</head>
<body>



<div class="win hide"></div>

<div class="top">
    <div class="header_new2">
        <div class="top1">
            <div class="top1img">
                <a href="/" title="Eduline"><img src="http://try.51eduline.com/data/upload/2018/12/045c065a09b4e79.png" width="150"/></a>
            </div>

            <div class="nav">
                <ul>
                    <li >
                        <a href="http://try.51eduline.com" target="_self">首页</a>
                    </li>                        <li >
                        <a href="javascript:;" target="_self">课程</a>
                        <span class="course-class">
                            <a href="http://try.51eduline.com/course.html?vtype=1" target="_self">点播</a><a href="http://try.51eduline.com/course.html?vtype=2" target="_self">直播</a><a href="http://try.51eduline.com/album.html" target="_self">班级</a><a href="http://try.51eduline.com/lineclass.html" target="_self">线下</a>                            </span>                        </li>                        <li >
                        <a href="http://try.51eduline.com/exam.html" target="_self">考试</a>
                    </li>                        <li >
                        <a href="http://try.51eduline.com/school.html" target="_self">机构</a>
                    </li>                        <li >
                        <a href="http://try.51eduline.com/teacher.html" target="_self">名师</a>
                    </li>                        <li >
                        <a href="http://try.51eduline.com/vip.html" target="_self">会员</a>
                    </li>                        <li >
                        <a href="javascript:;" target="_self">更多</a>
                        <span class="course-class">
                            <a href="http://try.51eduline.com/mall.html" target="_self">商城</a><a href="http://try.51eduline.com/card_receipt/coupon.html" target="_self">卡券</a><a href="http://try.51eduline.com/news.html" target="_self">资讯</a><a href="http://try.51eduline.com/question.html" target="_self">问答</a><a href="http://try.51eduline.com/library.html" target="_self">资料</a>                            </span>                        </li>                </ul>
            </div>
        </div>

        <div class="top3">
            <!--消息提示-->
            <ul class="news-msg" style="display:none;">
                <a class="shanchu-ico" href="javascript:;" onClick="closeMsg(this)">×</a>



            </ul>
            <div class="search_index">
                <div class="search_index_val">
                    <div>
                        <p>课程</p><i></i>
                    </div>
                    <span>
                        <a href="javascript:void(0)" attr="course">课程</a>
                        <a href="javascript:void(0)" attr="school">机构</a>                        <a href="javascript:void(0)" attr="teacher">讲师</a>
                    </span>
                    <input value="video" id="search_cate" type="hidden" disabled />
                </div>
                <p class="bd_right"></p>
                <input type="text" id="search_combo_input" placeholder="搜索课程">
                <i class="search_start icon icon-sousuo" id="btn_search_site"></i>
            </div>
            <script>
                $(function(){
                    $('#btn_search_site').click(function(){
                        var search_cate = $('#search_cate').val();
                        var search_combo_input = $('#search_combo_input').val();
                        if(search_combo_input != ''){
                            if(search_cate == 'video'){
                                window.open("http://try.51eduline.com/course.html"+"?search="+search_combo_input);
                            }else if(search_cate == 'school'){
                                window.open("http://try.51eduline.com/school.html"+"?search="+search_combo_input);
                            }else if(search_cate == 'teacher'){
                                window.open("http://try.51eduline.com/teacher.html"+"?search="+search_combo_input);
                            }
                        }
                    });

                    $(".search_index_val").hover(function(){
                        $(".search_index").css("border-radius","4px 4px 4px 0px")
                    },function(){
                        $(".search_index").css("border-radius","4px 4px 4px 4px")
                    })
                })
                function closeMsg(){
                    $(".news-msg").remove();
                }
            </script>
            <div class="nav1">
                <div class="look_scanning">
                    <i></i>
                    <div class="ewm">
                        <div class="h5">
                            <div id="nav_h5_qrcode"><img style="display: block;" width="86" height="86" src="http://try.51eduline.com/index.php?app=basic&mod=Qrcode&act=index&config[content]=http%3A%2F%2Ftry.51eduline.com&config[print]=1" data-bd-imgshare-binded="1"></div>
                            <p>手机网页端</p>
                        </div>
                        <div class="app">
                            <div id="nav_app_qrcode"><img src="http://try.51eduline.com/index.php?app=basic&mod=Qrcode&act=index&config[content]=https%3A%2F%2Fwww.pgyer.com%2F5RDd%3Fversion%3D4.1&config[print]=1" data-bd-imgshare-binded="1"></div>
                            <p>APP下载</p>
                        </div>
                    </div>
                </div>
                <ul class="page_header_adiv">
                    <li class="header_top_nav">
                        <a href="http://try.51eduline.com/my/set_up/info.html">${user.username}</a>
                        <i class="icon-nav-arrow"></i>
                    </li>
                    <dl class="login-after-position">
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/index.html">个人中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/order.html">财务中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/set_up/info.html">我的设置</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/message/index.html">我的消息</a></dd>



                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/admin.html">后台管理</a></dd>

                        <dd class="login-after-bdbt"><a href="javascript:;" onClick="logout()">退出</a></dd>
                    </dl>

                </ul>
            </div>

            <div class="nav2">
                <a class="page_header_adiv" href="http://try.51eduline.com/school/authentication.html">机构入驻</a>
            </div>
        </div>
    </div>
</div>
<script>
    if($(".ewm").children().length>1){
        $(".ewm").width(203)
    }else{
        $(".ewm").width(93)
    }
</script>

<link rel="stylesheet" href="http://try.51eduline.com/apps/course/_static/css/course.css">
<style>
    .classlist .pic .huodong{width:70px;height:20px;background:#FF541F;display:inline-block;position:absolute;right:4px;bottom:0;text-align:center;color:#fff;line-height:20px;border-radius: 4px;}
    .classlist .pic .huodong i{font-size:14px;margin-right:2px;}
    .classlist .pic .hasevent {right:80px;}
</style>
<!--content start-->
<div class="content">
    <div class="wrap">
        <div class="class_left">
            <div class="search-box">
                <dl class="card-body">
                    <dd class="clearfix">
                        <span>分类：</span>
                        <!-- 顶级分类 -->
                        <ul class="select-list pb20">
                            <li class="selected"><a href="http://try.51eduline.com/course.html?search=java&cateId=">不限</a></li>
                            <li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=1">语言学习</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=4">古代诗词鉴赏</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=6">建造师考证课</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=7">中小学物理课</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=8">管理培训</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=9">考研 · 公务员</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=20">九零后家庭教育</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=21">出国 · 留学</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=27">福建省专升本</a>
                            </li><li class="" >
                                <a href="http://try.51eduline.com/course.html?search=java&cateId=34">大佬测试</a>
                            </li>                        </ul>
                        <!--子级分类-->
                    </dd>
                </dl>
            </div>

            <div class="search-box">
                <dl class="card-body">
                    <dd class="clearfix">
                        <span>会员：</span>
                        <ul class="select-list pb20">
                            <li class="selected">
                                <a href="http://try.51eduline.com/course.html?search=java&vip_id=0">不限</a>
                            </li>
                            <li >
                                <a href="javascript:;" class="screen" data-type="vip_id" data-value="1">VIP</a>
                            </li><li >
                                <a href="javascript:;" class="screen" data-type="vip_id" data-value="8">rf</a>
                            </li><li >
                                <a href="javascript:;" class="screen" data-type="vip_id" data-value="7">超级VIP</a>
                            </li>                        </ul>
                    </dd>
                </dl>
            </div>

            <div class="video-clearfix-nav">
                <div class="nav-item">
                    <span>类型：</span>
                    <label><input type="checkbox" data-type="vtype" data-value="2" class="screen" >直播</label>
                    <label><input type="checkbox" data-type="vtype" data-value="1" class="screen" >点播</label>
                </div>
            </div>

            <div class="content-card">
                <dl class="card-body" style="overflow:visible">
                    <dt>
                        <div class="nav-item active"><a href="http://try.51eduline.com/course.html" >综合排序</a></div>
                        <div class="nav-item ">
                            <a href="javascript:;" class="screen" data-type="orderBy" data-value="new">最新</a>
                        </div>
                        <div class="nav-item ">
                            <a href="javascript:;" class="screen" data-type="orderBy" data-value="scoredesc" id="">评分</a>
                        </div>
                        <div class="nav-item price-section  ">
                            <a href="javascript:(0);" class='screen' data-type="orderBy" data-value="t_price" >价格

                                <span><i class="Triangleup "></i><i class="Triangledow "></i></span></a>
                        </div>
                        <div class="nav-item price_ara">
                            <a href="javascript:;">价格区间<i class="icon-02"></i></a>
                            <div class="price_ara_box">
                                <ul class="price_ara_ul">
                                    <li class="screen " data-type="lower" data-value="1" >不限</li>
                                    <li class="screen " data-type="lower" data-value="0,99" >￥0-99</li>
                                    <li class="screen " data-type="lower" data-value="100,499" >￥100-499</li>
                                    <li class="screen " data-type="lower" data-value="500,1000" >￥500-1000</li>
                                    <li class="screen " data-type="lower" data-value="1000," >￥1000以上</li>
                                </ul>
                                <div class="price_ara_sw">
                                    <input placeholder="￥" type="text" name="lower" >
                                    <span>-</span>
                                    <input placeholder="￥" type="text" name="toper" >
                                    <a class="sub screen" data-type="lower" href="javascript:;" >确定</a>
                                </div>
                            </div>
                        </div>
                        <div class="special-video">
                            <div class="nav-item">
                                <label><input type="checkbox"  data-type="free" data-value="1" class="screen"  >免费</label>
                            </div>
                            <div class="nav-item">
                                <label><input type="checkbox"  data-type="best" data-value="1" class="screen"  >精选</label>
                            </div>
                            <div class="nav-item">
                                <label><input type="checkbox" data-type="charge" data-value="1" class="screen">可试听</label>
                            </div>
                            <div class="nav-item">
                                <label><input data-type="live" data-value="1"class="screen" type="checkbox" >正在直播</label>
                            </div>
                        </div>
                </dl>
                <div class="card-main ">
                    <ul class="classlist clearfix">

<#--
                        <li>
                            <div class="pic">
                                <a href="http://try.51eduline.com/course/178.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/165da6da07aa180_580_320_580_320.jpg" alt=""></a>
                                <img class="img_course" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png" alt="点播">
                                <!-- 显示活动类型 &ndash;&gt;


                            </div>
                            <h3>
                                <a href="http://try.51eduline.com/course/178.html">
                                    JAVA                                        </a>
                            </h3>
                            <div class="info">
                                <div class="fr">100人在学习</div>
                                <div class="price">￥100 <!-- <span class="del">￥100</span>&ndash;&gt;</div>
                            </div>
                            <div class="bot">
                                <div class="std">
                                    <a href="http://try.51eduline.com/teacher/80.html">
                                        <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/125da1914735f67_30_30_30_30.jpg" alt=""/>
                                    </a>
                                    <span><a href="http://try.51eduline.com/teacher/80.html">王新生</a></span>
                                </div>
                                <div class="name">
                                    <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=37">金科教育</a>
                                </div>
                            </div>
                        </li>-->
                        <#list list as videoList   >

                        <li>
                            <div class="pic">
                                <a href="http://try.51eduline.com/course/178.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/165da6da07aa180_580_320_580_320.jpg" alt=""></a>
                                <img class="img_course" src="http://try.51eduline.com/addons/theme/stv1/_static/images/course.png" alt="点播">
                                <!-- 显示活动类型 -->


                            </div>
                            <h3>
                                <a href="http://try.51eduline.com/course/178.html">
                                    ${videoList.playname}                                       </a>
                            </h3>
                            <div class="info">
                                <div class="fr">${videoList.studentcount}人在学习</div>
                                <div class="price">￥  ${videoList.price}  元    <!-- <span class="del">￥100</span>--></div>
                            </div>
                            <div class="bot">
                                <div class="std">
                                    <a href="http://try.51eduline.com/teacher/80.html">
                                        <img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/10/125da1914735f67_30_30_30_30.jpg" alt=""/>
                                    </a>
                                    <span><a href="http://try.51eduline.com/teacher/80.html">${videoList.teachername}</a></span>
                                </div>
                                <div class="name">
                                    <a href="http://try.51eduline.com/index.php?app=school&mod=School&act=index&id=37">${videoList.orgname}</a>
                                </div>
                            </div>
                        </li>

                        </#list>
                    </ul>
                </div>
                <div class="page">
                    <div class="pagebox">
                    </div>
                </div>
            </div>
        </div>

        <div class="guess_like">
            <h3 class="guess_like_tit">猜你喜欢</h3>
            <ul class="classlist02 clearfix">
                <li>
                    <div class="pic">
                        <a href="http://try.51eduline.com/course/5.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0814/13/5b726b963f7e7_580_320_580_320.jpg" alt=""></a>
                    </div>
                    <h3>
                        <a href="http://try.51eduline.com/course/5.html">Oracle数据..                                <span style="float: right;border: 1px solid #2b92f9;color: #2b92f9;border-radius: 3px;padding: 0 3px;">点播</span>
                        </a>
                    </h3>

                    <div class="info">
                        <div class="price"> ￥100.00                                                            </div>
                    </div>
                </li><li>
                    <div class="pic">
                        <a href="http://try.51eduline.com/course/6.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9eb72f6fd_580_320_580_320.png" alt=""></a>
                    </div>
                    <h3>
                        <a href="http://try.51eduline.com/course/6.html">C语言程序设计                                <span style="float: right;border: 1px solid #2b92f9;color: #2b92f9;border-radius: 3px;padding: 0 3px;">点播</span>
                        </a>
                    </h3>

                    <div class="info">
                        <div class="price"> ￥100.00                                <span class="sx">可试听</span>                            </div>
                    </div>
                </li><li>
                    <div class="pic">
                        <a href="http://try.51eduline.com/course/124.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2018/0903/14/5b8cd9be2c196_580_320_580_320.png" alt=""></a>
                    </div>
                    <h3>
                        <a href="http://try.51eduline.com/course/124.html">点播app测试用..                                <span style="float: right;border: 1px solid #2b92f9;color: #2b92f9;border-radius: 3px;padding: 0 3px;">点播</span>
                        </a>
                    </h3>

                    <div class="info">
                        <div class="price"> ￥200.00                                <span class="sx">可试听</span>                            </div>
                    </div>
                </li><li>
                    <div class="pic">
                        <a href="http://try.51eduline.com/live/166.html"><img class="lazyload" data-original="http://try.51eduline.com/data/upload/2019/06/175d07941490d11_580_320_580_320.png" alt=""></a>
                        <div class="txt">
                            <div class="fl orange class">直播中</div>
                            <span class="fl">进度：7/7节</span>
                        </div>
                    </div>
                    <h3>
                        <a href="http://try.51eduline.com/live/166.html">贝刃公益                                                                    <span style="float: right;border: 1px solid #2b92f9;color: #2b92f9;border-radius: 3px;padding: 0 3px;">直播</span>                            </a>
                    </h3>

                    <div class="info">
                        <div class="price"> ￥11.00                                                            </div>
                    </div>
                </li>            </ul>
        </div>
    </div>
</div>

<script>

    $(function(){
        $(".pagebox a").click(function(e){
            e = e || window.event;
            if(e.preventDefault) {
                e.preventDefault();
                e.stopPropagation();
            }else{
                e.returnValue = false;
                e.cancelBubble = true;
            }
            var type = 'p',
                value = $(this).attr('p'),
                replace = {p:value},
                baseUrl = "http://try.51eduline.com/course.html";
            window.location.href = getRequestUrl(type,value,baseUrl,replace);
        });
        //同步请求
        $(".screen").click(function(){
            var _this = this;
            var totalPages = "1";
            var type = $(_this).data("type"),
                value = $(_this).data("value"),
                baseUrl = "http://try.51eduline.com/course.html",
                replace = {p:1};
            if(type == 'lower'){
                if(!value){
                    var up = $("input[name='lower']").val();
                    var down = $("input[name='toper']").val();
                    if(up.match(/^\d+$/) && down.match(/^\d+$/)){
                        value = up+','+down;
                    }else{
                        ui.error("请输入数字");
                        return false;
                    }
                }
            }
            if(type == 'p'){
                value = $("input[name='pageNum']").val();
                if(parseInt(value) > parseInt(totalPages)){
                    value = totalPages;
                }
                replace = {p:value};
            }
            window.location.href = getRequestUrl(type,value,baseUrl,replace);
        });
    });

</script>

<!--footer start-->
<div class="post-service yensen">
    <div class="other-service">
        <div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>服务规则</span></a>
            <a target="_blank"                         href="http://try.51eduline.com/single/1.html"  >绑卡验证协议</a><a target="_blank"                         href="http://try.51eduline.com/single/2.html"  >会员服务协议</a><a target="_blank"                         href="http://try.51eduline.com/single/23.html"  >合作专区</a><a target="_blank"                         href="http://try.51eduline.com/single/25.html"  >机构帮助</a><a target="_blank"                         href="http://try.51eduline.com/single/26.html"  >机构入驻协议</a>            </div><div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>机构入驻</span></a>
            <a target="_blank"                         href="http://try.51eduline.com/single/4.html"  >第一步</a><a target="_blank"  href="javascript:;"
            >机构入驻</a><a target="_blank"                         href="http://try.51eduline.com/single/5.html"  >第二步</a><a target="_blank"                         href="http://try.51eduline.com/single/6.html"  >第三步</a><a target="_blank"  href="javascript:;"
            >第四步</a>            </div><div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>用户注册</span></a>
            <a target="_blank"                         href="http://try.51eduline.com/single/9.html"  >第一步</a><a target="_blank"                         href="http://try.51eduline.com/single/10.html"  >第二步</a><a target="_blank"                         href="http://try.51eduline.com/single/11.html"  >第三步</a><a target="_blank"  href="javascript:;"
            >第四步</a>            </div><div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>名师签约</span></a>
            <a target="_blank"                         href="http://try.51eduline.com/single/13.html"  >联系平台</a><a target="_blank"                         href="http://try.51eduline.com/single/14.html"  >后台审核</a><a target="_blank"                         href="http://try.51eduline.com/single/15.html"  >签约成功</a>            </div><div class="service-class" style='width:160px; '>
            <a target="_blank"  href="javascript:;"
            ><span>平台流程</span></a>
            <a target="_blank"  href="javascript:;"
            >个人用户</a><a target="_blank"                         href="http://try.51eduline.com/single/18.html"  >机构（名师）用户</a><a target="_blank"                         href="http://try.51eduline.com/single/19.html"  >第二级页面展示</a>            </div>        <div class="tel-box">
            <div class="week">关注官方微信</div>
            <div class="tel-icon">
                <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92f043126_120_120_120_120.jpg">
            </div>
        </div>
    </div>
    <div class="copyright-box">
        Copyright 2017 seition All Rights Reserved  |  蜀ICP 备 16004612号    </div>
</div>
<!--footer end-->
<div class="sidernav">
    <ul>
        <li>
            <a href="javascript:;"><i class="icon-01"></i></a>
            <div class="qq_and_phone_info_div">
                <div class="siderbox">
                    <p>分享到：</p>
                    <div class="bdsharebuttonbox">
                        <!-- <a data-cmd="more" class="bds_more " href="#"></a> -->
                        <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                        <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                        <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                        <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>

                        <script>
                            window._bd_share_config = {
                                "common": {
                                    "bdSnsKey": {
                                        "tqq": "https://share.baidu.com/code#"
                                    },
                                    "bdText": "",
                                    "bdMini": "2",
                                    "bdMiniList": ["tsina", "weixin", "qzone", "sqq", "renren", "copy"],
                                    "bdPic": "",
                                    "bdStyle": "1",
                                    "bdSize": "24"
                                },
                                "share": {},
                                "image": {
                                    "viewList": ["tsina", "weixin", "qzone", "sqq"],
                                    "viewText": "分享到：",
                                    "viewSize": "0"}
                            };
                            with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement(
                                'script')).src = 'http://try.51eduline.com/addons/theme/stv1/_static/js/baiduShare/static/api/js/share.js?cdnversion=' +
                                ~(-new Date() / 36e5)];
                        </script>
                    </div>
                </div>
            </div>
        </li>
        <!--<li>-->
        <!--<a href="javascript:;">-->
        <!--<i class="icon-02"></i>-->
        <!--</a>-->
        <!--<div class="xiala">-->
        <!--<img src="http://try.51eduline.com/data/upload//_120_120." alt="">-->
        <!--<p>扫描下载APP</p>-->
        <!--</div>-->
        <!--</li>-->

        <li>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3132698449&site=http://try.51eduline.com&menu=yes"> <i class="icon-03"></i>
            </a>
            <div class="qq_and_phone_info_div">
                <div class="siderbox">
                    <dl>
                        <dt class="qq_info_dt">
                            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3132698449&site=http://try.51eduline.com&menu=yes">
                                <span class="icon-qq"></span>QQ在线咨询</a>
                        </dt>
                    </dl>
                    <dl>
                        <dt><span class="icon-ph"></span>咨询热线：</dt>
                        <dd style="color:#188eee;">010-5334-5805</dd>
                        <dd style="color:#25c151;">136-2125-8074</dd>
                    </dl>
                </div>
            </div>
        </li>

        <li>
            <a href="javascript:;">
                <i class="icon-05"></i>
            </a>
            <div class="xiala">
                <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92e7ca6bf_120_120_120_120.png" alt="">
                <p>扫一扫关注官方<span style="color: #FB7D30">微博</span></p>
            </div>
        </li>

        <li>
            <a href="javascript:;">
                <i class="icon-06"></i>
            </a>
            <div class="xiala">
                <img src="http://try.51eduline.com/data/upload/2018/0808/14/5b6a92f043126_120_120_120_120.jpg" alt="">
                <p>扫一扫关注官方<span style="color: #8BDA64">微信</span></p>
            </div>
        </li>

        <li class="backtop"><a href="javascript:;"><i class="icon-07"></i></a></li>
    </ul>
</div>
<script src="http://try.51eduline.com/online_check.php?uid=1668&uname=13399182359&mod=Video&app=course&act=index&action=trace"></script>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/jquery.lazyload.min.js"></script>
<script type="text/javascript">
    $(function () {
        // 初始化
        $("img.lazyload").lazyload({
            effect: "fadeIn",
            placeholder: "http://try.51eduline.com/addons/theme/stv1/_static/images/loading_image.png"
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        sHref = window.location.href;
        var args = sHref.split("?");
        var  arr= args[1].split("=")

     //   esQuery(arr[1]);



    })
    function esQuery(playname){






        $.ajax({
            url:"/queryShopp",
            data:{playname:playname},
            type:"post",
            success:function (data) {
                alert(data)
            }
        })

    }
</script>
</body>

</html>