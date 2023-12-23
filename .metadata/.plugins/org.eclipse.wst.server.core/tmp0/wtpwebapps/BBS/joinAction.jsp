<%@page import="com.example.user.User"%>
<%@ page import = "com.example.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%> <!-- 주로 POST 방식으로 전송된 데이터의 인코딩을 지정하는 용도로 사용됩니다. 이 설정은 클라이언트가 서버로 전송한 데이터의 문자 인코딩을 UTF-8로 설정하겠다는 것을 의미합니다. 이를 통해 한글 데이터가 깨지지 않도록 보장할 수 있습니다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리 화면</title>
</head>
<body>
<%
    String userID = request.getParameter("userID");
    String userPassword = request.getParameter("userPassword");
    String userName = request.getParameter("userName");
    String userGender = request.getParameter("userGender");
    String userEmail = request.getParameter("userEmail");

    if (userID == null || userPassword == null || userName == null || userGender == null || userEmail == null) {
%>   	
        <script>
            alert('입력이 안 된 항목이 있습니다');
            history.back();
        </script>
<%
    } else {
        User newUser = new User();
        
        newUser.setUserID(userID);
        newUser.setUserPassword(userPassword);
        newUser.setUserName(userName);
        newUser.setUserGender(userGender);
        newUser.setUserEmail(userEmail);
        
        UserDao userDao = new UserDao();
        
        int result = userDao.join(newUser);
        
        if (result == -1) {
%> 
            <script>
                alert('이미 존재하는 아이디입니다'); /* db에서 UserID를 primarykey로 등록했기에, 고유키 만족안하면 db에서 에러나서 join메서드에서 -1 반환  */
                history.back();
            </script>
<%
        } else {
%>
            <script>
                alert('회원가입 성공');
                location.href = 'main.jsp';
            </script>
<%
        }
    }
%>

    
    
</body>
</html>