<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>用户列表</title>
</head>
<body>
<a href="/toAddUser">新增</a>
<table border="1">
    <tr>
        <th>用户编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>操作</th>
    </tr>
    <#list userList.list as user>
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td colspan="2">
                <a href="/queryUserById?id=${user.id}">修改</a>
                <a href="/delete?id=${user.id}">删除</a>
            </td>
        </tr>
    </#list>
    <tr>
        <td colspan="3">
            <a href="/userList?page=1">首页</a>
            <!-- 如果当前为第一页时,就没有上一页这个超链接显示 -->
            <#if userList ?? && userList.pageNum == 1 && userList.pageNum != userList.totalPage>
                <#list userList.start..userList.end as i>
                    <#if userList.pageNum == i>
                        ${i}
                        <#else >
                        <a href="/userList?page=${i}">${i}</a>
                    </#if>
                </#list>
                <a href="/userList?page=${userList.pageNum + 1}">下一页</a>
            </#if>
            <!-- 如果当前不是第一页,也不是最后一页时,则有上一页跟下一页 -->
            <#if userList.pageNum &gt;1 && userList.pageNum &lt; userList.totalPage>
                <a href="/userList?page=${userList.pageNum-1}">上一页</a>
                <#list userList.start..userList.end as i>
                    <#if userList.pageNum == i>
                        ${i}
                    <#else >
                        <a href="/userList?page=${i}">${i}</a>
                    </#if>
                </#list>
                <a href="/userList?page=${userList.pageNum + 1}">下一页</a>
            </#if>
            <!-- 如果当前为最后一页时,则没有下一页 -->
            <#if userList.pageNum == userList.totalPage && userList.pageNum != 1>
                <a href="/userList?page=${userList.pageNum-1}">上一页</a>
                <#list userList.start..userList.end as i>
                    <#if userList.pageNum == i>
                        ${i}
                    <#else >
                        <a href="/userList?page=${i}">${i}</a>
                    </#if>
                </#list>
            </#if>
            <#if userList.pageNum == 1 && userList.pageNum == userList.totalPage>
                <#list userList.start..userList.end as i>
                    <#if userList.pageNum == i>
                        ${i}
                    <#else >
                        <a href="/userList?page=${i}">${i}</a>
                    </#if>
                </#list>
            </#if>
            <a href="/userList?page=${userList.totalPage}">尾页</a>
        </td>
    </tr>
</table>
</body>
</html>