
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>便携式充电宝 — 便携式移动电源，也叫“外挂电池”、“外置电池”、“后备电池”、“数码充电伴侣”，移动电源概念是随着数码产品的普及和快速增长而发展起来的，其定义就是方便易携带的大...</title>
    <meta content="便携式移动电源，也叫“外挂电池”、“外置电池”、“后备电池”、“数码充电伴侣”，移动电源概念是随着数码产品的普及和快速增长而发展起来的，其定义就是方便易携带的大..." name="keywords">
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
        var APPNAME   = 'mall';
        var MID		  = '1694';
        var UID		  = '1694';
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
                        <a href="http://try.51eduline.com/my/set_up/info.html">15835910851</a>
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

<link rel="stylesheet" href="http://try.51eduline.com/apps/mall/_static/css/goods_view.css">
<style>
    .hd{width: 400px;}.showInfo{display: none;}##qrcode img{width: 100px;height: 100px}
    ul li .name{text-align:left;margin-top:0;}
    ul li .name a{font-size:14px;}
</style>
<div class="content bgf7">
    <div class="wrap">
        <div class="productbox">
            <input id="comid" value="${com.id}" style="display: none"/>
            <input id="comimg" value="${com.img}" style="display: none"/>
            <div class="pic"><img src="${com.img}" alt="${com.name}" /></div>
            <div class="info">
                <div class="title">
                    <span class="mb">手机浏览
                        <div id="qrcode" class="fxp">
                            <img src="http://try.51eduline.com/index.php?app=basic&mod=Qrcode&act=index&config[margin]=0&config[content]=http%3A%2F%2Ftry.51eduline.com%2Fmall%2F5.html&config[print]=1" alt="qrcode" />                        </div>
                    </span>${com.name}               </div>
                <div class="jfen">
                    <ul>
                        <li><p>${sum}</p>兑换人数</li>
                        <li><p>${com.repertory}</p>仓库剩余</li>
                    </ul>
                    <div class="fl">所需积分<input type="hidden" id="price" name="price" value="${com.price}" />
                        <span class="num">${com.price}</span></div>
                </div>
                <div class="item">
                    <div>
                        <label>快递费</label>
                        <span class="num">${com.freight}</span>积分
                    </div>
                </div>
                <div class="item g-boder">
                    <label>简介</label>
                    <div class="con g-text">${com.info}</div>
                </div>
                <div class="item" style="padding:0">
                    <div class="con g-num">
                        <a class="adbtn minus" href="javascript:countText(1);">-</a>
                        <input id="count" name="count" type="text" value="1" onkeyup="formatMoneyWith6digts(this);"/>
                        <a class="adbtn add" href="javascript:countText(2);">+</a>
                    </div>
                    <div class="con g-btn"><a class="btn" href="javascript:;" onclick="saveGoods();">立即兑换</a></div>
                </div>
            </div>
        </div>
        <div class="productinfo">
            <div class="productleft">
                <div class="goods-con-title">
                    <div class="title on" style="float: left;">详情</div>
                    <div class="title" style="float: left;">点评</div>
                </div>
                <div class="goods_box" style="font-size: 13px;">
                    <p style="white-space: normal;">
                        ${com.describe}
                    </p>
                </div>
                <div class="goods_box" style="font-size: 13px;display: none">
                    <div class="title back comment" style="border-bottom: none;"><a href="javascript:;" class="fr comment" style="padding-right:20px;">我要评论</a></div>
                    <!--提问-->
                    <div class="video-wdcon margin-bt back">
                        <!--我的提问 默认隐藏-->
                        <div id="album-comments" class="clearfix" style="display:none;padding: 10px 0 0 0; height:auto;position: relative;">
                            <div class="qa-ci-wrap">
                                <input class="fid_com" type="hidden" name="fid" value="">
                                <input class="to_comment_id_com" type="hidden" name="to_comment_id" value="0">
                                <textarea id="text_com" placeholder="可以评论你想要表达的想法..." class="qa-ci-iarea js-reply-ipt-default" name="content"></textarea>
                                <div class="qa-reply-footright fr"> <span class="qa-tips"></span>
                                    <button class="btn-mc-light js-ipt-cancel">取消</button>
                                    <button class="btn-mc btn-mini btn-mc-green" onClick="doComment(this,'com');">确定</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="comment_list"></ul>

                    <script type="text/javascript">
                        var ispage = '1';  //是否分页
                        var uid = '1694';
                        var fid = '';
                        var limit = 10;             // 查询条数
                        var page = 0;              //页数
                        var isBuy = "";
                        $(function(){
                            getComment(page);
                            //分页操作
                            $('.Page a').live('click',function(){
                                var p = $(this).attr('p');
                                if(typeof(p) == 'undefined'){
                                    return false;
                                }
                                getComment(p);
                                return false;
                            });

                            $('div.comment a.comment').live('click',function(){
                                $('div#album-comments').show();
                                $(this).hide();
                            });
                            $('div.qa-reply-footright button.js-ipt-cancel').live('click',function(){
                                $('div#album-comments').hide();
                                $('div.comment a.comment').show();
                            });
                            $('a.showComment').live('click',function(){
                                $(this).removeClass('showComment').addClass('hideComment');
                                $(this).parent('div.info').siblings('ul.children').show();
                            });
                            $('a.hideComment').live('click',function(){
                                $(this).removeClass('hideComment').addClass('showComment');
                                $(this).parent('div.info').siblings('ul.children').hide();
                            });

                            /*点赞*/
                            $('a.js-zan').live('click',function(){
                                if(uid <=0){
                                    reg_login();
                                    return false;
                                }
                                var id      = $(this).attr('data-id');
                                var doType  = $(this).attr('data-type');
                                var _this   = $(this);
                                var zan_num = _this.find('.zan-num').html();

                                $.post("http://try.51eduline.com/index.php?app=classroom&mod=Public&act=doVote",{kztype:1,type:doType,kzid:id,table:'goods'},function(rtn){
                                    if(rtn.status == 1){

                                        if(doType == 1){
                                            _this.attr('data-type',0);
                                            _this.find('.zan-num').html(Number(zan_num)-1);
                                            _this.attr('title','点赞');
                                        }else{
                                            _this.attr('data-type',1);
                                            _this.find('.zan-num').html(Number(zan_num)+1);
                                            _this.attr('title','取消点赞');
                                        }
                                        ui.success(rtn.info);
                                        return false;
                                    }else{
                                        ui.error(rtn.info);
                                        return false;
                                    }
                                },'json');
                            });
                        });

                        function comment(obj,pid,comment_to_uid){
                            if(uid <=0){
                                reg_login();
                                return false;
                            }
                            var cmtext = $(obj).attr('data-con')+'：';
                            $("#text_"+pid).val(cmtext);
                            $('.fid_'+pid).val(comment_to_uid);
                            $("#text_"+pid).focus();
                        }


                        function doComment(obj,id){
                            /*if(uid <=0){
                                reg_login();
                                return false;
                            }*/
                            var to_uid = "";    //用户id
                            var app_uid = fid;
                            var app_table = 'goods';
                            var to_comment_id = $('.to_comment_id_'+id).val();
                            var content = $('#text_'+id).val();
                            content = content.replace(/&nbsp;/ig, "");
                            content = content.replace(/[ ]/g,"");//去除空格
                            content = content.replace(/<[^>].*?>/g,"");//去html标签
                            if(content == ""){
                                //ui.error('请输入评论补充!')
                                layer.msg("请输入详细评论描述", {icon: 5});
                                return false;
                            }
                            for(var i=0; i<arr.length; i++) {
                                if(content.indexOf(arr[i])>-1) {
                                    layer.msg("详细评论描述不得包含敏感词!", {icon: 5});
                                    return false;
                                }
                            }
                            $.post("../../zhangMent/getSession",{comid:$("#comid").val()},function (data) {
                                if (data.success){
                                    to_uid = data.uid
                                    ajaxComment(content,to_uid,app_uid,app_table,to_comment_id);
                                }else {
                                    layer.msg(data.message, {icon: 5});
                                    return false;
                                }
                            })
                        }

                        //提交评论
                        function ajaxComment(content,to_uid,app_uid,app_table,to_comment_id){
                            $.ajax({
                                type: "POST",
                                url:"../../zhangMent/addMent",
                                data: {uid:to_uid,info:content,uimg:$("#uimg").val(),cid:$("#comid").val()},
                                async:false,
                                dataType:"JSON",
                                success: function(data){
                                    layer.msg(data.message, {icon: 5});
                                    setTimeout("sss()",1000)
                                },
                                error:function(xhr, ajaxOptions, thrownError){
                                    layer.msg(xhr.info, {icon: 5});
                                    return false;
                                }
                            });

                        }
                        sss = function () {
                            location.href = location
                        }
                        //获取评论
                        function getComment(page){
                            $.post("../../zhangMent/findAll",{id:$("#comid").val()},function(data){
                               var html = "";
                                if(!data.success){
                                    html+='';
                                }else{
                                    var arr = data.list;
                                    for (var i = 0; i < arr.length ; i++) {
                                        html += "<li><p><img src='"+arr[i].uimg+"' width='50px'>   ： "+arr[i].info+" <br>" +
                                            "  "+arr[i].createddate+" 前评论了...<p></li>";
                                    }
                                }

                                //分页
                                if(data.totalPages > 1) html += '<div class="qstPage sabrosus">'+data.html+'</div>';
                                if($(".video-wdcon .con").size()<= 0 ){
                                    $(".comment_list").html(html);
                                }else{
                                    //提交评论之后删除除了表单外的其他元素
                                    $(".video-wdcon").children().not("#qst-comments").remove();
                                    $(".comment_list").html(html);
                                    $("#qst-comments").hide();
                                }
                            },'json'); //post
                        }

                    </script>                </div>
            </div>
            <div class="productright">
                <div class="title">兑换记录</div>
                <div class="box">
                    <ul class="recordlist">
                       <#list comShowList as comShow>
                            <li>
                            <img src="${comShow.uimg}" class="lazyloading" alt="${comShow.uname}" />
                           <!--   点击进入用户个人主页  -->
                            <h3><span>${comShow.createddate}</span><a href="http://try.51eduline.com/user/index/4.html">${comShow.uname}</a></h3>
                            <p>兑换了${comShow.count}个<a href="#">${com.name}</a></p>
                        </li>
                       </#list>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .video-review .reply-star{display:none !important;}
