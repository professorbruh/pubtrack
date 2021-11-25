<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Publications</title>


	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">

<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="publications.css">
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
				<a href="statistics.html" class="sidebar-nav-link">
					<div>
						<i class="fa fa-bar-chart"></i>
					</div>
					<span class='span'>
						Statistics
					</span>
				</a>
			</li>
			<li  class="sidebar-nav-item">
				<a href="status.html" class="sidebar-nav-link active">
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

			<div class="col-11 col-m-12 col-sm-12">
				<div class="card">
					<div class="card-header">
            <ul class="nav nav-pills nav-justified">
    <li style="font-size:1.2rem"><a href="/publisher_dashboard">Published</a></li>
    <li  class="active"><a href="/progress" style="font-size:1.2rem">In Progress</a></li>
    <li><a href="/new_submissions" style="font-size:1.2rem">New submissions</a></li>
  </ul>
 </div>



					<div class="card-content">
						<p style="font-size:1.2rem;"> The articles below are in progress from stages 3 to 4:</p>
						<table class='sortable'>
								<thead>
									<tr>
										<th style="font-weight:bold;text-align:center">ProgressID</th>
										<th width=20% style="font-weight:bold;text-align:center">Title</th>
										<th style="font-weight:bold;text-align:center">Author(s)</th>
										<th style="font-weight:bold;text-align:center">Domain</th>
										<th style="font-weight:bold;text-align:center">Reviewers</th>
                    <th style="font-weight:bold;text-align:center">Status</th>
									</tr>

								</thead>
								<tbody>

										
										 <c:forEach items="${papers}" var = "p">
											 <tr>
											<td style="text-align:center;">${p.ref_id}</td>
											<td style="text-align:center;"><a href=${p.manuscript}>${p.title}</td>
											<td style="text-align:center;">${p.student.name}</td>
											<td style="text-align:center;">${p.domain}</td>
											<td style="text-align:center;">Mark Dwain,<br>Carmel Tucker,<br>Shreeja Sen <a href='/comments'><br><i class="fa fa-comments" aria-hidden="true"></i></a></td>
					  <td style="text-align:center;">Stage 4<a href="/update_status35"><br><i class="fa fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
									</c:forEach>


									</tbody>
								</table>


					</div>

			</div>
		</div>
	</div>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src='profile.js'></script>




</body>
</html>
