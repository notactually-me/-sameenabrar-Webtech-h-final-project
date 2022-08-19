<html>
    <head>
        <title>
            Login
        </title>
        <!-- <script defer src="../asset/loginjs.js"></script> -->
        <link rel="stylesheet" href="../asset/loginStyle.css">
    </head>
    <body>
        <p>WELCOME TO AGROSEED LIMITED</p>
        <div class="center">
            <!-- <fieldset> -->
                <p class="title">Login</p>
                <!-- <div id="error"></div> -->
                <form id="loginform" method='post' action="../controller/logincheck.php" enctype="">
                    <table>
                        <tr><td>Username</td></tr>
                        <tr><td><input type="text" name="username" id="userid" value=""/><div id="iderror" placeholder="Username"></div></td></tr>
                        <tr><td>Password</td></tr>
                        <tr><td><input type="password" name="password" id="pass" value="" placeholder="Password"/></td></tr>
                        <!-- <tr><td><input type="submit" name="submit" class="submitButton" value="Submit"> -->
                        <tr><td><a href="../view/reg.php">Register</a></tr></td>
                    </table>
                    <button type="submit">
                        <span class="state">Log in</span>
                    </button>
                </form>
            <!-- </fieldset> -->
        </div>
    
    </body>
</html>