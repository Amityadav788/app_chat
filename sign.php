<!DOCTYPE html>

<?php 

include('./connection.php');

if(isset($_SESSION['id'])){

  header("location:http://localhost/app_chat/chat.php");
  exit;
}

$error=false;
$success=false;

if(isset($_SESSION['success']) && !empty($_SESSION['success'])){

    $success=$_SESSION['success'];
    unset($_SESSION['success']);

}

if(isset($_SESSION['error']) && !empty($_SESSION['error'])){

    $error =$_SESSION['error'];
    unset($_SESSION['error']);

}

?>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<?php if($success){ ?>
   <div class="alert alert-success">
  <?php echo $success; ?>  
   </div>
<?php } ?>   

<?php if($error){ ?>
    <div class="alert alert-danger">
  <?php if(is_array($error) == true){ ?>
    <?php foreach($error as $key => $value){ ?>
    <p><?php echo $value; ?></p>
    <?php } ?>
    <?php } else{ ?>
     <?php echo $error; ?>
     <?php } ?>       
    </div>
<?php } ?>

<div class="container">
  <h2>Sign Up</h2>
  <form  method="post" action="./sign_server.php" enctype="multipart/form-data">
  <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <div class="form-group">
      <label for="phone">Phone</label>
      <input type="number" class="form-control" id="phone" placeholder="Enter phone" name="phone">
    </div>
    <div class="form-group">
      <label for="image">Image</label>
      <input type="file" class="form-control" id="image" placeholder="upload image" name="image">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
