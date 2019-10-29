
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
        var APPNAME   = 'news';
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
    <div class="tit_tab">
        <!-- START TAB框 -->
        <ul>
            <li><a href="http://try.51eduline.com/index.php?app=news&mod=AdminTopic&act=index&tabHash=index"  >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=news&mod=AdminTopic&act=editor&tabHash=editor" class="on" >编辑</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="news_AdminTopic_editor" />
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
                        <td> <input type="hidden" name='key[]' value='title'> title</td>
                        <td><input type="text" name='key_name[]' value='标题'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='cate'> cate</td>
                        <td><input type="text" name='key_name[]' value='资讯分类'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='desc'> desc</td>
                        <td><input type="text" name='key_name[]' value='资讯摘要'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='text'> text</td>
                        <td><input type="text" name='key_name[]' value='资讯内容'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' >日期插件:date</option>
                                <option value='textarea' >文本域:textarea</option>
                                <option value='editor' selected="selected">编辑器:editor</option>
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
                        <td> <input type="hidden" name='key[]' value='image'> image</td>
                        <td><input type="text" name='key_name[]' value='封面图片'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_tishi[]' value='建议尺寸：570px*342px' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='re'> re</td>
                        <td><input type="text" name='key_name[]' value='是否推荐'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='re_sort'> re_sort</td>
                        <td><input type="text" name='key_name[]' value='推荐排序'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_tishi[]' value='0-999，值越小越靠前' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='from'> from</td>
                        <td><input type="text" name='key_name[]' value='来源'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='readcount'> readcount</td>
                        <td><input type="text" name='key_name[]' value='浏览量'  class="s-txt"/></td>
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
                    </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->

        <!-- START CONFIG_FORM -->


        <form method="POST" action="../../updInformation" name='detail_form' style="margin-top:5px">
            <input type="hidden" name='id' value="${information.id}" />
            <input type="hidden" name='no' value="${information.no}" />
            <#--<input type="hidden" name='createdate' value="${information.createdate}" />-->
            <div class="form2">
                <dl class="lineD" id='dl_title'>
                    <dt>标题：</dt>
                    <dd>
                        <input name="title" id="form_title" type="text" value="${information.title}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_cate'>
                    <dt>资讯分类：</dt>
                    <dd>
                        <select name="type" id="form_cate" >
                            <option value="1" <#if information.type == 1>selected</#if>>教育资讯</option>
                            <option value="2" <#if information.type == 2>selected</#if>>eduline资讯</option>
                            <option value="3" <#if information.type == 3>selected</#if>>新闻资讯</option>
                            <option value="4" <#if information.type == 4>selected</#if>>学生资讯</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_text'>
                    <dt>资讯内容：</dt>
                    <dd>
                        <!--发布样式 begi-->
                        <script id="text" name="content" type="text/plain" style="width:99%;height:200px; margin-bottom:10px;"><p>${information.content}</p></script>
                        <script type="text/javascript">
                            var basePath = 'http://try.51eduline.com/addons/theme/stv1/_static/js/ueditor1_4_3_3/';
                            var js=document.scripts;
                            var jsPath;
                            window.isLoad = 0;
                            for(var i=js.length;i>0;i--){
                                if(js[i-1].src.indexOf("ueditor.all.min.js")>-1){
                                    window.isLoad = 1;
                                    setTimeout(function(){
                                        Editor_text = UE.ui.Editor({
                                            toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                            zIndex:1,
                                            wordCount:parseInt('0') > 0 ? true : false,
                                            maximumWords:parseInt('0'),
                                            UEDITOR_HOME_URL:basePath,
                                            serverUrl:basePath+'/php/controller.php',
                                        });
                                        Editor_text.render('text');

                                    },400);
                                    break;
                                }
                            }
                            // 优化:已经在其他页面加载了ueditor,再通过异步加载的ueditor
                            if(window.isLoad === 0){
                                requireJS(basePath+"/ueditor.config.js",function(){
                                    requireJS(basePath+"/ueditor.all.min.js",function(){
                                        requireJS(basePath+"/lang/zh-cn/zh-cn.js",function(){
                                            // 如果需要显示公式插件
                                            if("1" == 1){
                                                requireJS(basePath+"/third-party/kityformula-plugin/addKityFormulaDialog.js",function(){
                                                    requireJS(basePath+"/third-party/kityformula-plugin/getKfContent.js",function(){
                                                        requireJS(basePath+"/third-party/kityformula-plugin/defaultFilterFix.js",function(){
                                                            Editor_text = UE.ui.Editor({
                                                                toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                                zIndex:1,
                                                                wordCount:parseInt('0') > 0 ? true : false,
                                                                maximumWords:parseInt('0'),
                                                                UEDITOR_HOME_URL:basePath,
                                                                serverUrl:basePath+'/php/controller.php',
                                                            });
                                                            Editor_text.render('text');
                                                        });
                                                    });
                                                });
                                            }else{
                                                Editor_text = UE.ui.Editor({
                                                    toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                    zIndex:1,
                                                    wordCount:parseInt('0') > 0 ? true : false,
                                                    maximumWords:parseInt('0'),
                                                    UEDITOR_HOME_URL:basePath,
                                                    serverUrl:basePath+'/php/controller.php',
                                                });
                                                Editor_text.render('text');
                                            }
                                        });
                                    });
                                });
                            }
                        </script>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_image'>
                    <dt>封面图片：</dt>
                    <dd>
                        <!--  上传插件 -->
                        <div>
                            <!-- <FORM style='display:inline;padding:0;margin:0;border:0'>  -->
                            <div id="divup_1" type="file" rel="1">
                                <input type="file" name="img" rel="1" onchange="admin.upload('image',this)" urlquery='attach_type=feed_image&upload_type=image&thumb=1'></div>
                            <div id='show_image'>
                                <img src="http://try.51eduline.com/data/upload/2019/10/175da818e69838f.jpg" class="pic-size">
                            </div>
                            <input name="image" id="form_image" type="hidden" value="1731" class="s-txt" style="width:200px;" />
                            <!-- </FORM> -->
                        </div>
                        <p>建议尺寸：570px*342px</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re'>
                    <dt>是否推荐：</dt>
                    <dd>
                        <label><input type="radio" name="recommed" value='1' <#if information.recommed == 1>checked</#if> >是 </label>
                        <label><input type="radio" name="recommed" value='0' <#if information.recommed == 0>checked</#if> >否 </label>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_re_sort'>
                    <dt>推荐排序：</dt>
                    <dd>
                        <input name="orderid" id="form_re_sort" type="text" value="${information.orderid}"  class="s-txt" style='width:200px'>
                        <p>0-999，值越小越靠前</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_from'>
                    <dt>来源：</dt>
                    <dd>
                        <input name="source" id="form_from" type="text" value="${information.source}" class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_readcount'>
                    <dt>浏览量：</dt>
                    <dd>
                        <input name="count" id="form_readcount" type="text" value="${information.count}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="submit" class="btn_b" value="保存" id='form_submit' />
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