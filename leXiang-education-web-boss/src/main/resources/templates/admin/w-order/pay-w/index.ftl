
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
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminRecharge&act=index&tabHash=index" class="on">列表</a></li>
            <!-- 支付记录 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="classroom_AdminRecharge_index"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="支付记录" />
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
                    <td width="20%"> <input type="hidden" name='key[]' value='uname'> uname</td>
                    <td width="30%"><input type="text" name='key_name[]' value='用户名称'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='catagroy'> catagroy</td>
                    <td width="30%"><input type="text" name='key_name[]' value='用户组'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='money'> money</td>
                    <td width="30%"><input type="text" name='key_name[]' value='金额'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='type'> type</td>
                    <td width="30%"><input type="text" name='key_name[]' value='类型'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='note'> note</td>
                    <td width="30%"><input type="text" name='key_name[]' value='业务备注'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="30%"><input type="text" name='key_name[]' value='创建时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='status'> status</td>
                    <td width="30%"><input type="text" name='key_name[]' value='支付状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='stime'> stime</td>
                    <td width="30%"><input type="text" name='key_name[]' value='最后操作时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='pay_order'> pay_order</td>
                    <td width="30%"><input type="text" name='key_name[]' value='订单号'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='pay_type'> pay_type</td>
                    <td width="30%"><input type="text" name='key_name[]' value='支付方式'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
            <input type="hidden" name='searchPageKey' value="S_classroom_AdminRecharge_index" />
            <input type="hidden" name='pageTitle' value="支付记录" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">输入类型</th>
                    <th class="line_l">提示信息</th>
                    <th class="line_l">验证事件</th>
                </tr>
                <tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='uid'> uid</td>
                    <td width="20%"><input type="text" name='key_name[]' value='用户名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                    <td width="20%"><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='hidden' >隐藏值:input_hidden</option>
                            <option value='user' selected="selected">用户选择:selectUser</option>
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
        <form action="/queryPay" method="post">
            <dl class="lineD" id='dl_uid'>
                <dt>用户名称：</dt>
                <dd>

                    <input name="username" id="form_account" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >

                </dd>
                <#--<dd>
                    <div class="choose-user left">
                        <input style="display:none" name="avoidSubmitByReturn">
                        <input type="hidden" rel="uids" id="search_uids" name="uid" value="" >
                        <input event-node="search_user" event-args="name=uid&uid=&defaultValue=" value="" type="text" onfocus="this.className='s-txt-focus'" onblur="this.className='s-txt'" class="s-txt" name="" autocomplete="off"  >
                        <script type="text/javascript">
                            M.addEventFns({
                                search_user:{
                                    load:function(){
                                        var obj = $(this);
                                        if("undefined" == typeof(core.searchUser)){
                                            core.plugFunc('searchUser',function(){
                                                core.searchUser.init(obj,'0','0','','0','','');
                                                core.searchUser._stopUser();
                                            });
                                        }
                                    },
                                    click:function(){
                                        var args = M.getEventArgs(this);
                                        if(this.value == args.defaultValue){
                                            this.value = ''
                                        };
                                        var obj = $(this);
                                        core.searchUser.init(obj,'0','0','','0','','');
                                    },
                                    blur: function() {
                                        var args = M.getEventArgs(this);
                                        if(this.value == '' || this.value ==args.defaultValue) {
                                            this.value = args.defaultValue;
                                            core.searchUser.inputReset();
                                        }
                                    },
                                    focus: function() {
                                        var args = M.getEventArgs(this);
                                        if(this.value == args.defaultValue) {
                                            this.value = '';
                                        }
                                        core.searchUser.init($(this),'0','0','','0','','');
                                    }
                                }
                            });
                        </script></div>
                </dd>-->
            </dl>
            <dl class="lineD" id='dl_startTime'>
                <dt>开始时间：</dt>
                <dd>

                    <input name="paycreatdate" type="text" class="s-txt" id="form_startTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />

                </dd>
            </dl>
            <dl class="lineD" id='dl_endTime'>
                <dt>结束时间：</dt>
                <dd>

                    <input name="paylastdate" type="text" class="s-txt" id="form_endTime" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" />

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
        <!-- <div class="page right"><span>共222条</span> <a class='current'>1</a><a p='2' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=2'>2</a><a p='3' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=3'>3</a><a p='4' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=4'>4</a><a p='5' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=5'>5</a><a p='12' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=12' >..12</a><a p='2' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=2' class='next'>下一页</a></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>

                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>

                <th class="line_l"  style="width:30px;"  >id</th>				<th class="line_l"   >用户名称</th>				<th class="line_l"   >用户组</th>				<th class="line_l"   >金额</th>				<th class="line_l"   >类型</th>				<th class="line_l"   >业务备注</th>				<th class="line_l"   >创建时间</th>				<th class="line_l"   >支付状态</th>				<th class="line_l"   >最后操作时间</th>				<th class="line_l"   >订单号</th>				<th class="line_l"   >支付方式</th>		</tr>
            <#list page.pageList as pay>
            <tr overstyle="on" id="tr653">

                <td><input type="checkbox" value=${pay.payid} onclick="admin.checkon(this)"  name="checkbox"></td>
                <td>${pay.payid}</td>
                <td>${pay.username}</td>
                <td>${pay.usertype}</td>
                <td>￥${pay.payment}</td>
                <td>
                    <#if pay.buytype=1>会员充值<#elseif pay.buytype=2>课程购买<#elseif pay.buytype=3>余额充值</#if>
                </td>
                <td>${pay.payremark}</td>
                <td>${pay.paycreatdate}</td>
                <td>
                    <#if pay.paystatus=1>成功<#else >未支付</#if>
                </td>
                <td>${pay.paylastdate}</td>
                <td>${pay.orderid}</td>
                <td>
                    <#if pay.paytype=1>余额支付<#elseif pay.paytype=2>微信支付<#elseif pay.paytype=3>支付宝支付</#if>
                </td>
            </tr>
            </#list>
        </table>


    </div>

    <div class="Toolbar_inbox">
        <div class="page right">
            <#if page.totalCount !=0>
                <a href="
                <#if page.current != 1>
                   /queryPay?page=${page.current-1}
                <#else>
                    #
                </#if>
                ">上一页</a>
                <#assign start = 1>
                <!--尾页数<=5-->
                <#if page.end lte 5>
                    <#list start..page.end as p>
                        <a class="<#if page.current == p>current</#if>" href="/queryPay?page=${p}">${p}</a>
                    </#list>
                <#else>
                    <#assign start = 1 + 4 * ((page.current/4)?ceiling - 1)>
                    <#if page.end - start gt 4>
                        <#list start..*5 as p>
                            <a class="<#if page.current == p>current</#if>" href="/queryPay?page=${p}">${p}</a>
                        </#list>
                        <a href="#">...</a>
                        <a href="/items/page/${page.end}">${page.end}</a>
                    <#else>
                        <a href="#">...</a>
                        <#list start..page.end as p>
                            <a class="<#if page.current == p>current</#if>" href="/queryPay?page=${p}">${p}</a>
                        </#list>
                    </#if>
                </#if>
                <a href="
                <#if page.current != page.end>
                    /queryPay?page=${page.current+1}
                <#else>
                    #
                </#if>
            ">下一页</a>
            </#if>
            共<span>${page.totalCount}</span>条
        </div>
    </div>

    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <#--<div class="Toolbar_inbox">
        <div class="page right">共<span>${page.totalCount}</span>页 <a class='current'>1</a><a p='2' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=2'>2</a><a p='3' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=3'>3</a><a p='4' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=4'>4</a><a p='5' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=5'>5</a><a p='12' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=12' >..12</a><a p='2' href='/index.php?app=classroom&mod=AdminRecharge&act=index&p=2' class='next'>下一页</a></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a> &ndash;&gt;
    </div>-->
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
</script>

</body>
</html>