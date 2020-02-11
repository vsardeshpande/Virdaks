<?php	
	include("Config.php");
	$com=$_POST["c_name"];
	$EmpCode='';
	$x='';
	
	$sql1="Select MAX(EmployeeCode) as 'EmployeeCode' from employee where Company='$com'";
	$result1=mysqli_query($con,$sql1);
	if(mysqli_num_rows ($result1) > 0)
	{
		/*$data=mysqli_fetch_assoc($result1);
		echo json_encode($data);*/
		while($r=mysqli_fetch_assoc($result1))
		{
			$data=$r["EmployeeCode"];
		}
		$data=(int)substr($data,1)+1;
		if (substr($com,0,1)=='V')
		{
			$x='1'.(string)$data;
		}
		else if(substr($com,0,1)=='G')
		{
			$x='2'.(string)$data;
		}
		else if(substr($com,0,1)=='X')
		{
			$x='3'.(string)$data;
		}
		echo $x;
	}
	else
	{
		if (substr($com,0,1)=='V')
		{
			$x='0';
		}
		else if(substr($com,0,1)=='G')
		{
			$x='2001';
		}
		else if(substr($com,0,1)=='X')
		{
			$x='3001';
		}
		echo $x;
	}
	
?>