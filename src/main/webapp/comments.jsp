<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Update Status</title>
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="publications.css">

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

</head>
<body style="background:linear-gradient(180deg, #8FDAA6 0%, rgba(162, 164, 163, 0.81) 100%);">

  <div class="wrapper"  >

    <div class="row" style="margin-top:0.5vh;font-size:1rem;">

      <div class="col-11 col-m-12 col-sm-12" style="background:#fff">
        <div class="card">
          <div class="card-header">
            <h1>Reviewers' Comments</h1>
  </div>



          <div class="card-content">
            <table>
                <tbody>
                  <tr>
        									<td>ProgressID</td>
        									<td>${paper.ref_id}</td>

                            <tr>
        									<td>Title</td>
        									<td>${paper.title}</td>

                               <tr>
        									<td>Author(s)</td>
        									<td>${paper.student.name}</td>



        									<tr>
        									<td>Domain</td>
        									<td>${paper.domain}
        									</td>

                          <tr>
        									<td>Status</td>
        									<td>Stage ${paper.status}
        									</td>
                          </tbody>
                          </table>
                  <div class="col-11 col-m-12 col-sm-12" id="comments" >
        				<div class="card">
        					<div class="card-header">
        						<h3>
        							Comments
        						</h3>
                    <table>
        			<thead>
        			<tr>
        				<th width=20% style='font-weight:bold; font-size:1.23rem;'>ReviewerID</th>
                <th  style='font-weight:bold;font-size:1.23rem;' >Comment</th>
        				</tr>
        		</thead>
        							<tbody>
        								<c:forEach items="${comment}" var = "com">
										<tr> 
                          <td style="text-align:center;">${com.reviewerid}</td>
                          <td style="text-align:center;">${com.comments}</td>


                        </c:forEach>
        									

        							</tbody>
        						</table>

                  </tbody>
                </table>


          </div>

      </div>
    </div>
  </div>



</body>

</html>
