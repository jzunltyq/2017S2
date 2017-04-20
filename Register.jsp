<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Sign Up Page</title>
    </head>
    <body class="body">
	<div class="login">
            <form id="formsignup" action="register" method="POST">
		<div class="logo">M</div>
                    <input type="text" name="fullname" class="input" placeholder="Your Full Name Here">
                    <input type="email" name="email" class="input" placeholder="Email">
                    <input type="password" name="pass1" class="input" placeholder="Password">
                    <input type="password" name="pass2" class="input" placeholder="Type password again">
                    <input type="text" name="phone" class="input" placeholder="Your phone number">
		<div style="width: 100%">
                    <label style="width: 100%;margin-left: 10px;margin-bottom: 10px; color: red;">
                        <input type="checkbox" id="check" name="check" value="1"> I agree with policy of page
                    </label>
                </div>
                <button type="submit" class="btn btn-default">Sign Up</button>
            </form>
        </div>
    </body>
</html>
