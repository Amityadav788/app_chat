<?php

include('./connection.php');

$query ="SELECT COUNT(id) as total_count FROM `users` ";
$result=mysqli_query($connection,$query);
$number ='';

while($row =mysqli_fetch_assoc($result)){

  $number =$row;

}

$total_records =$number['total_count'];
$limit = 4;
$total_page =ceil($total_records / $limit);

$current_page = 1;

if(isset($_GET['page']) && !empty($_GET['page'])){

  $current_page =$_GET['page'];

}

//echo $current_page;

$offset =($current_page - 1) * $limit;


$query ='SELECT * FROM users limit '.$limit.' OFFSET '.$offset ;
$result =mysqli_query($connection,$query);
$output =[];

while($row =mysqli_fetch_assoc($result)){

    $output[] =$row;

}





?>
<!DOCTYPE html>
<html lang="en">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Navbar with Logo Image</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/style.js"></script>
</head>
<body>

<?php include('./navbar.php'); ?>

<div class="container">

  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>password</th>
        <th>Phone</th>
        <th>Image</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
     <?php foreach($output as $key => $value){ ?>
        <tr>
            <td><?php echo $value['name']; ?></td>
            <td><?php echo $value['email']; ?></td> 
            <td><?php echo $value['password']; ?></td>   
            <td><?php echo $value['phone']; ?></td> 
            <td><?php echo $value['image']; ?></td> 
            <td>
              <?php if($value['is_active'] == 1){ ?> 
              <a href="http://localhost/app_chat/status_server.php?status=1&id=<?php echo $value['id']; ?>" class="btn btn-danger" role="button">Inactive</a></td> 
              <?php } else{ ?>
              <a href="http://localhost/app_chat/status_server.php?status=0&id=<?php echo $value['id']; ?>" class="btn btn-info" role="button">Active</a></td>
              <?php } ?>
            </td>  
       </tr> 
     <?php } ?>       
    </tbody>
  </table>
  <ul class="pagination" ?>
      <?php for($i=1; $i<=$total_page; $i++){ ?>
      <li><a type="button" class="btn btn-submit" href="http://localhost/app_chat/users_list.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
      <?php } ?>
    </ul> 
</div>

</body>
</html>
