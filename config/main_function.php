<?php
//functions in the databe that are repeatedly doing
function login($user_name, $pass){
	global $dbcon;

		$view = "SELECT * FROM user_account WHERE user_name = '$user_name' AND pass = '$pass'";
		$result=$dbcon->query($view) or die('ERROR:'.mysqli_error());
		$results=array();
		
		if(mysqli_num_rows($result)>=1){
			while($row=mysqli_fetch_object($result)){
				$results[]=$row;
			}
			return $results;
		}
		else
		return 0;
	
}

function checkname($fname, $mname, $lname)
{		

		global $dbcon;
		$a = "select * from user_account where fname='$fname' and mname='$mname' and lname='$lname'";
		$b = $dbcon->query($a) or trigger_error();
		return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
}
function check_user($idno)
{		

		global $dbcon;
		$a = "SELECT idno FROM user_account WHERE idno = '$idno'";
		$b = $dbcon->query($a) or trigger_error();
		return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
}
function check_comment($user_name,$date)
{		
		global $dbcon;
		$a = "SELECT * FROM feedback WHERE f_user='$user_name' AND f_date = '$date'";
		$b = $dbcon->query($a) or trigger_error();
		return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
}
function single_inner($query)
{		
		global $dbcon;
		$a = "".$query."";
		$b = $dbcon->query($a) or trigger_error();
		return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
}

function check_num($contact_num)
{		

		global $dbcon;
		$a = "SELECT contact_num FROM user_account WHERE contact_num = '".$_POST['contact_num']."'";
		$b = $dbcon->query($a) or trigger_error();
		return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
}
function check_email($email)
{		

	global $dbcon;
	$a = "SELECT email_add FROM user_account WHERE email = '".$_POST['email']."'";
	$b = $dbcon->query($a) or trigger_error();
	return mysqli_num_rows($b) >=1 ? mysqli_fetch_array($b, MYSQLI_ASSOC) : FALSE;
	mysqli_close($dbcon);
}

	function single_get($value, $where, $database, $string)
	{
		global $dbcon;
		$kweri = "SELECT ".$value." FROM ".$database." WHERE ".$where." ='".$string."'";
		$view = $dbcon->query($kweri) or trigger_error();
		return mysqli_num_rows($view) >=1 ? mysqli_fetch_array($view, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
	}
	function single_inner_join($query)
	{
		global $dbcon;
		$kweri = "".$query."";
		$view = $dbcon->query($kweri) or trigger_error();
		return mysqli_num_rows($view) >=1 ? mysqli_fetch_array($view, MYSQLI_ASSOC) : FALSE;
		mysqli_close($dbcon);
	}
	function getdata_where($value, $where, $database, $string)
	{
		/*selecting all data on using 1 where clause*/   
		global $dbcon;
		$view = "SELECT ".$value." FROM ".$database." WHERE ".$where." ='".$string."'";
		$result=$dbcon->query($view) or die('ERROR:'.mysqli_error());
		$results=array();
		
		if(mysqli_num_rows($result)>=1){
			while($row=mysqli_fetch_object($result)){
				$results[]=$row;
			}
			return $results;
		}
		else
		return 0;
	mysqli_close($dbcon);
	}
	function update($connection, $tblname, array $set_val_cols, array $cod_val_cols){
		global $dbcon;
		$i=0;
		foreach($set_val_cols as $key=>$value) {
			$set[$i] = $key." = '".$value."'";
		    $i++;
		}

		$Stset = implode(", ",$set);

		$i=0;
		foreach($cod_val_cols as $key=>$value) {
			$cod[$i] = $key." = '".$value."'";
		    $i++;
		}

		$Stcod = implode(" AND ",$cod);

		if(mysqli_query($connection,"UPDATE $tblname SET $Stset WHERE $Stcod")){
			if(mysqli_affected_rows($connection)){
				echo "";
			}
			else{
				echo "";
			}
		}
		else{
			echo "Error updating record: " . mysqli_error($dbcon);
		}
	}
	function insertdata($table_name, $form_data)
	{
		global $dbcon;
		$fields = array_keys($form_data);
		$sql = "INSERT INTO ".$table_name."(`".implode('`,`', $fields)."`) VALUES ('".implode("','", $form_data)."')";
		return mysqli_query($dbcon,$sql) or die(mysqli_error());

	mysqli_close($dbcon);
	}

	function getdata($value, $database)
	{
			global $dbcon;
			$view = "SELECT ".$value." FROM ".$database."";
			$result=$dbcon->query($view) or die('ERROR:'.mysqli_error());
			$results=array();
			
			if(mysqli_num_rows($result)>=1){
				while($row=mysqli_fetch_object($result)){
					$results[]=$row;
				}
				return $results;
			}
			else
			return 0;
		mysqli_close($dbcon);
	}
	function delete($connection, $tblname, array $val_cols){
		
		$i=0;
		foreach($val_cols as $key=>$value) {
			$exp[$i] = $key." = '".$value."'";
		    $i++;
		}

		$Stexp = implode(" AND ",$exp);

		if(mysqli_query($connection,"DELETE FROM $tblname WHERE $Stexp")){
			if(mysqli_affected_rows($connection)){
				header("location: ".$_SERVER['HTTP_REFERER']."");
			}
			else{
				echo "";
			}
		}
		else{
			echo "";
		}
		mysqli_close($dbcon);
	}
function getdata_inner_join($kweri)
{
	global $dbcon;
		
	
	$view = "".$kweri."";
		$result=$dbcon->query($view) or die('ERROR:'.mysqli_error());
		$results=array();
		
		if(mysqli_num_rows($result)>=1){
			while($row=mysqli_fetch_object($result)){
				$results[]=$row;
			}
			return $results;
		}
		else
		return 0;
	mysqli_close($dbcon);
}
?>