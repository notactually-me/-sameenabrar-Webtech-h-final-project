<?php
    session_start();
    require_once('../model/salesModel.php');
    if(isset($_COOKIE['astatus']) && isset($_SESSION['id']) && isset($_SESSION['pass']))
    {
    
?>
<html>
    <head><title>Manager List</title></head>
    <body>
        <a href="../view/ahome.php">Go Home</a>

        <table border="1px" style="width:85%">
            <tr><th colspan="12">Sales Manager</th></tr>
            <tr>
                <th>ID</th><th>Name</th><th>User Type</th><th>Distribution</th><th>Gender</th><th>Phone Number</th>
                <th>Email</th><th>Date of Birth</th><th>Experience</th><th>Education</th><th>Degree</th><th>Salary</th>
            </tr>
            <?php

                viewSales();
                
            
            ?>
        </table>
        <br>
        <table>
            <tr>
                <td>
                    <form action="../view/editSalesManager.php" method="post">
                        <input type="Submit" value="Update details">
                    </form>
                </td>

                <td>
                    <form action="../view/addSalesManager.php" method="post">
                        <input type="Submit" value="Add Manager">
                    </form>                            
                </td>

                <td>
                    <form action="../view/delSalesManager.php" method="post">
                        <input type="Submit" value="Delete Manager">
                    </form>                            
                </td>

            </tr>
        </table>
    </body>
</html>
<?php
    }
    else
    {
        echo "Invalid request";
        echo "<br><a href='../view/login.php'>Login</a>";
    }
?>
