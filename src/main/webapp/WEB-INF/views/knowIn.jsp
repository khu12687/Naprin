<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./include/header.jsp"></jsp:include>

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
		<h1 class="mt-3">지식iN 등록</h1>
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