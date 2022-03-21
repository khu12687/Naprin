<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<style>
a{
	text-decoration: none;
	color: blue;
}

button {
  background-color: #1567F9;
  width: 70px;
  height: 30px;
  color: white;
  border: none;
  border-radius: 12px;
  cursor: pointer;
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
* {
	margin: 0;
	padding: 0;
	
	list-style: none;
	color: black;
	text-decoration: none;
	font-family: sans-serif;
}
header {
  display: block;
  background: #333333;
  width: 100%;
  height:60px;
  white-space : nowrap;
  overflow : hidden;
  position: fixed;
  text-overflow : ellipsis;
  top: 0;
}

header ul {
	display: flex;
    align-items: center;
    justify-content: center;
}
header ul li {
	margin: .5rem 2.5rem;
}
header ul li a {
	color: #cbcbcb;
	font-size: 13px;
	text-decoration: none;
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
