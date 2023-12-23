<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel = "stylesheet" href = "css/bootstrap.css">
	<title>회원가입 페이지</title>
</head>
<body>
	<div class = "container">
		<div class = "col-lg-4">
			<div class = "jumbotron" style = "padding-top : 20px;">
				<form method = "post" action="joinAction.jsp">
					<h3 style = "text-align : center;">회원가입 화면</h3>
						<p class = "form-group">
							<input type="text" class = "form-control" name="userID" placeholder="아이디" maxlength = "20">
						</p>
						<p class = "form-group">
							<input type="password" class = "form-control" name="userPassword" placeholder="비밀번호" maxlength = "20">
						</p>
						<p class = "form-group">
							<input type="text" class = "form-control" name="userName" placeholder="이름" maxlength = "20">
						</p>
						<div class = "form-group" style = "text-align : center;">
							<p><input type = "radio" name = "userGender" autocomplete = "off" value = "남자">남자</p>
							<p><input type = "radio" name = "userGender" autocomplete = "off" value = "여자">여자</p>
						</div>
						<p class = "form-group">
							<input type="email" class = "form-control" name="userEmail" placeholder="이메일" maxlength = "40">
						</p>
						<p style = "text-align: center;"><input type="submit" value="회원가입"></p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>