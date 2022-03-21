<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./include/header.jsp"></jsp:include>
<script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>
<style>

.deleteBtn{
	background-color: #1567F9;  
	border-radius: 5px; 
	margin-left: 2%; 
	color: white;
	cursor: pointer;
}
#add_image{
	background-color: #1567F9;  
	border-radius: 5px; 
	margin-left: 2%; 
	color: white;
	cursor: pointer;
}
</style>
<script>
	$(document).ready(function() {	
		CKEDITOR.replace( 'content' );
		$("#add_image").click(function() {
			const div = $("<div>").addClass("mb-3");
			const label = $("<label>").addClass("form-label").text("파일 첨부");
			const button = $("<span>").addClass("deleteBtn").text("삭제");
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
		<form method="post" action="/knowIn/add" class="mt-4" enctype="multipart/form-data">
			<div style="float: left;">			
				<h3><label for="title"><img src="https://ssl.pstatic.net/static/kin/09renewal/h_question.gif" width="64" height="30" alt="질문"></label></h3>
			</div>
			<input type="hidden" name="hit" value="5">
			<!-- 인풋박스에 포커싱 갈 경우 on_focus 클래스 추가 -->
			<input type="text" name="title" id="title" maxlength="80" size="90" placeholder="${keyword }에 대한 정확한 답변을 원하시나요? 궁금한 점을 바로 알 수 있도록 작성해 보세요." style="color:#333; margin-top: 2px; margin-left: 1%;" >	
		 	<div class="mb-3"> 
				<textarea name="content"></textarea>
		 	</div>
		 	<div class="mb-3"> 
				<label class="form-label">파일 첨부</label><span id="add_image">추가</span>
		 		<input type="file" name="knowinImg" class="form-control">
		 	</div>
			<div style="float: right;">
			 	<button>작성</button>
			 	<a href="../">작성취소</a>
			</div>
		</form>
	</div>
</body>
<jsp:include page="./include/body.jsp"></jsp:include>
</html>