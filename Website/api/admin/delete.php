<?php include'conn.php';?>
<?php session_start(); if($_SESSION['session']==1){?>

<?php
    //  $connection = mysqli_connect('localhost:4306','root','');
    //  $db = mysqli_select_db($connection,'admin');
    if(isset($_GET['ids']))
    {
        $id = $_GET['ids'];
        $query = "delete from u_detail where u_id = '$id'";
        $query1 = mysqli_query($connection,$query);
        if($query1)
        {
            echo "Record is Deleted.";
            header('location:'.$_SERVER['HTTP_REFERER']);
        }
        else 
        {
            echo "Record is not Deleted.";
        }
    }

?>


<?php
}

else
{?>
 <script>
        alert("Please Login !!");
        location.replace("../login_panel/login.html")
    </script>

<?php }
?>

