<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <script>
        $(document).ready(function() {
            $('#multiple-checkboxes').multiselect({
            includeSelectAllOption: true,
            });
        });
    </script>
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
    <title>Submit paper</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="student_dash/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="student_dash/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <!-- Custom CSS -->
    <link href="student_dash/css/style.min.css" rel="stylesheet">
    <link href="student_dash/css/temp.css" rel="stylesheet">
    <link href="student_dash/css/submitpaper.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="student_dash/js/valid.js"></script>

    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <!--    &lt;!&ndash; for handle Bar &ndash;&gt;-->
    <script src="https://twitter.github.io/typeahead.js/js/handlebars.js"></script>

    <!--Semantics Ui CDN  -->
    <!--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">-->
    <!--    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>-->

    <!-- select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

    <script>
        const email = document.getElementById("email1");

    email.addEventListener("input", function (event) {
      if (email.validity.typeMismatch) {
        email.setCustomValidity("I am expecting an e-mail address!");
        alert("I am expecting an e-mail address!");
      } else {
        email.setCustomValidity("");
      }
    });
    </script>
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
                    <a class="navbar-brand text-dark" href="/submit_paper">
                        Submit Paper
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
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/student_dash"
                                aria-expanded="false">
                                <i class="fas fa-tv" aria-hidden="true"></i>
                                <span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/submit_paper"
                                aria-expanded="false">
                                <i class=" fas fa-edit" aria-hidden="true"></i>
                                <span class="hide-menu">Submit Paper</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/faq"
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
                        <h4 class="page-title">Submit paper</h4>
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
            <div class="container-fluid" style="width: 1600px; padding-left: 15%;">
                <!-- ============================================================== -->
                <!-- Three charts -->
                <!-- ============================================================== -->
                <div class="container">
                            <div class="col-lg-8 col-xlg-9 col-md-12">
                                <header class="card-header" style="font-size: larger; text-align: center;"> Mansucript Submission Form </header>
                                <div class="card">
                                    <div class="card-body">
                                        <form class="form-horizontal form-material" id="myform" action="abc.html">
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Title</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" id="title" placeholder="Your title"
                                                        class="form-control p-0 border-0" required> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Author 1</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" id="email1" placeholder="Email id"
                                                        class="form-control p-0 border-0" required=""> </div>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" id="name1" placeholder="Name"
                                                        class="form-control p-0 border-0" required=""> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Author 2</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Email id"
                                                        class="form-control p-0 border-0"> </div>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Name"
                                                        class="form-control p-0 border-0"> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Author 3</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Email id"
                                                        class="form-control p-0 border-0"> </div>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Name"
                                                        class="form-control p-0 border-0"> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Author 4</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Email id"
                                                        class="form-control p-0 border-0"> </div>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" placeholder="Name"
                                                        class="form-control p-0 border-0"> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Institution Name</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="text" id="institution" placeholder="Your institution name"
                                                        class="form-control p-0 border-0" required> </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-8 p-0">Domain</label>
                                                <div class="col-md-8 border-bottom p-0">
                                                    <input  class="prompt" type="text" placeholder="Select your domain">
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-sm-8 p-0">Journal Name</label>
                                                <div class="col-sm-8 border-bottom">
                                                    <select class="form-select shadow-none p-0 border-0 form-control-line">
                                                        <option disabled selected>Select your Journal</option>
                                                        <option>Journal 1</option>
                                                        <option>Journal 2</option>
                                                        <option>Journal 3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Manuscript Upload</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="file" placeholder="Upload your Manuscript" accept=".pdf" id="manuscript"
                                                        class="form-control p-0 border-0" required>
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Plagiarism check report</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="file" placeholder="Upload your report" accept=".jpg,.png,.pdf" id="report"
                                                        class="form-control p-0 border-0" required>
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <label class="col-md-12 p-0">Plagiarism percentage</label>
                                                <div class="col-md-12 border-bottom p-0">
                                                    <input type="number" id="Plagiarismpercent" placeholder="Your Plagiarism percentage"
                                                        class="form-control p-0 border-0" required> </div>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                                <label class="form-check-label" for="defaultCheck1">
                                                  I acknowledge that the submitted manuscript was done by myself/my group on my/our own effort, and I/we give complete permission to review it and provide reviews and publish.
                                                </label>
                                              </div>
                                            <div class="form-group mb-4">
                                                <div class="col-md-12 text-center">
                                                    <button class="btn btn-secondary btn-lg" style="align-items: center;">Submit</button>
                                                </div>
                                            </div>
                                        </form>
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
    <script>
        var content = [
            {id: 0, text: "Computer science"},
            {id: 1, text: "Biotechnology "},
            {id: 2, text: "Psycology  "},
            {id: 4, text: "Nanotechnology  "},
        ];


         $(".prompt").select2({
             data:content,
             // minimumInputLength: 2,
             width: '100%',
             multiple:true,
             placeholder:"Select your domain(s)",
             // templateResult:formatState

         });



        function btn_handler() {
            var names = $('.prompt').select2('data');

            for(let name of names){

                console.log(name)
                console.log(name.text)
                console.log(name.email)

                alert(`${name.text} - ${name.email}`)

            }
        }
    </script>
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
