<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<style>
a{
	text-decoration: none;
	color: blue;
}

.nav{
	width: 1250px;
	margin: 7%;
	margin-left: 9.5%;
	border : 1px solid #EBEBEB;
	border-radius: 8px;
	overflow: hidden;
}

input[type=button] {
  background-color: #1567F9;
  width: 60px;
  height: 30px;
  color: skyblue;
  border: 1px soild skyblue;
  border-radius: 12px;
  cursor: pointer;
  padding: 5px;
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
	font-family: 'Noto Sans KR', sans-serif;
}
header {
  display: block;
  width: 100%;
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


</style>
<header>
 <!-- 네비게이션 바 -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img src="/resources/css/images/naprinLogo.png" alt="" width="30" height="30" style="border-radius: 50%;" class="d-inline-block align-text-top">
                <strong style="margin-right: 3%;"><a style="color: #0C43BE;" href="/">NAPRIN</a></strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-0 mb-lg-0">
                    <li class="nav-item">
                    	<form>                    	
                       		<input style="padding: 0 1em; border: 1px solid gray; height: 38px; width: 100%; border-radius: 30px;" size="50" type="text" value="${keyword }" name ="keyword">
                    	</form>
                    </li>
                </ul>
                <ul class="navbar-nav">
                 	<li class="nav-item">
				    	 <a class="nav-link" href="servepage/login"></a>
                    </li>
                    <li class="nav-item">
                       	<a class="nav-link" href="member/regist">회원가입</a>
                    </li>
                    <li class="nav-item">
				    	 <a class="nav-link" href="member/login">로그인</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>