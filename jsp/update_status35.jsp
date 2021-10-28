<!DOCTYPE html>
<html>
<head>
	<title>Update Status</title>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="update_status12.css">

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

</head>
<body>
  <form action="#" method="post">

      <fieldset>
        <i class="fa fa-arrow-left" style="color:#91CAB4;font-size:1.5rem;"aria-hidden="true"></i>
      <div>
          <label for="name" class="mid">Title</label>
          <input type="text" name="name" id="name" value="" tabindex="1" placeholder="Machine Learning Techniques Used to analyse driver behaviour using OBD">
      </div>

      <div>
          <label for="password" class="mid">Author(s)</label>
          <input type="text" name="password" id="password" value="" tabindex="2" placeholder="Sheena Angra,Sachin Ahuja">
      </div>

        <div>
          <label for="password" class="mid">Domain</label>
          <input type="text" name="password" id="password" value="" tabindex="2" placeholder="Machine Learning">
      </div>

       <div>
           <label for="radio-choice-1">Status</label>
         <br>
  <select name="extraoptions" id="select-choice-2">
  		            <option value="Choice 1">Stage 3</option>
                  <option value="Choice 2">Stage 4</option>
                  <option value="Choice 3">Accepted</option>
                  <option value="Choice 4">Rejected</option>
									<option value="Choice 5">Require Revision</option>

          </select>
      </div>
<br>
			<div>
				<label for="password" class="mid">Reason (if rejected or required revision)</label>
				<input type="text" name="password" id="password" value="" tabindex="2" >
		</div>

    <div>
        <br>
        <div>
                <input type="submit" value="Update" class="submit">
            </div>
      </div>

      </fieldset>

  </form>

</body>

</html>
