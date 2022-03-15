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
<input style="margin-top: 5%" type="text" value="${keyword }">
<h1 style="margin-top: 2px;">뉴스</h1>
<c:if test="${news!=null } ">
	<div>검색 결과 문서의 총 개수 : ${news.getTotal()}</div>
	<div>검색된 검색 결과의 개수 : ${news.getDisplay() }</div>
	<c:forEach items="${news.items }" var="item">
		<div>개별 title : ${item.getTitle()}</div>
		<div>개별 originallink(언론사 링크) : <a href="${item.getOriginallink() }">${item.getOriginallink() }</a></div>
		<div>개별 link(문서 링크) : <a href="${item.getLink() }">${item.getLink() }</a></div>
	</c:forEach>
</c:if>
<button>뉴스 더보기</button>
<h1>블로그</h1>
<button>블로그 더보기</button>
<h1>백과사전</h1>
<button>사전 더보기</button>
<h1>이미지</h1>
<div>검색 결과 문서의 총 개수 : ${imgs.getTotal()}</div>
<div>검색된 검색 결과의 개수 : ${imgs.getDisplay() }</div>
<c:forEach items="${imgs.items }" var="item">
	<div> <a href="${item.getLink() }"><img src="${item.getThumbnail() }"></a></div>
	
</c:forEach>
<button>이미지 더보기</button>
<h1>쇼핑</h1>
</body>
</html>