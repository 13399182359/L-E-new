
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="http://try.51eduline.com/apps/admin/_static/css/admin_header.css" rel="stylesheet" type="text/css">
    <link href="http://try.51eduline.com/apps/admin/_static/icon/iconfont.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Eduline - Eduline在线教育平台|在线网校系统|在线教育系统|在线教育解决方案|在线教育系统|在线学习系统|在线培训系统</title>
    <link rel="shortcut icon" href="http://try.51eduline.com/data/upload/2018/0808/14/5b6a91bca0b3b.ico" type="image/x-icon">
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>

    <script type="text/javascript">
        var SITE_URL = 'http://try.51eduline.com';
        var APPNAME = 'admin';
        /* 按下F5时仅刷新iframe页面 */

        document.onkeydown=function (e) {
            e=window.event||e;
            var key = e.keyCode;
            if ((e.ctrlKey && key == 82) || key == 116) {
                parent.MainIframe.location.reload();
                if(document.all) {
                    e.keyCode = 0;
                    e.returnValue = false;
                }else {
                    e.cancelBubble = true;
                    e.preventDefault();
                }
            }
        }
        function nof5() {
            return true;
            // if (window.frames && window.frames[0]) {
            //     window.frames[0].focus();
            //     for (var i_tem = 0; i_tem < window.frames.length; i_tem++) {
            //         if (document.all) {
            //             window.frames[i_tem].document.onkeydown = new Function("var e=window.frames[" + i_tem + "].event; if(e.keyCode==116){parent.MainIframe.location.reload();e.keyCode = 0;e.returnValue = false;};");
            //         } else {
            //             window.frames[i_tem].onkeypress = new Function("e", "if(e.keyCode==116){parent.MainIframe.location.reload();e.cancelBubble = true;e.preventDefault();}");
            //         }
            //     } //END for()
            // } //END if()
        }
        //模拟ts U函数 需要预先定义JS全局变量 SITE_URL 和 APPNAME
        var U = function(url, params) {
            var website = SITE_URL + '/index.php';
            url = url.split('/');
            if (url[0] == '' || url[0] == '@') url[0] = APPNAME;
            if (!url[1]) url[1] = 'Index';
            if (!url[2]) url[2] = 'index';
            website = website + '?app=' + url[0] + '&mod=' + url[1] + '&act=' + url[2];
            if (params) {
                params = params.join('&');
                website = website + '&' + params;
            }
            return website;
        };

        function refresh() {
            parent.MainIframe.location.reload();
        }
    </script>

    <!--主题色配置-->
    <style>
        .header , .header .logo ,.MenuList ul, .MenuList li ,.submenu li ,#FrameTitle{background-color:#323944;}
        .treemenu .actuator{background-color: #3f4856;}
        .header .main_nav a , .submenu li a{color:#c8cee0;}
        .header .logo a .icon{color: #3676b3;}
    </style>
</head>

<body style="margin:0; padding:0;" onLoad="nof5()">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3">
            <div class="header"><!-- 头部 begin -->
                <div class="logo">
                    <a href="http://try.51eduline.com/admin.html"><i class="icon icon-houtai9"></i>管理中心</a>
                </div>
                <div class="nav_sub">
                    您好,15835910851&nbsp; | <a target="_blank" href="/">返回前台</a> | <a href="javascript:void(0);" onClick="refresh();">刷新</a> | <a href="http://try.51eduline.com/index.php?app=admin&mod=Public&act=logout">退出</a><br/>
                    <div id="TopTime"></div>
                </div>
                <div class="main_nav">
                    <a id="channel_index" class="on" href="javascript:void(0)" onclick="switchChannel('index');" hidefocus="true" style="outline:none;">首页</a><a id="channel_statistics"  href="javascript:void(0)" onclick="switchChannel('statistics');" hidefocus="true" style="outline:none;">统计</a><a id="channel_content"  href="javascript:void(0)" onclick="switchChannel('content');" hidefocus="true" style="outline:none;">运营</a><a id="channel_course"  href="javascript:void(0)" onclick="switchChannel('course');" hidefocus="true" style="outline:none;">课堂</a><a id="channel_finance"  href="javascript:void(0)" onclick="switchChannel('finance');" hidefocus="true" style="outline:none;">财务</a><a id="channel_mall"  href="javascript:void(0)" onclick="switchChannel('mall');" hidefocus="true" style="outline:none;">商城</a><a id="channel_school"  href="javascript:void(0)" onclick="switchChannel('school');" hidefocus="true" style="outline:none;">机构</a>            </div>
            </div>
        </td>
    </tr>
    <tr>
        <td width="234px" height="100%" valign="top" id="FrameTitle" >
            <div class="LeftMenu">
                <!--<div class="g-icon">
                    <img src="http://try.51eduline.com/apps/admin/_static/images/jin.png" alt="">
                </div>-->
                <!-- 第一级菜单，即大频道 -->
                <ul class="MenuList" id="root_index" >
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_1" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('1');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">首页</span></a>
                        <ul id="tree_1" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_2" href="javascript:void(0)" onClick="switch_sub_menu('2', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=statistics&');" class="submenuA" hidefocus="true" style="outline:none;">基本信息</a></li>
                            <li><a id="menu_3" href="javascript:void(0)" onClick="switch_sub_menu('3', 'http://try.51eduline.com/index.php?app=admin&mod=Tool&act=cleancache&');" class="submenuA" hidefocus="true" style="outline:none;">缓存清理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_statistics" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_4" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('4');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">统计管理</span></a>
                        <ul id="tree_4" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_5" href="javascript:void(0)" onClick="switch_sub_menu('5', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=visitorCount&');" class="submenuA" hidefocus="true" style="outline:none;">访问统计</a></li>
                            <li><a id="menu_6" href="javascript:void(0)" onClick="switch_sub_menu('6', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=regCount&');" class="submenuA" hidefocus="true" style="outline:none;">用户注册量统计</a></li>
                            <li><a id="menu_7" href="javascript:void(0)" onClick="switch_sub_menu('7', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=activeCount&');" class="submenuA" hidefocus="true" style="outline:none;">活跃度统计</a></li>
                            <li><a id="menu_8" href="javascript:void(0)" onClick="switch_sub_menu('8', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=courseSales&');" class="submenuA" hidefocus="true" style="outline:none;">课程销量统计</a></li>
                            <li><a id="menu_9" href="javascript:void(0)" onClick="switch_sub_menu('9', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=orderCount&');" class="submenuA" hidefocus="true" style="outline:none;">销量变化</a></li>
                            <li><a id="menu_10" href="javascript:void(0)" onClick="switch_sub_menu('10', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=vipUserCount&');" class="submenuA" hidefocus="true" style="outline:none;">会员统计</a></li>
                            <li><a id="menu_11" href="javascript:void(0)" onClick="switch_sub_menu('11', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=profit&');" class="submenuA" hidefocus="true" style="outline:none;">收益统计</a></li>
                            <li><a id="menu_12" href="javascript:void(0)" onClick="switch_sub_menu('12', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminLearnRecord&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">学习记录统计</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_content" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_13" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('13');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">营销卡管理</span></a>
                        <ul id="tree_13" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_14" href="javascript:void(0)" onClick="switch_sub_menu('14', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminUserCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">卡券发放记录</a></li>
                            <li><a id="menu_15" href="javascript:void(0)" onClick="switch_sub_menu('15', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">线上卡券管理</a></li>
                            <li><a id="menu_16" href="javascript:void(0)" onClick="switch_sub_menu('16', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminEntityCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">实体卡管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_17" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('17');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">内容管理</span></a>
                        <ul id="tree_17" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_18" href="javascript:void(0)" onClick="switch_sub_menu('18', 'http://try.51eduline.com/index.php?app=news&mod=AdminTopic&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">资讯管理</a></li>
                            <li><a id="menu_19" href="javascript:void(0)" onClick="switch_sub_menu('19', 'http://try.51eduline.com/index.php?app=admin&mod=Single&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">单页管理</a></li>
                            <li><a id="menu_20" href="javascript:void(0)" onClick="switch_sub_menu('20', 'http://try.51eduline.com/index.php?app=admin&mod=Content&act=message&');" class="submenuA" hidefocus="true" style="outline:none;">私信管理</a></li>
                            <li><a id="menu_21" href="javascript:void(0)" onClick="switch_sub_menu('21', 'http://try.51eduline.com/index.php?app=admin&mod=Suggest&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">反馈管理</a></li>
                            <li><a id="menu_22" href="javascript:void(0)" onClick="switch_sub_menu('22', 'http://try.51eduline.com/index.php?app=admin&mod=SystemMessage&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">系统消息管理</a></li>
                            <li><a id="menu_23" href="javascript:void(0)" onClick="switch_sub_menu('23', 'http://try.51eduline.com/index.php?app=admin&mod=MessageBoard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">留言板管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_24" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('24');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">活动管理</span></a>
                        <ul id="tree_24" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_25" href="javascript:void(0)" onClick="switch_sub_menu('25', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminDiscount&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">限时打折</a></li>
                            <li><a id="menu_26" href="javascript:void(0)" onClick="switch_sub_menu('26', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminSeckill&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">秒杀抢购</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_27" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('27');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">等级头衔管理</span></a>
                        <ul id="tree_27" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_28" href="javascript:void(0)" onClick="switch_sub_menu('28', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminVip&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">会员等级</a></li>
                            <li><a id="menu_29" href="javascript:void(0)" onClick="switch_sub_menu('29', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminTeacherVip&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">讲师头衔</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_30" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('30');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">财务配置</span></a>
                        <ul id="tree_30" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_31" href="javascript:void(0)" onClick="switch_sub_menu('31', 'http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=credit&');" class="submenuA" hidefocus="true" style="outline:none;">积分规则配置</a></li>
                            <li><a id="menu_32" href="javascript:void(0)" onClick="switch_sub_menu('32', 'http://try.51eduline.com/index.php?app=admin&mod=Config&act=rechargeIntoConfig&');" class="submenuA" hidefocus="true" style="outline:none;">余额&积分配置</a></li>
                            <li><a id="menu_33" href="javascript:void(0)" onClick="switch_sub_menu('33', 'http://try.51eduline.com/index.php?app=admin&mod=Config&act=vipPatternConfig&');" class="submenuA" hidefocus="true" style="outline:none;">会员模式管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_34" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('34');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">营销配置</span></a>
                        <ul id="tree_34" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_35" href="javascript:void(0)" onClick="switch_sub_menu('35', 'http://try.51eduline.com/index.php?app=admin&mod=Config&act=marketConfig&');" class="submenuA" hidefocus="true" style="outline:none;">营销数据开关</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_user" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_36" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('36');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">用户</span></a>
                        <ul id="tree_36" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_37" href="javascript:void(0)" onClick="switch_sub_menu('37', 'http://try.51eduline.com/index.php?app=admin&mod=User&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">用户管理</a></li>
                            <li><a id="menu_38" href="javascript:void(0)" onClick="switch_sub_menu('38', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminTeacher&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">讲师管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_course" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_39" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('39');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">点播课管理</span></a>
                        <ul id="tree_39" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_40" href="javascript:void(0)" onClick="switch_sub_menu('40', 'http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">点播课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_41" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('41');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">直播课管理</span></a>
                        <ul id="tree_41" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_42" href="javascript:void(0)" onClick="switch_sub_menu('42', 'http://try.51eduline.com/index.php?app=live&mod=AdminLive&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">直播课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_43" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('43');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">班级管理</span></a>
                        <ul id="tree_43" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_44" href="javascript:void(0)" onClick="switch_sub_menu('44', 'http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">班级课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_45" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('45');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">线下课管理</span></a>
                        <ul id="tree_45" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_46" href="javascript:void(0)" onClick="switch_sub_menu('46', 'http://try.51eduline.com/index.php?app=course&mod=AdminLineClass&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">线下课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_47" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('47');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">考试管理</span></a>
                        <ul id="tree_47" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_48" href="javascript:void(0)" onClick="switch_sub_menu('48', 'http://try.51eduline.com/index.php?app=exams&mod=AdminCategory&act=subject&');" class="submenuA" hidefocus="true" style="outline:none;">分类管理</a></li>
                            <li><a id="menu_49" href="javascript:void(0)" onClick="switch_sub_menu('49', 'http://try.51eduline.com/index.php?app=exams&mod=AdminPoint&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">考点管理</a></li>
                            <li><a id="menu_50" href="javascript:void(0)" onClick="switch_sub_menu('50', 'http://try.51eduline.com/index.php?app=exams&mod=AdminQuestion&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">试题管理</a></li>
                            <li><a id="menu_51" href="javascript:void(0)" onClick="switch_sub_menu('51', 'http://try.51eduline.com/index.php?app=exams&mod=AdminPaper&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">试卷管理</a></li>
                            <li><a id="menu_52" href="javascript:void(0)" onClick="switch_sub_menu('52', 'http://try.51eduline.com/index.php?app=exams&mod=AdminExamsUser&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">成绩管理</a></li>
                            <li><a id="menu_53" href="javascript:void(0)" onClick="switch_sub_menu('53', 'http://try.51eduline.com/index.php?app=exams&mod=AdminExamsCert&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">证书管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_54" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('54');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">内容管理</span></a>
                        <ul id="tree_54" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_55" href="javascript:void(0)" onClick="switch_sub_menu('55', 'http://try.51eduline.com/index.php?app=wenda&mod=AdminWenda&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">问答管理</a></li>
                            <li><a id="menu_56" href="javascript:void(0)" onClick="switch_sub_menu('56', 'http://try.51eduline.com/index.php?app=course&mod=AdminNote&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">笔记管理</a></li>
                            <li><a id="menu_57" href="javascript:void(0)" onClick="switch_sub_menu('57', 'http://try.51eduline.com/index.php?app=course&mod=AdminQuestion&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">提问管理</a></li>
                            <li><a id="menu_58" href="javascript:void(0)" onClick="switch_sub_menu('58', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminReview&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">点评管理</a></li>
                            <li><a id="menu_59" href="javascript:void(0)" onClick="switch_sub_menu('59', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminLibrary&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">文库管理</a></li>
                            <li><a id="menu_60" href="javascript:void(0)" onClick="switch_sub_menu('60', 'http://try.51eduline.com/index.php?app=course&mod=AdminCourseCategory&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">分类配置</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_finance" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_61" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('61');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">订单与账户</span></a>
                        <ul id="tree_61" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_62" href="javascript:void(0)" onClick="switch_sub_menu('62', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">订单管理</a></li>
                            <li><a id="menu_63" href="javascript:void(0)" onClick="switch_sub_menu('63', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminApplirefund&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">申请退款管理</a></li>
                            <li><a id="menu_64" href="javascript:void(0)" onClick="switch_sub_menu('64', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminWithdraw&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">提现申请</a></li>
                            <li><a id="menu_65" href="javascript:void(0)" onClick="switch_sub_menu('65', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">卡号列表</a></li>
                            <li><a id="menu_66" href="javascript:void(0)" onClick="switch_sub_menu('66', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminRecharge&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">支付记录</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_67" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('67');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">财务明细管理</span></a>
                        <ul id="tree_67" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_68" href="javascript:void(0)" onClick="switch_sub_menu('68', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminLearnc&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">余额管理</a></li>
                            <li><a id="menu_69" href="javascript:void(0)" onClick="switch_sub_menu('69', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminUserSplit&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">收入管理</a></li>
                            <li><a id="menu_70" href="javascript:void(0)" onClick="switch_sub_menu('70', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminSplit&act=splitVideo&');" class="submenuA" hidefocus="true" style="outline:none;">分成明细</a></li>
                            <li><a id="menu_71" href="javascript:void(0)" onClick="switch_sub_menu('71', 'http://try.51eduline.com/index.php?app=mall&mod=AdminGlobal&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">积分管理</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_mall" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_72" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('72');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">商城管理</span></a>
                        <ul id="tree_72" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_73" href="javascript:void(0)" onClick="switch_sub_menu('73', '../commondity/findAll');" class="submenuA" hidefocus="true" style="outline:none;">商品管理</a></li>
                            <li><a id="menu_74" href="javascript:void(0)" onClick="switch_sub_menu('74', '../zhangOrder/findAllOrder');" class="submenuA" hidefocus="true" style="outline:none;">订单管理</a></li>
                            <li><a id="menu_75" href="javascript:void(0)" onClick="switch_sub_menu('75', '../address/findAllAddress1');" class="submenuA" hidefocus="true" style="outline:none;">收货地址管理</a></li>
                            <li><a id="menu_76" href="javascript:void(0)" onClick="switch_sub_menu('76', 'http://try.51eduline.com/index.php?app=mall&mod=AdminGoodsCate&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">商品分类配置</a></li>
                            <li><a id="menu_77" href="javascript:void(0)" onClick="switch_sub_menu('77', '../commondity/wuliu');" class="submenuA" hidefocus="true" style="outline:none;">物流信息配置</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="MenuList" id="root_school" style="display:none;">
                    <!-- 第二级菜单 -->
                    <li class="treemenu">
                        <a id="root_78" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('78');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">机构</span></a>
                        <ul id="tree_78" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_79" href="javascript:void(0)" onClick="switch_sub_menu('79', 'http://try.51eduline.com/index.php?app=school&mod=AdminSchool&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">机构管理</a></li>
                            <li><a id="menu_80" href="javascript:void(0)" onClick="switch_sub_menu('80', 'http://try.51eduline.com/index.php?app=school&mod=AdminDomaiName&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">独立域名管理</a></li>
                            <li><a id="menu_81" href="javascript:void(0)" onClick="switch_sub_menu('81', 'http://try.51eduline.com/index.php?app=school&mod=AdminSchool&act=footNav&');" class="submenuA" hidefocus="true" style="outline:none;">首页配置</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_82" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('82');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">内容管理</span></a>
                        <ul id="tree_82" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_83" href="javascript:void(0)" onClick="switch_sub_menu('83', 'http://try.51eduline.com/index.php?app=news&mod=AdminTopic&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">资讯管理</a></li>
                            <li><a id="menu_84" href="javascript:void(0)" onClick="switch_sub_menu('84', 'http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">点播课管理</a></li>
                            <li><a id="menu_85" href="javascript:void(0)" onClick="switch_sub_menu('85', 'http://try.51eduline.com/index.php?app=live&mod=AdminLive&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">直播课管理</a></li>
                            <li><a id="menu_86" href="javascript:void(0)" onClick="switch_sub_menu('86', 'http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">班级课管理</a></li>
                            <li><a id="menu_87" href="javascript:void(0)" onClick="switch_sub_menu('87', 'http://try.51eduline.com/index.php?app=course&mod=AdminLineClass&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">线下课管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_88" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('88');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">用户</span></a>
                        <ul id="tree_88" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_89" href="javascript:void(0)" onClick="switch_sub_menu('89', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminTeacher&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">讲师管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_90" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('90');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">数据统计</span></a>
                        <ul id="tree_90" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_91" href="javascript:void(0)" onClick="switch_sub_menu('91', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=regCount&');" class="submenuA" hidefocus="true" style="outline:none;">用户注册量统计</a></li>
                            <li><a id="menu_92" href="javascript:void(0)" onClick="switch_sub_menu('92', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=activeCount&');" class="submenuA" hidefocus="true" style="outline:none;">活跃度统计</a></li>
                            <li><a id="menu_93" href="javascript:void(0)" onClick="switch_sub_menu('93', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=courseSales&');" class="submenuA" hidefocus="true" style="outline:none;">课程销量统计</a></li>
                            <li><a id="menu_94" href="javascript:void(0)" onClick="switch_sub_menu('94', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=orderCount&');" class="submenuA" hidefocus="true" style="outline:none;">销量变化</a></li>
                            <li><a id="menu_95" href="javascript:void(0)" onClick="switch_sub_menu('95', 'http://try.51eduline.com/index.php?app=admin&mod=Home&act=profit&');" class="submenuA" hidefocus="true" style="outline:none;">收益统计</a></li>
                            <li><a id="menu_96" href="javascript:void(0)" onClick="switch_sub_menu('96', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminLearnRecord&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">学习记录统计</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_97" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('97');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">营销卡管理</span></a>
                        <ul id="tree_97" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_98" href="javascript:void(0)" onClick="switch_sub_menu('98', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminUserCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">卡券发放</a></li>
                            <li><a id="menu_99" href="javascript:void(0)" onClick="switch_sub_menu('99', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminOnlineCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">线上卡券管理</a></li>
                            <li><a id="menu_100" href="javascript:void(0)" onClick="switch_sub_menu('100', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminEntityCard&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">实体卡管理</a></li>
                        </ul>
                    </li>
                    <li class="treemenu">
                        <a id="root_101" class="actuator" href="javascript:void(0)" onClick="switch_root_menu('101');" hidefocus="true" style="outline:none;"><i class="icon icon-sanjiaoxing-right"></i><span class="text">订单与账户</span></a>
                        <ul id="tree_101" class="submenu">
                            <!-- 第三级菜单 -->
                            <li><a id="menu_102" href="javascript:void(0)" onClick="switch_sub_menu('102', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminOrder&act=index&');" class="submenuA" hidefocus="true" style="outline:none;">订单管理</a></li>
                            <li><a id="menu_103" href="javascript:void(0)" onClick="switch_sub_menu('103', 'http://try.51eduline.com/index.php?app=classroom&mod=AdminSplit&act=splitVideo&');" class="submenuA" hidefocus="true" style="outline:none;">用户分成管理</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </td>

        <td style="width: 100%;height: 100%;">
            <iframe style="background-color: #ffffff;" onload="nof5()" id="MainIframe" name="MainIframe" scrolling="yes"  width="100%" height="100%" frameborder="0" noresize> </iframe>
        </td>
    </tr>
</table>

</body>
</html>
<script type="text/javascript">
    var current_channel = null;
    var current_menu_root = null;
    var current_menu_sub = null;
    var viewed_channel = new Array();
    $(function() {
        $(".g-icon img").click(function() {
            if ($("#FrameTitle").css("width") == "160px") {
                $("#FrameTitle").css({
                    "width": "50px"
                });
                $(".treemenu .text").hide();
                $(".submenu li a").addClass("on").css("padding-left", "0px");
                $(this).attr("src", "http://try.51eduline.com/apps/admin/_static/images/chu.png");
                $(".MenuList a i").css("margin-left", "17px")
            } else {
                $("#FrameTitle").css({
                    "width": "160px"
                });
                $(".treemenu .text").show();
                $(".submenu li a").removeClass("on").css("padding-left", "60px");
                $(this).attr("src", "http://try.51eduline.com/apps/admin/_static/images/jin.png");
                $(".MenuList a i").css("margin-left", "40px")
            }
        });
        if ($('.main_nav a:first').attr('id') != 'channel_index') {
            switchChannel($('.main_nav a:first').attr('id').substring(8));
        } else {
            switchChannel('index');
        }
    });
    //切换频道（即头部的tab）
    function switchChannel(channel) {
        //if(current_channel == channel) return false;
        $('.main_nav').find('a').removeClass('on');
        $('#channel_' + current_channel).removeClass('on');
        $('#channel_' + channel).addClass('on');
        $('#root_' + current_channel).css('display', 'none');
        $('#root_' + channel).css('display', 'block');
        var tmp_menulist = $('#root_' + channel).find('a');
        tmp_menulist.each(function(i, n) {
            // 防止重复点击ROOT菜单
            if (i == 0 && $.inArray($(n).attr('id'), viewed_channel) == -1) {
                $(n).click();
                viewed_channel.push($(n).attr('id'));
            }
            if (i == 1) {
                $(n).click();
            }
        });
        current_channel = channel;
    }

    function switch_root_menu(root) {
        root = $('#tree_' + root);
        if (root.css('display') == 'block') {
            root.css('display', 'none');
            root.siblings("a").find("i").addClass("icon-sanjiaoxing-right").removeClass("icon-sanjiaoxing-down");
        } else {
            root.css('display', 'block').parent(".treemenu").siblings(".treemenu").find(".submenu").css("display", "none")
            root.siblings("a").find("i").addClass("icon-sanjiaoxing-down").removeClass("icon-sanjiaoxing-right").parents(".treemenu").siblings(".treemenu").find("i").removeClass("icon-sanjiaoxing-down").addClass("icon-sanjiaoxing-right");
        }
    }

    function switch_sub_menu(sub, url) {
        if (current_menu_sub) {
            $('#menu_' + current_menu_sub).addClass('submenuA').removeClass("submenuB");
        }
        $('#menu_' + sub).addClass('submenuB').removeClass("submenuA");
        current_menu_sub = sub;
        parent.MainIframe.location = url;
    }
</script>