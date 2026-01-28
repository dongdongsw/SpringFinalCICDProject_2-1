<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
	.container{
		margin-top: 50px;
	}
	
	.row{
		margin: 0px auto;
		width: 900px;
	}
	h3{
		text-align: center;
	}
	p{
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
</style>
</head>
<body>
        <div class="container">
        	<h3 class="text-center">맛집 목록</h3>
            <div class="row">
               <c:forEach var="vo" items="${list }">
	       		
				  <div class="col-md-3">
				    <div class="thumbnail">
				      <a href="/detail?fno=${vo.fno }">
				        <img src="${vo.poster }" alt="Lights" style="width:250px; height: 180px;">
				        <div class="caption">
				          <p>${vo.name }</p>
				        </div>
				      </a>
				    
				  </div>
				 </div>
				 </c:forEach>
				 <div class="row text-center" style="margin-top: 10px;">
			       	<ul class="pagination"  style="margin: 0px auto;">
			       		<c:if test="${startPage > 1 }">
			       			<a href="/?page=${startPage-1 }">&laquo;</a>
			       		</c:if>
			       		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			       			<a href="/?page=${i }">${i }</a>
			       		</c:forEach>
			       		<c:if test="${endPage < totalpage }">
			       			<a href="/?page=${endPage+1 }">&raquo;</a>
			       		</c:if>
			       	</ul>
		       </div>
            </div>
        </div>
	   
</body>
</html>