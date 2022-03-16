<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Napriny</title>
<jsp:include page="./include/header.jsp"></jsp:include>
<style>
*{
	color: black;
	font-family: sans-serif;
}
a{
	color: blue;
}
.nav{
	width: 50%;
	margin: 10%;
	border : 1px solid gray;
	border-radius: 8px;
}

input[type=button] {
  background-color: #1567F9;
  width: 100px;
  height: 50px;
  color: white;
  border: none;
  border-radius: 12px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #096CDF;
}
</style>
</head>
<body>
	<div>
		<div class="nav">
			<h1>지식iN</h1><a href="">지식iN에 물어보기</a>
		</div>
		
		<div class="nav">
			<div style="border: 1px solid gray; border-radius: 2px; width: 100%;">뉴스</div>
			<c:forEach items="${news.items }" var="item">
				<div><a href="${item.getLink() }">${item.getTitle()}</a></div>
				<div>${item.getDescription() }</div>
			</c:forEach>
			<input type="button" value="더보기->">
		</div>		
		
		<div class="nav">
			<div style="border: 1px solid gray; border-radius: 2px; width: 100%;">백과사전</div>
			<c:forEach items="${encyc.items }" var="item">
				<div><h3>${item.getTitle()}</h3></div>
				<div><a href="${item.getLink() }">${item.getDescription() }</a></div>
				<div><img src="${item.getThumbnail() }"></div>
			</c:forEach>
			<input type="button" value="더보기->">
		</div>	
		
		<div class="nav">
			<div style="border: 1px solid gray; border-radius: 2px; width: 100%;">이미지</div>
			<div>검색 결과 문서의 총 개수 : ${imgs.getTotal()}</div>
			<div>검색된 검색 결과의 개수 : ${imgs.getDisplay() }</div>
			<div>
				<c:forEach items="${imgs.items }" var="item">
				 	<a href="${item.getLink() }"><img src="${item.getThumbnail() }"></a>
				</c:forEach>
			 </div>
			<input type="button" value="더보기->">
		</div>	
	</div>
</body>
</html>