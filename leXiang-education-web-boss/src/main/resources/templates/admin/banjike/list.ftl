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
    <!-- START TAB框 -->
    <div class="tit_tab">
        <ul>
            <li><a href="/classCyq/findClass" class="on">列表</a></li><li><a href="/classCyq/toAdd">添加</a></li><li><a href="/classCyq/findStatus">回收站</a></li>
            <!-- 列表 -->
        </ul>
    </div>
    <!-- END TAB框 -->

    <!-- START 页面配置 -->
    <div id='page_config' class = "form2 list" >
        <div class="hd">提示：checkbox如果默认有多个值，请以“,”隔开。</div>
        <form action="http://try.51eduline.com/index.php?app=admin&mod=Index&act=savePageConfig" method="POST">
            <input type="hidden" name='pageKey' value="course_AdminAlbum_index"  class="s-txt"/>
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
                    <td width="30%"><input type="text" name='key_name[]' value='ID'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='album_title'> album_title</td>
                <td width="30%"><input type="text" name='key_name[]' value='名称'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='price'> price</td>
                <td width="30%"><input type="text" name='key_name[]' value='价格'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='order_count'> order_count</td>
                <td width="30%"><input type="text" name='key_name[]' value='学习人数'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='order_count_mark'> order_count_mark</td>
                <td width="30%"><input type="text" name='key_name[]' value='学习人数（营销）'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='cover'> cover</td>
                <td width="30%"><input type="text" name='key_name[]' value='封面'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='user_title'> user_title</td>
                <td width="30%"><input type="text" name='key_name[]' value='创建者'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='ctime'> ctime</td>
                <td width="30%"><input type="text" name='key_name[]' value='创建时间'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="20%"> <input type="hidden" name='key[]' value='status'> status</td>
                <td width="30%"><input type="text" name='key_name[]' value='状态'  class="s-txt" style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
            <input type="hidden" name='searchPageKey' value="S_course_AdminAlbum_index" />
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
                    <td width="20%"><input type="text" name='key_name[]' value='' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
                <td width="15%"><input type="hidden" name='key[]' value='album_title'> album_title</td>
                <td width="20%"><input type="text" name='key_name[]' value='名称' class="s-txt"   style="width:200px" onblur="this.className='s-txt'" onfocus="this.className='s-txt-focus'" /></td>
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
        <#--<form action="/classCyq/findClass" method="post">
            <dl class="lineD" id='dl_album_title'>
                <dt>名称：</dt>
                <dd>
                    <input name="name"  type="text"   class='s-txt' style="width:200px" >
                </dd>
            </dl>
            <div class="page_btm">
                <input type = "reset" value = "清空" class="btn_b" onclick="reset_search()">&nbsp;&nbsp;
                <input type="submit" value="确定" class="btn_b"> &nbsp;&nbsp;<input type="button" value="关闭" class="btn_w" onclick="admin.fold('search_form')">
            </div>
        </form>-->
    </div>
    <!-- END 搜索框 -->

    <!-- START TOOLBAR -->
    <div class="Toolbar_inbox">
        <!-- <div class="page right"><span>共7条</span></div> -->
        <a onclick="deleteIds()" class="btn_a"><span>删除</span></a><a onclick="updIsmarketings()" class="btn_a"><span>允许分销</span></a><a onclick="updIsmarketing()" class="btn_a"><span>禁止分销</span></a>
    </div>
    <!-- END TOOLBAR -->

    <!-- START LIST -->
    <div class="list" id='list'>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>

                <th style="width:30px;">
                    <input type="checkbox" id="checkbox_handle" onclick="admin.checkAll(this)" value="0">
                </th>

                <th class="line_l"   >ID</th>
                <th class="line_l"   >名称</th>
                <th class="line_l"   >价格</th>
                <th class="line_l"   >学习人数</th>
                <th class="line_l"   >学习人数（营销）</th>
                <th class="line_l"   >封面</th>
                <th class="line_l"   >创建者</th>
                <th class="line_l"   >创建时间</th>
                <th class="line_l"   style="width:auto;" >操作</th>
            </tr>
            <#list aClass.list as cls>
                <tr>
                    <td><input type="checkbox" value="${cls.id}"  name="checkbox"></td>
                    <td>${cls.id}</td>
                    <td>${cls.name}</td>
                    <td>${cls.price}</td>
                    <td>${cls.studyNumber?default(' ')}</td>
                    <td>${cls.marketingcount}</td>
                    <td>${cls.img?default(' ')}</td>
                    <td>${cls.username?default(' ')}</td>
                    <td>${cls.createTime?date}</td>
                    <td >
                        <a href="http://try.51eduline.com/index.php?app=course&mod=AdminAlbum&act=reviewAlbum&tabHash=reviewAlbum&id=1">评价</a> |
                        <#if cls.ismarketing == 1><a href="/classCyq/ismarketing?id=${cls.id}">禁止分销</a></#if><#if cls.ismarketing == 0><a href="/classCyq/ismarketings?id=${cls.id}">允许分销</a></#if> |
                        <a href="/classCyq/queryById?id=${cls.id}">编辑</a> |
                        <a href="http://try.51eduline.com/index.php?app=course&mod=AdminCourseOrder&act=addCourseOrder&id=1&type=4&tabHash=addCourseOrder">赠送</a> |
                        <a href="/classCyq/updStatus?id=${cls.id}">删除</a>
                    </td>
                </tr>
            </#list>
            <#--<tr>
                <td colspan="3">
                    <a href="/findClass?page=1">首页</a>
                    <!-- 如果当前为第一页时,就没有上一页这个超链接显示 &ndash;&gt;
            <#if aClass ?? && aClass.pageNum == 1 && aClass.pageNum != aClass.totalPage>
                <#list aClass.start..aClass.end as i>
                    <#if aClass.pageNum == i>
                        ${i}
                        <#else >
                        <a href="/findClass?page=${i}">${i}</a>
                    </#if>
                </#list>
                <a href="/findClass?page=${aClass.pageNum + 1}">下一页</a>
            </#if>
            <!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 &ndash;&gt;
            <#if aClass.pageNum &gt;1 && aClass.pageNum &lt; aClass.totalPage>
                <a href="/aClass?page=${aClass.pageNum-1}">上一页</a>
                <#list aClass.start..aClass.end as i>
                    <#if aClass.pageNum == i>
                        ${i}
                    <#else >
                        <a href="/aClass?page=${i}">${i}</a>
                    </#if>
                </#list>
                <a href="/aClass?page=${aClass.pageNum + 1}">下一页</a>
            </#if>
            <!-- 如果当前为最后一页时,则没有下一页 &ndash;&gt;
                    <#if aClass.pageNum == aClass.totalPage && aClass.pageNum != 1>
                        <a href="/findClass?page=${aClass.pageNum-1}">上一页</a>
                        <#list aClass.start..aClass.end as i>
                            <#if aClass.pageNum == i>
                                ${i}
                            <#else >
                                <a href="/findClass?page=${i}">${i}</a>
                            </#if>
                        </#list>
                    </#if>
                    <#if aClass.pageNum == 1 && aClass.pageNum == aClass.totalPage>
                        <#list aClass.start..aClass.end as i>
                            <#if aClass.pageNum == i>
                                ${i}
                            <#else >
                                <a href="/findClass?page=${i}">${i}</a>
                            </#if>
                        </#list>
                    </#if>
                    <a href="/findClass?page=${aClass.totalPage}">尾页</a>
                </td>
            </tr>-->
        </table>
    </div>
    <!-- END LIST -->

    <!-- START BOTTOMBAR -->
    <div class="Toolbar_inbox">
        <div class="page right"><span>共7条</span></div>
        <!-- 	<a onclick="admin.fold('search_form')" class="btn_a"><span>搜索</span></a><a onclick="admin.delAlbumAll('delAlbums','0')" class="btn_a"><span>删除</span></a><a onclick="admin.enableMount(0,'Album')" class="btn_a"><span>允许分销</span></a><a onclick="admin.disableMount(0,'Album')" class="btn_a"><span>禁止分销</span></a> -->
    </div>
    <!-- END BOTTOMBAR -->
</div>
<script>
    function reset_search() {
        var url = $('#search_form form ').attr('action');
        window.location.href = url;
    }
</script>
<script type="text/javascript">
    function deleteIds(){
        ids='';
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/classCyq/delById",{ids:ids},function () {
                location.reload();
            })
        }else {
            alert("请选择要删除的数据！！")
        }
    }

    function updIsmarketing(){
        ids='';
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/classCyq/updIsmarketing",{ids:ids},function () {
                //location.reload();
            })
        }else {
            alert("请选择要修改的数据！！")
        }
    }

    function updIsmarketings(){
        ids='';
        $("[name='checkbox']:checked").each(function(){
            ids+=","+this.value;
        })
        ids= ids.substr(1);
        if ( ids!= null && ids!="") {
            $.post("/classCyq/updIsmarketings",{ids:ids},function () {
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