
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
        var APPNAME   = 'course';
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/course/_static/js/admin.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div id="container" class="so_main">
    <div class="tit_tab">
        <!-- START TAB框 -->
        <ul>
            <li><a href="/classCyq/findClass">列表</a></li><li><a href="/classCyq/toAdd">添加</a></li><li><a href="/classCyq/findStatus">回收站</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=export&tabHash=export"  >导出</a></li><li><a href="/classCyq/queryById?id=${cls.id}" class="on">编辑</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="course_AdminAlbum_editAlbum" />
                <input type="hidden" name='pageTitle' value="编辑" />
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <th>字段</th>
                        <th class="line_l">名称</th>
                        <th class="line_l">输入类型</th>
                        <th class="line_l">默认值格式</th>
                        <th class="line_l">提示信息</th>
                        <th class="line_l">验证事件</th>
                    </tr>
                    <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='id'> id</td>
                        <td><input type="text" name='key_name[]' value=''  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                            <option value='text' >文本框:input_text</option>
                            <option value='password' >密码框:input_password</option>
                            <option value='select' >下拉框:select</option>
                            <option value='radio' >单选框:radio</option>
                            <option value='checkbox' >多选框:checkbox</option>
                            <option value='date' >日期插件:date</option>
                            <option value='textarea' >文本域:textarea</option>
                            <option value='editor' >编辑器:editor</option>
                            <option value='word' >纯文字:word</option>
                            <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                            <option value='image' >图片上传:input_image</option>
                            <option value='file' >附件上传:input_file</option>
                            <option value='user' >用户选择:selectUser</option>
                            <option value='oneUser' >单用户选择:selectOneUser</option>
                            <option value='stringText' >分割存储:stringText</option>
                            <option value='color' >色彩框：color</option>
                            <option value='define' >自定义</option>
                        </select></td>
                        <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='myAdminLevelhidden'> myAdminLevelhidden</td>
                    <td><input type="text" name='key_name[]' value='分类'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' selected="selected">自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='album_title'> album_title</td>
                    <td><input type="text" name='key_name[]' value='名称'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' selected="selected">文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='mhm_id'> mhm_id</td>
                    <td><input type="text" name='key_name[]' value='机构'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' selected="selected">下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='album_intro'> album_intro</td>
                    <td><input type="text" name='key_name[]' value='简介'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' selected="selected">文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='vip_level'> vip_level</td>
                    <td><input type="text" name='key_name[]' value=''  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' selected="selected">隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='price'> price</td>
                    <td><input type="text" name='key_name[]' value='价格'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' selected="selected">文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='order_count_mark'> order_count_mark</td>
                    <td><input type="text" name='key_name[]' value='学习人数（营销）'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' selected="selected">文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='100' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='album_html'> album_html</td>
                    <td><input type="text" name='key_name[]' value='包含课程'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' selected="selected">自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='cover'> cover</td>
                    <td><input type="text" name='key_name[]' value='封面'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' >单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' selected="selected">图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='建议尺寸：580*320' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='show_place'> show_place</td>
                    <td><input type="text" name='key_name[]' value='展示位置'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' selected="selected">单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                        <tr overstyle="on">
                    <td> <input type="hidden" name='key[]' value='is_mount'> is_mount</td>
                    <td><input type="text" name='key_name[]' value='是否允许课程分销'  class="s-txt"/></td>
                    <td><select name='key_type[]'>
                        <option value='text' >文本框:input_text</option>
                        <option value='password' >密码框:input_password</option>
                        <option value='select' >下拉框:select</option>
                        <option value='radio' selected="selected">单选框:radio</option>
                        <option value='checkbox' >多选框:checkbox</option>
                        <option value='date' >日期插件:date</option>
                        <option value='textarea' >文本域:textarea</option>
                        <option value='editor' >编辑器:editor</option>
                        <option value='word' >纯文字:word</option>
                        <option value='hidden' >隐藏值:input_hidden</option>
                        <option value='image' >图片上传:input_image</option>
                        <option value='file' >附件上传:input_file</option>
                        <option value='user' >用户选择:selectUser</option>
                        <option value='oneUser' >单用户选择:selectOneUser</option>
                        <option value='stringText' >分割存储:stringText</option>
                        <option value='color' >色彩框：color</option>
                        <option value='define' >自定义</option>
                    </select></td>
                    <td><input type='text' name='key_default[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_tishi[]' value='' class="s-txt"></td>
                    <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->

        <!-- START CONFIG_FORM -->

        <form method="POST" action="/classCyq/update"  name='detail_form' style="margin-top:5px">
            <div class="form2">
                <input name="id" id="form_id" type="hidden" value="${cls.id}" class="s-txt">
                <input name="createTime"  type="hidden" value="${cls.createTime?date}" class="s-txt">
                <input name="downdate"  type="hidden" value="${cls.downdate?default('')}" class="s-txt">
                <input name="studyNumber"  type="hidden" value="${cls.studyNumber?default('')}" class="s-txt">
                <input name="userid"  type="hidden" value="${cls.userid?default('')}" class="s-txt">
                <input name="teachermoney"  type="hidden" value="${cls.teachermoney?default('')}" class="s-txt">
                <input name="organizationmoney"  type="hidden" value="${cls.organizationmoney?default('')}" class="s-txt">
                <input name="img"  type="hidden" value="${cls.img?default('')}" class="s-txt">
                <input name="course"  type="hidden" value="${cls.course?default('')}" class="s-txt">
                <dl class="lineD" id='dl_myAdminLevelhidden'>
                    <dt><font color="red"> * </font>分类：</dt>
                    <dd>
                        <select name="classtype">
                            <option value="0" >请选择</option>
                            <option value="1" <#if cls.classtype == 1>selected</#if> >IT/互联网</option>
                            <option value="2" <#if cls.classtype == 2>selected</#if> >资格考试</option>
                            <option value="3" <#if cls.classtype == 3>selected</#if> >出国留学</option>
                            <option value="4" <#if cls.classtype == 4>selected</#if> >中小学</option>
