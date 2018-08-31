<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>First Web Application</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<h1>Files Comparision</h1>
  <hr />
  <form action="comparefile" method="post" enctype="multipart/form-data">
  <div class="container">
  <div class="row">
  <div class="col-sm-6">
  <h3>Please upload Files</h3>
    <table>
      <tr>
        <td>Select File1</td>
        <td><input type="file" name="file1"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
       <tr>
        <td>Select File2</td>
        <td><input type="file" name="file2"></td>
      </tr>
       <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
      <td></td>
      <td><button type="submit">Compare Uploaded Files</button></td>
      </tr>
       <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
       </div>
    </div>
  </div>
  
    <div class="container">
    <div class="row">
    <div class="col-sm-6">
    <div class="panel panel-default">
    <div class="panel-heading">
    <h3 class="panel-title">File 1</h3>
    </div>
    <div class="panel-body">
    <p>
    <c:forEach items="${result }" var="item">
    <c:forEach items="${result1 }" var="item1">
         <c:choose>
         <c:when test="${item ==item1 }">
         ${item }
         </c:when>
         </c:choose> 
       </c:forEach>
        <c:forEach items="${tpList1 }" var="item3">
         <c:choose>
         <c:when test="${item ==item3 }">
         <p><font color="blue">${item }</font></p>
         </c:when>
         </c:choose> 
       </c:forEach>
       
    </c:forEach>
    </p>
    </div>
    </div>
    </div>
    
    <div class="col-sm-6">
    <div class="panel panel-default">
    <div class="panel-heading">
    <h3 class="panel-title">File 2</h3>
    </div>
    <div class="panel-body">
    <p>
    <c:forEach items="${result1 }" var="item1">
    <c:forEach items="${result }" var="item">
         <c:choose>
         <c:when test="${item1 ==item }">
         ${item1 }
         </c:when>
         </c:choose> 
       </c:forEach>
       <c:forEach items="${tpList2 }" var="item4">
         <c:choose>
         <c:when test="${item1 ==item4 }">
         <p><font color="blue">${item1 }</font></p>
         </c:when>
         </c:choose> 
       </c:forEach>
    </c:forEach>
    </p> 
    </div>
    </div>
    </div>
    </div>
    </div>
  </form>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script  src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
</body>

</html>