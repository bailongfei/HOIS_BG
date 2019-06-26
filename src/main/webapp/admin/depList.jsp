<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>测试</title>
</head>
<body>
    <h1>项目测试</h1>
    <form action="${pageContext.request.contextPath}/dep/findCount" method="post">
        <table border="1" cellspacing="0" cellpadding="6" width="600" align="center">
            <tr>
                <td>账号：</td>
                <td>
                    <input type="text" name="Staff_Code" id="Staff_Code" />
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <input type="password" name="Staff_Pass" id="Staff_Pass" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit" value="测试">测试</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
