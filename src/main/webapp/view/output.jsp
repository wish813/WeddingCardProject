<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">


header {
	width: 80%;
	margin: auto;
}
main{
	background-color: #F7CAC9;
	width: 60%;
	margin: auto;
	
}
.sidebar {
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

.come {
	width: 90%;
	margin: auto;
}

#map {
	width: 400px;
	height: 300px;
	clear: both;
}

.address {
	text-align: left;
}

#host {
	font-size: 5em;
	text-align: center;
}

.guest {
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
	margin: 0 auto;
	margin-top: 20px;
	background-color: white;
	border: 1px solid black; border-collapse : collapse;
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

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}

.title {
	background: lightsteelblue
}

.odd {
	background: silver
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

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
.add_box{
	width: 40%;
	float: right;
}
</style>

</head>

<body>
	<header>
		<h2>
			<a style="font-size: 2em">철수♡영미</a>
		</h2>

		<ol class="sidebar">
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
	<p id="host">철수♡영미</p>
	<br>
	<pre>
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
	</p>
	<p class="menu" id ="come">오시는 길</p>

	<div class="come">
		<!-- * 카카오맵 - 지도퍼가기 -->
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1623926482443"
			class="root_daum_roughmap root_daum_roughmap_landing"
			style="margin: left; width : 60% ; float: left;"></div>

		<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
		<script charset="UTF-8" class="daum_roughmap_loader_script"
			src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1623926482443",
				"key" : "269ww"
			}).render();
		</script>
		<div class="add_box">
		<p style="text-align: left; margin-left: 15px;">
아만티호텔웨딩
서울 마포구 월드컵북로 31 (우)04001
지번서교동 447-1
www.hotelamanti.com
대표번호 02-332-0158 
		</p>
		</div>
	</div>
	<p class="menu" style="clear: both;">방명록</p>
	<form class="guest">
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
			<table summary="게시판 목록">
				<caption>방명록</caption>
				<thead>
					<tr class="title" >
						<th class="no" style="background-color: #92A8D1;">번호</th>
						<th class="subject" style="background-color: #92A8D1;">제목</th>
						<th class="writer" style="background-color: #92A8D1;">글쓴이</th>
						<th class="reg" style="background-color: #92A8D1;">날짜</th>
						<th class="hit" style="background-color: #92A8D1;">삭제</th>
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
										href="${pageContext.request.contextPath}/MyController?cmd=onelist&b_idx=${k.b_idx}&cPage=${pvo.nowPage}">${k.subject }</a></td>
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
											href="${pageContext.request.contextPath}/MyController?cmd=list&cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a></li>
									</c:otherwise>
								</c:choose>
								<!-- 블록안에 들어간 페이지번호들 -->
								<c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }"
									step="1" var="k">
									<!-- 현재 페이지와 현재 페이지가 아닌 것을 구분 -->
									<c:choose>
										<c:when test="${k==pvo.nowPage}">
											<li class="now">${k}</li>
										</c:when>
										<c:otherwise>
											<li><a
												href="${pageContext.request.contextPath}/MyController?cmd=list&cPage=${k}">${k}</a></li>
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
											href="${pageContext.request.contextPath}/MyController?cmd=list&cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a></li>
									</c:otherwise>
								</c:choose>
							</ol>
						</td>

					</tr>
				</tfoot>
			</table>
		</div>
		<button onclick="" style="padding: 10px; margin: 10px;">SNS공유하기</button>
		
	</form>
	</main>
</body>
</html>
