<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NAPRIN</title>
    <jsp:include page="./include/header.jsp"></jsp:include>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type= "text/css" href="resources/css/main.css">
</head>
  <title>NAPRIN</title>

<body>
  <h1>
    <div class="logo">NAPRIN</div>
  </h1>
  <form action="search">
    <div class="search">
		<div class ="search-box">
			 <input id="search_box" type="search" name="keyword" placeholder="검색어를 검색해 주세요">
		</div>

    
     <div class="icon-images">
       <div><div><a href=""><img src="resources/css/images/covid.png" class="icon-image"></a></div><h4>covid19</h4></div>
       <div><div><a href=""><img src="resources/css/images/news.png" class="icon-image"></a></div><h4>뉴스</h4></div>
       <div><div><a href=""><img src="resources/css/images/weather.png" class="icon-image"></a></div><h4>날씨</h4></div>
       <div><div><a href=""><img src="resources/css/images/image.png" class="icon-image"></a></div><h4>이미지</h4></div>
       <div><div><a href=""><img src="resources/css/images/q&a.png" class="icon-image"></a></div><h4>지식인</h4></div>
       <div><div><a href="map/mainMap"><img src="resources/css/images/map.png" class="icon-image"></a></div><h4>지도</h4></div>
       <div><div><a href=""><img src="resources/css/images/dictionary.png" class="icon-image"></a></div><h4>사전</h4></div>
       <div><div><a href=""><img src="resources/css/images/shopping.png" class="icon-image"></a></div><h4>장터</h4></div>
     </div>

  </div>
  </form>
</body>
</html> 