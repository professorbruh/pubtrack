<!DOCTYPE html>
<html>
<head>
	<title>Reviewer Dashboard</title>


	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">

<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="reviewer.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
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
      <p> User</p>

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
			<li  class="sidebar-nav-item">
				<a href="status.html" class="sidebar-nav-link active">
					<div>
						<i class="fa fa-th-list"></i>
					</div>
					<span class='span'>Alloted Papers</span>
				</a>
			</li>
		</ul>
	</div>


  <div class="wrapper">

		<div class="row">

			<div class="col-11 col-m-12 col-sm-12">
				<div class="card">



					<div class="card-content">
						<p style="font-size:1.2rem;"> Papers to be Reviewed</p>
						<table class='sortable'>
								<thead>
									<tr>
										<th width=12% style="font-weight:bold;text-align:center">S.No</th>
										<th width=20% style="font-weight:bold;text-align:center" >Title</th>
										<th style="font-weight:bold;text-align:center">Publisher</th>
										<th style="font-weight:bold;text-align:center">Comment</th>
										<th width=15% style="font-weight:bold;text-align:center">Action</th>
									</tr>





								</thead>
								<tbody>

										 <tr>

											 <td>1</td>
											 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
											 <td>Indian Institute of Computer Science</td>
											 <td>Justification of problem statement must be clear</td>
											 <td style="text-align:center;"><a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit"></a>
												 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>


											 <tr>


												 <tr>

													 <td>2</td>
													 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
													 <td>Indian Institute of Computer Science</td>
													 <td style="text-align:center;"><a href="/reviewer_add_comments" class="comment bi bi-plus-circle-fill add-fill add"></a></td>
													 <td style="text-align:center;"><a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit">
													 </a>
													 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>

														 <tr>

															 <td>3</td>
															 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
															 <td>Indian Institute of Computer Science</td>
															 <td>Justification of problem statement must be clear</td>
															 <td style="text-align:center;"><a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit"></a>
																 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>

															 <tr>


																 <tr>

																	 <td>4</td>
																	 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
																	 <td>Indian Institute of Computer Science</td>
																	 <td>Justification of problem statement must be clear</td>
																	 <td style="text-align:center;"><a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit"></a>
																		 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>

																	 <tr>


																		 <tr>

																			 <td>5</td>
																			 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
																			 <td>Indian Institute of Computer Science</td>
																			 <td>Justification of problem statement must be clear</td>
																			 <td style="text-align:center;">
																				 <a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit"></a>
																				 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>

																			 <tr>


																				 <tr>

																					 <td>6</td>
																					 <td><a href="https://www.ijcsmc.com/docs/papers/May2015/V4I5201539.pdf">Machine Learning Techniques Used to analyse driver behaviour using OBD</td>
																					 <td>Indian Institute of Computer Science</td>
																					 <td style="text-align:center;"><a href="/reviewer_add_comments" class="comment bi bi-plus-circle-fill add-fill add"></a></td>
																					 <td style="text-align:center;"><a href="/reviewer_edit_comments" class="comment bi bi-pencil-fill edit">
																					 </a>
																					 <a href="#" class="comment bi bi-x-circle-fill close"></a></td>


																					 <tr>





									</tbody>
								</table>


					</div>

			</div>
		</div>
	</div>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/f1e341f34a.js" crossorigin="anonymous"></script>
  <script src='reviewer.js'></script>




</body>
</html>
