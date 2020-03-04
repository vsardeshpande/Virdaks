<?php
session_start();
$x=$_SESSION["UN"];
if($x==""){
	echo "<script>alert('session expires')</script>";
	header("refresh:0;url=index.html");
}
$cnt=0;
include("config.php");
if(isset($_POST["UploadSal"])){			
	if($_FILES['file']['name'])
	{
		$filename = explode(".", $_FILES['file']['name']);
		if(end($filename) == "csv")
		{
			$handle = fopen($_FILES['file']['tmp_name'], "r");
			while($data = fgetcsv($handle))
			{
				$EmployeeCode=mysqli_real_escape_string($con,$data[0]);
				$company=mysqli_real_escape_string($con,$data[1]);
				$Basic=mysqli_real_escape_string($con,$data[2]);				
				$HRA=mysqli_real_escape_string($con,$data[3]);
				$Incentive = mysqli_real_escape_string($con,$data[4]);
				$CA=mysqli_real_escape_string($con,$data[5]);
				//$TA=mysqli_real_escape_string($con,$data[6]);				
				$OAllowance=mysqli_real_escape_string($con,$data[6]);
				//$Allowance=mysqli_real_escape_string($con,$data[7]);
				$PF=mysqli_real_escape_string($con,$data[7]);
				$TAX=mysqli_real_escape_string($con,$data[8]);
				$Bonus=mysqli_real_escape_string($con,$data[9]);
				
				echo "hello";
				if($cnt!=0){

				echo $EmployeeCode.$company.$Basic.$HRA.$Incentive.$CA.$OAllowance.$PF.$TAX.$Bonus;
				//$query = "INSERT INTO employee_salary_details(EmployeeCode,Company,Basic,HRA,Incentive,CA,OtherAllowances,PF_Deduction,TAX_Deduction,Bonus) VALUES('$EmployeeCode','$company','$Basic','$HRA','$Incentive','$CA','$OAllowance','$PF','$TAX','$Bonus')";
				$query = "update employee_salary_details set Basic = '".$Basic."', HRA = '".$HRA."',Incentive = '".$Incentive."',CA = '".$CA."',OtherAllowances = '".$OAllowance."',PF_Deduction = '".$PF."',TAX_Deduction = '".$TAX."',Bonus = '".$Bonus."' where EmployeeCode = ".$EmployeeCode."";
				if(mysqli_query($con, $query) )
				{
					//echo "Success ".$AttendenceDate;
					$cnt=$cnt+1;
					
				}
				else
				{
					echo "Failure Occured , please try again".mysqli_error($con);
					header("refresh:0;url=Admin.php");
    
					
				}
				}
				else
				{
					$cnt=$cnt+1;
				}
				
			}
			fclose($handle);	
			
		echo "<script type='text/javascript'>alert('Done')</script>";
		
		header("refresh:0;url=Admin.php");
    
		}else
		{
			echo "Select only csv file";
		}
		
	}else{
		echo "Select file";
	}
	
}

?>