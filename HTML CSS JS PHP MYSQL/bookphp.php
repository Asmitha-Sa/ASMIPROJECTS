<! Doctype html>
<html>
<body>
<?php
if(isset($_POST['insert']))
{
$yourname=$_POST['yourname'];
$youremail=$_POST['youremail'];
$yourphone=$_POST['yourphone'];
$checkin=$_POST['checkin'];
$checkout=$_POST['checkout'];
echo 'value'.$yourname.' '.$youremail.' '.$yourphone.' '.$checkin.' '.$checkout;
$a="localhost";
$b="root";
$c="";
$d="hotel";
$conn=new mysqli($a,$b,$c,$d);
if($conn->connect_error)
{
die("connection failed");
}
$sql="Insert into book(yourname,youremail,yourphone,checkin,checkout) values('$yourname','$youremail','$yourphone','$checkin','$checkout')";
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