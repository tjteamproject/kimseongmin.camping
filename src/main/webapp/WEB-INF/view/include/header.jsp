<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<c:choose>
	<c:when test='${not empty admin}'>
		<div class='row' id='head1' style='margin-bottom:25px;'>
			<div class='col-4'></div>
			<div class='col-3' id='logo' onclick='location.href="<%= request.getContextPath() %>/admin";'>
				<p style='font-size:25px; margin-top:25px;'>로고 이미지</p>
			</div>
			<div class='col'></div>
			<div class='col-4' style='margin-top:100px;'>
				<a href='#' class='btn btn-default btn-md' style='margin-left:10px;'  
					id='userJoinBtn'>로고변경</a>
				<a href='<%= request.getContextPath() %>/user/logout' class='btn btn-default btn-md' id='loginBtn'>로그아웃</a>
			</div>
		</div>
		
		<div class='row' id='gnb'>
			<div class='col'>
				<ul class='nav nav-tabs nav-justified'>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin' id='gnbBtn'>회원관리</a>
					</li>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin/reservation' id='gnbBtn'>예약관리</a>
					</li>
					<li class='nav-item'>
						<a class='nav-link btn btn-secondary' href='<%= request.getContextPath() %>/admin/notice/listPosts' id='gnbBtn'>게시판 관리</a>
					</li>
				</ul>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<script>
		$(function() {
			navigator.geolocation.getCurrentPosition(function(position) {
				const apikey = '86191a4b30f177b3bd4655f1b6fbec72';
				const latitude = position.coords.latitude;
				const longitude = position.coords.longitude;
				const weatherDesc = {
						w01d:'맑음',
						w02d:'구름 조금',
						w03d:'구름',
						w04d:'흐림',
						w09d:'소나기',
						w10d:'비',
						w11d:'천둥',
						w13d:'눈',
						w50d:'안개',
					};
				var url = 'https://api.openweathermap.org/data/2.5/weather?lat='
						+ latitude
						+ '&lon='+longitude
						+ '&appid='+apikey+'&units=metric';
				
				$.ajax({
				    url: url, // 클라이언트가 요청을 보낼 서버의 URL 주소
				    type: "GET",
				    dataType: "json"
				}).done(function(json) {
					//console.log(json);
					json.main.temp; //현재기온
					json.main.temp_min; //최저기온
					json.main.temp_max; //최고기온
					json.weather[0].Main;
					
					var iconUrl = 'http://openweathermap.org/img/w/' + json.weather[0].icon + '.png';
					var wText = weatherDesc['w' + json.weather[0].icon];
					
					//날씨 이미지
					$('#weather').css('background-image', 'url(' + iconUrl + ')');
					
					//현재기온
					$('#weather1').text(Math.round(json.main.temp)+'℃ ' + wText);
					
					var wText2 = '<span class="min">' + json.main.temp_min + '˚</span><span>/</span><span class="max">' + json.main.temp_max
								+ '˚</span>&nbsp;<span>풍속 ' + json.wind.speed + 'm/s</span>';
					
					$('#explain').html(wText2);
					
					$('#location').text(json.name);
				})
			}, function() {
				console.log('error');
			});
		});
		</script>
		
		<div class='row' id='head1'>
			<div class='col-4'></div>
			<div class='col-3' id='logo' onclick='location.href="<%= request.getContextPath() %>/";'>
				<p style='font-size:25px; margin-top:25px;'>로고 이미지</p>
			</div>
			<div class='col-5'  id='logoRight'>
				<div class='row'>
					<div class='col-3'>
						<p id='weather' style='float:left; margin-left:50px;
							font-size:10px; text-align:center; background-size:contain;'></p><br>
					</div>
					
					<div class='col-9'>
						<div class='row'>
							<p id='location' style='font-size:20px; margin-left:65px; font-weight:bold'>로딩중..</p>
						</div>
						<div class='row'>
							<p id='weather1' style='font-size:20px; margin-left:65px; font-weight:bold'>로딩중..</p>
						</div>
						<div class='row'>
							<p id='explain' style='float:left; margin-left:65px; font-size:14px; text-align:center;'>로딩중..</p>
						</div>
					</div>
					<!-- 
					<div class='col-5'>
						<p id='explain' style='float:left; margin-left:60px;
							font-size:14px; text-align:center;'>미세먼지</p>
					</div>
					<div class='col-4'>
						<p id='explain' style='float:left; font-size:14px;'>방문자 수</p>
					</div>
				</div>
				<div class='row'>
					<div class='col-2'>
						<p id='weather1' style='font-size:15px; margin-left:65px;'>26℃</p>
					</div>
					<div class='col-6'>
						<p style='margin-left:75px; font-size:12px;'>
							서울<span>&#124;</span>80<span>&#124;</span>나쁨</p>
					</div>
					<div class='col-4'>
						<p>12,285명</p>
					</div>
					 -->
				</div>
			</div>	
		</div>
		<div class='row' id='head2'>
			<div class='col-8'></div>
			<div class='col-4' id='logoRightBottom'>
				<c:choose>
					<c:when test='${not empty login}'>
						<a href='<%= request.getContextPath() %>/reservation/checkRes'
							class='btn btn-default btn-md' id='myPageBtn'>마이페이지</a>
						<a href='<%= request.getContextPath() %>/user/logout'
							class='btn btn-default btn-md' id='logoutBtn'>로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href='<%= request.getContextPath() %>/user/join'
							class='btn btn-default btn-md' id='userJoinBtn'>회원가입</a>
						<a href='<%= request.getContextPath() %>/user/login'
							class='btn btn-default btn-md' id='loginBtn'>로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</c:otherwise>
</c:choose>
