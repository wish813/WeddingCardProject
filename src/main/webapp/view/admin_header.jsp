<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en"> 
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>MoDo</title>
    <style>
      body {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      #logo {
        padding-left: 20px;
        text-align: center;
        font-size: 48px;
        width: 10%;
      }
      #header {
        display: flex;
        align-items: center;
      }
      #nav {
        width: 70%;
        text-align: center;
      }
      #nav > div:hover {
        background-color: bisque;
        opacity: 0.5;
      }
      #nav > div {
        background-color: wheat;
        height: 30px;
        line-height: 30px;
        cursor: pointer;

        width: 25%;
        text-align: center;
        display: inline-block;
      }
      #logo > a {
        padding: 10px;
        text-decoration: none;
        color: black;
      }
      #rightTopBar {
        width: 20%;
        text-align: center;
      }
      #rightTopBar > a {
        padding: 10px;
        text-decoration: none;
        color: black;
      }
      #rightTopBar > a:hover,
      #rightTopBar > a:active {
        text-decoration: none;
        color: black;
      }
      #rightTopBar > a:hover {
        border-bottom: 2px solid salmon;
      }
      #rightTopBar > a:first-child {
        margin-right: 20px;
      }

      #content {
        width: 100%;
        height: auto;
      }
    </style>
  </head>
  <body>
    <div id="header">
      <h1 id="logo"><a href="header.jsp">Logo</a></h1>
      <div id="nav">
        <div onclick="navClick('main.html')">게시판 관리</div>
        <div onclick="navClick('guide.html')">회원정보 관리</div>
        <div onclick="navClick('content.jsp')">템플릿 관리</div>
      </div>
      <div id="rightTopBar">
        <a
          onclick="navClick('login.html')"
          href="javascript:void(0);"
          return
          false;
          >로그인</a
        >
        <a
          onclick="navClick('test.html')"
          href="javascript:void(0);"
          return
          false;
          >마이페이지</a
        >
      </div>
    </div>
    <div id="content"></div>
    <script>
      function navClick(loadUrl) {
        $("#content").load(loadUrl);
      }
    </script>
  </body>
</html>
