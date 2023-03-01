<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_dean'])){ //This function is to check weather the account has been login or not
  header("Location: ../index.php");
  exit;
}


?>
<?php include'../assets/admin_header.php';?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php include'../assets/admin_nav.php';?>
<?php include'../assets/admin_sidebar.php';?>

  <div class="content-wrapper">
        <!-- Main content -->
    <section style="padding:11px;">
      <!-- Small boxes (Stat box) -->
      <div class="box box-solid" style="padding:15px;">
        <h3><i class="fa fa-book"></i> Student Manual</h3>
        <hr>
        <ul>
          <li>
            <p>Step 1: Login Account enter your username and password</p>
            <img src="../images/Capture1.png" class="img-thumbnail">
          </li>
          <li>
            <p>To Evaluate Professor just click the dropdown and click Evaluate.</p>
            <img src="../images/Capture18.png" class="img-thumbnail">
          </li>
          
        </ul>
      </div>
    </section>
    
     



    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include'../assets/admin_footer.php';?>
</body>
</html>
