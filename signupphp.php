<?php include "db.php"; ?>
<?php
$name=$_POST['name'];
$email=$_POST['email'];
$percentage=$_POST['percentage'];
$gender=$_POST['gender'];
$stream=$_POST['stream'];
$degree=$_POST['degree'];
$college=$_POST['college'];
$state=$_POST['state'];
$password=$_POST['password'];
$int_sql= "INSERT INTO placement (name,email,percentage,gender,stream,degree,college,state,password) 
VALUES ('$name','$email','$percentage','$gender','$stream','$degree','$college','$state','$password')";

if(mysqli_query($con,$int_sql))
{ ?><script>window.location="index.php"</script>
	<?php }
?>
