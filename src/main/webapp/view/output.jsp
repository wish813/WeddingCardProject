<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
body {
	background-color: lavenderblush;
}

header {
	width: 80%;
	margin: auto;
}

main {
	background-color: #F7CAC9;
	width: 60%;
	margin: auto;
}

#go_index {
	text-decoration: none;
	color: black;
	font-size: 2em;
}

#sidebar {
	float: right;
	text-decoration: none;
}

.menu {
	font-size: 3em;
	text-align: left;
	padding-left: 5%;
}

.celer {
	text-align: left;
}

.main_img {
	width: 80%;
	margin: auto;
}

#come_box {
	width: 90%;
	margin: auto;
}

<%--갤러리--%>
wedding_imgs{
	width: 30%;
	border-radius:50%;
	float: left;
	margin:2.5%;
	 
}
#map {
	margin-left: 3%; width : 60%;
	height: 300px;
	clear: both;
	width: 60%;
}

#addr {
	text-align: left;
	margin-right: 3%;
}

#host {
	font-size: 5em;
	text-align: center;
}

#guest {
	width: 80%;
	margin: auto;
}

p {
	text-align: center;
	font-weight: bold;
	color: white;
}

pre {
	text-align: center;
	font-weight: bold;
	color: white;
}

input {
	position: absolute;
	left: 40%;
}

textarea {
	position: absolute;
	left: 40%;
	width: 25%;
}

/* 방명록 */
#bbs table {
	width: 80%;
	margin: 20px auto;
	background-color: white;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
	border-collapse: collapse;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th, #bbs table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

#no {
	width: 15%;
}

#subject {
	width: 30%;
}

#writer {
	width: 20%;
}

#date {
	width: 20%;
	
}

#del {
	width: 15%;
}

#board th{
	background-color: #92A8D1;
}

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

#now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}

#add_box {
	width: 30%;
	float: right;
	style ="text-align: left;
	right: 3%;
}
</style>

</head>

<body>
	<header>
		<h2>
			<a href="index.html" id="go_index"><</a> <a style="font-size: 2em">
				${pvo.host} 철수♡영미</a>
		</h2>

		<ol id="sidebar">
			<li><a href="#host"> 인삿말 </a></li>
			<li><a href="#wedding"> 갤러리 </a></li>
			<li><a href="#come"> 오시는 길 </a></li>
			<li><a href="#bbs"> 방명록 </a></li>
		</ol>
	</header>
	<main>

		<p class="main_img">
			<img class="main_img" alt="main_img" src="../img/main_img.png">
		</p>
		<p id="host">${pvo.host}철수♡영미</p>
		<br>
		<pre>${pvo.context}
////////////////////////////////

가을과 겨울 사이




오랜 기다림 속에서 저희 두사람,
마음 되어 참된 사랑의 결실을 맺게 되었습니다.
부디 참석하시어
저희의 새로운 출발을 지켜봐 주시기 바랍니다.
늘 처음의 마음처럼 행복하게 살겠습니다.
.
.
.

</pre>
		<p>
			<img alt="wedd_imgs" id="wedding" src="../img/wedd_imgs.jpeg">

<!-- 			<img alt="wedd_imgs" class="wedding_imgs" src="../img/wedd_imgs.jpeg">
			<img alt="wedd_imgs" id="wedding_imgs" src="../img/wedd_img1.jpeg">
			<img alt="wedd_imgs" id="wedding_imgs" src="../img/wedd_img2.jpeg">
			<img alt="wedd_imgs" id="wedding_imgs" src="../img/wedd_img3.jpeg">
			<img alt="wedd_imgs" id="wedding_imgs" src="../img/wedd_img4.jpeg">
			<img alt="wedd_imgs" id="wedding_imgs" src="../img/wedd_img5.jpeg">
 -->			
			
		</p>
		<p class="menu" id="come">오시는 길</p>

		<div class="come_box">
			<div id="map" style="float: left;">
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bcbb97531478c6df1d294dfe878c6f93&libraries=services"></script>
				var places = new kakao.maps.services.Places(); var callback =
				function(result, status) { if (status ===
				kakao.maps.services.Status.OK) { console.log(result); } };

				</script>
				<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다 <%-- DB에 저장된 주소를 받아와서 사용하자. --%>
geocoder.addressSearch('서울 마포구 월드컵북로 31 ', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">식장위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
}); 
	</script>

			</div>




			<div id="add_box">
				<p id="addr">

					<%--변수명으로 바꿔주기 ${pvo.addr} --%>

					아만티호텔웨딩 서울 마포구 월드컵북로 31<br> (우)04001<br> 지번서교동 447-1<br>
					www.hotelamanti.com<br> 대표번호 02-332-0158 <br>
				</p>
			</div>
		</div>
		<p class="menu" style="clear: both;">방명록</p>
		<form id="guest">
			<fieldset>
				<p class="celer">
					이름 <input type="text" name="name">
				</p>
				<p class="celer">
					비밀번호 <input type="password" name="pwd">
				</p>
				<p class="celer">
					축하인사
					<textarea></textarea>
				</p>
			</fieldset>

			<div id="bbs" align="center">
				<table id="board" summary="게시판 목록">
					<caption>방명록</caption>
					<thead>
						<tr class="title">
							<th id="no">번호</th>
							<th id="subject">제목</th>
							<th id="writer">글쓴이</th>
							<th id="date">날짜</th>
							<th id="del">삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="5"><h2>아직 게시글이 없습니다</h2></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td>${pvo.totalRecord-((pvo.nowPage-1)*pvo.numPerPage+vs.index)}</td>
										<td><a
											href="/MyController?cmd=onelist&b_idx=${k.b_idx}&cPage=${pvo.nowPage}">${k.subject }</a></td>
										<td>${k.writer }</td>
										<td>${k.write_date.substring(0,10) }</td>
										<td><button onclick="delete_go()">삭제</button></td>
									</tr>
								</c:forEach>

							</c:otherwise>
						</c:choose>
					</tbody>

					<!-- 페이지기법 -->
					<tfoot>
						<tr>
							<td colspan="5" style="margin: auto;">
								<ol class="paging">
									<!-- 이전 -->
									<c:choose>
										<c:when test="${pvo.beginBlock <= pvo.pagePerBlock}">
											<li class="disable">이전으로</li>
										</c:when>
										<c:otherwise>
											<li><a
												href="/MyController?cmd=list&cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a></li>
										</c:otherwise>
									</c:choose>
									<!-- 블록안에 들어간 페이지번호들 -->
									<c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }"
										step="1" var="k">
										<!-- 현재 페이지와 현재 페이지가 아닌 것을 구분 -->
										<c:choose>
											<c:when test="${k==pvo.nowPage}">
												<li id="now">${k}</li>
											</c:when>
											<c:otherwise>
												<li><a href="/MyController?cmd=list&cPage=${k}">${k}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 다음 -->
									<c:choose>
										<c:when test="${pvo.endBlock >= pvo.totalPage}">
											<li class="disable">다음으로</li>
										</c:when>
										<c:otherwise>
											<li><a
												href="/MyController?cmd=list&cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a></li>
										</c:otherwise>
									</c:choose>
								</ol>
							</td>

						</tr>
					</tfoot>
				</table>
			</div>
			<button onclick="#" style="padding: 10px; margin: 10px;">SNS공유하기</button>

		</form>
	</main>
</body>
</html>
