<?php 

include('./connection.php'); 

$query =" SELECT COUNT(id) as total_count FROM `users` ";
$result =mysqli_query($connection,$query);
$count ='';

while($row=mysqli_fetch_assoc($result)){

    $count =$row['total_count'];
}







?>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost/app_chat/sign.php">Sign Up</a>
      <a class="navbar-brand" href="http://localhost/app_chat/users_list.php">Users list(<?php echo $count; ?>)</a>
      <a class="navbar-brand" href="http://localhost/app_chat/login.php">Login</a>
      
    </div>
    <ul class="nav navbar-nav">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
       
         
      </div>
   
      <li class="navbar-brand"><a href="http://localhost/app_chat/logout.php">Logout</a></li>
    </ul>
  </div>
</nav> 