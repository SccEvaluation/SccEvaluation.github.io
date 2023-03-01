<?php 
include'../config/db.php';
include'../config/functions.php';
include'../config/main_function.php';
if(empty($_SESSION['login_admin'])){ //This function is to check weather the account has been login or not
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
        <h3><i class="fa fa-book"></i> Administrator Manual</h3>
        <hr>
        <ul>
          <li>
            <p>Step 1: Login Account enter your username and password</p>
            <img src="../images/Capture1.png" class="img-thumbnail">
          </li>
          <li>
            <p>Register Student in the system.</p>
            <img src="../images/Capture2.png" class="img-thumbnail">
            <img src="../images/Capture3.png" class="img-thumbnail">
          </li>
          <li>
            <p>How to bulk upload student in the system</p>
            <img src="../images/Capture4.png" class="img-thumbnail">
          </li>
          <li>
            <p>How to create professor on the system</p>
            <img src="../images/Capture5.png" class="img-thumbnail">
          </li>
          <li>
            <p>How to create Dean on the system.</p>
            <img src="../images/dean.png" class="img-thumbnail">
          </li>
          <li>
            <p>How to Block on the system</p>
            <img src="../images/block.png" class="img-thumbnail">
          </li>
          <li>
            <p>Creating subjects on the system.</p>
            <img src="../images/Capture6.png" class="img-thumbnail">
          </li>
          <li>
            <p>Creating Question from Student to professor and click Add Data</p>
            <img src="../images/Capture7.png" class="img-thumbnail">
          </li>
          <li>
            <p>Creating questions from evaluation Professor to professor and click Add data.</p>
            <img src="../images/Capture8.png" class="img-thumbnail">
          </li>
          <li>
            <p>Creating questions from evaluation of chairman to chairman and click add data</p>
            <img src="../images/Capture9.png" class="img-thumbnail">
          </li>
          <li>
            <p>
              How to see the evaluation ranking of Student to professor, Professor to Professor and Chairman to chairman.<br>
Just click the following link.

            </p>
            <img src="../images/Capture11.png" class="img-thumbnail">
          </li>
          <li>
            <p>How to check the evaluation results of:<br>
Student to professor.
</p>
<img src="../images/Capture12.png" class="img-thumbnail">
          </li>
          <li>
            <p>Professor to Professor
</p>
<img src="../images/Capture13.png" class="img-thumbnail">
          </li>
          <li>
            <p>Chairman to Chairman</p>
            <img src="../images/Capture14.png" class="img-thumbnail">
          </li>
          <li>
            <p>Before the student, professor and chairman can evaluate. Administrator must create evaluation code by clicking add data button.</p>
            <img src="../images/Capture15.png" class="img-thumbnail">
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
