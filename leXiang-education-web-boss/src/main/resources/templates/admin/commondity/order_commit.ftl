
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
    <script type="text/javascript" src="https://vuejs.org/js/vue.min.js"></script>
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


    <script type="text/javascript">
        $(function () {
            vm = new Vue({
                el:"#div",
                data:{
                    address:{
                        id:'',
                        uid:'',
                        uname:'',
                        areaid:'',
                        sitename:'',
                        phone:'',
                        status:''
                    },
                    address2:{
                        id:'',
                        uid:'',
                        uname:'',
                        areaid:'',
                        sitename:'',
                        phone:'',
                        status:''
                    },
                    list:'',
                    jifen:'',
                    fangshi:1,
                    sumPrice:999999,
                }
            })
        })
        //全局变量
        var SITE_URL  = 'http://try.51eduline.com';
        var UPLOAD_URL= 'http://try.51eduline.com/data/upload';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'mall';
        var MID		  = '1694';
        var UID		  = '1669';
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
<div id="div">


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

<link rel="stylesheet" href="http://try.51eduline.com/apps/mall/_static/css/pay.css">
<div class="content" style="background-color:#f0f0f2">
    <div class="wrap">
        <div class="class-order">
            <div class="class_order_tit">确认订单</div>
            <div class="class_order_box" style="background:#fff">
                <div class="info-assd-lirxd">
                    <div class="info" style="width:55%;">
                        <div class="tit">商品信息</div>
                        <input type="text" style="display: none" id="comId" value="${com.id}"/>
                        <a href='../../commondity/showById?id=${com.id}' style='color:#3b5999; ' target='_blank'>
                            <img src="${com.img}" width="220" height="130" alt="${com.name}">
                            <h3>${com.name}</h3>
                        </a>
                        <div class="item"><span>${com.info}</span></div>
                    </div>
                    <div class="info ddiel-us" style="width:15%;">
                        <div class="tit">数量</div>
                        <h3 style="color:#fc6238">×${com.count}</h3>
                    </div>
                    <div class="info ddiel-us" style="width:15%;">
                        <div class="tit">价格</div>
                        <#if com.way = 2>
                            <h3 style="color:#fc6238">${com.price}积分</h3>
                            <#else >
                            <h3 style="color:#fc6238">${com.price}元</h3>
                        </#if>
                    </div>
                    <div class="info ddiel-us" style="width:15%;">
                        <div class="tit">运费</div>
                        <#if com.way = 2>
                            <h3 style="color:#fc6238">${com.freight}积分</h3>
                        <#else >
                            <h3 style="color:#fc6238">${com.freight}元</h3>
                        </#if>
                    </div>

                </div>
                <!--新增功能  -->
                <dl class="consignee">
                    <dt>收货人信息</dt>
                    <dd>
                        <span class="selected name" data-address_id="82" > {{address2.uname}} </span>
                        <span>{{address2.sitename}} </span>
                        <span class="phone">{{address2.phone}}</span>
                        <span class="default">默认地址</span>
                        <p id="new_add"><a href="javascript:ddd();">新增收货地址</a></p>
                    </dd>
                    <dd>
                        <span onclick="more_box()" class="more_add">更多地址<i class="icon-jt"></i></span>
                    </dd>
                    <dd id="more_box" style="display: none" v-for="e in list">
                        <span class="name">{{e.uname}}</span>
                        <span>{{e.sitename}}</span>
                        <span class="phone">{{e.phone}}</span>
                    </dd>                </dl>
                <dl class="class_order_pay">
                    <dt>支付方式</dt>
                    <dd>
                       <a href="javascript:zhifu(1)"> <span class="selected" id="d1">支付宝支付</span></a>
                        <a href="javascript:zhifu(2)"><span id="d2">微信支付</span></a>
                       <a href="javascript:zhifu(3)"> <span id="d3">积分支付(剩余积分{{jifen}})</span></a>
                        <script type="text/javascript" >
                            zhifu = function (zhifu) {
                                $("#d"+zhifu).attr("class","selected")
                                for (var i = 1; i <4 ; i++) {
                                    if (i!=zhifu) {
                                        $("#d"+i).attr("class","")
                                    }
                                }
                                var way = $("#way").val();
                                var freight = $("#freight").val();
                                var price = $("#priceId").val();
                                var count = $("#countId").val();
                              if (way==1){
                                  if (zhifu == 2) {
                                      layer.msg("本站暂不支持微信支付！",{icon:5})
                                      setTimeout("zhifu(1)",1000)
                                  }else if(zhifu == 3){
                                     layer.msg("该商品不能使用积分支付！",{icon:5})
                                     setTimeout("zhifu(1)",1000)
                                 }
                                  vm.sumPrice = eval("("+price+"*"+count+"+"+freight+")")+"元"
                                  zhuang = 1;
                                  alert(vm.sumPrice +"111111111")
                             }else {
                                  if (vm.sumPrice > vm.jifen) {
                                    layer.msg("积分不足！不能使用积分支付")
                                    $("#d"+zhifu).attr("class","selected")
                                    for (var i = 1; i <4 ; i++) {
                                        if (i!=zhifu) {
                                            $("#d"+i).attr("class","")
                                        }
                                    }
                                    vm.sumPrice = eval("("+price+"*"+count+"+"+freight+")")
                                    vm.sumPrice = vm.sumPrice/1000 +"元";
                                    alert(vm.sumPrice +"222222222222")
                                      zhuang = 1;
                                      vm.fangshi = zhifu;
                                }else {
                                    vm.sumPrice = eval("("+price+"*"+count+"+"+freight+")")+"元"
                                      alert(vm.sumPrice +"3333333333")
                                      zhuang = 2;
                                }
                             }
                            }
                            setTimeout("zhifu(1)",1000)
                        </script>
                    </dd>
                    <dd style="margin-top: 10px;">注：人民币与积分的兑换比例为 1:1000</dd>                </dl>
                <div class="class_order_bot">
                    <div class="custom-box">
                        <label class="check"><input type="checkbox" id="check_xy" checked >我已阅读并同意<a target="_blank" href="http://try.51eduline.com/single/buy.html" style="color: #188eee;">《Eduline购买协议》</a></label>
                        <form  method="POST" id="buyfrom">
                            <input type="hidden" value="alipay" name="pay" />
                            <input type="hidden" value="0" name="total" />
                            <input type="hidden" value="1" name="count" />
                            <input type="hidden" value="37" name="goods_id" />
                            <input type="hidden" value="82" name="address_id" />
                            <div class="btn"><a href="javascript:;" onclick="buyOperat(this,${com.price}*${com.count});" type="submit">立即支付</a></div>
                        </form>
                        <div class="price">
                            <#if com.way = 1>
                                <input style="display: none" id="way" type="text" value="1"/>
                                <input style="display: none" id="freight" type="text" value="${com.freight}"/>
                                <input style="display: none" value="${com.price}" id="priceId"/>
                                <input style="display: none" value="${com.count}" id="countId"/>
                               <input style="display: none" type="text" id="sumPrice" :value="sumPrice"/>
                                <div class="item">实付金额：<div class="dne-omns-elis" id="pay_money" style="display: inline">￥{{sumPrice}}</div></div>
                            <#else >
                                <input style="display: none" id="way" type="text" value="2"/>
                                <input style="display: none" id="freight" type="text" value="${com.freight}"/>
                                <input style="display: none" value="${com.price}" id="priceId"/>
                                <input style="display: none" value="${com.count}" id="countId"/>
                                <input style="display: none" type="text" id="sumPrice" :value="sumPrice"/>
                                <div class="item">实付金额：<div class="dne-omns-elis" id="pay_money" style="display: inline">积分：{{sumPrice}}(积分支付)</div></div>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="g-modle-add">
    <div class=" center_right">
        <div class="center_right_tit">
            <h5>新增收货地址</h5><i class="icon icon-weibiaoti101"></i>
        </div>
        <div class="center_right_con">
            <form id="f1" class="addressbox" >
                <dl>
                    <dt><span>*</span>所在地区：</dt>
                    <dd style="width: 550px;">
                        <style>
                            select{width: 218px;}
                        </style>
                        <select class="inputcheckbox select" name="province" id="province" onchange="changeArea(this.value,2)"></select>
                        <select class="inputcheckbox select" name="city" id="city" onchange="changeArea(this.value,3)"></select>
                        <select class="inputcheckbox select" name="area" id="area"></select>
                        <script type="text/javascript">
                            ddd = function () {
                                $("#f1")[0].reset()
                                $(".g-modle-add").show();
                            }
                            ccc = function () {
                                $(".g-modle-add").hide();
                            }
                            function changeArea(id,ha) {
                                $.post("../../commondity/findAllArea",{id:id},function (arr) {
                                    var html = "<option value='-1'>--请选择--</option>";
                                    for (var i = 0; i <arr.length ; i++) {
                                        html += "<option value='"+arr[i].id+"'>"+arr[i].name+"</option>";
                                    }
                                        //<input id='area_"+arr[i].id+"' style='display: none'/>
                                    if (ha == 1) {
                                        $("#province").html(html)
                                    }else if (ha == 2) {
                                        $("#city").html(html)
                                    }else if(ha == 3) {
                                        $("#area").html(html)
                                    }
                                })
                            }
                            changeArea(0,1);
                        </script>                </dd>
                </dl>
                <dl>
                    <dt><span>*</span>详细地址：</dt>
                    <dd>
                        <input class="inp01" name="address" id="address" type="text" value="" >
                    </dd>
                </dl>
                <dl>
                    <dt><span>*</span>收货人姓名：</dt>
                    <dd>
                        <input class="inp01" type="text" id="name" name="name"  value="" >
                    </dd>
                </dl>
                <dl>
                    <dt><span>*</span>手机号码：</dt>
                    <dd>
                        <input class="inp01" name="phone" id="phone" type="text" value="" >
                    </dd>
                </dl>
                <dl>
                    <dd>
                        <label><input type="checkbox" id="status" name="status" class="default" value="9">默认收货地址</label>
                    </dd>
                </dl>
                <dl class="btn-box">
                    <dd><a href="javascript:;" onclick="saveAddress()" class="btn">保存</a><a href="javascript:ccc();" class="close">取消</a></dd>
                </dl>
            </form>
        </div>
        <form style="display: none" id="formId" action="../../sx/goAlipay" method="post">
            <input id="price" name="price"/>
            <input id="id" name="id"/>
            <input id="comId1" name="comId"/>
        </form>
    </div>
