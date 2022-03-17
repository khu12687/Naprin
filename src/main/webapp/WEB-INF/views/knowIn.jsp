<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./include/header.jsp"></jsp:include>
<style>
.sub_qna_title_area .article {
    position: relative;
    width: 744px;
    z-index: 90;
    display: block;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.sub_qna_title_area .article .input_box {
    position: absolute;
    top: -1px;
    left: 77px;
    width: 666px;
}
.sub_qna_title_area .article .on_focus {
    border: 2px solid #5fc54e;
    color: #4c4c4c;
}
.sub_qna_title_area .article .txt_type {
    width: 665px;
    height: 31px;
    line-height: 30px;
    padding-left: 6px;
    border: 1px solid #a7a7a7;
    border-right: 1px solid #d1d1d1;
    border-bottom: 1px solid #d1d1d1;
    color: #a5a5a5;
    font-size: 14px;
    font-weight: bold;
    -webkit-appearance: none;
    -webkit-border-radius: 0;
}
input {
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}

.layer_balloon_help .main_desc {
    padding: 20px 0 5px;
    color: #268e00;
    line-height: 17px;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
h5 {
    display: block;
    font-size: 0.83em;
    margin-block-start: 1.67em;
    margin-block-end: 1.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.layer_balloon_help h5 {
    padding: 11px 0 1px;
    color: #fc6600;
    font-size: 12px;
    letter-spacing: -1px;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.layer_balloon_help .order {
    margin-bottom: -8px;
    padding-top: 5px;
}
</style>
<script>
	$(document).ready(function() {	
		$("#add_image").click(function() {
			const div = $("<div>").addClass("mb-3");
			const label = $("<label>").addClass("form-label").text("제품 이미지:");
			const button = $("<span>").addClass("btn btn-outline-danger btn-sm").text("삭제");
			const file = $("<input>").attr("type", "file").attr("name", "productImage").addClass("form-control");
			
			div.append(label);
			div.append(button);
			div.append(file);
			
			button.click(function() {
				$(this).parent().remove();
			});
			
			$("form > div:last-child").before(div);
		})
	})
</script>
</head>
<body>
	<div class="nav">
		<div class="article"> 
			<h3><label for="title"><img src="https://ssl.pstatic.net/static/kin/09renewal/h_question.gif" width="64" height="30" alt="질문"></label></h3>
			<div class="input_box">
				<!-- 인풋박스에 포커싱 갈 경우 on_focus 클래스 추가 -->
				<input type="text" name="title" id="title" maxlength="80" class="txt_type on_focus" style="color:#333;" value="">
			</div>
			<!-- 도움말 말풍선 --> 
			<div class="layer_balloon_help _help_layer" style="top:-12px; right:-237px;"> 
				<p class="main_desc"><strong>정확한 답변을 원하시나요?<br>궁금한 점을 바로 알 수 <br>있도록 작성해 보세요</strong>(최소5자).</p> 
				<h5>예문</h5> 
				<ul class="order"> 
					<li><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="1" height="1" alt="1" class="num1"> 콧 등에 땀이 맺힐 때 화장<br>수정 방법은?</li>
					<li><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="1" height="1" alt="2" class="num2"> 허리가 아픈 사람은 딱딱한<br>바닥에서 자는게 좋은가요?</li>
				</ul> 
				<div class="bg_bottom"></div> 
			</div> 
		</div>
		<form method="post" class="mt-4" enctype="multipart/form-data">
		 	
		 	<div class="mb-3"> 
		 		<textarea name="info"></textarea>
		 	</div>
		 	<div class="mb-3"> 
				<label class="form-label">이미지:</label><span id="add_image" class="btn btn-outline-primary btn-sm">추가</span>
		 		<input type="file" name="productImage" class="form-control">
		 	</div>
			<div class="d-grid gap-2 col-6 mx-auto">
			 	<button class="btn btn-primary">등록</button>
			 	<a href="list" class="btn btn-primary">이전</a>
			</div>
		</form>
	</div>
</body>
<jsp:include page="./include/body.jsp"></jsp:include>
</html>