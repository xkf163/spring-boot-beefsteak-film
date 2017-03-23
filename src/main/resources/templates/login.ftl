<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
<title>登录</title>
<script type="text/javascript" src="/components/jquery-easyui-1.5.1/jquery.min.js"></script>
</head>
<body>
错误信息：
<h4 id="erro"></h4>
<form>
    <p>
        账号：<input type="text" name="username" id="username" value="admin" />
    </p>
    <p>
        密码：<input type="text" name="password" id="password" value="123" />
    </p>
    <P><input type="checkbox" name="rememberMe"  id="rememberMe" />记住我</P>
    <p>
        <input type="button" id="ajaxLogin" value="登录" />
    </p>

</form>
<script>
    $(function(){
        $("#ajaxLogin").click(function() {
            var username = $("#username").val();
            var password = $("#password").val();
            var rememberMe =$('#rememberMe').is(':checked');
            $.post("/ajaxLogin", {
                "username" : username,
                "password" : password,
                "rememberMe" : rememberMe
            }, function(result) {
                if (result.status == 200) {
                    location.href = "/index";
                } else {
                    $("#erro").html(result.message);
                }
            });
        });
    });
</script>
</body>
</html>