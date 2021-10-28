<!DOCTYPE html>
<html>
<head>
	<title>Statistics</title>


	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="statistics.css">
</head>


<body class="overlay-scrollbar">

	<!-- navbar -->
	<div class="navbar">
		<!-- nav left -->
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link">
					<i class="fa fa-bars" onclick="collapseSidebar()"></i>
				</a>
			</li>
			<li class="nav-item faculty">
				<b>PUBTRACK</b>
			</li>
		</ul>
		<!-- end nav left -->
		<!-- form -->
		<form class="navbar-search">
			<input type="text" name="Search" class="navbar-search-input" placeholder="Search..">
			<i class="fa fa-search"></i>
		</form>
		<!-- end form -->
		<!-- nav right -->
		<ul class="navbar-nav nav-right">
			<!--<li class="nav-item mode">
				<a class="nav-link" href="#" onclick="switchTheme()">
					<i class="fa fa-moon-o dark"></i>
				</a>
			</li>-->
      <p> Indian Journal of Computer <br>Science and Technology</p>

			<li class="nav-item avt-wrapper">
				<div class="avt dropdown">

          <img src="https://dc-mkt-prod.cloud.bosch.tech/xrm/media/global/industries_1/semiconductors_and_electronics/stage-semiconductors-and-electronics-industry.jpg" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
					<ul id="user-menu" class="dropdown-menu">
						<li class="dropdown-menu-item">
							<a href="settings.php" class="dropdown-menu-link">
								<div>
									<i class="fa fa-cog"></i>
								</div>
								<span>Settings</span>
							</a>
						</li>
						<li  class="dropdown-menu-item">
							<a href="logout.php" class="dropdown-menu-link">
								<div>
									<i class="fa fa-sign-out"></i>
								</div>
								<span>Logout</span>
							</a>
						</li>
					</ul>
				</div>
			</li>
		</ul>
		<!-- end nav right -->
	</div>
	<!-- end navbar -->
	<!-- sidebar -->
	<div class="sidebar">
		<ul class="sidebar-nav">
			<li class="sidebar-nav-item">
				<a href="statistics.html" class="sidebar-nav-link active">
					<div>
						<i class="fa fa-bar-chart"></i>
					</div>
					<span class='span'>
						Statistics
					</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="status.html" class="sidebar-nav-link">
					<div>
						<i class="fa fa-th-list"></i>
					</div>
					<span class='span'>Publications</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="#" class="sidebar-nav-link">
					<div>
						<i class="fa fa-home"></i>
					</div>
					<span class='span'>Browse</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="#" class="sidebar-nav-link">
					<div>
						<i class="fa fa-question-circle"></i>
					</div>
					<span class='span'>FAQ</span>
				</a>
			</li>
		</ul>
	</div>







  <div class="wrapper">

		<div class="row">

			<div class="col-6 col-m-12 col-sm-12">
				<div class="card">
					<div class="card-header">
            <h2 style="color:#9D9597;text-align: center;">Number of articles published past 10 years in different domain
						</h2>
 </div>



					<div class="card-content">

            <div class="container">
              <div>
                <canvas id="line-chart" width="800" height="450"></canvas>
              </div>
            </div>
					</div>

			</div>
		</div>


    <div class="col-6 col-m-12 col-sm-12">
      <div class="card">
        <div class="card-header">
          <h2 style="color:#9D9597;text-align: center;">Domain range past 10 years
          </h2>
</div>



        <div class="card-content">
          <div class="container">
            <div>
              <canvas id="doughnut-chart" width="800" height="450"></canvas>
            </div>
          </div>
        </div>

    </div>
  </div>



	</div>
  <script src='profile.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>


<script src='chart.js'></script>
<script src='pie.js'></script>



</body>
</html>
