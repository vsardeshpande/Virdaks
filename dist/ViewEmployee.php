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
                            <i style="color: white;" class="fas fa-table mr-1"></i><b style="color: white;">Employee Records</b></div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="bg-info">
                                        <tr style="color: #ffffff">
                                            <th>EmpID</th>
                                            <th>Name</th>
                                            <th>Company</th>
                                            <th>Email</th>
                                            <th>DOB</th>
                                            <th>DOJ</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Profile</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>EmpID</th>
                                            <th>Name</th>
                                            <th>Company</th>
                                            <th>Email</th>
                                            <th>DOB</th>
                                            <th>DOJ</th>
                                            <th>Department</th>
                                            <th>Designation</th>
                                            <th>Profile</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        include("config.php");

                                        $result = mysqli_query($con, "SELECT * FROM employee");

                                        while ($row = mysqli_fetch_array($result)) {
                                            echo "<tr>";
                                            echo "<td>" . $row['EmployeeCode'] . "</td>";
                                            echo "<td>" . $row['EmployeeName'] . "</td>";
                                            echo "<td>" . $row['Company'] . "</td>";
                                            echo "<td>" . $row['Email'] . "</td>";
                                            echo "<td>" . $row['DOB'] . "</td>";
                                            echo "<td>" . $row['DOJ'] . "</td>";
                                            echo "<td>" . $row['Department'] . "</td>";
                                            echo "<td>" . $row['Designation'] . "</td>";
                                            echo "<td><a id='".$row['EmployeeCode']."' name='ViewProfile' style='color:#ffffff; width:100%;' class='btn btn-success' >View</a>";
                                            echo "</tr>";
                                        }


                                        mysqli_close($con);
                                        ?>
                                    </tbody>
                                </table>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
    <script >
        $(function() {
            $("#header").load("Header.html");
            $("#sidenav").load("SideNav.html");
            $("#footer").load("Footer.html");
            
        });
        $('document').ready(function(){
            $("a[name=ViewProfile]").click(function(){
                //alert($(this).attr('id'));
                $.cookie("EmpCode", $(this).attr("id"));
                window.location = 'ViewProfile.html';
            });
        });
    </script>

</body>

</html>