 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Naprin</title>
<jsp:include page="./include/header.jsp"></jsp:include>
<style>

</style>
</head>
<body>
	<div>
		<div class="nav" style="display: inline-block;">
			<h1>지식iN</h1><a href="knowIn/add?keyword=${keyword }">지식iN에 물어보기</a>
			<div>
				<table class="table table-hover">
					<thead>
						<tr class="table-dark col-auto">
							<td>제목</td>
							<td>내용</td>
							<td>조회수</td>
							<td>등록일</td>
							<td>작성자</td>
						</tr>
					</thead>
					<form id="delete_form" method="post" action="delete_list">
						<tbody>
							<c:forEach var="item" items="${list}">
								<tr>
									<td><a href="view/${item.knowId}">${item.title}</a></td>
									<td>${item.content}</td>
									<td>${item.hit}</td>
									<td>${item.regdate}</td>
									<td>ㅇㅇ</td>
								</tr>
							</c:forEach>
							
							<c:if test="${list.size() < 1}">
								<tr>
									<td colspan="7">등록된 지식인이 없습니다</td>
								</tr>
							</c:if>
						</tbody>
					</form>
					<tfoot>
						<tr>
							<td colspan="7">
								<div class="pagination justify-content-center">
									<div class="page-item"><a href="?page=1&${pager.query}" class="page-link">처음</a></div>
									<div class="page-item"><a href="?page=${pager.prev}&${pager.query}" class="page-link">이전</a></div>
									
									<c:forEach var="page" items="${pager.list}">
										<div class="page-item ${page == pager.page ? 'active' : ''}"><a href="?page=${page}&${pager.query}" class="page-link">${page}</a></div>
									</c:forEach>
									
									<div class="page-item"><a href="?page=${pager.next}&${pager.query}" class="page-link">다음</a></div>
									<div class="page-item"><a href="?page=${pager.last}&${pager.query}" class="page-link">마지막</a></div>
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
				<input type="button" value="더보기->">
			</div>
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