<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>新增用户信息</title>
</head>
<body>
<form action="/insert" method="post">
    <table border="1">
        <tr>
            <td>姓名:</td>
            <td>
                <input type="text" class="form-control1" id="name" name="name">
            </td>
        </tr>  <tr>
            <td>年龄:</td>
            <td>
                <input type="text" class="form-control1" id="age" name="age">
            </td>
        </tr>
        <tr colspan="2">
            <td>
                <input type="submit" value="新增"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>