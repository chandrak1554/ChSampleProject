<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
<title>First Web Application</title>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
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
    </div>
    <div class="panel-body">
    <table class="table table-striped table-bordered table-hover" border="1" >
    <tbody>
    <c:forEach items="${result1 }" var="item1">
    <c:forEach items="${result }" var="item">
      <c:set var="item45" value="${fn:split(item1,',')}"></c:set>
         <c:set var="item1234" value="${fn:split(item1,',')}"></c:set>
         <c:choose>
         <c:when test="${item1 ==item }">
         <tr>
         <td>${item45[0]}</td>
         <td>${item45[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item45[2]}</td>
         <td>${item1234[0]}</td>
         <td>${item1234[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item1234[2]}</td>
         </tr>
         </c:when>
         <c:otherwise>
         <c:choose>
         <c:when test="${item45[2]==item1234[2] && item45[1]==item1234[1] && item45[0]!=item1234[0] }">
         <tr>
         <td><font color="blue">${item45[0]}</font></td>
         <td>${item45[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item45[2]}</td>
         <td><font color="blue">${item1234[0]}</font></td>
         <td>${item1234[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item1234[2]}</td>
         </tr>
         </c:when>
         <c:when test="${item45[2]==item1234[2] && item45[1]!=item1234[1] && item45[0]==item1234[0] }">
         <tr>
         <td>${item45[0]}</td>
         <td><font color="blue">${item45[1]}</font></td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item45[2]}</td>
         <td>${item1234[0]}</td>
         <td><font color="blue">${item1234[1]}</font></td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item1234[2]}</td>
         </tr>
         </c:when>
         <c:when test="${item45[2]!=item1234[2] && item45[1]==item1234[1] && item45[0]==item1234[0] }">
         <tr>
         <td>${item45[0]}</td>
         <td>${item45[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><font color="blue">${item45[2]}</font></td>
         <td>${item1234[0]}</td>
         <td>${item1234[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><font color="blue">${item1234[2]}</font></td>
         </tr>
         </c:when>
         </c:choose>
         </c:otherwise>
         </c:choose> 
       </c:forEach>
    </c:forEach>
    </tbody>
    </table>
    </div>
    </div>
    </div>
    
    <%-- <div class="col-sm-6">
    <div class="panel panel-default">
    <div class="panel-heading">
    <h3 class="panel-title">File 2</h3>
    </div>
    <div class="panel-body">
    <table class="table table-striped table-bordered table-hover" border="1" >
    <tbody>
    <c:forEach items="${result1 }" var="item1">
    <c:forEach items="${result }" var="item">
         <c:choose>
         <c:when test="${item1 ==item }">
         <c:set var="item45" value="${fn:split(item1,',')}"></c:set>
         <tr>
         <td>${item45[0]}</td>
         <td>${item45[1]}</td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;">${item45[2]}</td>
         </tr>
         </c:when>
         </c:choose> 
       </c:forEach>
       <c:forEach items="${tpList2 }" var="item4">
         <c:choose>
         <c:when test="${item1 ==item4 }">
         <c:set var="item456" value="${fn:split(item1,',')}"></c:set>
         <tr>
         <td><font color="blue">${item456[0]}</font></td>
         <td><font color="blue">${item456[1]}</font></td>
         <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><font color="blue">${item456[2]}</font></td>
         </tr>
         </c:when>
         </c:choose> 
       </c:forEach>
    </c:forEach>
    </tbody>
    </table>
    </div>
    </div>
    </div> --%>
    </div>
    </div>
  </form>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script  src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
</body>

</html>