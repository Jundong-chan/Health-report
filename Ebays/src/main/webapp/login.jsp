
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>健康上报系统</title>
    <link rel="icon" href="./img/logo.png" sizes="32x32">
    <link rel="stylesheet" href="./css/login.css">
    <script src="./js/jquery.min.js"></script>
    <script src="./js/login.js"></script>
</head>

<body>
<div class="container">
    <div class="frame">
        <div class="nav">
            <ul class="links">
                <li class="signin-active"><a class="btn">登陆</a></li>
                <li class="signup-inactive"><a class="btn">注册 </a></li>
            </ul>
        </div>
        <div ng-app ng-init="checked = false">
            <form class="form-signin" action="RegistServlet" method="post" name="form">
                <label for="username">用户名</label>
                <input class="form-styling" type="text" name="name" placeholder="" />
                <label for="password">密码</label>
                <input class="form-styling" type="text" name="password" placeholder="" />
                <input type="checkbox" id="checkbox" />
                <div class="btn-animate">
                    <a class="btn-signin">登陆</a>
                </div>
            </form>

            <form class="form-signup" action="" method="post" name="form">
                <label for="fullname">用户名</label>
                <input class="form-styling" type="text" name="fullname" placeholder="" />
                <label for="email">电子邮箱</label>
                <input class="form-styling" type="text" name="email" placeholder="" />
                <label for="password">密码</label>
                <input class="form-styling" type="text" name="password" placeholder="" />
                <label for="confirmpassword">重复密码</label>
                <input class="form-styling" type="text" name="confirmpassword" placeholder="" />
                <a ng-click="checked = !checked"  class="btn-signup">注册</a>
            </form>
        </div>
        <div class="forgot">
            <a href="#">忘记密码?</a>
        </div>
    </div>
    <div class="copyright">
        <span>Copyright © 2020-2021 健康上报管理系统 </span>
    </div>

    <!-- <a id="refresh" value="Refresh" onClick="history.go()">
        <svg class="refreshicon" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="25px" height="25px"
            viewBox="0 0 322.447 322.447" style="enable-background:new 0 0 322.447 322.447;" xml:space="preserve">
            <path d="M321.832,230.327c-2.133-6.565-9.184-10.154-15.75-8.025l-16.254,5.281C299.785,206.991,305,184.347,305,161.224
            c0-84.089-68.41-152.5-152.5-152.5C68.411,8.724,0,77.135,0,161.224s68.411,152.5,152.5,152.5c6.903,0,12.5-5.597,12.5-12.5
            c0-6.902-5.597-12.5-12.5-12.5c-70.304,0-127.5-57.195-127.5-127.5c0-70.304,57.196-127.5,127.5-127.5
            c70.305,0,127.5,57.196,127.5,127.5c0,19.372-4.371,38.337-12.723,55.568l-5.553-17.096c-2.133-6.564-9.186-10.156-15.75-8.025
            c-6.566,2.134-10.16,9.186-8.027,15.751l14.74,45.368c1.715,5.283,6.615,8.642,11.885,8.642c1.279,0,2.582-0.198,3.865-0.614
            l45.369-14.738C320.371,243.946,323.965,236.895,321.832,230.327z" />
        </svg>
    </a> -->
</div>
</body>
</html>