
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
    <div class="tit_tab">
        <!-- START TAB框 -->
        <ul>
            <li><a href="/queryOrder?leixing=0" >点播订单</a></li><li><a href="/queryOrder?leixing=1" >班级订单</a></li><li><a href="/queryOrder?leixing=2" >直播课堂订单</a></li><li><a href="/queryOrder?leixing=3" >线下课订单</a></li><li><a href="/topoi" >导出</a></li>
        </ul>                    <!-- END TAB框 -->

        <!-- START PAGE_CONFIG -->
        <div id='page_config' class = "form2 list" >
            <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
            <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
                <input type="hidden" name='pageKey' value="classroom_AdminOrder_export" />
                <input type="hidden" name='pageTitle' value="导出 - 交易记录" />
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
                        <td> <input type="hidden" name='key[]' value='type'> type</td>
                        <td><input type="text" name='key_name[]' value='类型'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='pay_status'> pay_status</td>
                        <td><input type="text" name='key_name[]' value='状态'  class="s-txt"/></td>
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
                        <td> <input type="hidden" name='key[]' value='id_section'> id_section</td>
                        <td><input type="text" name='key_name[]' value='订单ID区间'  class="s-txt"/></td>
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
                        <td><input type='text' name='key_default[]' value='1,5000' class="s-txt"></td>
                        <td><input type='text' name='key_tishi[]' value='5000条以内,区间之间以英文","分隔' class="s-txt"></td>
                        <td><input type='text' name='key_javascript[]' value='' class="s-txt"></td>
                    </tr>                </table>
                <div class="page_btm">
                    <input type="submit" class="btn_b" value="确认" />
                </div>
            </form>
        </div>
        <!-- END PAGE_CONFIG -->

        <!-- START CONFIG_FORM -->


        <form method="POST" action="/poi/exportOrderList"  name="detail_form" style="margin-top:5px">
            <input type="hidden" name='systemdata_list' value="classroom_AdminOrder"  class="s-txt"/>
            <input type="hidden" name='systemdata_key' value="export"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="导出 - 交易记录" class="s-txt" />
            <div class="form2">
                <dl class="lineD" id='dl_mhm_id'>
                    <dt>机构：</dt>
                    <dd>

                        <select name="organizationid"   class='s-select'  style="width:200px">
                        </select>

                    </dd>
                </dl>
                <dl class="lineD" id='dl_type'>
                    <dt>类型：</dt>
                    <dd>


                        <select name="leixing" id="leixing" >
                            <option value=" " >请选择</option>
                            <option value="0" >点播订单</option>
                            <option value="1" >班级订单</option>
                            <option value="2" >直播订单</option>
                            <option value="3" >线下课订单</option>
                        </select>

                    </dd>
                </dl>
                <dl class="lineD" id='dl_pay_status'>
                    <dt>状态：</dt>
                    <dd>


                        <select name="refundstatus" id="form_pay_status" >
                            <option value=" " >全部</option>
                            <option value="1" >支付成功</option>
                            <option value="2" >已取消</option>
                            <option value="3" >未支付</option>
                            <option value="4" >申请退款</option>
                            <option value="5" >退款成功</option>
                            <option value="6" >申请退款驳回</option>
                            <option value="7" >已失效</option>
                        </select>


                    </dd>
                </dl>
                <#--<dl class="lineD" id='dl_id_section'>
                    <dt>订单ID区间：</dt>
                    <dd>
                        <input name="id" id="form_id_section" type="text" value="1,5000"  class="s-txt" style='width:200px'>


                        <p>5000条以内,区间之间以英文","分隔</p>

                    </dd>
                </dl>-->


                <div class="page_btm" >
                    <input type='text' style="display:none">
                    <input type="button" class="btn_b" value="导出" id='form_submit' onclick = "submitform()"/>

                </div>
            </div>
        </form>

        <!-- END CONFIG_FORM -->
    </div>
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

        $(function(){
            $.post("/queryOrg",function(data) {
                var oname='';
                for (var i = 0;l=data.length,i <l ; i++) {
                    oname+='<option value="'+data[i].id+'" >'+data[i].orgname+'</option>';
                }
                $("[name='organizationid']").html(oname);
            })
        })


    </script>

</body>
</html>