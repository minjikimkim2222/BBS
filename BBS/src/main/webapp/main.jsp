<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta HTTP-EQUIV="content-type" CONTENT="text/html; CHARSET=UTF-8" charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>main 화면</title>
</head>
<body>

	<%
	// 메인페이지로 이동했을 때, 세션에 값이 담겨있는지 체크
	String userID = null;
	
	if (session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	%>
	
    <h3> 기능 선택 - main 화면</h3>
    
<!--     <span>debugging test 1.</span> -->
    
    <form action="" name="loginSelect">
        <select name="loginList" onchange="location = document.loginSelect.loginList.value" style="margin-bottom: 20px;">
        	<option value="main.jsp">메인</option>
            <option value="bbs.jsp">게시판</option>
            <option value="MySQL_ConnectionTest.jsp">sql connection test</option>
      		
      		<%
      		
      			if (userID == null) {
      		
      		%>
                    <optgroup label="접속하기">
                        <option value="login.jsp">로그인</option>
                        <option value="join.jsp">회원가입</option>
                    </optgroup>
                </select>
            </form>
    
<!--             <div>debugging test 2.</div>
            <div>debugging test 3.</div> -->
    
    		<%  
    			} else { 
    		%>

         <!--    <span>debugging test 4.</span> -->
            <select>
                <optgroup label="회원관리">
                    <option value="logoutAction.jsp">로그아웃 -> logoutAction.jsp 링크 접속 </option>
                </optgroup>
            </select>
    
    		<% 
    			}
    		%>
    		
    	<!-- 	<div> debugging test 5 -> 6</div> -->
   <!--  		     <select>
                <optgroup label="회원관리">
                    <option value="logoutAction.jsp">로그아웃 -> logoutAction.jsp 링크 접속 </option>
                </optgroup>
            </select> -->
</body>
</html>


