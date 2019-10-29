
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
        <ul>
            <li><a href="/courseCyq/findCourse">已审</a></li>
            <li><a href="/courseCyq/findCourseAudit">待审</a></li>
            <li><a href="/courseCyq/findCourseStatus">回收站</a></li>
            <li><a href="/courseCyq/toAdd">添加</a></li>
            <li><a href="">导出</a></li>
        </ul>
    </div>
    <form method="POST" action="/courseCyq/updateCourse" id="detail_form" name="detail_form">
        <input type="hidden" name="systemdata_list" value="lineClass_Admin" class="s-txt">
        <input type="hidden" name="systemdata_key" value="addVideo" class="s-txt">
        <input type="hidden" name="pageTitle" value="添加课程" class="s-txt">
        <input type="hidden" name="id" value="${course.id}"/>
        <input type="hidden" name="img" value="${course.img?default(" ")}"/>
        <input type="hidden" name="userId" value="${course.userId?default(" ")}"/>
        <input type="hidden" name="lecturerId" value="${course.lecturerId?default(" ")}"/>
        <input type="hidden" name="createTime" value="${course.createTime?date}"/>
        <input type="hidden" name="status" value="${course.status}"/>
        <input type="hidden" name="audit" value="${course.audit}"/>
        <input type="hidden" name="studyNumber" value="${course.studyNumber}"/>
        <div class="form2">
            <dl class="lineD" id="dl_course_name">
                <dt><font color="red"> * </font>课程名称：</dt>
                <dd>
                    <input name="name" id="form_course_name" type="text" value="${course.name}" class="s-txt">
                </dd>
            </dl>

            <dl class="lineD">
                <dt><font color="red"> * </font>课程分类：</dt>
                <dd>
                    <select name="type" class="mhm_select">
                        <option value="-1">--请选择--</option>
                        <option value="1" <#if course.type == 1>selected</#if>>语言学校</option>
                        <option value="2" <#if course.type == 2>selected</#if>>古代诗词鉴赏</option>
                        <option value="3" <#if course.type == 3>selected</#if>>建造师考证课</option>
                        <option value="4" <#if course.type == 4>selected</#if>>中小学物理课</option>
                        <option value="5" <#if course.type == 5>selected</#if>>管理培训</option>
                        <option value="6" <#if course.type == 6>selected</#if>>考研·公务员</option>
                        <option value="7" <#if course.type == 7>selected</#if>>九零后家庭教育</option>
                        <option value="8" <#if course.type == 8>selected</#if>>出国·留学</option>
                    </select>
                </dd>
            </dl>

            <dl class="lineD" id="form_mhm_id">
                <dt><font color="red"> * </font>所属机构：</dt>
                <dd>
                    <select name="organization" class="mhm_select">
                        <option value="0">请选择机构</option>
                        <option value="1"  <#if course.organization == 1>selected</#if>>测试机构1</option>
                        <option value="2" <#if course.organization == 2>selected</#if>>测试机构2</option>
                        <option value="3" <#if course.organization == 3>selected</#if>>测试机构3</option>
                        <option value="4" <#if course.organization == 4>selected</#if>>测试机构4</option>
                        <option value="5" <#if course.organization == 5>selected</#if>>测试机构5</option>
                        <option value="6" <#if course.organization == 6>selected</#if>>测试机构6</option>
                        <option value="7" <#if course.organization == 7>selected</#if>>测试机构7</option>
                        <option value="8" <#if course.organization == 8>selected</#if>>测试机构8</option>
                        <option value="9" <#if course.organization == 9>selected</#if>>测试机构9</option>
                        <option value="10" <#if course.organization == 10>selected</#if>>测试机构10</option>
                        <option value="11" <#if course.organization == 11>selected</#if>>牛顿课堂</option>
                        <option value="12" <#if course.organization == 12>selected</#if>>金科教育</option>
                    </select>
                </dd>
            </dl>

            <#--<dl class="lineD" id="form_teacherlist">
                <dt><font color="red"> * </font>讲师选择：</dt>
                <dd>
                    <select name="" id="trid" class="teacher_id_select">
                        <option value="0">请选择</option>
                    </select>
                </dd>
            </dl>-->

            <#--<dl class="lineD">
                <dt><font color="red"> * </font>封面上传：</dt>
                <dd id="img">
                    <div id="width_150" >
                        <input style="border:0" type="file" name="cover" inputname="cover" value="上传封面" onchange="core.plugInit('uploadFile',this,callback,'image');" urlquery='input_id=cover' limit="1" event-node="uploadinput" >
                    </div>
                    建议尺寸：580px*320px
                    <div id="small_cover">
                        <img style="max-width:100px;padding:2px; border:1px solid #ccc" src="http://try.51eduline.com/data/upload/2018/0813/11/5b70fd2e10f24.png" />
                        <input type="hidden" name="cover_ids" data="cover_ids" value="874" />
                    </div>
                </dd>
            </dl>-->
            <!--
            <dl class="lineD" id="dl_course_binfo">
                <dt><font color="red"> * </font>课程简介：</dt>
                <dd>
                    <textarea name="course_binfo" id="course_binfo" rows="10" cols="80"></textarea>
                </dd>
            </dl>
            -->

            <dl class="lineD" id="dl_video">
                <dt><font color="red"> * </font>课程简介：</dt>
                <dd>
                    <!--发布样式 begi-->
                    <script id="course_intro" name="info" type="text/plain" style="width:99%;height:350px; margin-bottom:10px;"><p>${course.info}</p></script>
                    <script type="text/javascript">
                        var basePath = 'http://try.51eduline.com/addons/theme/stv1/_static/js/ueditor1_4_3_3/';
                        var js=document.scripts;
                        var jsPath;
                        window.isLoad = 0;
                        for(var i=js.length;i>0;i--){
                            if(js[i-1].src.indexOf("ueditor.all.min.js")>-1){
                                window.isLoad = 1;
                                setTimeout(function(){
                                    Editor_course_intro = UE.ui.Editor({
                                        toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                        zIndex:1,
                                        wordCount:parseInt('0') > 0 ? true : false,
                                        maximumWords:parseInt('0'),
                                        UEDITOR_HOME_URL:basePath,
                                        serverUrl:basePath+'/php/controller.php',
                                    });
                                    Editor_course_intro.render('course_intro');

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
                                                        Editor_course_intro = UE.ui.Editor({
                                                            toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                            zIndex:1,
                                                            wordCount:parseInt('0') > 0 ? true : false,
                                                            maximumWords:parseInt('0'),
                                                            UEDITOR_HOME_URL:basePath,
                                                            serverUrl:basePath+'/php/controller.php',
                                                        });
                                                        Editor_course_intro.render('course_intro');
                                                    });
                                                });
                                            });
                                        }else{
                                            Editor_course_intro = UE.ui.Editor({
                                                toolbars:JSON.parse('[["fullscreen","|","undo","redo","|","bold","italic","underline","fontborder","strikethrough","superscript","subscript","removeformat","formatmatch","autotypeset","blockquote","pasteplain","|","forecolor","backcolor","insertorderedlist","insertunorderedlist","selectall","cleardoc","|","rowspacingtop","rowspacingbottom","lineheight","|","customstyle","paragraph","fontfamily","fontsize","|","directionalityltr","directionalityrtl","indent","|","justifyleft","justifycenter","justifyright","justifyjustify","|","touppercase","tolowercase","|","link","unlink","anchor","|","imagenone","imageleft","imageright","imagecenter","|","simpleupload","insertimage","emotion","scrawl","insertvideo","music","attachment","map","gmap","insertframe","insertcode","pagebreak","template","background","|","horizontal","date","time","spechars","snapscreen","wordimage","|","inserttable","deletetable","insertparagraphbeforetable","insertrow","deleterow","insertcol","deletecol","mergecells","mergeright","mergedown","splittocells","splittorows","splittocols","charts","|","print","preview","searchreplace","drafts","help","kityformula"]]'),
                                                zIndex:1,
                                                wordCount:parseInt('0') > 0 ? true : false,
                                                maximumWords:parseInt('0'),
                                                UEDITOR_HOME_URL:basePath,
                                                serverUrl:basePath+'/php/controller.php',
                                            });
                                            Editor_course_intro.render('course_intro');
                                        }
                                    });
                                });
                            });
                        }
                    </script>
                </dd>
            </dl>

            <dl class="lineD" id="form_listingtime">
                <dt><font color="red"> * </font>开课时间：</dt>
                <dd>
                    <input name="startTime" type="text" value="${course.startTime?date}" class="s-txt"  onfocus="core.rcalendar(this,'full');" readonly="readonly">
                </dd>
            </dl>

            <dl class="lineD" id="form_uctime">
                <dt><font color="red"> * </font>结束时间：</dt>
                <dd>
                    <input name="endTime" type="text" value="${course.endTime?date}" class="s-txt" onfocus="core.rcalendar(this,'full');" readonly="readonly">
                </dd>
            </dl>

            <dl class="lineD" id="form_course_price">
                <dt><font color="red"> * </font>价格：</dt>
                <dd>
                    <input name="price" type="text" value="${course.price}" class="s-txt">元
                </dd>
            </dl>

            <dl class="lineD" id="form_course_order_count_mark">
                <dt>学习人数（营销）：</dt>
                <dd>
                    <input name="marketingNumber" type="text" value="${course.marketingNumber}" class="s-txt">人
                </dd>
            </dl>

            <dl class="lineD" id="form_address">
                <dt>授课地点：</dt>
                <dd>
                    <textarea name="site"  rows="10" cols="80">${course.site}</textarea>
                </dd>
            </dl>

            <#--<dl class="lineD" id="dl_author">
                <dt><font color="red"> * </font>创建人：</dt>
                <dd>
                    <a event-node="face_card" uid="17" href="http://try.51eduline.com/user/index/17.html" class="" target="_self">测试机构2讲师2</a>                </dd>
            </dl>-->

            <dl class="lineD" id="dl_is_charge">
                <dt>是否免费：</dt>
                <dd>
                    <label><input type="radio" name="free" value="0" <#if course.free == 0>checked</#if>>否 </label>
                    <label><input type="radio" name="free" value="1" <#if course.free == 1>checked</#if>>是 </label>
                    <br>
                </dd>
            </dl>

            <dl class="lineD" id="dl_show_place">
                <dt>显示位置：</dt>
                <dd>
                    <label><input type="radio" name="displayposition" value="0" <#if course.displayposition == 0>checked</#if>>平台与机构 </label>
                    <label><input type="radio" name="displayposition" value="1" <#if course.displayposition == 1>checked</#if>>平台 </label>
                    <label><input type="radio" name="displayposition" value="2" <#if course.displayposition == 2>checked</#if>>机构 </label>
                    <br>
                </dd>
            </dl>

            <div class="page_btm">
                <input type="submit" class="btn_b" value="保存" >
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function j_validateCallback(form,call,callback) {
            var $form = $(form);
            if(typeof call != 'undefined' && call instanceof Function){
                $i = call($form);
                if(!$i){
                    return false;
                }
            }
            var _submitFn = function(){
                $.ajax({
                    type: form.method || 'POST',
                    url:$form.attr("action"),
                    data:$form.serializeArray(),
                    dataType:"json",
                    cache: false,
                    success: function(xMLHttpRequest, textStatus, errorThrown){
                        if(typeof callback != 'undefined' && callback instanceof Function){
                            callback($form,xMLHttpRequest);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError){
                        ui.error("未知错误!");
                    }
                });
            }
            _submitFn();
            return false;
        }

        //根据机构选择讲师
        $('.mhm_select').click(function (){
            if($('.mhm_select option:selected').val() != 0){
                $.ajax({
                    type: 'POST',
                    url: "http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=findSchoolTeacher",
                    data: {mhm_id: $('.mhm_select option:selected').val()},
                    dataType: "json",
                    cache: false,
                    success: function (data) {
                        $('#form_teacherlist').html(data.info).show();
                    }
                });
            }else{
                $('#form_teacherlist').hide();
            }
        });
        $(function(){
            var id = "29";
            if(id != 0){
                var mhm_id = $('.mhm_select option:selected').val();
                if(mhm_id != 0){
                    $.ajax({
                        type: 'POST',
                        url: "http://try.51eduline.com/index.php?app=course&mod=AdminVideo&act=findSchoolTeacher",
                        data: {mhm_id: mhm_id,teacher_id:$('.teacher_id_select option:selected').val()},
                        dataType: "json",
                        cache: false,
                        success: function (data) {
                            $('#form_teacherlist').html(data.info).show();
                        }
                    });
                }else{
                    $('#form_teacherlist').hide();
                }
            }
        });

        function checkForm(form){
//            $("textarea[name='video_intro']").html(E.getData());
//            $('#video_intro').val(E.getData());
            var course_name = form.find('input[name="course_name"]').val();
            if(!course_name){
                ui.error("课程名称不能为空");
                return false;
            }
            var video_levelhidden = form.find('input[name="video_levelhidden"]').val();
            if(!video_levelhidden){
                ui.error("请选择课程分类");
                return false;
            }
            var cover = form.find('input[name="cover_ids"]').val();
            if(!cover){
                ui.error("请上传课程封面");
                return false;
            }
            // var course_binfo = form.find('textarea[name="course_binfo"]').val();
            // if(!course_binfo){
            //     ui.error("课程简介不能为空");
            //     return false;
            // }
            var course_intro = form.find('textarea[name="course_intro"]').val();
            if(!course_intro){
                ui.error("课程简介不能为空");
                return false;
            }
            var trid = $("#trid").val();
            if(trid<=0){
                ui.error("请选择讲师");
                return false;
            }

            var listingtime = form.find('input[name="listingtime"]').val();
            if(!listingtime){
                ui.error("开课时间不能为空");
                return false;
            }

            var uctime = form.find('input[name="uctime"]').val();
            if(!uctime){
                ui.error("结束时间不能为空");
                return false;
            }

            var course_price = form.find('input[name="course_price"]').val();
            if(''==course_price || undefined == course_price || course_price <= 0){
                ui.error("课程价格不能为空");
                return false;
            }
            return true;

        }
        function post_callback(_form,data){
            if(data.status != undefined){
                if(data.status == '0'){
                    ui.error(data.info);
                } else {
                    ui.success(data.info, {
                        end: function() {
                            window.location.href = U('course/AdminLineClass/index')+"&tabHash=index";
                        }
                    });
                }
            }
        }

        function callback(data){

            $("#"+data.input_id+"").remove();
            $("#image_"+data.input_id).append(
                '<div id='+data.input_id+'>'
                +'<img style="max-width:100px;padding:2px; border:1px solid #ccc" src='+UPLOAD_URL+'/'+data.src+' />'
                +'</div>'
            ).find('input:file').val('');
            $("#"+data.input_id+"_ids").val(data.attach_id);
        }
        function filecallback(data){
            $("#old_coursefile_ids").remove();
            $("#coursefile_ids").val(data.attach_id);
        }
        $(document).ready(function(){
            $('#detail_form input:file').click(function(){
                $('input:file').val('');
            });
            $('#original_recommend').change(function(){
                var che = $("#original_recommend").attr("checked");
                if(che == true){
                    $("#re_sort").removeAttr("readonly");
                } else {
                    $("#re_sort").attr("readonly",'readonly');
                }
            });
            $('#best_recommend').change(function(){
                var che = $("#best_recommend").attr("checked");
                if(che == true){
                    $("#be_sort").removeAttr("readonly");
                } else {
                    $("#be_sort").attr("readonly",'readonly');
                }
            });

            $('#is_tlimit').change(function(){
                var che = $("#is_tlimit").attr("checked");
                if(che == true){
                    $("#form_limit_discount,#form_starttime,#form_endtime").show();
                    $("#limit_discount,#starttime,#endtime").removeAttr("readonly");
                } else {
                    $("#form_limit_discount,#form_starttime,#form_endtime").hide();
                    $("#form_limit_discount,#form_starttime,#endtime").attr("readonly","readonly");
                    $("#limit_discount,#starttime,#endtime").val('');
                }
            });
        });
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