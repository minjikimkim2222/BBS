<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!--   JSP 서버측 설정  -->
<!DOCTYPE html>
<html>
	<head>
		<meta HTTP-EQUIV="content-type" CONTENT="text/html; CHARSET=UTF-8" charset = "UTF-8"> <!--  클라이언트 문자 인코딩 방식  --> 
		
		<link rel = "stylesheet" href = "css/bootstrap.css">
		<title>JSP 로그인 페이지</title>
</head>
<body>

	<h3> 기능 선택</h3>
	
	<form action="" name="loginSelect">
		<select name = "loginList" onchange = "location = document.loginSelect.loginList.value" style="margin-bottom: 20px;">
			<option>선택하세요</option>
			<option value = "main.jsp"> 메인 </option>
			<option value = "bbs.jsp"> 게시판 </option>
			<option value = "login.jsp"> 로그인 </option>
			<option value = "join.jsp"> 회원가입 </option>
			<option value = "MySQL_ConnectionTest.jsp">sql connection test</option>
		</select>
	</form>
	
		<div class = "container">
		<div class = "col-lg-4">
			<div class = "jumbotron" style = "padding-top : 20px;">
				<form method = "post" action="loginAction.jsp">
					<h3 style = "text-align : center;">로그인 화면</h3>
						<p class = "form-group">
							<input type="text" class = "form-control" name="username" placeholder="아이디">
						</p>
						<p class = "form-group">
							<input type="password" class = "form-control" name="password" placeholder="비밀번호">
						</p>
						<p style = "text-align: center;"><input type="submit" value="로그인"></p>
				</form>
			</div>
		</div>
	</div>
</html> 