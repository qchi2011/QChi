<%-- 
    Document   : success
    Created on : Jul 9, 2023, 11:13:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QC SELECT | QC'S PICK!</title>
        <script src="https://kit.fontawesome.com/65d7426ab6.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id='card' class="animated fadeIn">
            <div id='upper-side'>
                <i class="fa fa-check" style="margin-bottom: 15px"></i>
                <h3 id='status'> Success </h3> 
            </div>
            <div id='lower-side'>
                <p id='message'>
                    Congratulations, your account has been successfully created ! <br><br>
                    To keep connected with us please login with your personal info
                </p>
                <a href="${pageContext.request.contextPath}/login" id="contBtn">Continue</a>
            </div>
        </div>
    </body>
    <style>
        #card {
            position: relative;
            width: 601px;
            display: block;
            margin: 90px auto;
            text-align: center;
            font-family: 'Source Sans Pro', sans-serif;
            box-shadow:0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22)
        }
        #upper-side {
            padding: 2em;
            background-color: #E49393;
            display: block;
            color: #fff;
        }
        #checkmark {
            font-weight: lighter;
            fill: #fff;
            margin: -3.5em auto auto 20px;
        }
        #status {
            font-weight: lighter;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: 1em;
            margin-top: -.2em;
            margin-bottom: 0;
        }
        #lower-side {
            padding: 3em 3em 6em 3em;
            background: #fff;
            display: block;
        }
        #message {
            margin-top: -.5em;
            margin-bottom: 2.5em;
            color: #757575;
            letter-spacing: 1px;
        }
        #contBtn {
            position: relative;
            top: 1.5em;
            text-decoration: none;
            background: #E49393;
            color: #fff;
            margin: auto;
            padding: .8em 3em;
            -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
            -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
            box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);
            border-radius: 25px;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            -o-transition: all .4s ease;
            transition: all .4s ease;
        }
        #contBtn:hover {
            -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
            -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
            box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            -o-transition: all .4s ease;
            transition: all .4s ease;
        }
    </style>
</html>
