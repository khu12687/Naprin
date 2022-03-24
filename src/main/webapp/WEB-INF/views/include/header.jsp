<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Chango&display=swap" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
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
                <img src="/resources/images/ㅇㅇㅇㅇㅇ.PNG" alt="" width="30" height="30" style="border-radius: 50%;" class="d-inline-block align-text-top">
                <strong><a class="main" href="/">NAPRIN</a></strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-0 mb-lg-0">
                    <li class="nav-item">
                       <input  style="margin-top: 5%" type="text" value="${keyword }" name ="keyword">
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
				    	 <a class="nav-link" href="servepage/login">로그인</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>