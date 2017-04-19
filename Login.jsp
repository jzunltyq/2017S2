<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DbConnection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body id="body">
        <% 
            Cookie[] c = request.getCookies();
            if (c==null) out.print("");
            else {
            boolean logined = false;
            DbConnection conn = new DbConnection();
            Statement stm = conn.connection.createStatement();
            ResultSet re = conn.connection.createStatement().executeQuery("select * from account");
            HttpSession s = request.getSession(false);
            while(re.next()){
                int iduser = re.getInt(1);
                String idindata = re.getString(2);
                String passindata = re.getString(3);
                for (int i=0;i<c.length;i++){
                    String username = c[i].getName();
                    String password = c[i].getValue();
                if (idindata.equals(username)&& passindata.equals(password))
                    {logined = true;
                     s.setAttribute("id", iduser);
                     break;}
                    }
                }
            if(logined==true)
            {response.sendRedirect("Hompage.jsp");}
            else
            out.println("");
            }
        %>
        <div id="h1">M</div>
        <div class="login">
            <form action="cookie" method="post">
                <div class="row"><div class="col4">
                        <input type="text" id="username" name="id" placeholder="User name"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col4">
                        <input type="text" id="password" name="pass" placeholder="Password" onkeyup="CheckPasswordStrength(this.value)" />
                        <span id="password_strength"></span>
                        <script type="text/javascript">
                            function CheckPasswordStrength(password) {
                                var password_strength = document.getElementById("password_strength"); 
                                if (password.length == 0) {
                                    password_strength.innerHTML = ""; return;}
                                var regex = new Array(); 
                                regex.push("[A-Z]"); 
                                regex.push("[a-z]"); 
                                regex.push("[0-9]"); 
                                regex.push("[$@$!%*#?&]"); 
                                var passed = 0;
                                for (var i = 0; i < regex.length; i++) {
                                    if (new RegExp(regex[i]).test(password)) {passed++; }}
                                if (passed > 2 && password.length > 8) {passed++;}
                                var color = "";
                                var strength = ""; 
                                switch (passed) {
                                    case 0:
                                    case 1:strength = "Weak";color = "red";break;
                                    case 2:strength = "Good";color = "darkorange";break;
                                    case 3:
                                    case 4:strength = "Strong";color = "green";break;
                                    case 5:strength = "Very Strong";color = "darkgreen";break;}
                                    password_strength.innerHTML = strength;
                                    password_strength.style.color = color;}
                                                            </script>
                    </div>
                </div>
                <div class="row">
                    <button type="submit">Log in</button>
                </div>
            </form>
        </div>
        
    </body>
</html>
