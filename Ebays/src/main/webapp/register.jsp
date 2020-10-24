<%--
  Created by IntelliJ IDEA.
  User: jundongchen
  Date: 2020-10-21
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
    <h3>这里是注册页面</h3><br/>
    <form name="register" action="RegistServlet" method="post">
        <dl class="dl1">
            <dt>用户名</dt>
            <dd><input type="text" name="name" placeholder="请输入用户名"></dd>
        </dl>
        <dl class="dl1">
            <dt>密码</dt>
            <dd><input type="password" name="password" placeholder="请输入密码"></dd>
        </dl>
        <div>
            <input type="submit" value="注册">
            <input type="reset">
        </div>

    </form>

</body>
</html>
