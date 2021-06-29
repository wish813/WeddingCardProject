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
        box-sizing: border-box;
      }
      #logo_box{
      	background-color: white;
        margin-left: 10%;
      }
      #logo {
        font-size: 48px;
        align: center;
        margin: auto;
      }
      #header {
        display: flex;
        align-items: center;
        background-color: #48D1CC;
      }
      #logo > a {
        text-decoration: none;
        color: black;
      }
       #nav {
        width: 70%;
        text-align: center;
      }
      #nav > div:hover {
        opacity: 0.5;
        color: Lavender;
      }
      #nav > div {
        height: 30px;
        line-height: 30px;
        cursor: pointer;
        width: 25%;
        text-align: center;
        display: inline-block;
      	color: #F5FFFA;
      }
      
      #rightTopBar {
        width: 80%;
        text-align: right;
        float: right;
      }
      #rightTopBar > a {
        padding: 10px;
        text-decoration: none;
        color: #F5FFFA;
      }
      #rightTopBar > a:hover,
      #rightTopBar > a:active {
        text-decoration: none;
        color: white;
      }
      #rightTopBar > a:hover {
        border-bottom: 2px solid Lavender;
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
      <div id="logo_box"><h1 id="logo"><a href="admin_header.jsp">Logo</a></h1></div>
      <div id="nav">
        <div onclick="navClick('search_board.jsp')">게시판관리</div>
        <div onclick="navClick('template_add.jsp')">템플릿관리</div>
        <div onclick="navClick('user_info.jsp')">회원관리</div>
      </div>
      <div id="rightTopBar">
        <a
          onclick="navClick('index.html')"
          href="javascript:void(0);"
          return
          false;>로그아웃</a>
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
