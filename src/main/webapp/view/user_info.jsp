<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보 관리</title>
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
	width: 100%;
	color: black;
	font-weight: bold;
	font-size: 40px;
	width: 20%;
}

#searchbar {
	height: 100px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

table {
	border-collapse: collapse;
	text-align: center;
	width: 1000px;
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

table, tr, td {
	padding: 5px;
	margin: auto;
	font-size: 20px;
	border: 1px solid black;
}

tr {
	font-size: 20px;
	line-height: 2.5;
}

#temple>a:hover, #temple>a:active {
	text-decoration: none;
	color: black;
}

/* 페이징 */
#paging {
	margin: 45px auto;
	font-size: 30px;
	width: 1000px;
}

#paging #page{
	display: flex;
	margin: auto;
}

#page > a{
	margin-left: 8px;
}

#paging > img {
	text-decoration: none;
}

</style>
<script type="text/javascript">
	function delete_go() {
		location.href = "";
	}
</script>
</head>
<body>
	<div id="content">
		<div id="head">
			<h1 id="cnt_logo">회원정보관리</h1>
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
			<div id="user">
				<div>
					<form method="post">
						<table>
							<thead style="background-color: #fafafa">
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
							</thead>
							<tbody>
								<%-- 
								<c:choose>
									<c:when test="${empty list}">
										<tr>
											<td colspan="4"><h2>정보가 존재하지 않습니다.</h2></td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="k" items="${list}">
											<tr>
												<td><input type="checkbox"></td>
												<td>${k.name }</td>
												<td><a href="/MyController?cmd=onelist&idx=${k.idx}">${k.title}</a></td>
												<td>${k.reg.substring(0,10)}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose> 
								--%>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
								<tr>
									<th style="width: 15%"><input type="checkbox">전체선택</th>
									<th style="width: 20%">이름</th>
									<th style="width: 55%">아이디</th>
									<th style="width: 10%">권한</th>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</form>
		<div id="paging">
			<div id="page">
			<c:choose>
				<c:when test="false">
					<a><img alt="왼쪽" src="../images/left.png"
						width="40px"></a>
				</c:when>
				<c:otherwise>
					<a href="#"><img alt="왼쪽" src="../images/left.png"
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
					<a><img alt="오른쪽" src="../images/right.png"
						width="40px"></a>
				</c:when>
				<c:otherwise>
					<a href="#""><img alt="오른쪽"
						src="../images/right.png" width="40px"></a>
				</c:otherwise>
			</c:choose>
			</div>
			<input type="button" value="삭제하기" onclick="delete_go()"
				style="height: 41px; width: 80px; background-color: wheat;">
		</div>
	</div>
</body>
</html>