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
</style>
</head>
<body>
        <div class="container">
            <div class="row">
                <table class="table">
		    <tr>
		      <td class="text-center" rowspan="9" width=30%>
		       <img src="${vo.poster}" style="width:300px;height: 250px"> 
		      </td>
		      <td colspan="2">
		       <h3>${vo.name}&nbsp;<span style="color: orange;">${vo.score}</span></h3>
		      </td> 
		    </tr>
		    <tr>
		      <th width=10%>주소</th>
		      <td width="60%" class="aln-left">${vo.address}</td>
		    </tr>
		    
		    <tr>
		      <th width=10%>전화</th>
		      <td width="60%" class="aln-left">${vo.phone}</td>
		    </tr>
		    
		    <tr>
		      <th width=10%>음식종류</th>
		      <td width="60%" class="aln-left">${vo.type}</td>
		    </tr>
		    
		    <tr>
		      <th width=10%>가격대</th>
		      <td width="60%" class="aln-left">${vo.price}</td>
		    </tr>
		    
		    <tr>
		      <th width=10%>주차</th>
		      <td width="60%" class="aln-left">${vo.parking}</td>
		    </tr>
		    
		    <tr>
		      <th width=10%>영업시간</th>
		      <td width="60%" class="aln-left">${vo.time}></td>
		    </tr>
		    
		    <tr>
		      <th width=10%>테마</th>
		      <td width="60%" class="aln-left">${vo.theme}</td>
		    </tr>
		   
		  </table>
		  <table class="table">
		    <tr>
		     <td>
		      ${vo.content}
		     </td>
		    </tr>
		    <tr>
		     <td class="text-right">
		      <a href="/find" class="btn btn-xs btn-info">맛집검색</a>
		      <a href="javascript:history.back()" class="btn btn-xs btn-warning">목록</a>
		     </td>
		    </tr>
		  </table>
		</div>

   </div>
	   
</body>
</html>