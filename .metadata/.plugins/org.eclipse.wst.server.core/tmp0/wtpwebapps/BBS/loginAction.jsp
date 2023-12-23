<%@ page import = "com.example.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login 처리 화면</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    UserDao userDao = new UserDao();
    
    int result = userDao.login(username, password);
    
    if (result == 1) {
%>
        <script>
            alert('로그인 성공');
            location.href = 'main.jsp';
        </script>       
<%
    } else if (result == 0){
%>
        <script>
            alert('비밀번호가 틀립니다.');
            history.back(); // 이 부분은 웹 브라우저의 기록을 따라 이전 페이지로 이동하는 JavaScript 함수입니다. 사용자가 브라우저의 "뒤로" 버튼을 누른 것과 같은 효과를 가지며, 현재 페이지를 이전 상태로 되돌립니다.
        </script>
<%
    } else if (result == -1) {
%>
		<script>
			alert('존재하지 않는 아이디입니다');
			history.back();
		</script>
<%
    } else if (result == -2){
%>
		<script>
			alert('데이터베이스 오류입니다.');
			history.back();
		</script>
<%
    }
%>
</body>
</html>