  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
          <li class="header">
              <center><img src="../images/315211604_1111937209495131_3343001865854935621_n.png" width="80"></center>
          </li>
        <li class="header">MAIN NAVIGATION</li>
        <li class="active"><a href="index.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
<?php if($_SESSION['user_role'] == '0'):?>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i> <span>Accounts</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="student.php"><i class="fa fa-circle-o"></i> Student Accounts</a></li>
            <li><a href="professor.php"><i class="fa fa-circle-o"></i> Professor Accounts</a></li>
            <li><a href="dean.php"><i class="fa fa-circle-o"></i> Dean Account</a></li>
          
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-th"></i> <span>File Manager</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="subjects.php"><i class="fa fa-circle-o"></i> <span> Subjects</span></a></li>
            <li><a href="course.php"><i class="fa fa-circle-o"></i> <span> Block Section</span></a></li>
            <!--
            <li><a href="rooms.php"><i class="fa fa-circle-o"></i> <span> Rooms</span></a></li>
            <li><a href="school-year.php"><i class="fa fa-circle-o"></i> <span> School Year</span></a></li>
            <li><a href="days.php"><i class="fa fa-circle-o"></i> <span> Days</span></a></li>
          -->
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-file"></i> <span>Questions</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="questions.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="professor_question.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_question.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pencil"></i> <span>Evaluation Rankings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="ranking.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="prof_ranking.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_ranking.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
        </li>
        <li><a href="logs.php"><i class="fa fa-calendar"></i> <span> Logs</span></a></li>
                <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i> <span>Archive Results</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="myevaluation.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="prof_result.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_result.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
        </li>

        <li><a href="evaluation.php"><i class="fa fa-calendar-o"></i> <span>Student Evaluation Status</span></a></li>
        <li><a href="user_manual.php"><i class="fa fa-th"></i> <span>Admin Manual</span></a></li>

<!--
        <li><a href="reports.php"><i class="fa fa-calendar-o"></i> <span>Evaluation Reports</span></a></li>
      -->

        
<?php elseif($_SESSION['user_role'] == '1'):?>
  <li><a href="evaluate_prof.php"><i class="fa fa-users"></i> <span> My Evaluation Results</span></a></li>
  <li><a href="prof_manual.php"><i class="fa fa-th"></i> <span>Manual</span></a></li>
  <li class="treeview">
          <a href="#">
            <i class="fa fa-pencil"></i> <span>Evaluation Rankings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="ranking.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="prof_ranking.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_ranking.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
  </li>
<!--
<li><a href="reports.php"><i class="fa fa-calendar"></i> <span> Reports</span></a></li>
-->
<!--
  
  <li><a href="evaluation.php"><i class="fa fa-calendar-o"></i> <span> Evaluation Sheet</span></a></li>
-->
<!--
  <li><a href="transactions.php"><i class="fa fa-calendar-o"></i> <span>My Transactions</span></a></li>
  <li><a href="track.php"><i class="fa fa-search"></i> <span>Track Order</span></a></li>
<?php endif;?>
-->
<?php if($_SESSION['user_role'] == '2'):?>
<li class="treeview">
          <a href="#">
            <i class="fa fa-pencil"></i> <span>Evaluation Rankings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="ranking.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="prof_ranking.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_ranking.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
        </li>
<li><a href="student_manual.php"><i class="fa fa-th"></i> <span>Manual</span></a></li>
<?php endif;?>
<?php if($_SESSION['user_role'] == '3'):?>
  <li><a href="evaluate_prof.php"><i class="fa fa-users"></i> <span> My Evaluation Results</span></a></li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-pencil"></i> <span>Evaluation Rankings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="ranking.php"><i class="fa fa-circle-o"></i> Student to Professor</a></li>
            <li><a href="prof_ranking.php"><i class="fa fa-circle-o"></i> Professor to Professor</a></li>
            <li><a href="chairman_ranking.php"><i class="fa fa-circle-o"></i> Chairman to Chairman</a></li>
          
          </ul>
        </li>
  <li><a href="chairman_manual.php"><i class="fa fa-th"></i> <span>Manual</span></a></li>
<?php endif;?>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>