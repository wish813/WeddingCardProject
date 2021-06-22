<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>템플릿 보기</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	height: 100%;
}

#content {
	width: 1500px;
	height: 100%;
	margin: auto;
}

#head {
	display: flex;
	align-items: center;
}

#cnt_logo {
	text-align: center;
	color: black;
	font-weight: bold;
	font-size: 43px;
	width: 20%;
}

#head input:hover {
	background-color: lightgray;
	opacity: 0.5;
}

#searchbar {
	height: 100px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

#temple {
	text-align: center;
	margin-top: 50px;
}

table {
	border-collapse: collapse;
	text-align: center;
	width: 1000px;
	margin: auto;
}

#searchbar #img {
	margin-left: 20px;
	height: 35px;
	width: 50px;
	height: 35px;
}

#searchbar #search {
	margin-left: 20px;
	height: 35px;
	width: 500px;
}

#searchbar #sort {
	height: 35px;
}

#temple td {
	font-size: 25px;
	padding: 2px 8px 3px auto;
}

#temple p {
	padding: 0;
	margin: 0;
}

#temple img {
	width: 180px;
	height: 130px;
}

#temple a {
	padding: 10px;
	text-decoration: none;
}

#temple>a:hover, #temple>a:active {
	text-decoration: none;
	color: black;
}

/* 페이징 */
#paging {
	margin: 45px auto;
	font-size: 30px;
	display: flex;
	width: 100%;
}

#paging #page {
	display: flex;
	margin: auto;
}

#page>a {
	margin-left: 8px;
}

#paging>img {
	text-decoration: none;
}

#paging>input {
	position: absolute;
	height: 45px;
	right: 23%;
}
</style>
<script type="text/javascript">
	function write_go() {
		location.href = "content_add.jsp";
	}
</script>
</head>
<body>
	<div id="content">
		<div id="head">
			<h1 id="cnt_logo">템플릿 선택</h1>
		</div>
		<form method="post" action="#">
			<div id="searchbar">
				<select id="sort">
					<option value="init">이름별</option>
					<option value="color">색상별</option>
				</select> <input id="search" type="search" name="input"
					placeholder="검색할 내용을 입력해주세요"> <input id="img" type="image"
					src="../images/search.png" alt="검색">
			</div>
			<div id="temple">
				<table>
					<tbody>
						<tr>
							<td><a href="#"> <img alt="삼성"
									src="../images/sam.png">
									<p>삼성</p>
							</a></td>
							<td><a href="#"><img alt="삼성"
									src="../images/sam.png">
									<p>템플릿2</p></a></td>
							<td><a href="#"><img alt="삼성"
									src="../images/sam.png">
									<p>템플릿3</p></a></td>
							<td><a href="#"><img alt="삼성"
									src="../images/sam.png">
									<p>템플릿4</p></a></td>
						</tr>
						<tr>
							<td><a href="#"> <img alt="op.gg"
									src="../images/opgg.jpg">
									<p>op.gg</p>
							</a></td>
							<td><a href="#">
									<p>템플릿6</p>
							</a></td>
							<td><a href="#">
									<p>템플릿7</p>
							</a></td>
							<td><a href="#">
									<p>템플릿8</p>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div id="paging">
			<div id="page">
				<c:choose>
					<c:when test="false">
						<a class="btn"><img alt="왼쪽" src="../images/left.png"
							width="40px"></a>
					</c:when>
					<c:otherwise>
						<a class="btn" href="#"><img alt="왼쪽" src="../images/left.png"
							width="40px"></a>
					</c:otherwise>
				</c:choose>
				<c:forEach begin="1" end="3" step="1" var="k">
					<c:choose>
						<c:when test="false">
							<a>${k}</a>
						</c:when>
						<c:otherwise>
							<a href="#">${k}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 다음 블록 -->
				<c:choose>
					<c:when test="false">
						<a class="btn"><img alt="오른쪽" src="../images/right.png"
							width="40px"></a>
					</c:when>
					<c:otherwise>
						<a class="btn" href="#""><img alt="오른쪽"
							src="../images/right.png" width="40px"></a>
					</c:otherwise>
				</c:choose>
			</div>
			<input
				style="height: 40px; width: 150px; font-size: 22px; background-color: wheat"
				type="button" value="템플릿 추가" onclick="write_go()">
		</div>
	</div>
</body>
</html>