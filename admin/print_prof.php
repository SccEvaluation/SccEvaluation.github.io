<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}


$kweri1 = "SELECT * FROM questions WHERE question_cat = 'professor' ORDER BY q_id ASC";
$mastery = getdata_inner_join($kweri1);


$fetch = single_get("*","e_code","comment_type",$_GET['evaluation_code']);

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../bootstrap/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bootstrap/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bootstrap/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../bootstrap/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../bootstrap/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../bootstrap/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="../bootstrap/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body>
  <div class="container">
        <form method="GET" action="process.php">
  <input type="hidden" name="evaluation_code" value="<?php echo $_GET['evaluation_code']?>">
  <?php $count = 1; ?>
  <?php if(!empty($mastery)):?>
  <table class="table table-striped">
    <tr>
      <td><strong>Question</strong></td>
    </tr>
    <?php foreach ($mastery as $key => $value):?>
      <tr>
      <td><?php echo $count++;?>. <?php echo $value->question_name;?></td>
  </tr>
    <?php endforeach;?>
  </table>
<?php 
$total1 = '0';
$j = $dbcon->query("SELECT * FROM questions WHERE question_cat = 'professor'") or die();
$k = mysqli_num_rows($j);
  $query3 = $dbcon->query("SELECT SUM(r_result / $k) as total FROM `result` WHERE question_cat = 'professor' AND e_code = '".$_GET['evaluation_code']."' GROUP BY user_id") or die(mysqli_error());
  $count = mysqli_num_rows($query3);
  while($row = $query3->fetch_assoc()){

    $total1 += $row['total'] / $count;
  }
 
?>
  <h3>Rating: <?php  echo $total1; ?></h3>
   <?php else:?>
  <?php endif;?>
 
<strong>Comment Type:</strong>
<?php
$kweri5 = $dbcon->query("SELECT * FROM comment_type WHERE e_code = '".$_GET['evaluation_code']."'") or die(mysqli_error());
$count2 = mysqli_num_rows($kweri5);
?>
<?php
$kweri6 = $dbcon->query("SELECT * FROM comment_type WHERE e_code = '".$_GET['evaluation_code']."'") or die(mysqli_error());
$count3 = mysqli_num_rows($kweri6);
?>
<div class="row">
  <div class="col-md-6">Good: <?php //echo $count2;?><hr>
  <?php 
  $num = '1';
  while($fetch = $kweri5->fetch_assoc()):
  ?>
  <?php echo $num++;?>. <?php echo $fetch['comment_feedback']?><br>
  <?php endwhile; ?>
  </div>
  <div class="col-md-6">Bad: <?php //echo $count3;?> 
  <hr>
  <?php 
  $num = '1';
  while($fetch2 = $kweri6->fetch_assoc()):
  ?>
  <?php echo $num++;?>. <?php echo $fetch2['negative_comment']?><br>
  <?php endwhile; ?></div>
</div>
<br>

<div class="alert alert-info">
<h1 >Overall Rating: <?php $grand = ($total1); echo $grand;?></h1>
</div>
</form>
<a href="" class="btn btn-danger" onclick="print()"><i class="fa fa-print"></i> Print</a>
  </div>
</body>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/popper.min.js.download"></script>
    <script src="js/bootstrap.min.js.download"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js.download"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script type="text/javascript">
      $(document).ready( function () {
    $('#myTable').DataTable();
} );
    </script>
        <script type="text/javascript">
      $(document).ready( function () {
    $('#example1').DataTable({
      "pageLength": 5
    });
} );
    </script>
  <!--Start of Tawk.to Script-->
    
</body></html>