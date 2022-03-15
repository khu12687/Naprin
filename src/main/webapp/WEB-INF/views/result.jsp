<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Naver</title>
<jsp:include page="./include/header.jsp"></jsp:include>
</head>
<body>
<form action="/search">
	<input style="margin-top: 5%" type="text" value="${keyword }" name ="keyword">
</form>
<h1 style="margin-top: 2px;">뉴스</h1>

<c:forEach items="${news.items }" var="item">
	<div><h3>${item.getTitle()}</h3></div>
	<div><a href="${item.getLink() }">${item.getDescription() }</a></div>
</c:forEach>

<button>뉴스 더보기</button>

<h1>백과사전</h1>
<c:forEach items="${encyc.items }" var="item">
	<div><h3>${item.getTitle()}</h3></div>
	<div><a href="${item.getLink() }">${item.getDescription() }</a></div>
	<div><img src="${item.getThumbnail() }"></div>
</c:forEach>
<button>사전 더보기</button>
<h1>이미지</h1>
<div>검색 결과 문서의 총 개수 : ${imgs.getTotal()}</div>
<div>검색된 검색 결과의 개수 : ${imgs.getDisplay() }</div>
<c:forEach items="${imgs.items }" var="item">
	<div> <a href="${item.getLink() }"><img src="${item.getThumbnail() }"></a></div>
	
</c:forEach>
<button>이미지 더보기</button>

</body>
</html>