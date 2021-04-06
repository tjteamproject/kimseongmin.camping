<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/문의하기</title>
<%@ include file='./../include/lib.jsp'%>

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
}

#coment {
	width:300px;
}

#form-commentInfo {
	width: 100%;
}

#commnet-count {
	margin-bottom: 10px;
}

#comment-input {
	width: 80%;
	height: 3.3em;
}

#submit {
	width: 5em;
	height: 3.3em;
	font-size: 15px;
	font-weight: bold;
	color: black;
}

table {
	font-size: 12px;
}

#confirmModal {
	text-align:center;
	margin-top:300px;
}

#confirmModal2 {
	text-align:center;
	margin-top:300px;
}
</style>
</head>
<body>
<div class='container'>
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:800px;'>
		<div class='col-3' id='menubar'>
			<p style='height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>커뮤니티</span></p>               
			<ul>
				<li><a href='../notice/listPosts' style='color:black;'>공지사항</a></li>
				<li><a href='../review/listPosts' style='color:black;'>캠핑장 리뷰</a></li>
				<li><a href='listPosts' style='color:black;'><b><u>문의하기</u></b></a></li>
			</ul>                     
		</div>
		<div class='col-9'>
			<h4><strong>&nbsp;|&nbsp;문의하기</strong></h4>
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
							<tr><td>10</td><td id='title' class='text-center'>문의</td><td>abc10</td>
								<td>2021-10-01</td><td>35</td></tr>
						</tbody>
					</table>
					<table>
						<tr>
							<td id='contentview'><br>예약날짜를 바꾸고싶은데<br>변경이 가능한가요?</td>
						</tr>
					</table>
					<div class='row'>
						<div class='col'>	
							<table class='table' >
								<thead>
									<tr>
										<th>전체댓글 1개</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>더조은캠핑</td><td>네~ 가능합니다.</td><td>2021-08-01</td><td></td>
									</tr>	
								</tbody>
							</table>
						</div>
					</div>		
					<div class='row' align ='right'>
						<div class='col'>
							<a href='listPosts' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='listBtn'>목록</a>
							<a href='#' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='deleteBtn' data-toggle='modal' data-target='#confirmModal'>삭제</a>
							<a href='writePost' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='fixBtn' data-toggle='modal' data-target='#confirmModal3'>수정</a>		
							<a href='writePost' class='btn btn-default btn-md' style='margin-top:10px;'  
								id='writingBtn'>글쓰기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file='./../include/footer.jsp'%>
</div>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>글을 삭제하시겠습니까?</p>
				<br>
				<button type='button' class='btn btn-default' data-dismiss='modal'
					style='color:black; border:0.1em solid gray'>취소</button>
				<button type='button' class='btn' data-dismiss='modal' id='completeBtn'
					data-toggle='modal' data-target='#confirmModal2' 
					style='background-color:#323232; color:white;'>확인</button>	
			</div>
		</div>
	</div>
</div>
	
<div id='confirmModal2' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>글이 삭제되었습니다.</p>
				<br>
				<button type='button' class='btn' data-dismiss='modal' id='completeBtn'
					data-toggle='modal' data-target='#confirmModal2' 
					style='background-color:#323232; color:white;' onclick='location.href="listPosts"'>확인</button>	
			</div>
		</div>
	</div>
</div>

</body>
</html>