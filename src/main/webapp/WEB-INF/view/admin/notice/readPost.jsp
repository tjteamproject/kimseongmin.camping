<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 관리자/공지사항</title>
<%@ include file='./../../include/lib.jsp'%>

<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}
	
th, td {
	text-align: center;
}

#title {
	text-align: left;
}

#contentview {
	text-align: left;
	width:850px;
	height:300px;
}

.btn {
	border: 1px solid black;
}

table {
    border: 1px solid;
    font-size: 12px;
}

#deleteModal {
	text-align:center;
	margin-top:300px;
}

#deleteConfirmModal {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../../include/header.jsp'%>
	
	<br>
	<div class='row' id='content' style='height:600px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>커뮤니티</span></p>               
			<ul>
				<li><a href='listPosts' style='color:black;'><b><u>공지사항</u></b></a></li>
				<li><a href='./../review/listPosts' style='color:black;'>캠핑장 리뷰</a></li>
				<li><a href='./../inquiry/listPosts' style='color:black;'>문의하기</a></li>
			</ul>                     
		</div>
		<div class='col-9'>
			<h4><strong>&nbsp;|&nbsp;공지사항</strong></h4>
			<div class='row'>
				<div class='col'>
					<table class='table' style='margin-top:10px;'>
						<thead>
							<tr>
								<th>번호</th>
								<th style='width:170px;'>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>10</td><td id='title' class='text-center'>공지사항</td><td>abc10</td>
								<td>2021-10-01</td><td>35</td>
							</tr>
						</tbody>
					</table>
					<table>
						<tr>
							<td id='contentview'><br>더조은 캠핑장을 이용해주셔서 감사합니다<br></td>
						</tr>
					</table>
					<div class='row' align ='right'>
						<div class='col'>
							<a href='listPosts' class='btn btn-default btn-md' style='margin-top:10px;'  
							id='listBtn'>목록</a>
							<button class='btn btn-default btn-md' style='margin-top:10px;'  
							id='deleteBtn' data-toggle='modal' data-target='#deleteConfirmModal'>삭제</button>
							<button class='btn btn-default btn-md' style='margin-top:10px;'  
							id='fixBtn' onclick='location.href="writePost"'>수정</button>
							<button class='btn btn-default btn-md' style='margin-top:10px;'  
							id='deleteBtn' onclick='location.href="writePost"'>글쓰기</button>
						</div>
					</div>
					
					<div id='deleteConfirmModal' class='modal fade' tabindex='-1'>
						<div class='modal-dialog modal-sm'>
							<div class='modal-content'>
								<div class='modal-body'>
									<p style='margin-top:20px;'>글을 삭제하시겠습니까?</p>
									<br>
									<button type='button' class='btn' data-dismiss='modal' style='background-color:light; 
										border:0.1em solid gray; color:black;'>취소</button>
									<button type='button' class='btn' data-dismiss='modal'
										data-toggle='modal' data-target='#deleteModal'
										style='background-color:#323232; color:white;'>확인</button>
								</div>
							</div>
						</div>
					</div>
						
					<div id='deleteModal' class='modal fade' tabindex='-1'>
						<div class='modal-dialog modal-sm'>
							<div class='modal-content'>
								<div class='modal-body'>
									<p style='margin-top:20px;'>글이 삭제되었습니다.</p>
									<br>										
									<button  onclick='location.href="listPosts"' type='button' class='btn' data-dismiss='modal'
										style='background-color:#323232; color:white;'>확인</button>
								</div>
							</div>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>