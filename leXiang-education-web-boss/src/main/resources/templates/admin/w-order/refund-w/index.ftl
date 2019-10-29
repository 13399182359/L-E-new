
<style media="screen">
    body{background: #fff;}

</style>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="http://try.51eduline.com/apps/admin/_static/css/admin.css" rel="stylesheet" type="text/css">
    <script>
        /**
         * 全局变量
         */
        var SITE_URL  = 'http://try.51eduline.com';
        var THEME_URL = 'http://try.51eduline.com/addons/theme/stv1/_static';
        var APPNAME   = 'classroom';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1691';
        var UID		  = '1691';
        var initNums  =  '140';
        // Js语言变量
        var LANG = new Array();
        var info = {icon:0,time:1800,btn:false,title:'',closeBtn:0};
        var success = {icon:1,time:1800,btn:false,title:'',closeBtn:0};
        var error = {icon:2,time:1800,btn:false,title:'',closeBtn:0};
    </script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/core.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/module.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/common.js"></script>
    <script src="http://try.51eduline.com/addons/theme/stv1/_static/js/module.common.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/apps/admin/_static/js/admin.js"></script>
    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ui.layer.js"></script>
    <!--非admin应用的后台js脚本统一写在  模板风格对应的app目录下的admin.js中-->
    <script type="text/javascript" src="http://try.51eduline.com/apps/classroom/_static/js/admin.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">
    <!-- START TAB框 -->
    <div class="tit_tab">
        <ul>
            <li><a href="/queryRefund?leixing=0" >点播订单</a></li><li><a href="/queryRefund?leixing=1" >班级订单</a></li><li><a href="/queryRefund?leixing=2" >直播课堂订单</a></li><li><a href="/queryRefund?leixing=3" >线下课订单</a></li>
            <!-- 点播订单 - 申请退款交易记录 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="classroom_AdminApplirefund_index"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="点播订单 - 申请退款交易记录" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">是否隐藏</th>
                    <th class="line_l">点击事件</th>
                </tr>
                <tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='id'> id</td>
                    <td width="30%"><input type="text" name='key_name[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='uid'> uid</td>
                    <td width="30%"><input type="text" name='key_name[]' value='购买用户'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='mhm_id'> mhm_id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='机构ID'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='mhm_title'> mhm_title</td>
                    <td width="30%"><input type="text" name='key_name[]' value='机构名称'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='video_id'> video_id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='课程名称'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='old_price'> old_price</td>
                    <td width="30%"><input type="text" name='key_name[]' value='原价'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='discount'> discount</td>
                    <td width="30%"><input type="text" name='key_name[]' value='折扣'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='discount_type'> discount_type</td>
                    <td width="30%"><input type="text" name='key_name[]' value='折扣类型'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='price'> price</td>
                    <td width="30%"><input type="text" name='key_name[]' value='订单价格'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='album_title'> album_title</td>
                    <td width="30%"><input type="text" name='key_name[]' value='通过套餐'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='pay_status'> pay_status</td>
                    <td width="30%"><input type="text" name='key_name[]' value='退款状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='learn_status'> learn_status</td>
                    <td width="30%"><input type="text" name='key_name[]' value='学习状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='term'> term</td>
                    <td width="30%"><input type="text" name='key_name[]' value='课程订单有效天数'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='time_limit'> time_limit</td>
                    <td width="30%"><input type="text" name='key_name[]' value='有效期至'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='ctime'> ctime</td>
                    <td width="30%"><input type="text" name='key_name[]' value='退款时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>					<tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='DOACTION'> DOACTION</td>
                    <td width="30%"><input type="text" name='key_name[]' value='操作'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%">
                        <select name="key_hidden[]">
                            <option value="0" selected="selected">显示</option>
                            <option value="1" >隐藏</option>
                        </select>
                    </td>
                    <td width="30%"><input type='text' name='key_javascript[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <!-- <td style="background-color:#1E325C">
                    <a onclick="admin.moveUp($(this))" class="ico_top" title="上移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a> &nbsp;&nbsp;
                    <a onclick="admin.moveDown($(this))" class="ico_btm" title="下移"><img src="http://try.51eduline.com/addons/theme/stv1/_static/admin/image/zw_img.gif"></a>
                    </td> -->
                </tr>			</table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 页面配置 -->

    <!-- START 搜索配置 -->
    <div id='search_config' class = "form2 list" >
        <div class="hd">提示:checkbox如果默认有多个值,请以","隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=saveSearchConfig" method="POST">
            <input type="hidden" name='searchPageKey' value="S_classroom_AdminApplirefund_index" />
            <input type="hidden" name='pageTitle' value="点播订单 - 申请退款交易记录" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">输入类型</th>
                    <th class="line_l">提示信息</th>
                    <th class="line_l">验证事件</th>
                </tr>
                <tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='id'> id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='uid'> uid</td>
                    <td width="20%"><input type="text" name='key_name[]' value='用户uid' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='video_id'> video_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='课程id' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='order_album_id'> order_album_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='套餐id' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' selected="selected">文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='mhm_id'> mhm_id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='机构名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' selected="selected">下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='startTime'> startTime</td>
                    <td width="20%"><input type="text" name='key_name[]' value='开始时间' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' selected="selected">日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>					<tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='endTime'> endTime</td>
                    <td width="20%"><input type="text" name='key_name[]' value='结束时间' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' selected="selected">日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='define' >自定义</option>
                        </select></td>
                    <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                    <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                </tr>			</table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 搜索配置 -->

    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="/queryRefund?leixing=0" method="post">
            <dl class="lineD" id='dl_id'>
                <dt>id：</dt>
                <dd>

                    <input name="id" id="form_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >

                </dd>
            </dl>
            <dl class="lineD" id='dl_uid'>
                <dt>用户uid：</dt>
                <dd>

                    <input name="uid" id="form_uid" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >

                </dd>
            </dl>
            <dl class="lineD" id='dl_video_id'>
                <dt>课程id：</dt>
                <dd>

                    <input name="demandclassid" id="form_video_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >


                </dd>
            </dl>
            <dl class="lineD" id='dl_order_album_id'>
                <dt>套餐id：</dt>
                <dd>

                    <input name="mealid" id="form_order_album_id" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >


                </dd>
            </dl>
            <dl class="lineD" id='dl_mhm_id'>
                <dt>机构名称：</dt>
                <dd>


                    <select name="organizationid" id="id"  class='s-select'  style="width:200px">
                        <option value="-1" >请选择</option>
                    </select>

                </dd>
            </dl>
            <dl class="lineD" id='dl_startTime'>
                <dt>开始时间：</dt>
                <dd>

                    <input name="refunddate" type="text" class="s-txt" id="form_startTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />


                    <p>根据时间范围进行搜索</p>

                </dd>
            </dl>
            <dl class="lineD" id='dl_endTime'>
                <dt>结束时间：</dt>
                <dd>

                    <input name="processing" type="text" class="s-txt" id="form_endTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />


                    <p>根据时间范围进行搜索</p>

                </dd>
            </dl>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="submit" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共4条</span></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="delOrderByIds()" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>

                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>

                <th class="line_l"  style="width:30px;"  >id</th>				<th class="line_l"   >购买用户</th>				<th class="line_l"   >机构ID</th>				<th class="line_l"   >机构名称</th>				<th class="line_l"   >课程名称</th>				<th class="line_l"   >原价</th>				<th class="line_l"   >折扣</th>				<th class="line_l"   >折扣类型</th>				<th class="line_l"   >订单价格</th>				<th class="line_l"   >通过套餐</th>				<th class="line_l"   >退款状态</th>				<th class="line_l"   >学习状态</th>				<th class="line_l"   >课程订单有效天数</th>				<th class="line_l"   >有效期至</th>				<th class="line_l"   >退款时间</th>				<th class="line_l"   style="width:auto;" >操作</th>		</tr>
            <#list page.pageList as order>
            <tr overstyle="on" id="tr17">

                <td><input type="checkbox" value=${order.id} onclick="admin.checkon(this)"  name="checkbox"></td>
                <td >
                    ${order.id}
                </td>
                <td >
                    <a event-node="face_card" uid="28" href="http://try.51eduline.com/user/index/28.html" class="" target="_blank">${order.username}</a>
                </td>
                <td >
                    ${order.organizationid}
                </td>
                <td >
                    <a href='http://aa.try.51eduline.com' style='color:#3b5999; ' target='_blank'>${order.orgname}</a>
                </td>
                <td >
                    <a href='http://try.51eduline.com/course/8.html' style='color:#3b5999; ' target='_blank'>${order.playname}</a>
                </td>
                <td >
                    <span style="text-decoration:line-through;">￥${order.bazaarprice}</span>
                </td>
                <td>
                    ${order.discount}
                </td>
                <td >
                    <#if order.discounttype=1><span style="color:green">系统赠送</span>
                    <#else ><span style="color:#7f8880">无折扣</span></#if>
                </td>
                <td >
                    <span style="color: red;">￥${order.price}</span>
                </td>
                <td>
                    ${order.mealname}
                </td>
                <td >
                    <#if order.refundstatus=5><span style="color:green">退款成功</span>
                    <#else ><span style="color:#7f8880">申请退款驳回</span></#if>
                </td>
                <td >
                    <#if order.studystatus=1><span style="color:green">已开始</span>
                    <#else ><span style="color:#7f8880">未开始</span></#if>
                </td>
                <td >
                    ${order.validity}
                </td>
                <td >
                    ${order.period}
                </td>
                <td >
                    ${order.refunddate}
                </td>
                <td >
                    <a href="/toeditOrderById?id=${order.id}">查看详细</a>
                </td>
            </tr>
            </#list>
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <#--<div class="Toolbar_inbox">
        <div class="page right"><span>共4条</span></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.delOrders('zy_order_course')" class="btn_a"><span>删除</span></a> &ndash;&gt;
    </div>-->
    <!-- END BOTTOMBAR -->

    <!-- START BOTTOMBAR -->
    <div class="Toolbar_inbox">
        <div class="page right">
            <#if page.totalCount !=0>
                <a href="
                <#if page.current != 1>
                   /queryRefund?page=${page.current-1}
                <#else>
                    #
                </#if>
                ">上一页</a>
                <#assign start = 1>
                <!--尾页数<=5-->
                <#if page.end lte 5>
                    <#list start..page.end as p>
                        <a class="<#if page.current == p>current</#if>" href="/queryRefund?page=${p}">${p}</a>
                    </#list>
                <#else>
                    <#assign start = 1 + 4 * ((page.current/4)?ceiling - 1)>
                    <#if page.end - start gt 4>
                        <#list start..*5 as p>
                            <a class="<#if page.current == p>current</#if>" href="/queryRefund?page=${p}">${p}</a>
                        </#list>
                        <a href="#">...</a>
                        <a href="/items/page/${page.end}">${page.end}</a>
                    <#else>
                        <a href="#">...</a>
                        <#list start..page.end as p>
                            <a class="<#if page.current == p>current</#if>" href="/queryRefund?page=${p}">${p}</a>
                        </#list>
                    </#if>
                </#if>
                <a href="
                <#if page.current != page.end>
                    /queryRefund?page=${page.current+1}
                <#else>
                    #
                </#if>
            ">下一页</a>
            </#if>
            共<span>${page.totalCount}</span>条
        </div>
    </div>
    <!-- END BOTTOMBAR -->

</div>
<script>
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }
</script>
<script type="text/javascript">
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
    /**
     * 初始化对象
     */
//表格样式
    $(document).ready(function(){
        admin.bindTrOn();});

    delOrderByIds = function () {
        ids='';
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/delOrderById",{ids:ids},function (data) {
                alert(data.message)
                location.href="/queryRefund";
            })
        }else {
            alert("请选择要删除的数据！！")
        }
    }

    $(function(){
        $.post("/queryOrg",function(data) {
            var oname="<option value='' >请选择</option>";
            for (var i = 0;l=data.length,i <l ; i++) {
                oname+='<option value="'+data[i].id+'" >'+data[i].orgname+'</option>';
            }
            $("[name='organizationid']").html(oname);
        })
    })


</script>

</body>
</html>