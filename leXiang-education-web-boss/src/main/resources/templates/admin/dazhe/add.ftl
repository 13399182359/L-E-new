
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
            <li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminDiscount&act=index&tabHash=index"  >列表</a></li><li><a href="http://try.51eduline.com/index.php?app=classroom&mod=AdminDiscount&act=addEvent&tabHash=addEvent" class="on" >添加</a></li>
        </ul>        <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="classroom_AdminDiscount_addEvent" />
                <input type="hidden" name='pageTitle' value="" />
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
                        <td> <input type="hidden" name='key[]' value='start_time'> start_time</td>
                        <td><input type="text" name='key_name[]' value='开始时间'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' selected="selected">日期插件:date</option>
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
                        <td> <input type="hidden" name='key[]' value='end_time'> end_time</td>
                        <td><input type="text" name='key_name[]' value='结束时间'  class="s-txt"/></td>
                        <td><select name='key_type[]'>
                                <option value='text' >文本框:input_text</option>
                                <option value='password' >密码框:input_password</option>
                                <option value='select' >下拉框:select</option>
                                <option value='radio' >单选框:radio</option>
                                <option value='checkbox' >多选框:checkbox</option>
                                <option value='date' selected="selected">日期插件:date</option>
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
                        <td> <input type="hidden" name='key[]' value='course_type'> course_type</td>
                        <td><input type="text" name='key_name[]' value='课程类型'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_javascript[]' value='admin.choiceVideo(this)' class="s-txt"></td>
                    </tr>                        <tr overstyle="on">
                        <td> <input type="hidden" name='key[]' value='video_category'> video_category</td>
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
                        <td> <input type="hidden" name='key[]' value='album_category'> album_category</td>
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
                        <td> <input type="hidden" name='key[]' value='course_id'> course_id</td>
                        <td><input type="text" name='key_name[]' value='课程'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='event_price'> event_price</td>
                        <td><input type="text" name='key_name[]' value='折扣'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='status'> status</td>
                        <td><input type="text" name='key_name[]' value='状态'  class="s-txt"/></td>
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


        <form method="POST" action="/dazhe/addXqDazhe"  name='detail_form' style="margin-top:5px">
            <div class="form2">
                <dl class="lineD" id='dl_start_time'>
                    <dt>开始时间：</dt>
                    <dd>
                        <input name="starttime" type="text" class="text" id="form_start_time" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" class="s-txt"/>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_end_time'>
                    <dt>结束时间：</dt>
                    <dd>
                        <input name="endtime" type="text" class="text" id="form_end_time" value='' onfocus="core.rcalendar(this,'full');" readonly="readonly" style="width:200px;" class="s-txt"/>
                    </dd>
                </dl>
                <#--<dl class="lineD" id='dl_course_type'>
                    <dt><font color="red"> * </font>课程类型：</dt>
                    <dd>
                        <label><input type="radio" name="course_type" value='1'  checked="checked" onclick = "admin.choiceVideo(this)" >点播 </label>
                        <label><input type="radio" name="course_type" value='2'  onclick = "admin.choiceVideo(this)" >直播 </label>
                        <label><input type="radio" name="course_type" value='3'  onclick = "admin.choiceVideo(this)" >班级 </label>
                        <br />
                    </dd>
                </dl>-->
                <#--<dl class="lineD" id='dl_video_category'>
                    <dt>分类：</dt>
                    <dd>
                        <div id="video_level"></div>
                        <script type="text/javascript" src = "http://try.51eduline.com/addons/theme/stv1/_static/js/plugins/core.mzVideoLevel.js"></script>
                        <style>
                            .mzLevel{padding:4px;margin-right:5px;}
                        </style>
                        <script>
                            $('#video_level').mzVideoLevel({
                                'table':'zy_currency_category',
                                'isadmin':true,//是否是后台
                                'defaultids':'',
                            },function(fun){
                            });
                        </script>
                        <a></a>
                    </dd>
                </dl>-->
                <#--<dl class="lineD" id='dl_album_category'>
                    <dt>分类：</dt>
                    <dd>
                    </dd>
                </dl>-->
                <#--<dl class="lineD" id='dl_course_id'>
                    <dd>
                        <select name="cid">
                            <#list p as p>
                            <option value="${p.id}">${p.playname}</option>
                            </#list>
                        </select>
                    </dd>
                    <dt><font color="red"> * </font>课程：</dt>
                </dl>-->
                <dl class="lineD" id='dl_event_price'>
                    <dt><font color="red"> * </font>折扣：</dt>
                    <dd>
                        <input name="discounted" id="form_event_price" type="text" value=""  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_status'>
                    <dt>状态：</dt>
                    <dd>
                        <label><input type="radio" name="status" value='0'   >禁用 </label>
                        <label><input type="radio" name="status" value='1'   >开启 </label>
                        <br />
                    </dd>
                </dl>
                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="保存" id='form_submit' onclick = "submitform()"/>
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
            admin.bindTrOn();admin.hideCategory();});
    </script>

</body>
</html>