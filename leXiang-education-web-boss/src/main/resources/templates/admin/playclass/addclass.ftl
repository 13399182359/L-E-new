
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
        var MID		  = '1690';
        var UID		  = '1690';
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
<style>
    .clewbox{
        position: absolute;
        top: 28px;
        left: 250px;
    }
    #attach_upload_tool{
        position: relative;
    }
</style>
<div id="container" class="so_main">
    <div class="tit_tab">
        <ul>
            <li><a href="http://localhost:5880/findchecked" class="on">已审</a></li><li><a href="http://localhost:5880/findnochecked" >待审</a></li><li><a href="http://localhost:5880/findrecycle" >回收站</a></li><li><a href="http://localhost:5880/findadd" >添加</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=videoLib&tabHash=videoLib" >课件库</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=problemQuestionBank&tabHash=problemQuestionBank" >视频弹题题库</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=videoLibVerify&tabHash=videoLibVerify" >CC待同步视频库</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=export&tabHash=export" >导出</a></li>
        </ul>
    </div>
    <form method="POST" action="/addPlayClass" id="detail_form" name="detail_form" onsubmit="return j_validateCallback(this,checkForm,post_callback)">
        <input type="hidden" name="systemdata_list" value="video_Admin" class="s-txt">
        <input type="hidden" name="systemdata_key" value="addVideo" class="s-txt">
        <input type="hidden" name="pageTitle" value="添加课程" class="s-txt">
        <input type="hidden" name="id" value="" />
        <div class="form2">
            <dl class="lineD" id="dl_video_title">
                <dt><font color="red"> * </font>课程名称：</dt>
                <dd>
                    <input name="playname" id="playname" type="text" value="" class="s-txt">
                </dd>
            </dl>
            <dl class="lineD">
                <dt><font color="red"> * </font>课程分类：</dt>
                <dd id="ddid">
                    <div id="a01">
                        <select id="sheng" class="mhm_select" onchange="showshi(this)">
                            <#--<option value="0">请选择</option>-->
                        </select>
                    </div>
                </dd>
            </dl>
            <dl class="lineD" id="form_mhm_id">
                <dt><font color="red"> * </font>所属机构：</dt>
                <dd>
                    <select id="org" name="organizationid" class="mhm_select" onchange="showjiangshi(this)">
                    </select>
                </dd>
            </dl>

            <dl class="lineD" id="form_teacherlist">
                <dt><font color="red"> * </font>讲师选择：</dt>
                <dd>
                    <select id="tea" name="teacherid" class="mhm_select">
                        <option value="0">请选择</option>
                    </select>
                </dd>
            </dl>

            <dl class="lineD">
                <dt><font color="red"> * </font>封面上传：</dt>
                <dd id="image_cover">
                    <div id="width_150" >
                        <input style="border:0" type="file" name="img" inputname="cover" value="上传封面" onchange="core.plugInit('uploadFile',this,callback,'image');" urlquery='input_id=cover' limit="1" event-node="uploadinput" >
                    </div>
                    建议尺寸：580px*320px
                </dd>
            </dl>

           <dl class="lineD" id="dl_video">
                <dt><font color="red"> * </font>课程简介：</dt>
                <dd>
                   <#-- 发布样式 begi&ndash;&gt;-->
                    <script id="intro" name="intro" type="text/plain" style="width:99%;height:350px; margin-bottom:10px;"></script>
                    <script type="text/javascript">
                        var basePath = 'http://try.51eduline.com/addons/theme/stv1/_static/js/ueditor1_4_3_3/';
                        var js=document.scripts;
                        var jsPath;
                        window.isLoad = 0;
                        for(var i=js.length;i>0;i--){
                            if(js[i-1].src.indexOf("ueditor.all.min.js")>-1){
                                window.isLoad = 1;
                                setTimeout(function(){
                                    Editor_video_intro = UE.ui.Editor({
                                        toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                        zIndex:1,
                                        wordCount:parseInt('0') > 0 ? true : false,
                                        maximumWords:parseInt('0'),
                                        UEDITOR_HOME_URL:basePath,
                                        serverUrl:basePath+'/php/controller.php',
                                    });
                                    Editor_video_intro.render('intro');

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
                                                        Editor_video_intro = UE.ui.Editor({
                                                            toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                            zIndex:1,
                                                            wordCount:parseInt('0') > 0 ? true : false,
                                                            maximumWords:parseInt('0'),
                                                            UEDITOR_HOME_URL:basePath,
                                                            serverUrl:basePath+'/php/controller.php',
                                                        });
                                                        Editor_video_intro.render('intro');
                                                    });
                                                });
                                            });
                                        }else{
                                            Editor_video_intro = UE.ui.Editor({
                                                toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                zIndex:1,
                                                wordCount:parseInt('0') > 0 ? true : false,
                                                maximumWords:parseInt('0'),
                                                UEDITOR_HOME_URL:basePath,
                                                serverUrl:basePath+'/php/controller.php',
                                            });
                                            Editor_video_intro.render('intro');
                                        }
                                    });
                                });
                            });
                        }
                    </script>                </dd>
            </dl>

            <dl class="lineD" id="form_term">
                <dt><font color="red">  </font>课程订单有效期：</dt>
                <dd>
                    <input name="validity" type="text" value="" class="s-txt" >
                    <p>单位：天，0为永久有效</p>
                </dd>
            </dl>

            <dl class="lineD" id="form_listingtime">
                <dt><font color="red"> * </font>上架时间：</dt>
                <dd>
                    <input name="uponedate" type="text" class="s-txt"  onfocus="core.rcalendar(this,'full');" readonly="readonly">

                </dd>
            </dl>

            <dl class="lineD" id="form_uctime">
                <dt><font color="red"> * </font>下架时间：</dt>
                <dd>
                 <input name="downdate" type="text"  class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">

                </dd>
            </dl>

            <dl class="lineD" id="form_v_price">
                <dt><font color="red"> * </font>原价（市场价格）：</dt>
                <dd>
                    <input name="bazaarprice" type="text" value="" class="s-txt">元
                </dd>
            </dl>

            <dl class="lineD" id="form_t_price">
                <dt><font color="red"> * </font>销售价格：</dt>
                <dd>
                    <input name="price" type="text" value="" class="s-txt">元
                </dd>
            </dl>

            <dl class="lineD" id="form_video_order_count_mark">
                <dt>学习人数（营销）：</dt>
                <dd>
                    <input name="studentcount" type="text" value="" class="s-txt">人
                </dd>
            </dl>

            <dl class="lineD" id="form_view_nums_mark">
                <dt>浏览人数（营销）：</dt>
                <dd>
                    <input name="marketingcount" type="text" value="" class="s-txt">人
                </dd>
            </dl>

            <dl class="lineD" id="form_v_price">
                <dt>会员等级：</dt>
                <dd>
                    <select name="isvip" class="s-select member_select" -style="width:200px;">
                        <option value="0">无</option>
                        <option value="1"  >VIP</option>
                        <option value="2"  >超级VIP</option>
                    </select>
                    <br><p>此vip模式免费</p>
                </dd>
            </dl>

