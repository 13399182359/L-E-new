
<style media="screen">
    .Toolbar_inbox .btn_a{color: #fff!important;}
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
        var APPNAME   = 'mall';
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
    <script type="text/javascript" src="http://try.51eduline.com/apps/mall/_static/js/admin.js"></script>
    <style>
        @font-face {font-family: 'iconfontNEW';src: url('http://try.51eduline.com/addons/theme/stv1/_static/icon/iconfontNEW.woff?v={$site.sys_version}');}
        .iconfontNEW{font-family: iconfontNEW;font-style: normal;}
    </style>
</head>
<body>
<div class="so_main">
    <div class="tit_tab">
        <ul>
            <li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=credit" class="on">积分规则</a></li>
            <!--<li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=creditType">积分类型</a></li>-->
            <!--<li><a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=creditLevel">积分等级</a></li>-->
        </ul>
    </div>
    <div class="Toolbar_inbox">
        <#--<div class="page right"><span>共53条</span> <a class='current'>1</a><a p='2' href='/index.php?app=mall&mod=AdminGlobalConfig&act=credit&p=2'>2</a><a p='3' href='/index.php?app=mall&mod=AdminGlobalConfig&act=credit&p=3'>3</a><a p='2' href='/index.php?app=mall&mod=AdminGlobalConfig&act=credit&p=2' class='next'>下一页</a></div>-->
        <a href="http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=addCredit" class="btn_a"><span>添加</span></a>
        <!--<a href="javascript:void(0);" class="btn_a" onclick="deleteCredit();"><span>删除</span></a>-->
        <a href="javascript:void(0);"  class="btn_a" onclick="openCredit();">关闭</a>
    </div>

    <div class="list">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="checkAll(this)" value="0">
                    <label for="checkbox"></label>
                </th>
                <th class="line_l">ID</th>
                <th class="line_l">名称</th>
                <th class="line_l">别名</th>
                <th class="line_l">类型</th>
                <th class="line_l">积分</th>	<th class="line_l">执行次数</th>
                <th class="line_l">操作</th>
            </tr>
            <#list list.list as integrals>
                <tr overstyle='on' id="credit_1">
                    <td><input type="checkbox" name="checkbox" id="checkbox2" value="${integrals.id}"></td>
                    <td>${integrals.id}</td>
                    <td>${integrals.name}</td>
                    <td>${integrals.usename}</td>
                    <td>${integrals.type}</td>
                    <td>${integrals.jifen}</td>
                    <td>${integrals.number}</td>
                    <td>
                        <a href="">编辑 | </a>
                        <!--<a href="javascript:void(0);" onclick="deleteCredit(1);">删除</a>-->
                        <a onclick="openCredit(1);">开启</a>
                    </td>
                </tr>
            </#list>
        </table>
    </div>
</div>

<script>
    //鼠标移动表格效果
    $(document).ready(function(){
        $("tr[overstyle='on']").hover(
            function () {
                $(this).addClass("bg_hover");
            },
            function () {
                $(this).removeClass("bg_hover");
            }
        );
    });

    function checkon(o){
        if( o.checked == true ){
            $(o).parents('tr').addClass('bg_on') ;
        }else{
            $(o).parents('tr').removeClass('bg_on') ;
        }
    }

    function checkAll(o){
        if( o.checked == true ){
            $('input[name="checkbox"]').attr('checked','true');
            $('tr[overstyle="on"]').addClass("bg_on");
        }else{
            $('input[name="checkbox"]').removeAttr('checked');
            $('tr[overstyle="on"]').removeClass("bg_on");
        }
    }

    //获取已选择的ID数组
    function getChecked() {
        var ids = new Array();
        $.each($('table input:checked'), function(i, n){
            ids.push( $(n).val() );
        });
        return ids;
    }

    function deleteCredit(ids) {
        var length = 0;
        if(ids) {
            length = 1;
        }else {
            ids    = getChecked();
            length = ids.length;
            ids    = ids.toString();
        }
        if(ids=='') {
            ui.error('请先选择一个规则');
            return ;
        }

        ui.confirm('删除成功后将无法恢复，确认继续？', {
            yes: function () {
                $.post("http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=doDeleteCredit", {ids:ids}, function(res){
                    if(res == '1') {
                        ui.success('删除成功',{
                            end:function(){
                                window.location.href = location.href;
                                ids = ids.split(',');
                                for(i = 0; i < ids.length; i++) {
                                    $('#credit_'+ids[i]).remove();
                                }
                            }
                        });
                    }else {
                        ui.error('删除失败');
                    }
                });
            }
        });
    }

    function openCredit(ids) {
        var length = 0;
        if(ids) {
            length = 1;
        }else {
            ids    = getChecked();
            length = ids.length;
            ids    = ids.toString();
        }
        if(ids=='') {
            ui.error('请先选择一个规则');
            return ;
        }

        ui.confirm('确定要进行此操作吗？', {
            yes: function () {
                $.post("http://try.51eduline.com/index.php?app=mall&mod=AdminGlobalConfig&act=openCredit", {ids:ids}, function(res){
                    if(res == '1') {
                        ui.success('操作成功',{
                            end:function(){
                                window.location.href = location.href;
                                ids = ids.split(',');
                                for(i = 0; i < ids.length; i++) {
                                    $('#credit_'+ids[i]).remove();
                                }
                            }
                        });
                    }else {
                        ui.error('操作失败');
                    }
                });
            }
        });
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