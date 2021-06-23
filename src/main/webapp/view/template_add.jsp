<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>템플릿 추가</title>
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

#cnt_logo {
	text-align: center;
	color: black;
	font-weight: bold;
	font-size: 43px;
	width: 20%;
}

#body{
	display: flex;
	width: 100%;
}

#body #tmp_img{
	text-align: center;
	font-size: 20px;
	margin: auto 3% auto 25%;
}

#tmp_img > img{
	border: 0.5px solid black;
	border-radius: 20px;
	width: 270px;
	height: 350px;
}

#tmp_name{
	font-size: 18px;
	font-weight: bold;
	height: 400px;
	border: 1px solid black;
	border-radius: 20px;
	width: 400px;
	padding: 5px;
}

#tmp_name > input{
	width: 300px;
	height: 30px;
	margin-left: 5%;
}


#file{
	margin-top: 5%;
	border-top: 1px solid black;
}

#file > input{
	margin-left: 5%;
	margin-top: 7%;
}

#footer{
	margin-top: 5%;
	margin-bottom: 2%;
	float: right;
	margin-right: 20%;
}

#footer > input{
	width: 120px;
	height: 35px;
	font-size: 22px;
	text-align: center;
	background-color: wheat;
	margin-left: 15px;
}
</style>
<script type="text/javascript">
	function tmp_add(f) {
		f.action = "";
		f.submit();
	}

	function tmp_go(f) {
		f.action = "template.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div id="content">
		<form method="post" encType="multipart/form-data">
			<div id="head">
				<h1 id="cnt_logo">템플릿 추가</h1>
			</div>
			<div id="body">
				<div id="tmp_img">
					<img alt="이미지파일" src="../images/img_icon.png">
					<h3>템플릿 이름</h3>
				</div>
				<div id="tmp_name">
					<p style="margin-left: 5%;">템플릿명</p>
					<input type="text" name="템플릿명" value="" placeholder="템플릿 이름을 입력하세요">
					<div id="file">
						<input type="file" name="file_name">
					</div>
				</div>
			</div>
			<div id="footer">
				<input type="button" value="추가" onclick="tmp_add(this.form)"> 
				<input type="button" value="취소" onclick="tmp_go(this.form)">
			</div>
		</form>
	</div>
</body>
</html>