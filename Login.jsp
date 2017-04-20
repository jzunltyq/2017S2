<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DbConnection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Sign In Page</title>
    </head>
    <body class="body">
	<div class="login">
            <form id="formsignup" action="register" method="POST">
		<div class="logo">M</div>
                    <input type="email" name="email" class="input" placeholder="Email">
                    <input type="password" name="pass1" class="input" placeholder="Password">
                <button type="submit" class="btn btn-default">Sign Up</button>
                <div style="width: 100%">
                    <label style="width: 100%;margin-left: 10px;margin-bottom: 10px;">
                        <a href="#" style="color: red; margin-left: 60%">Forget Password?</a>
                    </label>
                </div>
            </form>
        </div>
    </body>
</html>
