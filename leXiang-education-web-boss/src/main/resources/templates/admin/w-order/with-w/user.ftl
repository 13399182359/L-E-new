
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户2 — 这是我的简介！请关注我</title>
    <meta content="这是我的简介！请关注我" name="keywords">
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
        var APPNAME   = 'home';
        var MID		  = '1691';
        var UID		  = '27';
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
                        <a href="http://try.51eduline.com/my/set_up/info.html">17635725158</a>
                        <i class="icon-nav-arrow"></i>
                    </li>
                    <dl class="login-after-position">
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/index.html">个人中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/order.html">财务中心</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/set_up/info.html">我的设置</a></dd>
                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/message/index.html">我的消息</a></dd>

                        <dd class="login-after-bdbt"><a href="http://try.51eduline.com/my/upload.html?tab=course">我的授课</a></dd>

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

<link rel="stylesheet" href="http://try.51eduline.com/apps/home/_static/css/usershow.css">
<!--header end  background:url(centerbg.jpg) center center no-repeat;-->
<style>
    /*个人主页、首页*/
    .center_right_tit div a.on{border-color:#00BED4;background-color:#fff;color:#00BED4;}
    .center_right_tit div a{float:right;display:block;padding:0 25px;height:50px;color:#00BED4;font-size:16px;line-height:50px;}
    .center_right_tit li a:hover{border-color:#00BED4;background-color:#fff;color:#00BED4;}
    .center_left li.on a{background-color:#00BED4!important;color:#fff!important;}
    .center-info h3 span img{border:none;}
    .bdimgshare-content,.sr-bdimgshare-black .bdimgshare-bg{display:none;}
    .center_left .top li{border-top:none;line-height:normal;}
    .look-home .on a{color:#00BED4;}
    .center_right_con{float:left;padding:0 0 50px;width:100%;}
    .content{padding-top:30px;background-color:#f0f0f2;}
    .bdshare-button-style1-24 .bds_more,.bdshare-button-style1-24 a{margin:6px;}
</style>


<form id="user_img_forms" action="http://try.51eduline.com/index.php?app=home&mod=User&act=doAddUserAttach" method="POST" enctype="multipart/form-data">

    <div class="centerbox" style="background:url(http://try.51eduline.com/data/upload/2018/0831/17/5b8905e1b9f1a.jpg) center center no-repeat;background-size: cover;">

        <div class="wrap">
            <div class="act">
                <div class="fr zhuang-left">
                    <a class="fx" href="javascript:;">
                        <i class="icon-fx"></i>
                    </a>
                    <div class="_share_my_firends">
                        <div class="_share_all_channel">
                            <i class="side-ills-fell" style="display: none;"></i>
                            <p>分享到：</p>
                            <div class="bdsharebuttonbox">
                                <!-- <a data-cmd="more" class="bds_more " href="#"></a> -->
                                <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                                <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                                <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                                <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>

                                <script>window._bd_share_config={"common":{"bdSnsKey":{"tqq":"http://share.baidu.com/code#"},"bdText":"","bdMini":"2","bdMiniList":["tsina","weixin","qzone","sqq","renren","copy"],"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{},"image":{"viewList":["tsina","weixin","qzone","sqq"],"viewText":"分享到：","viewSize":"0"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://try.51eduline.com/addons/theme/stv1/_static/js/bds/api/js/share.js?cdnversion='+~(-new Date()/36e5)];</script>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="center-info">
                <img src="http://try.51eduline.com/data/upload/avatar/02/e7/4f/original_200_200.jpg?v1535090208">
                <h3>
                    <span class="name">用户2</span>
                </h3>
                <div class="follow-private">
                    <a href="javascript:;" class="follow-bg01" onclick="setFollow(27, true)" >+关注</a>
                    <a href="javascript:ui.sendmessage(27, 0)" class="follow-bg01">私信</a>            </div>
                <!--<p>这是我的简介！请关注我</p>-->
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">
    window.onload = function () {
        var view_main_nav = document.getElementById('view_main_nav');

        window.onscroll = function () {
            var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;

            if (scrollTop <= 563) {
                $('#view_main_nav').removeAttr("style");
            } else if (scrollTop > view_main_nav.offsetTop && scrollTop <= 563) {
                $('#view_main_nav').removeAttr("style");
            } else if (scrollTop > view_main_nav.offsetTop) {
                $('#view_main_nav').attr("style", "position: fixed;top: 0;z-index: 9;background: #fff;");
            } else {
                $('#view_main_nav').removeAttr("style");
            }
        }
    };

    //    $('.wrap .box a').click(function () {
    //        $('body,html').animate({scrollTop:563},200);
    //    });

    window.URL = window.URL || window.webkitURL;
    var fileElem = document.getElementById("cover");

    function handleFiles(obj) {
        var files = obj.files,
            img = new Image();
        if (window.URL) {
            //            style="background:url(centerbg.jpg) center center no-repeat;"
            $('#cover_yulan').attr('style', "background:url(" + window.URL.createObjectURL(files[0]) +
                ") center center no-repeat");
        } else if (window.FileReader) {
            //opera不支持createObjectURL/revokeObjectURL方法。我们用FileReader对象来处理
            var reader = new FileReader();
            $('#cover_yulan').attr('style', "background:url(" + this.result + ") center center no-repeat");
        } else {
            //ie
            obj.select();
            obj.blur();
            var nfile = document.selection.createRange().text;
            document.selection.empty();
            img.src = nfile;
            $('#cover_yulan').attr('style', "background:url(" + nfile + ") center center no-repeat");
            //fileList.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src='"+nfile+"')";
        }
        $('#user_img_forms').submit();
    }

    function setFollow(uid, follow) {
        if (MID == '0') {
            reg_login();
            return;
        }
        action = follow ? 'doFollow' : 'unFollow';
        $.post(U('basic/Follow/' + action), {
            fid: uid
        }, function (data) {
            if (data.status) {
                ui.success(data.info);
                setTimeout('window.location.reload()', 1500);
            } else {
                ui.error(data.info);
            }
        }, 'json');
    }
</script>

<div class="'center-type">
    <div class="wrap">
        <ul class="look-home">
            <li class="on" >
                <a href="http://try.51eduline.com/user/index/27.html">首页</a>            </li>
            <li  > <a href="http://try.51eduline.com/user/course/27.html">点播</a></li>
            <li  > <a href="http://try.51eduline.com/user/live/27.html">直播</a></li>
            <!--<li    > <a href="http://try.51eduline.com/user/group/27.html">小组</a></li>-->
            <li  > <a href="http://try.51eduline.com/user/question/27.html">提问</a></li>
            <li  > <a href="http://try.51eduline.com/user/wenda/27.html">问答</a></li>
            <li  > <a href="http://try.51eduline.com/user/note/27.html">笔记</a></li>
            <li  > <a href="http://try.51eduline.com/user/fans/27.html">粉丝</a></li>
            <li  > <a href="http://try.51eduline.com/user/follow/27.html">关注</a></li>
        </ul>
    </div>
</div>
<div class="content cbg">
    <div class="wrap">
        <div class="left-all">
            <!--video-->
            <div class="center_right" style="margin-bottom: 30px;">
                <div class="center_right_tit">
                    <div class="center_right_tit">
                        <div class="user-con-title">
                            <h5>点播</h5>
                            <a href="http://try.51eduline.com/user/course/27.html">更多></a>
                        </div>
                    </div>
                </div>
                <div class="center_right_con Manage_all">
                    <ul class="user-imglist">
                        <li>
                            <a href="http://try.51eduline.com/course/124.html" class="img">
                                <img src="http://try.51eduline.com/data/upload/2018/0903/14/5b8cd9be2c196_266_138_266_138.png" class="lazyloading" >
                            </a>
                            <div class="user-title">
                                <h3><a href="http://try.51eduline.com/course/124.html">点播 app测试用 勿删</a></h3>
                                <p><a href="http://try.51eduline.com/teacher/3.html">测试机构2</a><a href="#">测试机构2讲师1</a></p>
                                <span>
                                                                                             <strong>¥200</strong>                                            <small>10人在学</small>
                                        </span>
                            </div>
                        </li><li>
                            <a href="http://try.51eduline.com/course/8.html" class="img">
                                <img src="http://try.51eduline.com/data/upload/2018/0808/15/5b6a9ed94c979_266_138_266_138.png" class="lazyloading" >
                            </a>
                            <div class="user-title">
                                <h3><a href="http://try.51eduline.com/course/8.html">python自动化运维篇</a></h3>
                                <p><a href="http://try.51eduline.com/teacher/54.html">测试机构1</a><a href="#">test</a></p>
                                <span>
                                                                                             <strong>¥100</strong>                                            <small>152人在学</small>
                                        </span>
                            </div>
                        </li><li>
                            <a href="http://try.51eduline.com/course/10.html" class="img">
                                <img src="http://try.51eduline.com/data/upload/2018/0808/16/5b6aa347ceadc_266_138_266_138.png" class="lazyloading" >
                            </a>
                            <div class="user-title">
                                <h3><a href="http://try.51eduline.com/course/10.html">点播按钮设置免费</a></h3>
                                <p><a href="http://try.51eduline.com/teacher/1.html">测试机构1</a><a href="#">测试机构1讲师1</a></p>
                                <span>
                                             <strong style="color: #56b02a;">免费</strong>
                                                                                            <small>144人在学</small>
                                        </span>
                            </div>
                        </li>                                                </ul>
                </div>
            </div>

            <!--live-->
            <div class="center_right">
                <div class="center_right_tit">
                    <div class="center_right_tit">
                        <div class="user-con-title">
                            <h5>直播</h5>
                            <a href="http://try.51eduline.com/user/live/27.html">更多></a>
                        </div>
                    </div>
                </div>
                <div class="center_right_con Manage_all">
                    <ul class="user-imglist">
                        <li>
                            <a href="http://try.51eduline.com/live/123.html" class="img">
                                <img src="http://try.51eduline.com/data/upload/2018/0810/10/5b6cfb395dc2d_266_138_266_138.png" class="lazyloading" >
                            </a>
                            <div class="user-title">
                                <h3><a href="http://try.51eduline.com/live/123.html">classin直播课</a></h3>
                                <p><a href="http://bb.try.51eduline.com">测试机构2</a><a href="http://try.51eduline.com/teacher/3.html">测试机构2讲师1</a></p>
                                <span>
                                                                             <strong>¥100</strong>                                    <small>123人在学</small>
                                </span>
                            </div>
                        </li>                                                </ul>
                </div>
            </div>

            <!--留言板-->
            <div class="his-message" style="display: none;">
                <div class="user-con-title">
                    <h5>留言</h5>
                    <a href="#">更多></a>
                </div>
                <div class="his-message-text">
                    <textarea placeholder="写下你想对他说的..."></textarea>
                    <div class="spare-parts">
                        <span><img src="http://try.51eduline.com/addons/theme/stv1/_static/image/usergroup/v_05.png"><em>添加表情</em></span>
                        <button>留言</button>
                    </div>
                    <ul>
                        <h5>全部留言（2）</h5>
                        <li>
                            <a href="#" class="his-head-portrait" title="一指禅韩大湿"><img src="http://link.51el3.com/data/upload/avatar/1f/f1/de/original_100_100.jpg?v1482288778"></a>
                            <span>
                    <h6><a href="#">一指禅韩大湿</a><small>2天前</small></h6>
                    <p>好巧啊！楼上是我媳妇儿，嘿嘿！</p>
                    <i class="icon-comment"></i>
                    <i class="icon-delete"></i>
                </span>
                        </li>
                        <li>
                            <a href="#" class="his-head-portrait" title="一指禅韩大湿"><img src="http://link.51el3.com/data/upload/avatar/1f/f1/de/original_100_100.jpg?v1482288778"></a>
                            <span>
                    <h6><a href="#">二指禅韩大湿</a><small>2天前</small></h6>
                    <p>好巧啊！楼上是我媳妇儿，嘿嘿！</p>
                    <i class="icon-comment"></i>
                    <i class="icon-delete"></i>
                </span>
                        </li>
                    </ul>
                </div>
            </div>

            <script>
                $(".his-message-text ul li:last").css("border","0");

                $(".his-message-text ul span .icon-comment").on("click",function(){
                    var plVal = $(this).siblings().children("a").text();
                    $(".his-message-text textarea").prop("placeholder","@ "+ plVal +" /");
                });
            </script>

        </div>
        <style type="text/css">
            .user-rVisitor{overflow:hidden;padding-bottom:20px;width:290px;border-radius:4px;background-color:#fff;}
            .main-sidebar-title{margin:0;padding:0 20px;}
            .space-visitors{width:100%;}
            .space-visitors li{float:left;margin:0;margin-top:8px;padding:0;width:30.33%;height:auto;border:0;text-align:center;}
            .space-visitors .avatar{position:relative;display:inline-block;overflow:hidden;width:56px;height:56px;border-radius:50%;}
            .space-visitors .avatar img{width:56px;min-height:56px;}
            .space-visitors .nickname{display:block;}
        </style>

        <div class="center_left">
            <div class="top">
                <ul>
                    <li><p>8</p><span>课程</span></li>
                    <!--<li><p>0</p><span>小组</span></li>-->
                    <li><p>33</p><span>笔记</span></li>
                    <!--<li><p>1117261</p><span>积分</span></li>
                    <li><p>43</p><span>提问</span></li>-->
                    <li><p>4</p><span>粉丝</span></li>
                </ul>
            </div>

            <div class="my-data-ul">
                <ul>
                    <li><h5>昵称：</h5><small>用户2</small></li>
                    <li><h5>性别：</h5><small>男</small></li>
                    <li><h5>地区：</h5><small>河北省 秦皇岛市 山海关区</small></li>
                    <li><h5>个性签名：</h5><small>这是我的简介！请关注我</small></li>
                </ul>
            </div>

            <!--最近访客-->
            <div class="user-rVisitor back fl">
                <div class="main-sidebar-title">
                    <div class="tit">
                        <h5>最近访客</h5>
                        <!--<a class="fr" href="#">更多></a>-->
                    </div>
                </div>
                <ul class="space-visitors">
                    <li>
                        <a title="17635725158"  event-node="face_card" uid="1691" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1691.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="17635725158" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1691.html">17635725158</a>
                    </li><li>
                        <a title="15835910851"  event-node="face_card" uid="1694" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1694.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="15835910851" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1694.html">15835910851</a>
                    </li><li>
                        <a title="18830283951"  event-node="face_card" uid="1726" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1726.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="18830283951" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1726.html">18830283951</a>
                    </li><li>
                        <a title="17686502616"  event-node="face_card" uid="1688" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1688.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="17686502616" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1688.html">17686502616</a>
                    </li><li>
                        <a title="卖冥币的人民币"  event-node="face_card" uid="1669" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1669.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="卖冥币的人民币" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1669.html">卖冥币的人民币</a>
                    </li><li>
                        <a title="18435913891"  event-node="face_card" uid="1692" show="no" class="avatar" target="_blank" href="http://try.51eduline.com/user/index/1692.html">
                            <img width="40" height="40" src="http://try.51eduline.com/addons/theme/stv1/_static/images/noavatar/middle.jpg">
                        </a>
                        <a title="18435913891" class="nickname" target="_blank" href="http://try.51eduline.com/user/index/1692.html">18435913891</a>
                    </li>
                </ul>
            </div>
        </div>

        <script>
            function followyou(cate,uid){
                if(MID=='0'){
                    reg_login();
                    return;
                }
                $.ajax({
                    type: "POST",
                    url:"http://try.51eduline.com/index.php?app=classroom&mod=Public&act=followyou",
                    data:"fid="+uid,
                    dataType:"json",
                    success:function(data){
                        if(data.status=='0'){
                            ui.error(data.info)
                            return;
                        }else{
                            $(cate).text("已关注对方");
                        }

                    }
                });
            }

            $(".my-data-ul li:first").css("border","0");
        </script>
    </div>
</div>


<script>
    $(".user-con-title a").click(function(){
        $(this).addClass("on").siblings().removeClass();
        var index = $(this).index();
        $(".Manage_all").hide().eq(index).show();
    });
</script>
<!--footer-->
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
<script src="http://try.51eduline.com/online_check.php?uid=1691&uname=用户2&mod=UserShow&app=home&act=index&action=trace"></script>
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

</body>

</html>