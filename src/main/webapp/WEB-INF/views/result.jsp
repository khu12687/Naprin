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
.coronaUl, .coronaLi{
    padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #efefef;
    font-size: 15px;
    
}
.coronaLi :before{
	content: ">";
    display: inline-block;
    vertical-align: middle;
    padding: 0px 5px 6px 0px;
}
#relaKey{
	border: 1px solid gray;
	border-radius: 5px;
	margin: 1%;
}
#sideDiv a{
	color: black;
}
</style>
<script>
$("#addModal .add").click(function() {
    const item = {};
        header.forEach(value => item[value] = $(`#addModal .${value}`).val())          

	$("#addModal input").val("");

    $.ajax("addComment", {
        method: "POST",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(item),
        success: function(result) {
            const html = makeItem(result);

            $(`${pager_root} tbody`).prepend(html);

           $("#total").text(++state.total);
        }, 
        error: xhr => alert(`오류 발생: ${xhr.statusText}`)
    })

    $("#addModal").modal("hide");
})

function makeItem(item) { //item = ajax을 통해 얻는 result와 list
	
    return ;
}
</script>
</head>
<body>
	<div style="display: flex; overflow: hidden;">
		<div class="nav" style="display: inline-block;">
			<div>		
				<div><h3>${encyc.items[0].getTitle()}</h3></div>
				<div style="display: flex;">				
					<div style="margin-right: 2%;"><a target="_blank" target="_blank" href="${encyc.items[0].getLink() }"><img src="${encyc.items[0].getThumbnail() }" style="width: 200px; height: 140px;"></a></div>
					<div><a style="color: black;" target="_blank" target="_blank" href="${encyc.items[0].getLink() }" >${encyc.items[0].getDescription() }</a></div>
				</div>
			</div>	
			<div style="margin-top:2%; border-bottom : 1px solid gray; border-radius: 2px; width: 100%;">
				<b>지식iN</b>
				<a style="float: right; color: #0C43BE"  target="_blank" href="knowIn/add?keyword=${keyword }">지식iN에 물어보기</a>
			</div>
			
			<div>
				<table class="table table-hover">
					<c:forEach var="item" items="${list}" end="4" >
						<tr>
							
							<td style="margin: 1%;">
								<a class="navbar-brand" style="font-size: 20px;">								
									<img class="d-inline-block align-text-top" alt="질문" src="/resources/css/images/naprinLogo.png" width="20px;" height="20px;">
									<!-- view.jsp 답변등록 페이지 만들기 -->
									<strong><a  href="knowIn/view/${item.knowId}" style="color: #0C43BE;">${item.title}</a></strong>
								</a>
								 <span>${item.content}</span>
								 
								 <c:forEach var="img" items="${item.images}">
									<div style="float: left;"><a href="/upload/${img.uuid}_${img.filename}" target="_blank"><img width="30px;" height="30px;" src="/upload/${img.uuid}_${img.filename}"></a></div>
								</c:forEach>
									<!-- 조회수 나오게, 등록일 날짜 이쁘게-->
								 <span style="font-size: 9px; margin-left: 1%;">${item.regdate}  조회수: ${item.hit} </span>
								 <div style="float: right;">
								 	<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal"  style="background-color: #F7F9FA; border: 1px solid #efefef; "><b style="font-size: 13px; color: #0D6EFD;">답변하기</b></button>
								 	<!-- [시작] 등록 Modal -->
									<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="addModalLabel">답변 등록</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal"	aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<div class="mb-3">
														<label class="form-label">제목</label>
												 		<input type="text" class="name form-control" value="${item.title}" readonly>
												 	</div>
												 	<div class="mb-3">
														<label class="form-label">답변</label>
														<textarea class="content form-control"></textarea>
												 	</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"	data-bs-dismiss="modal">닫기</button>
													<button type="button" class="btn btn-primary  add">등록</button>
												</div>
											</div>
										</div>
									</div>
									<!-- [끝] 등록 Modal -->
								 
								 </div>
							</td>
						</tr>
					</c:forEach>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="5">등록된 지식인이 없습니다</td>
						</tr>
					</c:if>
				</table>
				<button style="width: 100%; background-color: #F7F9FA; border: 1px solid #efefef;" class="btn btn-link">더보기</button>
			</div>
			
			<div>
				<div style="border-bottom: 1px solid gray; border-radius: 2px; width: 100%;"><b>뉴스</b></div>
				<c:forEach items="${news.items }" var="item">
					<div><a style="color: #0C43BE; font-size: 24px;" target="_blank" href="${item.getLink() }">${item.getTitle()}</a></div>
					<div>${item.getDescription() }</div>
				</c:forEach>
				<button style="width: 100%; background-color: #F7F9FA; border: 1px solid #efefef;" class="btn btn-link">더보기</button>
			</div>	
			
			<div>
				<div style="border-bottom: 1px solid gray; border-radius: 2px; width: 100%;"><b>백과사전</b></div>
				<c:forEach items="${encyc.items }" var="item">
					<div><h3>${item.getTitle()}</h3></div>
					<div><a style="color: #0C43BE;" target="_blank" target="_blank" href="${item.getLink() }">${item.getDescription() }</a></div>
					<div><img src="${item.getThumbnail() }"></div>
				</c:forEach>
				<button style="width: 100%; background-color: #F7F9FA; border: 1px solid #efefef;" class="btn btn-link">더보기</button>
			</div>	
			
			<div>
				<div style="border-bottom: 1px solid gray; border-radius: 2px; width: 100%;"><b>이미지</b></div>
				<div style="display: flex;">
					<c:forEach items="${imgs.items }" var="item">
					 	<a target="_blank" href="${item.getLink() }"><img src="${item.getThumbnail() }"></a>
					</c:forEach>
				 </div>
				<button style="width: 100%; background-color: #F7F9FA; border: 1px solid #efefef;" class="btn btn-link">더보기</button>
			</div>	
		</div>
		<div style="width: 100%;" id="sideDiv">
			<div style="width: 30%; margin: 15%; border : 1px solid #efefef; border-radius: 8px;">
				<ul class="coronaUl">
					<li style="font-weight: bold;" class="coronaLi"><a href="">연관 검색어</a></li>
					<li>
						<div style="display: flex;">
							<div id="relaKey"><a href="" >ㅇㅇ</a></div><div id="relaKey"><a href="">ㅋㅋ</a></div><div id="relaKey"><a href="">ㅎㅎ</a></div><div id="relaKey"><a href="">^^</a></div>
						</div>
					</li>
				</ul>
			</div>
			<div style="width: 30%; margin: 15%; border : 1px solid #efefef; border-radius: 8px;">
				<ul class="coronaUl">
					<li style="font-weight: bold;" class="coronaLi"><a href="">많이 본 지식백과</a></li>
					<li class="coronaLi"><a href="">팍스로비드</a></li>
					<li class="coronaLi"><a href="">MZ세대</a></li>
					<li class="coronaLi"><a href="">코로나바이러스감염증-19</a></li>
					<li class="coronaLi"><a href="">폐렴</a></li>
					<li class="coronaLi"><a href="">공황장애</a></li>
				</ul>
			</div>
			<div style="width: 30%; margin: 15%; border : 1px solid #efefef; border-radius: 8px;">
				<ul class="coronaUl">
					<li style="font-weight: bold;" class="coronaLi"><a href="">코로나19</a></li>
					<li class="coronaLi"><a href="">선별 진료소</a></li>
					<li class="coronaLi"><a href="">코로나19 팩트체크</a></li>
					<li class="coronaLi"><a href="">우리동네 백신알림</a></li>
					<li class="coronaLi"><a href="">코로나19 병상가동률</a></li>
				</ul>
			</div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>