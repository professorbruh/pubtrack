<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<body>
<table>
 <c:forEach items="${papers}" var = "p">

<td>${p.ref_id}</td>
</c:forEach>
</table>
</body>
</html>