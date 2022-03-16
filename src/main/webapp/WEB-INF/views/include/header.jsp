<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
a{
	text-decoration: none;
}
input[type=button] {
  background-color: #1567F9;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit] {
  background-color: #1567F9;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button]:hover {
  background-color: #096CDF;
}

button {
	background-color: #096CDF;
	border: 1px;
}
</style>
<header>
	 <ul>
		<li><a href="/">Napriny</a></li>
		<li>
			<form action="/search">
				<input style="margin-top: 5%" type="text" value="${keyword }" name ="keyword">
			</form>
		</li>
		<li><a href="javascript:alert('개발중인 기능입니다.')">뉴스</a></li>
		<li><a href="javascript:alert('개발중인 기능입니다.')">블로그</a></li>
		<li><a href="javascript:alert('개발중인 기능입니다.')">백과사전</a></li>
		<li><a href="javascript:alert('개발중인 기능입니다.')">이미지</a></li>
		<li><a href="javascript:alert('개발중인 기능입니다.')">고객지원</a></li>
	</ul>
</header>