<#--            <dl class="lineD">
                <dt>附件上传：</dt>
                <dd>
                    <script type="text/javascript" src="http://try.51eduline.com/addons/theme/stv1/_static/js/ajaxupload.3.6.js?v="></script>
                    <script type= "text/javascript">
                        var now_PageCount = 0;
                        var editdata = "";
                        if(editdata){
                            now_PageCount = 1;
                        }
                        var limit = '1';
                        /*<![CDATA[*/
                        $(document).ready(function(){
                            var button		=	$('#ajax_upload_attach_button');
                            var process		=	$('#ajax_upload_attach_process');
                            $('#ajax_upload_attach_button').attr('disabled',false).html('浏 览').addClass('btn_b');
                            var myajaxUpload = new AjaxUpload(button,{
                                action: 'http://try.51eduline.com/index.php?app=basic&mod=Attach&act=ajaxUpload&type=attach&token=PpROUZVIAcMK3pBHDpROSbN2tqpNZsBQH0=WOqx2vquZZsV2K0=O3rR2vqu0zZWMDrvtZqW6=t6K3bVrDr-80ZVuH26Ki8SjDqpN6ZVQuq2KyparDcQKxtW1Hu=JG&exts=XsXWK5ivYfSSTv0u1sXWIhaPRtvVPy0D53f4EwWPTtA7PyiP83fWTxePTtA8p5jz1uBBPwjTxwaSThie1ueeQ5ih55aS-cf81tvVW5iDSt8Sovze1fWSn&size=5pkmhthH7&limit=oLUfZ',
                                name: 'myfiles',
                                text: '上传文件',
                                onSubmit : function(file, ext){
                                    this.disable();
                                    process.val('正在上传...');
                                },
                                onComplete: function(file, response){
                                    process.val('');
                                    this.enable();
                                    //处理上传后的过程
                                    var responseData	=	eval('('+response+')');
                                    //上传失败
                                    if(responseData.status==false){
                                        //弹出错误信息
                                        ui.error(responseData.info);
                                        //上传成功
                                    }else{
                                        console.log(now_PageCount);
                                        console.log(limit);
                                        //执行callback
                                        if(limit !=0 && now_PageCount > limit){
                                            $('#ajax_upload_attach_button').attr('disabled','disabled');
                                            $('#ajax_upload_attach_button').attr('class','btn_sea_h');
                                        }

                                        if(limit != 0 && now_PageCount >= limit){
                                            ui.error("只允许上传"+limit+"个附件！");
                                            return ;
                                        }

                                        ++ now_PageCount;
                                        attach_upload_success(responseData.info[0]);
                                    }
                                }
                            });

                        });
                        /*]]>*/
                    </script>
                    <script type= "text/javascript">
                        function subPageCount(){
                            now_PageCount--;
                            if(limit !=0 && now_PageCount <= limit){
                                $('#ajax_upload_attach_button').removeAttr('disabled');
                                $('#ajax_upload_attach_button').attr('class','btn_b');
                            }
                        }

                        function setLimit(data){
                            limit = data;
                            now_PageCount = 0;
                        }
                        var attachid;
                        function deleteAttach(attach){
                            attachid = attach;
                            dodeleteAttach();
                        }
                        function dodeleteAttach(){
                            subPageCount();
                            $('#attach_upload_data .attach'+attachid).remove();
                            $('#ajax_upload_attach_button').attr('class','btn_sea btn_b');
                        }

                        //执行默认的callback方法
                        function attach_upload_success(info){
                            var attachInfo = '<input class="attach'+info.attach_id+'"  type="hidden" name="attach[]" value="'+info.attach_id+'"/>'+'<p class="attach'+info.attach_id+'" style="height:20px; line-height:22px;overflow:hidden"><a class="attach'+info.attach_id+'" href="javascript:void(0)"  onclick="deleteAttach('+info.attach_id+')">[ 删除 ]</a>&nbsp;<span class="attach'+info.attach_id+'"> '+info.name+'</span></p>';
                            $('#attach_upload_data').append(attachInfo);
                        }</script>
                    <div id="attach_upload_widget">
                        <div id="attach_upload_data" class="lh25">
                        </div>
                        <div id="attach_upload_tool">
                            <div class="left text_file_diwei">
                                <input class="in_put mr5" id="ajax_upload_attach_process" disabled="disabled" style="vertical-align:middle" />
                                <button class="btn_b"  id="ajax_upload_attach_button" disabled="disabled" style="vertical-align:middle" onclick="return false;">附件上传中</button>
                            </div>
                            <div class="di_wei left" style="padding-top:7px;">
                                <img src="http://try.51eduline.com/addons/theme/stv1/_static/images/doubt_Icon.gif" onmouseover="$('#ajax_attach_help').show()" onmouseout="$('#ajax_attach_help').hide()" />
                                <div class="clewbox" id="ajax_attach_help" style="display:none;">
                                    <div class="clewbox_bg">
                                        可以上传: jpg,gif,png,jpeg,bmp,zip,rar,doc,xls,ppt,docx,xlsx,pptx,pdf,pem,mp4,MP4,mp3,ico,wmv,flv 类型文件
                                        ，可上传1个
                                        ，每个不超过1024M。</div>
                                    <div class="clewbox_bg_b"></div>
                                </div>
                            </div>    <div class="c"></div>
                        </div>
                    </div>
                    <p>仅支持上传一个附件，多个附件请打包上传</p>
                </dd>
            </dl>-->


            <dl class="lineD">
                <dt>是否精选：</dt>
                <dd>
                    <input type="checkbox" id="is_best" name="ischoiceness"  value="1">设置精选
                </dd>
            </dl>
            <dl class="lineD" id="form_best_sort">
                <dt><font color="red">  </font>精选推荐排序：</dt>
                <dd>
                    <input name="orderone" type="text" value="" class="s-txt" >
                    <p>越小越靠前</p>
                </dd>
            </dl>

            <dl class="lineD" id="dl_is_charge">
                <dt>是否免费：</dt>
                <dd>
                    <label><input type="radio" name="isfree" value="0" checked="checked" >否 </label>
                    <label><input type="radio" name="isfree" value="1"  >是 </label>
                    <br>
                </dd>
            </dl>

            <dl class="lineD" id="dl_is_order">
                <dt>学习模式：</dt>
                <dd>
                    <label><input type="radio" name="studymoshi" value="0" checked="checked" >随机模式 </label>
                    <label><input type="radio" name="studymoshi" value="1"  >顺序模式 </label>
                    <br>
                    <p>顺序模式下课程无法试听</p>
                </dd>
            </dl>

            <dl class="lineD" id="dl_show_place">
                <dt>显示位置：</dt>
                <dd>
                    <label><input type="radio" name="displayposition" value="0" checked="checked" >平台与机构 </label>
                    <label><input type="radio" name="displayposition" value="1"  >平台 </label>
                    <label><input type="radio" name="displayposition" value="2"  >机构 </label>
                    <br>
                </dd>
            </dl>
            <dl class="lineD" id="dl_is_mount">
                <dt>是否允许课程分销：</dt>
                <dd>
                    <label><input type="radio" name="ismarketing" value="0"  >否 </label>
                    <label><input type="radio" name="ismarketing" value="1" checked="checked" >是 </label>
                    <br>
                </dd>
            </dl>

            <input id="leixing" name="leixing" type="hidden" value="1">
            <input name="status" type="hidden" value="1">
            <input name="isdisabled" type="hidden" value="1">
            <input name="userid" type="hidden" value="1">
            <input name="isputaway" type="hidden" value="1">

            <div class="page_btm">
                <input type="submit" class="btn_b" value="保存" id="form_submit">
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
/*
    function showqu(obj){
        $.ajax({
            url:"/findPlayType.do?pid="+obj.value,
            dataType:"json",
            success:function(data){
                if (data.length<1){
                     /!*$('#shi').attr('v-model','areafreightconfig.areaId');*!/
                }else {
                    $("#shi").removeAttr("v-model");
                    var div = '<select id="qu" name="areaId"></select>';
                    $("#divid").html(div)

                    var html = '<option value="-1">请选择</option>';
                    for (var i = 0; i < data.length; i++) {
                        html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }
                    $("#qu").html(html);
                }
            },
            error:function(){
                alert("后台错误，请使用debug调试");
            }
        })
    }*/
 /*   function showqu(obj){
        $.ajax({
            url:"/findPlayType.do?pid="+obj.value,
            dataType:"json",
            success:function(data){
                if (data.length<1){
                    /!* $('#shi').attr('v-model','areafreightconfig.areaId');*!/
                }else {
                    $("#shi").removeAttr("v-model");
                    var div = '<select id="qu" name="areaId"></select>';
                    $("#divid").html(div)

                    var html = '<option value="-1">请选择</option>';
                    for (var i = 0; i < data.length; i++) {
                        html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }
                    $("#qu").html(html);
                }
            },
            error:function(){
                alert("后台错误，请使用debug调试");
            }
        })
    }
 */
   /* function j_validateCallback(form, call, callback) {
        var $form = $(form);
        if (typeof call != 'undefined' && call instanceof Function) {
            $i = call($form);
            if (!$i) {
                return false;
            }
        }
        var _submitFn = function() {
            $.ajax({
                type: form.method || 'POST',
                url: $form.attr("action"),
                data: $form.serializeArray(),
                dataType: "json",
                cache: false,
                success: function(xMLHttpRequest, textStatus, errorThrown) {
                    if (typeof callback != 'undefined' && callback instanceof Function) {
                        callback($form, xMLHttpRequest);
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    ui.error("未知错误!");
                }
            });
        }
        _submitFn();
        return false;
    }

    function checkForm(form) {
        var video_title = form.find('input[name="video_title"]').val();
        if ('' == video_title) {
            ui.error('课程标题不能为空');
            return false;
        }
        var video_intro = form.find('textarea[name="video_intro"]').val();
        if ('' == video_intro) {
            ui.error("课程简介不能为空");
            return false;
        }
        var v_price = form.find('input[name="v_price"]').val();
        if ('' == v_price || undefined == v_price || v_price < 0) {
            ui.error("课程原价（市场价格）不能为空");
            return false;
        }
        var t_price = form.find('input[name="t_price"]').val();
        if ('' == t_price || undefined == t_price || t_price < 0) {
            ui.error("课程销售价格不能为空");
            return false;
        }
        var term = form.find('input[name="term"]').val();
        if ('' == term) {
            ui.error("课程有效期不能为空");
            return false;
        }
        var listingtime = form.find('input[name="listingtime"]').val();
        if ('' == listingtime) {
            ui.error("上架架时间不能为空");
            return false;
        }
        var uctime = form.find('input[name="uctime"]').val();
        if ('' == uctime) {
            ui.error("下架时间不能为空");
            return false;
        }
        var myAdminLevelhidden = form.find('input[name="myAdminLevelhidden"]').val();
        if ('0' == myAdminLevelhidden) {
            ui.error("请选择课程分类");
            return false;
        }
        var cover = form.find('input[name="cover_ids"]').val();
        if ('' == cover) {
            ui.error("请上传课程封面");
            return false;
        }
        return true;
    }

    function post_callback(_formsa, data) {
        if (data.status != undefined) {
            if (data.status == '0') {
                ui.error(data.info);
            } else {
                ui.success(data.info, {
                    end: function() {
                        window.location.href = U('course/AdminVideo/index') + "&tabHash=index";
                    }
                });
            }
        }
    }
    //删除视频
    function deletevideo(key) {
        if ('' == key) {
            ui.error("视频不存在！");
            return;
        }
        $.ajax({
            type: 'POST',
            url: "http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=deletevideo",
            data: {
                videokey: key
            },
            dataType: "json",
            cache: false,
            success: function(data) {
                if (data.status == '0') {
                    ui.error(data.info);
                } else {
                    $("#videokey").val(""); //设置videokey为空
                    $("#video_upload_d").css("display", "block"); //显示上传框
                    $("#form_submit").attr('disabled', "true"); //设置上传按钮为禁用
                    ui.success(data.info);
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                ui.error("未知错误!");
            }
        });
    }

    function callback(data) {
        $("#" + data.input_id + "").remove();
        $("#image_" + data.input_id).append('<div id=' + data.input_id + '>' + '<img style="max-width:100px;padding:2px; border:1px solid #ccc" src=' + UPLOAD_URL + '/' + data.src + ' />' + '</div>').find('input:file').val('');
        $("#" + data.input_id + "_ids").val(data.attach_id);
    }

    function filecallback(data) {
        $("#old_coursefile_ids").remove();
        $("#videofile_ids").val(data.attach_id);
    }
    // 初始化事件
    $(function() {
        $('#detail_form input:file').click(function() {
            $('input:file').val('');
        });
        $('#original_recommend').change(function() {
            var che = $("#original_recommend").attr("checked");
            if (che == true) {
                $("#re_sort").removeAttr("readonly");
            } else {
                $("#re_sort").attr("readonly", 'readonly');
            }
        });
        $('#best_recommend').change(function() {
            var che = $("#best_recommend").attr("checked");
            if (che == true) {
                $("#be_sort").removeAttr("readonly");
            } else {
                $("#be_sort").attr("readonly", 'readonly');
            }
        });
        $('#is_tlimit').change(function() {
            var che = $("#is_tlimit").attr("checked");
            if (che == true) {
                $("#form_limit_discount,#form_starttime,#form_endtime").show();
                $("#limit_discount,#starttime,#endtime").removeAttr("readonly");
            } else {
                $("#form_limit_discount,#form_starttime,#form_endtime").hide();
                $("#form_limit_discount,#form_starttime,#endtime").attr("readonly", "readonly");
                $("#limit_discount,#starttime,#endtime").val('');
            }
        });

        // 平台后台
        ''
        $('.mhm_select').click(function() {
            if ($('.mhm_select option:selected').val() != 0) {
                $.ajax({
                    type: 'POST',
                    url: "http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=findSchoolTeacher",
                    data: {
                        mhm_id: $('.mhm_select option:selected').val()
                    },
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('#form_teacherlist').html(data.info).show();
                    }
                });
            } else {
                $('#form_teacherlist').hide();
            }
        });
        var id = "";
        var school = "1";
        if (id != 0 && school) {
            var mhm_id = $('.mhm_select option:selected').val();
            if (mhm_id != 0) {
                $.ajax({
                    type: 'POST',
                    url: "http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=findSchoolTeacher",
                    data: {
                        mhm_id: mhm_id,
                        teacher_id: $('.teacher_id_select option:selected').val()
                    },
                    dataType: "json",
                    cache: false,
                    success: function (data) {
                        $('#form_teacherlist').html(data.info).show();
                    }
                });
            } else {
                $('#form_teacherlist').hide();
            }
        }
        //机构后台
        ''
    });*/
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

    $(function() {
        $.post("/findPlayType",{pid:0},function (data) {
            var html = '<option value="-1">请选择</option>';
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
            }
            $("#sheng").html(html)
        })
    })


    function showshi(obj){
        var aa = obj.value;

        $.ajax({
            url:"/findPlayTypeOne?pid="+obj.value,
           /* dataType:"json",*/
            success:function(data){
                if (data.length<1){
                     /*$('#shi').attr('v-model','areafreightconfig.areaId');*/
                    $('#shi').attr('name','playtypeid');
                }else {
                    $("#shi").removeAttr("id");
                    var aa ='<div id="divid"></div>'
                    $("#a01").append(aa);
                    var div = '<select id="shi" class="mhm_select" onchange="showshi(this)" ></select>';
                    $("#divid").html(div)
                    var html = '<option value="-1">请选择</option>';
                    for (var i = 0; i < data.length; i++) {
                        html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }
                    $("#shi").html(html);
                    $("#divid").removeAttr("id");
                }
            },
            error:function(){
                alert("后台错误，请使用debug调试");
            }
        })
    }

    $(function() {
        $.post("/findOrganization",{},function (data) {
            var html = '<option value="-1">请选择</option>';
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
            }
            $("#org").html(html)
        })
    })

    function showjiangshi(obj) {
        $.ajax({
            url:"/findTeacher?organizationid="+obj.value,
            success:function(data){
                    var html = '<option value="-1">请选择</option>';
                    for (var i = 0; i < data.length; i++) {
                        html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                    }
                    $("#tea").html(html);
            },
            error:function(){
                alert("后台错误，请使用debug调试");
            }
        })
    }
</script>

</body>
</html>