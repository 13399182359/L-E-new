
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
        var APPNAME   = 'wenda';
        var UPLOAD_URL ='http://try.51eduline.com/data/upload';
        var MID		  = '1692';
        var UID		  = '1692';
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/wenda/_static/js/admin.js"></script>
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
            <li><a href="http://try.51eduline.com/index.php?app=wenda&mod=AdminWenda&act=index&tabHash=index" class="on">列表</a></li><li><a href="http://try.51eduline.com/index.php?app=wenda&mod=AdminWenda&act=cate&tabHash=cate" >分类</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="wenda_AdminWenda_index"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="列表" />
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
                <td width="20%"> <input type="hidden" name='key[]' value='username'> username</td>
                <td width="30%"><input type="text" name='key_name[]' value='提问用户'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="30%"><input type="text" name='key_name[]' value='问题类型'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='wd_description'> wd_description</td>
                <td width="30%"><input type="text" name='key_name[]' value='问题描述'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='wd_comment_count'> wd_comment_count</td>
                <td width="30%"><input type="text" name='key_name[]' value='评论人数'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='wd_browse_count'> wd_browse_count</td>
                <td width="30%"><input type="text" name='key_name[]' value='浏览人数'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='solution_state'> solution_state</td>
                <td width="30%"><input type="text" name='key_name[]' value=''  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%">
                    <select name="key_hidden[]">
                        <option value="0" >显示</option>
                        <option value="1" selected="selected">隐藏</option>
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
            <input type="hidden" name='searchPageKey' value="S_wenda_AdminWenda_index" />
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
                    <td width="15%"><input type="hidden" name='key[]' value='id'> id</td>
                    <td width="20%"><input type="text" name='key_name[]' value='id' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"><input type="text" name='key_name[]' value='提问用户' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="15%"><input type="hidden" name='key[]' value='type'> type</td>
                <td width="20%"><input type="text" name='key_name[]' value='问题类型' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="15%"><input type="hidden" name='key[]' value='solution_state'> solution_state</td>
                <td width="20%"><input type="text" name='key_name[]' value='状态' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
                <td width="20%"><select name='key_type[]'>
                    <option value='text' >文本框:input_text</option>
                    <option value='select' >下拉框:select</option>
                    <option value='radio' >单选框:radio</option>
                    <option value='checkbox' >多选框:checkbox</option>
                    <option value='date' >日期插件:date</option>
                    <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                    <option value='user' >用户选择:selectUser</option>
                    <option value='define' >自定义</option>
                </select></td>
                <td width="20%"><input type='text' name='key_tishi[]' value='' class="s-txt"  style="width:200px"  onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
                <td width="20%"><input type='text' name='key_javascript[]' value='' class="s-txt"  style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" ></td>
            </tr>					<tr overstyle="on" >
                <td width="15%"><input type="hidden" name='key[]' value='wd_description'> wd_description</td>
                <td width="20%"><input type="text" name='key_name[]' value='问题描述' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
        <form action="/answerCyq/findAnswer" method="post">
            <input name="solution_state" id="form_solution_state" type="hidden" value=""  class='s-txt'>
            <dl class="lineD" id='dl_wd_description'>
                <dt>问题描述：</dt>
                <dd>
                    <input name="descriptive" type="text" class='s-txt' style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" >
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
        <!-- <div class="page right"><span>共63条</span> <a class='current'>1</a><a p='2' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=2'>2</a><a p='3' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=3'>3</a><a p='4' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=4'>4</a><a p='2' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=2' class='next'>下一页</a></div> -->
            <a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a href="javaScript:deleteAnwserIds()" class="btn_a"><span>删除</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>
                <th class="line_l"  style="width:30px;"  >id</th>
                <th class="line_l"   >提问用户</th>
                <th class="line_l"   >问题类型</th>
                <th class="line_l"   >问题描述</th>
                <th class="line_l"   >评论人数</th>
                <th class="line_l"   >浏览人数</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list answer1.list as list>
                <tr>
                    <td>
                        <input type="checkbox" name="checkbox" value="${list.id}">
                    </td>
                    <td>${list.id}</td>
                    <td>${list.username}</td>
                    <td>
                        <#if list.type == 1>技术分享</#if>
                        <#if list.type == 2>技术问答</#if>
                        <#if list.type == 3>课后回答</#if>
                    </td>
                    <td>${list.descriptive}</td>
                    <td>${list.commentNumber}</td>
                    <td>${list.browseNumber}</td>
                    <td >
                        <#if list.stick == 1>
                            <a href="/answerCyq/answerStickUpd?id=${list.id}">取消置顶</a>
                        </#if>
                        <#if list.stick == 0>
                            <a href="/answerCyq/updAnswerStick?id=${list.id}">置顶</a>
                        </#if> |
                        <a href="/answerCyq/deleteAnswer?id=${list.id}">删除问答</a>
                    </td>
                </tr>
            </#list>
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <#--<div class="Toolbar_inbox">
        <div class="page right"><span>共63条</span> <a class='current'>1</a><a p='2' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=2'>2</a><a p='3' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=3'>3</a><a p='4' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=4'>4</a><a p='2' href='/index.php?app=wenda&mod=AdminWenda&act=index&p=2' class='next'>下一页</a></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.delWendaAll('delWenda')" class="btn_a"><span>删除</span></a> &ndash;&gt;
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

    function deleteAnwserIds(){
        ids = "";
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/answerCyq/deleteAnswerIds",{ids:ids},function () {
                location.reload();
            })
        }else {
            alert("请选择要修改的数据！！")
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