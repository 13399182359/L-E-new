
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
    <link rel="stylesheet" type="text/css" href="/webuploader/webuploader.css">
    <!--引入JS-->
    <script type="text/javascript" src="/webuploader/webuploader.js"></script>
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
            <li><a href="/classCyq/findClass">列表</a></li><li><a href="/classCyq/toAdd" class="on">添加</a></li><li><a href="/classCyq/findStatus">回收站</a></li><li><a href="http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=export&tabHash=export"  >导出</a></li>
        </ul>
        <!-- END TAB框 -->

        <!-- START CONFIG_FORM -->


        <form method="POST" action="/classCyq/insert"  name='detail_form' style="margin-top:5px">
            <input type="hidden" name='systemdata_list' value="course_AdminAlbum"  class="s-txt"/>
            <input type="hidden" name='systemdata_key' value="addAlbum"  class="s-txt"/>
            <input type="hidden" name='pageTitle' value="添加" class="s-txt" />
            <div class="form2">
                <dl class="lineD" id='dl_album_category'>
                    <dt><font color="red"> * </font>分类：</dt>
                    <dd>
                        <select name="classtype">
                            <option value="0"  selected="selected" >请选择</option>
                            <option value="1" >IT/互联网</option>
                            <option value="2" >资格考试</option>
                            <option value="3" >出国留学</option>
                            <option value="4" >中小学</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_album_title'>
                    <dt><font color="red"> * </font>名称：</dt>
                    <dd>
                        <input name="name" id="form_album_title" type="text" value=""  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_mhm_id'>
                    <dt>机构名称：</dt>
                    <dd>
                        <select name="organization">
                            <option value="0"  selected="selected" >请选择</option>
                            <option value="1" >测试机构1</option>
                            <option value="2" >测试机构2</option>
                            <option value="3" >测试机构3</option>
                            <option value="4" >测试机构4</option>
                            <option value="5" >测试机构5</option>
                            <option value="6" >测试机构6</option>
                            <option value="7" >测试机构7</option>
                            <option value="8" >测试机构8</option>
                            <option value="9" >测试机构9</option>
                            <option value="10" >测试机构10</option>
                            <option value="11" >牛顿课堂</option>
                            <option value="12" >金科教育</option>
                        </select>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_album_intro'>
                    <dt><font color="red"> * </font>简介：</dt>
                    <dd>
                        <textarea  name="intro" id="form_album_intro" rows="10" cols="80" ></textarea>
                    </dd>
                </dl>
                <input name="vip_level" id="form_vip_level" type="hidden" value="" class="s-txt">
                <dl class="lineD" id='dl_price'>
                    <dt>价格：</dt>
                    <dd>
                        <input name="price" id="form_price" type="text" value=""  class="s-txt" style='width:200px'>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_order_count_mark'>
                    <dt>学习人数（营销）：</dt>
                    <dd>
                        <input name="marketingcount" id="form_order_count_mark" type="text" value=""  class="s-txt" style='width:200px'>
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
                            var vids = "";
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
                <dl class="lineD" id='dl_cover'>
                    <dt><font color="red"> * </font>封面：</dt>
                    <dd>
                        <!--  上传插件 -->
                        <div id="uploadimg">
                            <input  name="img" id="imgId">
                            <div id="fileList" class="uploader-list"></div>
                            <div id="imgPicker"  style="width:100%!important;height:100%!important;">选择图片</div>
                        </div>
                        <p>建议尺寸：580*320</p>
                    </dd>
                </dl>
                <dl class="lineD" id='dl_show_place'>
                    <dt>展示位置：</dt>
                    <dd>
                        <label><input type="radio" name="displayposition" value='0'  checked="checked"  >机构和平台 </label>
                        <label><input type="radio" name="displayposition" value='1'   >平台 </label>
                        <label><input type="radio" name="displayposition" value='2'   >机构 </label>
                        <br />
                    </dd>
                </dl>
                <dl class="lineD" id='dl_is_mount'>
                    <dt>是否允许课程分销：</dt>
                    <dd>
                        <label><input type="radio" name="ismarketing" value='0'  checked="checked"  >否 </label>
                        <label><input type="radio" name="ismarketing" value='1'   >是 </label>
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
    <script type="text/javascript">
        var uploader = WebUploader.create({
            auto: true, // 选完文件后，是否自动上传
            swf: '../js/webuploader/Uploader.swf', // swf文件路径
            server: '/classCyq/uploadFile', // 文件接收服务端
            pick: '#imgPicker', // 选择文件的按钮。可选
            // 只允许选择图片文件。
            accept: {
                title: 'Images',
                extensions: 'gif,jpg,jpeg,bmp,png',
                mimeTypes: 'image/*'
            }
        });
        uploader.on( 'fileQueued', function( file ) {
            var $list = $("#fileList"),
                $li = $(
                    '<div id="' + file.id + '" class="file-item thumbnail">' +
                    '<img>' +
                    '<div class="info">' + file.name + '</div>' +
                    '</div>'
                ),
                $img = $li.find('img');


            // $list为容器jQuery实例
            $list.append( $li );

            // 创建缩略图
            uploader.makeThumb( file, function( error, src ) {
                if ( error ) {
                    $img.replaceWith('<span>不能预览</span>');
                    return;
                }

                $img.attr( 'src', src );
            }, 100, 100 ); //100x100为缩略图尺寸
        });
        // 文件上传过程中创建进度条实时显示。
        uploader.on( 'uploadProgress', function( file, percentage ) {
            var $li = $( '#'+file.id ),
                $percent = $li.find('.progress span');

            // 避免重复创建
            if ( !$percent.length ) {
                $percent = $('<p class="progress"><span></span></p>')
                    .appendTo( $li )
                    .find('span');
            }

            $percent.css( 'width', percentage * 100 + '%' );
        });

        // 文件上传成功，给item添加成功class, 用样式标记上传成功。
        uploader.on( 'uploadSuccess', function(file, res ) {
            alert(res);
            if (res == "1"){
                layer.alert('上传失败', {icon: 5});
            }else {
                layer.alert('上传成功', {icon: 6});
                $("#imgId").val(res);
            }
            console.log(res.filePath);//这里可以得到上传后的文件路径
            $( '#'+file.id ).addClass('upload-state-done');
        });

        // 文件上传失败，显示上传出错。
        uploader.on( 'uploadError', function( file ) {
            var $li = $( '#'+file.id ),
                $error = $li.find('div.error');

            // 避免重复创建
            if ( !$error.length ) {
                $error = $('<div class="error"></div>').appendTo( $li );
            }

            $error.text('上传失败');
        });

        // 完成上传完了，成功或者失败，先删除进度条。
        uploader.on( 'uploadComplete', function( file ) {
            $( '#'+file.id ).find('.progress').remove();
        });
    </script>
</body>
</html>