<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>修改用户信息</title>
</head>
<body>
<form action="/update" method="post">
    <table border="1">
        <tr>--
            <td>编号:</td>
            <td>
                <input type="hidden" id="id" name="id" value="${user.id}"/>
            </td>

        </tr>
        <tr>
            <td>姓名:</td>
            <td>

                <input type="text" class="form-control1" id="name" name="name" value="${user.name}">
            </td>

        </tr>  <tr>
            <td>年龄:</td>
            <td>

                <input type="text" class="form-control1" id="age" name="age" value="${user.age}">
            </td>

        </tr>

        <tr colspan="2" >
            <td>
                <input type="submit" value="修改"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>