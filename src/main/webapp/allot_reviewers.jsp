<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <a href="/new_submissions"><i class="fa fa-arrow-left" style="color:#91CAB4;font-size:1.5rem;"aria-hidden="true" ></i></a>
      <div>
          <label for="name" class="mid">Title</label>
          <input type="text" name="name" id="name" value="" tabindex="1" placeholder="${paper.title}" disabled>
      </div>

      <div>
          <label for="password" class="mid">Author(s)</label>
          <input type="text" name="author" id="author" value="" tabindex="2" placeholder="${paper.student.name}" disabled>
      </div>

        <div>
          <label for="domain" class="mid">Domain</label>
          <input type="text" name="domain" id="domain" value="" tabindex="2" placeholder="${paper.domain}" disabled>
      </div>

       <div>
           <label for="radio-choice-1">Allot Reviewers</label>
         <br>
  <select name="extraoptions" id="select-choice-2">
                  <c:forEach items="${revs}" var = "r">
  		            <option value="${r.name}">${r.name}</option>
                  </c:forEach>

          </select>
      </div>
    <div>
        <br>
        <div>
                <input type="submit" value="Submit" class="submit">
            </div>
      </div>

      </fieldset>

  </form>

</body>

</html>
