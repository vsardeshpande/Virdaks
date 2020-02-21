<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    <style>
        td.dataTables_empty {
            display: none;
        }
    </style>
</head>

<body class="sb-nav-fixed">
    <div id="header">
    </div>
    <div id="layoutSidenav">
        <div id="sidenav">
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <!-- DataTables Example -->
                    <div class="card mb-3" style="margin-top: 15px;">
                        <div class="card-header bg-primary">
                            <i style="color: white;" class="fas fa-table mr-1"></i><b style="color: white;">Approve Leaves</b></div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="bg-info">
                                        <tr style="color: #ffffff">
                                            <th>EmpID</th>
                                            <th>Name</th>
                                            <th>Leave Type</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Reason</th>
                                            <th>No of Days</th>
                                            <th>Status</th>
                                            <th><input type="checkbox" id="checkall" /></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>EmpID</th>
                                            <th>Name</th>
                                            <th>Leave Type</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Reason</th>
                                            <th>No of Days</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        include("config.php");

                                        $result = mysqli_query($con, "SELECT * FROM employee_leave_details ");

                                        while ($row = mysqli_fetch_array($result)) {
                                            echo "<tr>";
                                            echo "<td>" . $row['EmployeeCode'] . "</td>";
                                            echo "<td>" . $row['EmployeeName'] . "</td>";
                                            echo "<td>" . $row['LeaveType'] . "</td>";
                                            echo "<td>" . $row['DateFrom'] . "</td>";
                                            echo "<td>" . $row['DateTo'] . "</td>";
                                            echo "<td>" . $row['Reasone'] . "</td>";
                                            echo "<td>" . $row['Total'] . "</td>";
                                            echo "<td name='".$row["Status"]."'>" . $row['Status'] . "</td>";
                                            echo "<td><input type='checkbox' value='" . $row["EmployeeCode"] . "' name='chk' /></td>";
                                            echo "</tr>";
                                        }


                                        mysqli_close($con);
                                        ?>
                                    </tbody>
                                </table>
                                <div class="form-group mt-4 mb-0"><input type="submit" class="btn btn-danger btn-block" id="Approve" value="Approve" name="Approve"></div>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div>
            </main>
            <div id="footer"></div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/datatables-demo.js"></script>
    <script>
        $(function() {
            $("#header").load("Header.html");
            $("#sidenav").load("SideNav.html");
            $("#footer").load("Footer.html");

        });
        $('document').ready(function() {
            //alert();
            // if ($("td").text() == "Pending") {
            //     $("td[name='status']").css('background-color', 'red');
            //     $("td[name='status']").css('color', 'white');
            // }
            $("td[name='Pending']").each(function(){
                $(this).css('background-color' , 'red');
                $(this).css('color' , 'white');
            });
            $("td[name='Approved']").each(function(){
                $(this).css('background-color' , 'Green');
                $(this).css('color' , 'white');
            });

            $("#Approve").click(function() {
                var checkArray = [];
                $("input:checkbox[name=chk]:checked").each(function() {
                    checkArray.push($(this).val());
                });
                var jsonString = JSON.stringify(checkArray);
                $.ajax({
                    url : "Approve.php",
                    method : "POST",
                    data : {EmpCode : jsonString},
                    cache : false,
                    success : function(data){
                        alert(data);
                        window.location = "ApproveLeave.php";
                    }

                });
            });
        });
    </script>

</body>

</html>