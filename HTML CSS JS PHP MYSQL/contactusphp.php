<! Doctype html>
<html>
<body>
<?php
if(isset($_POST['insert']))
{
$name=$_POST['name'];
$email=$_POST['email'];
$message=$_POST['message'];
echo 'value'.$name.' '.$email.' '.$message;
$a="localhost";
$b="root";
$c="";
$d="hotel";
$conn=new mysqli($a,$b,$c,$d);
if($conn->connect_error)
{
die("connection failed");
}
$sql="Insert into msg(name,email,message)values('$name','$email','$message')";
if($conn->query($sql)===TRUE)
{
echo "New record created";
}
else{
echo "Error";
}
$conn->close();
}
?>
</body>
</html>