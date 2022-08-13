<?php
    require_once('db.php');
    if(isset($_COOKIE['astatus']) && isset($_SESSION['id']) && isset($_SESSION['pass']))
    {
    function viewTransactions()
    {
        $conn = getconnection();
        $sql = "SELECT * FROM transactionlist";
        $result = mysqli_query($conn, $sql); 
        $count = mysqli_num_rows($result);   

        if($count > 0)
            {
                while ($user = mysqli_fetch_row($result))
                {
                    // $user = $result->fetch_array();
                    echo "<tr style='text-align: center'>";
                        for($i = 0; $i<count($user); $i++)
                        {
                            //echo "<br>";
                            echo "<td>".$user[$i]."</td>";
                        }
                    echo "</tr>";
                }
            }
        else
        {
            echo "could not fetch array";
            echo "<br><a href='../view/ahome.php'>Login</a>";
        }


    }
}
else
{
    echo "Invalid request";
    echo "<br><a href='../view/login.php'>Login</a>";
}
?>