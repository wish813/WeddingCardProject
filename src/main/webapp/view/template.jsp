<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>템플릿 보기</title>
<style type="text/css">
@import
	"//netdna.bootstrapcdn.com/font-awesome/3.0/css/font-awesome.css";

body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	height: 100%;
	text-decoration: none;
}

#content {
	width: 1500px;
	height: 100%;
	margin: auto;
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

#search::-webkit-input-placeholder {
	font-family: FontAwesome;
	font-weight: normal;
	overflow: visible;
	vertical-align: top;
	display: inline-block !important;
	padding-left: 5px;
	padding-top: 2px;
	color: hsl(9, 40%, 60%);
}

#searchbar #img {
	margin-left: 20px;
	height: 35px;
	width: 50px;
}

#searchbar #search {
	margin-left: 20px;
	height: 35px;
	width: 500px;
	border-radius: 7px;
	font-family: 'fontAwesome';
}

#searchbar #sort {
	height: 35px;
}


#temple table {
	border-collapse: collapse;
	text-align: center;
	width: 1000px;
	margin: auto;
}

#temple {
	text-align: center;
	margin-top: 50px;
}

#temple td {
	font-size: 25px;
	padding: 2px 8px 3px auto;
}

#temple img {
	width: 180px;
	height: 130px;
}

#temple a {
	padding: 10px;
	text-decoration: none;
}

#temple a:hover, a:active, a:visited {
	text-decoration: none;
	color: black;
}

/* 페이징 */
#paging {
	margin: 30px auto;
	font-size: 30px;
	width: 1000px;
	text-align: center;
}

#paging button {
	height: 45px;
}

</style>
<script type="text/javascript">
	function write_go() {
		location.href = "template_add.jsp";
	}

	function search_go(f) {
		f.action = "#";
		f.submit();
	}
</script>
</head>
<body>
	<div id="content">
		<div id="head">
			<h1 id="cnt_logo">템플릿 선택</h1>
		</div>
		<div id="searchbar">
			<select id="sort">
				<option value="init">이름별</option>
				<option value="color">색상별</option>
			</select> <input id="search" type="search" name="input" placeholder="&#61442;">
			<input id="img" type="image" src="../img/search.png" alt="검색"
				onclick="search_go(this.form)">
		</div>
		<div id="temple">
			<div>
				<form method="post">
					<table>
						<tbody>
							<tr>
								<td><a href="#"> <img alt="삼성" src="../img/sam.png">
										<p>삼성</p>
								</a></td>
								<td><a href="#"><img alt="삼성" src="../img/sam.png">
										<p>템플릿2</p></a></td>
								<td><a href="#"><img alt="삼성" src="../img/sam.png">
										<p>템플릿3</p></a></td>
								<td><a href="#"><img alt="삼성" src="../img/sam.png">
										<p>템플릿4</p></a></td>
							</tr>
							<tr>
								<td><a href="#"> <img alt="op.gg"
										src="../img/opgg.jpg">
										<p>op.gg</p>
								</a></td>
								<td><a href="#"> <img alt="템플릿"
										src="upload/${bvo.file_name}">
										<p>${bvo.file_name}</p>
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
				</form>
			</div>
		</div>
		<div id="paging">
			<div id="page">
				<c:choose>
					<c:when test="false">
						<a><img alt="왼쪽" src="../img/left.png" width="40px"></a>
					</c:when>
					<c:otherwise>
						<a href="#"><img alt="왼쪽" src="../img/left.png" width="40px"></a>
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
						<a><img alt="오른쪽" src="../img/right.png" width="40px"></a>
					</c:when>
					<c:otherwise>
						<a href="#""><img alt="오른쪽" src="../img/right.png"
							width="40px"></a>
					</c:otherwise>
				</c:choose>
			</div>
			<button onclick="delete_go()"
				style="height: 45px; width: 90px; float: right; background-color: #F5FFFA;">템플릿 추가</button>
		</div>
	</div>
</body>
</html>