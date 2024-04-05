<?php 

include('./connection.php');

$req_fields =['email', 'password'];

$error =[];
$url ='';

foreach($req_fields as $key => $value){

    if(empty($_POST[$value])){

        $error[] =$value. " is required ";

    }
}

if(count($error) == 0){

    $email =$_POST['email'];
    $pass =$_POST['password'];

    $query =" SELECT * FROM users WHERE `email`='$email' AND `password`='$pass' ";
    $result =mysqli_query($connection,$query);
    $row =mysqli_fetch_assoc($result);

    $_SESSION['success'] =' Request is valid ';
    $_SESSION['name'] =$row['name'];
    $_SESSION['id'] = $row['id'];
    
    $url ="http://localhost/app_chat/chat.php";


} else{

    $_SESSION['error'] =$error;
    $url ="http://localhost/app_chat/login.php";

}

header("location:".$url);
exit;


?>