<#--
                            <option value="0" >请选择</option>
                            <option value="1" <#if (((cls.classtype)!'') == '1')>selected="selected"</#if> >IT/互联网</option>
                            <option value="2" <#if (((cls.classtype)!'') == '2')>selected="selected"</#if> >资格考试</option>
                            <option value="3" <#if (((cls.classtype)!'') == '3')>selected="selected"</#if> >出国留学</option>
                            <option value="4" <#if (((cls.classtype)!'') == '4')>selected="selected"</#if> >中小学</option>
-->
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_album_title'>
                    <dt><font color="red"> * </font>名称：</dt>
                    <dd>
                        <input name="name" id="form_album_title" type="text" value="${cls.name}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_mhm_id'>
                    <dt>机构：</dt>
                    <dd>
                        <select name="organization" id="form_mhm_id" >
                            <option value="1" <#if cls.organization == 1>selected</#if> >测试机构1</option>
                            <option value="2" <#if cls.organization == 2>selected</#if> >测试机构2</option>
                            <option value="3" <#if cls.organization == 3>selected</#if> >测试机构3</option>
                            <option value="4" <#if cls.organization == 4>selected</#if> >测试机构4</option>
                            <option value="5" <#if cls.organization == 5>selected</#if> >测试机构5</option>
                            <option value="6" <#if cls.organization == 6>selected</#if> >测试机构6</option>
                            <option value="7" <#if cls.organization == 7>selected</#if> >测试机构7</option>
                            <option value="8" <#if cls.organization == 8>selected</#if> >测试机构8</option>
                            <option value="9" <#if cls.organization == 9>selected</#if> >测试机构9</option>
                            <option value="10" <#if cls.organization == 10>selected</#if> >测试机构10</option>
                            <option value="11" <#if cls.organization == 11>selected</#if> >牛顿课堂</option>
                            <option value="12" <#if cls.organization == 12>selected</#if> >金科教育</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_album_intro'>
                    <dt><font color="red"> * </font>简介：</dt>
                    <dd>
                        <textarea  name="intro" id="form_album_intro" rows="10" cols="80" >${cls.intro}</textarea>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_price'>
                    <dt>价格：</dt>
                    <dd>
                        <input name="price" id="form_price" type="text" value="${cls.price}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_order_count_mark'>
                    <dt>学习人数（营销）：</dt>
                    <dd>
                        <input name="marketingcount" id="form_order_count_mark" type="text" value="${cls.marketingcount}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <#--<dl class="lineD" id='dl_album_html'>
                    <dt>包含课程：</dt>
                    <dd>
                    <dd id="unique_list">
                        <div id="albumlist" class="admin-kcidfixed" style="display: table-cell"></div>
                    </dd>
                    <style type="text/css">
                        .course_checkbox{
                            width:170px;float:left;overflow:hidden; white-space: nowrap;text-overflow:ellipsis;
                        }
                    </style>
                    <script>
                        // 获取对应机构的关联课程
                        $(function(){
                            //获取指定机构课程
                            var mhm_id = $.trim($("#form_mhm_id").val());
                            getVideoList(mhm_id);
                            $("#form_mhm_id").change(function(){
                                mhm_id = $(this).val();
                                getVideoList(mhm_id);
                            });
                        });

                        function getVideoList(id){
                            var html = '';
                            var vids = "154,52,166";
                            $("#albumlist").html('');
                            $.ajax({
                                type: 'POST',
                                url: "http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=getVideoList",
                                data: {ids: vids, mhm_id: id},
                                dataType: "json",
                                cache: false,
                                success: function (data) {
                                    if(typeof data != 'object'){
                                        var data = eval('('+data+')');
                                    }
                                    if(data){
                                        $.each(data,function(i,n){
                                            html += '<div class="course_checkbox"><input type="checkbox" name="video[]" value="'+ n.id+'" checked />'+ n.video_title + '</div>';
                                        });
                                        html += '<div class="course_checkbox"><a href="javascript:void(0);" class="btn_a" onclick="admin.chooseMoreCourse('+id+');"><span>更多课程</span></a></div>';
                                    }else{
                                        html += '<div class="course_checkbox"><a href="javascript:void(0);" class="btn_a" onclick="admin.chooseMoreCourse('+id+');"><span>选择课程</span></a></div>';
                                    }
                                    $("#albumlist").append(html);
                                    $("#unique_list").prev('dd').remove();
                                }
                            });
                        }
                    </script>
                    </dd>
                </dl>-->
                <#--<dl class="lineD" id='dl_cover'>
                    <dt><font color="red"> * </font>封面：</dt>
                    <dd>
                        <!--  上传插件 &ndash;&gt;
                        <div>
                            <!-- <FORM style='display:inline;padding:0;margin:0;border:0'>  &ndash;&gt;
                            <div id="divup_1" type="file" rel="1">
                                <input type="file" name="attach" rel="1" onchange="admin.upload('cover',this)" urlquery='attach_type=feed_image&upload_type=image&thumb=1'></div>
                            <div id='show_cover'>
                                <img src="http://try.51eduline.com/data/upload/2019/04/165cb56325b1106.jpg" class="pic-size">
                            </div>
                            <input name="cover" id="form_cover" type="hidden" value="1489" class="s-txt" style="width:200px;" />
                            <!-- </FORM> &ndash;&gt;
                        </div>
                        <p>建议尺寸：580*320</p>
                    </dd>
                </dl>-->
                <dl class="lineD" id='dl_show_place'>
                    <dt>展示位置：</dt>
                    <dd>
                        <label><input type="radio" name="displayposition" value='0' <#if cls.displayposition == 0>checked</#if>  >机构和平台 </label>
                        <label><input type="radio" name="displayposition" value='1' <#if cls.displayposition == 1>checked</#if>  >平台 </label>
                        <label><input type="radio" name="displayposition" value='2' <#if cls.displayposition == 2>checked</#if>  >机构 </label>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_is_mount'>
                    <dt>是否允许课程分销：</dt>
                    <dd>
                        <label><input type="radio" name="ismarketing" value='0' <#if cls.ismarketing == 0>checked</#if>  >否 </label>
                        <label><input type="radio" name="ismarketing" value='1' <#if cls.ismarketing == 1>checked</#if>  >是 </label>
                        <br />
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="submit" class="btn_b" value="保存"/>
                </div>
            </div>
        </form>
        <!-- END CONFIG_FORM -->
    </div>
    <script>
        function submitform(){
            $('[name="detail_form"]').submit();
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