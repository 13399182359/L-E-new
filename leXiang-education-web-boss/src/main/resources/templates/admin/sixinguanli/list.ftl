
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
        var APPNAME   = 'admin';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1680';
        var UID		  = '1680';
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/news/_static/js/admin.js"></script>
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
            <li><a href="/message/findXqMessage" class="on">列表</a></li><li><a href="/message/findXqMessageHuiShou" >回收站</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="admin_Content_message"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="列表" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">是否隐藏</th>
                    <th class="line_l">点击事件</th>
                </tr>
                <tr overstyle="on">
                    <td width="20%"> <input type="hidden" name='key[]' value='message_id'> message_id</td>
                    <td width="30%"><input type="text" name='key_name[]' value='私信ID'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='fuid'> fuid</td>
                    <td width="30%"><input type="text" name='key_name[]' value='私信发送者'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='from_uid'> from_uid</td>
                    <td width="30%"><input type="text" name='key_name[]' value='对话发起者'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='mix_man'> mix_man</td>
                    <td width="30%"><input type="text" name='key_name[]' value='对话成员'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='content'> content</td>
                    <td width="30%"><input type="text" name='key_name[]' value='私信内容'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="20%"> <input type="hidden" name='key[]' value='mtime'> mtime</td>
                    <td width="30%"><input type="text" name='key_name[]' value='发送时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
            <input type="hidden" name='searchPageKey' value="S_admin_Content_message" />
            <input type="hidden" name='pageTitle' value="列表" />
            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <th>字段</th>
                    <th class="line_l">名称</th>
                    <th class="line_l">输入类型</th>
                    <th class="line_l">提示信息</th>
                    <th class="line_l">验证事件</th>
                </tr>
                <tr overstyle="on" >
                    <td width="15%"><input type="hidden" name='key[]' value='from_uid'> from_uid</td>
                    <td width="20%"><input type="text" name='key_name[]' value='私信发送者ID' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="15%"><input type="hidden" name='key[]' value='mix_man'> mix_man</td>
                    <td width="20%"><input type="text" name='key_name[]' value='私信成员ID' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                    <td width="15%"><input type="hidden" name='key[]' value='content'> content</td>
                    <td width="20%"><input type="text" name='key_name[]' value='私信内容' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                </tr>			</table>
            <div class="page_btm">
                <input type="submit" class="btn_b" value="确定" />
            </div>
        </form>
    </div>
    <!-- END 搜索配置 -->

    <!-- START 搜索框 -->
    <div class="form2" id='search_form' >
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Content&act=message&dosearch=1" method="post">
            <dl class="lineD" id='dl_from_uid'>
                <dt>私信发送者ID：</dt>
                <dd>
                    <div class="choose-user left">
                        <input style="display:none" name="avoidSubmitByReturn">
                        <input type="hidden" rel="uids" id="search_uids" name="from_uid" value="" >
                        <input event-node="search_user" event-args="name=from_uid&uid=&defaultValue=" value="" type="text" onfocus="this.className='s-txt-focus'" onblur="this.className='s-txt'" class="s-txt" name="" autocomplete="off"  >
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






                </dd>
            </dl>
            <dl class="lineD" id='dl_mix_man'>
                <dt>私信成员ID：</dt>
                <dd>



                    <div class="choose-user left">
                        <input style="display:none" name="avoidSubmitByReturn">
                        <input type="hidden" rel="uids" id="search_uids" name="mix_man" value="" >
                        <input event-node="search_user" event-args="name=mix_man&uid=&defaultValue=" value="" type="text" onfocus="this.className='s-txt-focus'" onblur="this.className='s-txt'" class="s-txt" name="" autocomplete="off"  >
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






                </dd>
            </dl>
            <dl class="lineD" id='dl_content'>
                <dt>私信内容：</dt>
                <dd>

                    <input name="content" id="form_content" type="text" value=""  class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >









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
        <!-- <div class="page right"><span>共6条</span></div> -->
        <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="huishouByIds()" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"   >私信ID</th>
                <th class="line_l"   >私信发送者</th>
                <th class="line_l"   >对话发起者</th>
                <th class="line_l"   >对话成员</th>
                <th class="line_l"   >私信内容</th>
                <th class="line_l"   >发送时间</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list list.list as a>
            <tr overstyle="on" id="tr83">
                <td><input type="checkbox" value="${a.id}" name="checkbox"></td>
                <td >${a.id}</td>
                <td >${a.username}</td>
                <td ></td>
                <td ></td>
                <td ><div style="width:500px">${a.content}</div></td>
                <td >${a.time?date}</td>
                <td ><a onclick='huishouById(${a.id})'>删除</a></td>
            </tr>
            </#list>
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <div class="Toolbar_inbox">
        <div class="page right"><span>共${list.totalPage}条</span></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.ContentEdit('','delMessage','删除','私信');" class="btn_a"><span>删除</span></a> -->
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
    function huishouById(id){
        $.post("/message/huishouById",{id:id},function (data) {
            alert(data.message)
            location.href="/message/findXqMessage";
        })
    }
    function huishouByIds() {
        ids='';
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/message/huishouByIds",{ids:ids},function (data) {
                alert(data.message)
                location.href="/message/findXqMessage";
            })
        }else {
            alert("请选择要删除的数据！！")
        }
    }
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