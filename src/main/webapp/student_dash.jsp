<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Student Dashboard</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="student_dash/plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="student_dash/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <!-- Custom CSS -->
    <link href="student_dash/css/style.min.css" rel="stylesheet">
    <link href="student_dash/css/temp.css" rel="stylesheet">
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand text-dark" href="dashboard.html">
                        Dashboard
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto d-flex align-items-center">

                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class=" in">
                            <form role="search" class="app-search d-none d-md-block me-3">
                                <input type="text" placeholder="Search..." class="form-control mt-0">
                                <a href="" class="active">
                                    <i class="fa fa-search"></i>
                                </a>
                            </form>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li>
                            <a class="profile-pic" href="#">
                                <img src="student_dash/plugins/images/users/varun.jpg" alt="user-img" width="36"
                                    class="img-circle"><span class="text-white font-medium">Steave</span></a>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="student_dash.html"
                                aria-expanded="false">
                                <i class="fas fa-tv" aria-hidden="true"></i>
                                <span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="submit_paper.html"
                                aria-expanded="false">
                                <i class=" fas fa-edit" aria-hidden="true"></i>
                                <span class="hide-menu">Submit Paper</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="stud_profile.html"
                                aria-expanded="false">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <span class="hide-menu">Profile</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="#"
                                aria-expanded="false">
                                <i class="far fa-question-circle" aria-hidden="true"></i>
                                <span class="hide-menu">FAQ</span>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Three charts -->
                <!-- ============================================================== -->
                <div class="container">
                    <article class="card">
                        <header class="card-header"> Paper Tracking </header>
                        <div class="card-body">
                            <h6>Paper ID: OD45345345435</h6>
                            <article class="card">
                                <div class="card-body row">
                                    <div class="col"> <strong>Author:</strong> <br> John Doe</div>
                                    <div class="col"> <strong>Status:</strong> <br> Stage 2 </div>
                                    <!--
                                    <div class="col"> <strong>Reason:</strong> <br> - </div>
                                    
                                    <div class="col"> <strong>Tracking #:</strong> <br> BD045903594059 </div>
                                    -->
                                </div>
                            </article>
                            <div class="track">
                                <div class="step active"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 1</span> </div>
                                <div class="step active"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text"> Stage 2</span> </div>
                                <div class="step"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 3</span> </div>
                                <div class="step"><a data-toggle="collapse" href="#c1" role="button" aria-expanded="false" aria-controls="c1"><span class="icon"><i class="fa fa-check-circle"></i> </span> <span class="text">Stage 4</span> </a></div>
                                <div class="step"> <span class="icon"> <i class="fa fa-trophy"></i> </span> <span class="text">Stage 5</span> </div>
                            </div>
                            <hr>
                            <div class="collapse" id="c1">
                                <div class="card card-body">
                                    Comments
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <h6>Paper ID: OD45345345435</h6>
                            <article class="card">
                                <div class="card-body row">
                                    <div class="col"> <strong>Author:</strong> <br> John Doe</div>
                                    <div class="col"> <strong>Status:</strong> <br> Rejected </div>
                                    <div class="col"> <strong>Reason:</strong> <br> Duplication of Topic </div>
                                    <div class="col"> <strong>Tracking #:</strong> <br> BD045903594059 </div>
                                </div>
                            </article>
                            <div class="track">
                                <div class="step rejected"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 1</span> </div>
                                <div class="step rejected"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text"> Stage 2</span> </div>
                                <div class="step rejected"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 3</span> </div>
                                <div class="step rejected"><a data-toggle="collapse" href="#c2" role="button" aria-expanded="false" aria-controls="c2"><span class="icon"><i class="fa fa-check-circle"></i> </span> <span class="text">Stage 4</span> </a></div>
                                <div class="step rejected"> <span class="icon"> <i class="fa fa-times-circle"></i> </span> <span class="text">Stage 5</span> </div>
                            </div>
                            <hr>
                            <div class="collapse" id="c2">
                                <div class="card card-body">
                                    Comments
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <h6>Paper ID: OD45345345435</h6>
                            <article class="card">
                                <div class="card-body row">
                                    <div class="col"> <strong>Author:</strong> <br> John Doe</div>
                                    <div class="col"> <strong>Status:</strong> <br> Published </div>
                                    <div class="col"> <strong>Reason:</strong> <br> - </div>
                                    <div class="col"> <strong>Tracking #:</strong> <br> BD045903594059 </div>
                                </div>
                            </article>
                            <div class="track">
                                <div class="step pub"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 1</span> </div>
                                <div class="step pub"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text"> Stage 2</span> </div>
                                <div class="step pub"> <span class="icon"> <i class="fa fa-check-circle"></i> </span> <span class="text">Stage 3</span> </div>
                                <div class="step pub"> <a data-toggle="collapse" href="#c3" role="button" aria-expanded="false" aria-controls="c3"><span class="icon"><i class="fa fa-check-circle"></i> </span> <span class="text">Stage 4</span> </a> </div>
                                <div class="step pub"> <span class="icon"> <i class="fa fa-trophy"></i> </span> <span class="text">Stage 5</span> </div>
                            </div>
                            <hr>
                            <div class="collapse" id="c3">
                                <div class="card card-body">
                                    Comments
                                </div>
                            </div>
                        </div>
                </div>


                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="student_dash/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="student_dash/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="student_dash/js/app-style-switcher.js"></script>
    <script src="student_dash/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="student_dash/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="student_dash/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="student_dash/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="student_dash/plugins/bower_components/chartist/dist/chartist.min.js"></script>
    <script src="student_dash/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="student_dash/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>
