<!DOCTYPE html>
<html>
<head>
    <title>Register Form</title>
    <style>
        .container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
        }

        .container h2 {
            text-align: center;
        }

        .container label, .container input {
            display: block;
            margin-bottom: 10px;
        }

        .container input[type="text"], .container input[type="password"] {
            width: 100%;
            padding: 5px;
        }

        .container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Form</h2>
        <form action="register" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <span style="color: red">
                ${error}
            </span>
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