</div>
<!--itembox end-->
<script>

    $(document).ready(function () {
        $(".phone").text($(".phone").text().substring(0, 3) + "****" + $(".phone").text().substring(7, 11));
    });
    function s2(){
        $.post("../../commondity/findAllAddress",function (arr) {
            vm.address2 = arr[0]
            arr.shift();
            vm.list = arr
        })
        //查询用户当前积分
        $.get("../../address/selectUserJifen",function (data) {
            if (data.success) {
                vm.jifen = data.uid;
            }else {
                layer.msg('请先登录！！',{icon:5})
                vm.jifen = 0;
            }
        })
    }
   setTimeout("s2()",1000)
    var a= 0 ;
   function more_box(){
       if (a%2 == 0){
           $("#more_box")[0].style = "";
       }else {
           $("#more_box")[0].style="display: none";
       }
       a++;
    }

    //支付方式选择
    $(document).on('click','.class_order_pay dd span',function(){
        $('input:hidden[name="pay"]').val($(this).attr('val'));
        $(this).addClass('selected').siblings().removeClass('selected');

        var pay_type = $(this).attr('val'),
            money = "0",
            multiple = "1000",
            actual_pay = money/multiple;

        //$('input:hidden[name="total"]').val(actual_pay);

        if(pay_type == 'lcnpay'){
            $("#pay_money").text("￥"+actual_pay+" ( "+money+"积分 )");
        }else{
            $("#pay_money").text("￥"+actual_pay);
        }
    });

    //添加地址
    function saveAddress(){
        var address = $('#address').val();
        var name = $('#name').val();
        var phone = $('#phone').val();
        var city = $('select#city option:selected').val();

        if(!name){
            ui.error("请输入收货人姓名");
            return false;
        }
        if(!phone){
            ui.error("请输入联系电话");
            return false;
        }
        if(!PHONE_MATCH.test(phone)){
            ui.error("请输入正确的联系电话");
            return false;
        }
        if ($("#area").val()!=-1) {
            vm.address.areaid =$("#area").val();
            vm.address.sitename = ""
        }else {
            vm.address.areaid =$("#city").val();
            vm.address.sitename = ""
        }
        vm.address.phone = $("#phone").val()
        vm.address.uname = $('#name').val();
        var arr = $("[name='status']:checked");
         if (arr.length>0){
             vm.address.status = 9
        }else {
             vm.address.status = 1
         }
             $.ajax({
                 url:'../../commondity/addAddressUser',
                 data:vm.address,
                 type:'post',
                 dataType:'',
                 success:function (data) {
                     if (!data){
                         layer.alert('新增失败', {icon: 5});
                     }else {
                         location.href = location
                     }
                 }
             })

    }

    var s = 0;
    //购买操作
    var buyOperat = function(sbt,gid){
        var statusUser = 1;
        $.get("../../commondity/selectUser",function (data) {
            if (data) {
                statusUser = 2;
            }
        })
        if(statusUser != 1){
            ui.error("请先登录");
            return false;
        }
        if(!gid){
            ui.error('参数错误');
            return false;
        }

        var address_id = $('input:hidden[name="address_id"]').val();
        if(!address_id){
            ui.error("请选择收货地址");
            return false;
        }

        var checkbox = document.getElementById('check_xy');//
        if(!checkbox.checked){
            ui.error("购买必须同意《Eduline购买协议》");
            return false;
        }
        var way = $("#way").val();
        vm.sumPrice = vm.sumPrice.substring(0,vm.sumPrice.length-1);
       if (zhuang == 2) {
           $.ajax({
               url:'../../address/updateUserJifen',
               //zhuang 1 RMB 2 积分  price 需要付款的总金额或总积分
               data:{price:vm.sumPrice,comId:$("#comId").val()},
               type:'post',
               dataType:'json',
               success:function (data) {
                   if (data.success) {
                       layer.msg("下单成功。。",{icon:6})
                       location.href = data.message
                   }else {
                       layer.msg("下单失败。。",{icon:5})
                   }
               },
               error:function () {
                   alert("ajax 失败")
               }
           })
       }else {
           $.post("../../address/findDingDan",function (data) {
               $("#price").val(vm.sumPrice)
               $("#id").val(data)
               $("#comId1").val($("#comId").val())
               $("#formId")[0].submit()
           })
       }
    }

    function dashangToggle(){
        $(".hide_box,.shang_box").remove();

        try{
            clearInterval(s);
        }catch(e){}}

    $("#new_add").click(function(){
        $(".g-modle-add").show();
    })
    $(".center_right .icon-weibiaoti101").click(function(){
        $(".g-modle-add").hide();
    })
    $(".g-modle-add .close").click(function(){
        $(".g-modle-add").hide();
    })
    $(".consignee dd .name").click(function(){
        $(this).addClass("selected").parent("dd").siblings("dd").find(".name").removeClass("selected");
        var id_num=$(this).attr("data-address_id");
        $('input:hidden[name="address_id"]').val(id_num);
    })
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
                            /*with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement(
                                'script')).src = 'http://try.51eduline.com/addons/theme/stv1/_static/js/baiduShare/static/api/js/share.js?cdnversion=' +
                                ~(-new Date() / 36e5)];*/
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
<script src="http://try.51eduline.com/online_check.php?uid=1694&uname=15835910851&mod=Goods&app=mall&act=pay&action=trace"></script>
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
</div>
</body>

</html>