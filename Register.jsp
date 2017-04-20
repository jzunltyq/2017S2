<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
            <form action="register" method="POST">
                <table>
                    <tbody>
                        <tr>                         
                          <td>
                            <input type="text" name="fullname" id="input" placeholder="Your Full Name Here">
                          </td>
                        </tr>
                        <tr>
                        <td>
                          <input type="email" name="email" id="input" placeholder="Email">
                          </td>
                        </tr>
                        <tr>
                          <td>
                          <input type="password" name="pass1" id="input" placeholder="Password">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <input type="password" name="pass2" id="input" placeholder="Type password again">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <input type="text" name="phone" id="input" placeholder="Your phone number">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <input type="text" name="nickname" id="input" placeholder="Choose your display name">
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <label>
                              <input type="radio" name="optionsRadios" id="optionsRadios1" value="Male" checked> Male
                            </label>
                            <label>
                              <input type="radio" name="optionsRadios" id="optionsRadios2" value="Female"> Female
                            </label>
                            <label>
                              <input type="radio" name="optionsRadios" id="optionsRadios3" value="Others"> Others
                            </label>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <label>
                              <input type="checkbox" id="check" name="check" value="1"> I agree with policy of page
                            </label>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <button type="submit" class="btn btn-default">Submit</button>
                          </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        
    </body>
</html>
