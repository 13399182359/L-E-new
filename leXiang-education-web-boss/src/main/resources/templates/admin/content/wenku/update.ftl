
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/classroom/_static/js/admin.js"></script>
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
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminLibrary&act=index&tabHash=index"  >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminLibrary&act=addLibrary&tabHash=addLibrary"  >添加</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="classroom_AdminLibrary_editLibrary" />
                <input type="hidden" name='pageTitle' value="编辑文库-linux常用命令" />
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
                    <td> <input type="hidden" name='key[]' value='title'> title</td>
                    <td><input type="text" name='key_name[]' value='文库标题'  class="s-txt"/></td>
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
                    <td> <input type="hidden" name='key[]' value='library_cate'> library_cate</td>
                    <td><input type="text" name='key_name[]' value='文库分类'  class="s-txt"/></td>
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
                    <td> <input type="hidden" name='key[]' value='info'> info</td>
                    <td><input type="text" name='key_name[]' value='文库信息'  class="s-txt"/></td>
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
                    <td> <input type="hidden" name='key[]' value='is_re'> is_re</td>
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
                    <td> <input type="hidden" name='key[]' value='price'> price</td>
                    <td><input type="text" name='key_name[]' value='价格（积分）'  class="s-txt"/></td>
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
                    <td> <input type="hidden" name='key[]' value='attach_id'> attach_id</td>
                    <td><input type="text" name='key_name[]' value='附件'  class="s-txt"/></td>
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
                        <option value='file' selected="selected">附件上传:input_file</option>
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
        <form method="POST" action="/libraryCyq/updateLibrary" name='detail_form' style="margin-top:5px">
            <input type="hidden" name='systemdata_list' value="classroom_AdminLibrary"  class="s-txt"/>
            <input type="hidden" name='systemdata_key' value="editLibrary"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="编辑文库-linux常用命令" class="s-txt" />
            <div class="form2">
                <input name="id" id="form_id" type="hidden" value="2" class="s-txt">
                <dl class="lineD" id='dl_title'>
                    <dt><font color="red"> * </font>文库标题：</dt>
                    <dd>
                        <input name="title" id="form_title" type="text" value="${byId.title}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_info'>
                    <dt><font color="red"> * </font>文库信息：</dt>
                    <dd>
                        <textarea  name="info" id="form_info" rows="10" cols="80" >${byId.info}</textarea>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_is_re'>
                    <dt><font color="red"> * </font>是否推荐：</dt>
                    <dd>
                        <label><input type="radio" name="recommended" value='0' <#if byId.recommended == 0>checked</#if>  >不推荐 </label>
                        <label><input type="radio" name="recommended" value='1'  <#if byId.recommended == 1>checked</#if>  >推荐 </label>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_price'>
                    <dt><font color="red"> * </font>价格（积分）：</dt>
                    <dd>
                        <input name="price" id="form_price" type="text" value="${byId.price}"  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_attach_id'>
                    <dt><font color="red"> * </font>附件：</dt>
                    <dd>
                        <div>
                            <style>.weibo-file-list .ico-close{padding: 5px 10px;line-height: 30px;font-size: 14px;color: #9e9e9e;display: inline-block;cursor: pointer;}</style>
                            <div style="height:40px;">
                                <input type="file" name="attach_id" inputname="attach_id" onchange="core.plugInit('uploadFile',this,'','file');" urlquery='' limit="1" event-node="uploadinput" >
                            </div>
                            <script type="text/javascript">
                                M.addEventFns({
                                    uploadinput:{
                                        load:function(){
                                            var _this = this;
                                            core.plugFunc('uploadFile',function(){
                                                core.uploadFile.init(_this,'','file');
                                            });
                                        }
                                    }
                                });
                            </script>
                            <div uploadcontent="file" class="input-content" >
                                <ul class="weibo-file-list">
                                    <li><i class="ico-docx-small"></i>
                                        <a href="http://try.51eduline.com/index.php?app=widget&mod=Upload&act=down&attach_id=840">linux常用命令、.docx</a><span>(15.67 KB)</span>
                                        <a onclick="core.uploadFile.removeAttachId(this,'file',840)" href="javascript:void(0)" class="ico-close right"></a>
                                    </li></ul>
                                <input type="hidden" id="attach_id_ids" name="attach_id_ids" feedtype="file" value="|840|" class="attach_ids">
                            </div>
                        </div>
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
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