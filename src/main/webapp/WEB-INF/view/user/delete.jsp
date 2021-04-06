<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
<title>더조은 캠핑/회원탈퇴</title>
<%@ include file='./../include/lib.jsp'%>

<script>
$(() => {
	$('form').validate({
		rules: {
			password: {
				required: true
			}
		},
		messages: {
			password: {
				required: '비밀번호를 입력해 주세요.'
			}
		},
		submitHandler: () => $('form').submit()
	});
});

$('#delBtn').click(() => {
	$('#delModal').modal();
});

$('#delModalBtn').click(() => {
	$('#delModal').modal('hide');
	$('#delModal2').modal();
});

$('#delBtnOk').click(() => {
	$('#delModal2').modal('hide');
});
</script>
<style>
#content {
	margin-top:30px;
	width:850px;
	height:500px;
}

table {
	width:550px;
	height:60px;
}

th {
	border:1px solid;
	width:100px;
	height:40px;
	text-align:center;
	background-color:grey;
}

td {
	border:1px solid;
	height:40px;
}	

.rect2{
  top:30px;
  left:170px;
  position:relative;
  width:80px;
  border:1px solid;
}

label.error{
	margin-left:1rem;
	color:red;
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
	<%@ include file='./../include/header.jsp'%>
	<%@ include file='./../include/gnb.jsp'%>

	<div class='row' id='content' style='height:500px;'>
		<div class='col-3' id='menubar'>
			<p style=	'height:30px; margin-bottom:10px; text-align:center;' id='menuHead'>
				<span style='margin-top:3px;'>마이페이지</span></p>               
			<ul>
				<li><a href='modify1' style='color:black;'>회원정보 수정</a></li>
				<li><a href='../reservation/checkRes' style='color:black;'>예약현황</a></li>
				<li><a href='../review/listPosts' style='color:black;'>나의 게시글</a></li>
				<li><a href='delete' style='color:black;'><b><u>회원탈퇴</u></b></a></li>
			</ul>                     
		</div>
		<div class='col-8'>
			<strong>&nbsp;|&nbsp;마이페이지</strong>
			<hr style='width:500px; margin-top:10px;'><br>
			<u><h4 class='text-center'>회원탈퇴</h4></u><br><br>		
			<div class='row'>
				<div class='col'>	
					<form>				
						<table>
							<tbody>
								<tr>
									<th>비밀번호</th>
									<td>&nbsp;<input type='password' name='password' maxlength="12" required/></td>
								</tr>
							</tbody>
						</table>
							<button type='button'  class='btn btn rect2' onclick='location.href="../reservation/checkRes"'>취소</button>
							<button type='submit' id='delBtn' class='btn btn rect2' data-toggle='modal'
								data-target='#deleteModal'>확인</button>		
					</form>				
					</div>
				</div>
			</div>
		</div>							
	
	<%@ include file='./../include/footer.jsp'%>
</div>

<div id='delModal2' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p class='text-center'>회원탈퇴가 완료되었습니다.</p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' id='delBtnOk'>확인</button>
			</div>
		</div>
	</div>
</div>      

<div id='deleteModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog madal-sm'>
		<div class='modal-content'>				
			<div class='modal-body'>
				<p style='margin-top:20px;'>정말 탈퇴하시겠습니까?</p>
				<br>
				<button type='button' class='btn' data-dismiss='modal'
					style='background-color:white; color:black; border:1px solid black;'>취소</button>
				<button type='button' class='btn' data-toggle='modal' data-dismiss='modal'
					data-target='#deleteConfirmModal' style='background-color:#323232; color:white;'>확인</button>
			</div>				
		</div>
	</div>
</div>

<div id='deleteConfirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>회원탈퇴가 완료되었습니다.</p>
				<br>
				<a type='button' class='btn' style='background-color:#323232; color:white;'
					href='./../'>확인</a>
			</div>
		</div>
	</div>
</div>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog modal-sm'>
		<div class='modal-content'>
			<div class='modal-body'>
				<p style='margin-top:20px;'>인증번호가 발송되었습니다.</p>
				<br>
				<button type='button' class='btn' data-dismiss='modal'
					style='background-color:#323232; color:white;'>확인</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>