</style>

<script>
    //导航选择卡
    $(".goods-con-title .title").click(function(){
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".goods_box").hide().eq(index).show();
    });
</script>
<script type="text/javascript">
    $(function(){
        $(".showInfo").click(function(){
            $(".hideInfo").parent().show();
            $(this).parent().hide();
        });
        $(".hideInfo").click(function(){
            $(this).parent().hide();
            $(".showInfo").parent().show();
        });
        var total_count = '0';
        if(total_count < 1){
            total_count = 1;
        }
        $(".add").click(function(){
            var t =$(this).prev("input");
            var	num = parseInt(t.val());
            if( num >= total_count){
                t.val(total_count);
            }else{
                t.val(num+1);
            }
        });

        $(".minus").click(function(){
            var inputObj = $(this).next("input");
            var t=parseInt(inputObj.val());
            if(t <= 1){
                inputObj.val(1);
            }else{
                inputObj.val(t-1);
            }
        });
        //地址选择操作
        $("#charge_address").click(function(){
            ui.box.load(U('mall/Goods/getAddress'),'选择收货地址');
        });
    });

    function formatMoneyWith6digts( obj ){
        obj.value = obj.value.replace(/\D/g,'')
        var stock = parseInt('9');
        if(stock < 1){
            stock = 1;
        }
        if(obj.value < 1){
            obj.value = 1;
        }
        if(obj.value > stock){
            obj.value = stock;
        }
    }

    var uid = '1694';
    var goods_id = app_id = "5";
    var arr = ['他妈的', '你妈的', '傻×', '衮蛋', '你妹儿'];

    function saveGoods(){
        var count = $("#count").val();
        location.href = "../../commondity/findById?count="+count+"&id="+$("#comid").val()
        /*$.ajax({
            type: "post",
            url: "",
            data:{
                count:count,
                id:$("#comid").val(),
            },
            dataType:"json",
            success:function(res){
                alert(res)
                var res = getResponseData(res);
                if(res.status == 1){
                    window.location.href = res.data;
                }else{
                    ui.error(res.message);
                    return false;
                }
            }
        });*/
    }

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
<script src="http://try.51eduline.com/online_check.php?uid=1694&uname=15835910851&mod=Goods&app=mall&act=view&action=trace"></script>
<script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/lazyload/jquery.lazyload.min.js"></script>
<script type="text/javascript">
    $(function () {
        // 初始化
        $("img.lazyload").lazyload({
            effect: "fadeIn",
            placeholder: "http://try.51eduline.com/addons/theme/stv1/_static/images/loading_image.png"
        });
    });
    countText = function (cc) {
        if (cc == 1) {
            $("#count").val($("#count")[0].value--)
        }else {
            $("#count").val(++$("#count")[0].value)
        }
    }
</script>

</body>

</html>