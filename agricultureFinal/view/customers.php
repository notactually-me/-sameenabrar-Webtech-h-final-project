<?php
    session_start();
    require_once('../model/customerModel.php');
    if(isset($_COOKIE['astatus']) && isset($_SESSION['id']) && isset($_SESSION['pass']))
    {
    
?>
<html>
    <head><title>Customers</title></head>
    <body>
        <a href="../view/ahome.php">Go Home</a>

        <table border="1px" style="width:85%">
            <tr><th colspan="8">Customers List</th></tr>
            <tr>
                <th>ID</th><th>Name</th><th>User Type</th><th>Gender</th><th>Phone Number</th>
                <th>Email</th><th>Date of Birth</th><th>Total Expenditure</th>
            </tr>
            <?php
                viewCustomers();
            ?>
        </table>
        <br>
        <table>
            <tr>
                <td>
                    <form action="../view/editCus.php" method="post">
                        <input type="Submit" value="Update details">
                    </form>
                </td>
                <td>
                    <form action="../view/delCus.php" method="post">
                        <input type="Submit" value="Delete Customer">
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
