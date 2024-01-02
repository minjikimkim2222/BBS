<%@ page import="com.example.bbs.Bbs" %>
<%@ page import="com.example.bbs.BbsDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 주로 POST 방식으로 전송된 데이터의 인코딩을 지정하는 용도로 사용됩니다.
     이 설정은 클라이언트가 서버로 전송한 데이터의 문자 인코딩을 UTF-8로 설정하겠다는 것을 의미합니다.
     이를 통해 한글 데이터가 깨지지 않도록 보장할 수 있습니다. -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>writeAction.jsp</title>
</head>
<body>
    <%
        // 현재 세션 상태를 체크한다.
        String userID = null;
        if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
        }

        // 로그인을 한 사람만 글을 쓸 수 있도록 코드 수정
        if (userID == null){
    %>
            <script>
                alert('로그인을 하세요');
                location.href = 'login.jsp';
            </script>
    <%
        } else { 
			// 입력 안 된 부분이 있는지 체크한다.
			String bbsTitle = request.getParameter("bbsTitle");
        	String bbsContent = request.getParameter("bbsContent");
        	
        	if (bbsTitle == null || bbsContent == null){
     %>   
     			<script>
     				alert('입력이 안 된 사항이 있습니다.');
     				history.back();
     			</script>
     <% 		
        	} else { // 로그인했고, 모든 내용이 정상적으로 입력이 되었을 때, '글쓰기 성공' 알림창과 게시판메인페이지(bbs.jsp)로 이동하게끔 한다.
                Bbs bbs = new Bbs();
        	
        		bbs.setBbsTitle(bbsTitle);
        		bbs.setUserID(userID);
        		bbs.setBbsContent(bbsContent); // 이 세개 세팅하고 write 메서드로 던지면, 나머지는 알아서 다른 메서드를 이용해 채워줌 
        		
				BbsDao bbsDao = new BbsDao();
        		
        		int result = bbsDao.write(bbsTitle, userID, bbsContent);
                
        		// 데이터베이스 오류인 경우 
               	if (result == -1){
     %>				<script>
     					alert('글쓰기에 실패했습니다.');
     					history.back();
     				</script>
     <%           		
               	} else { // 글쓰기가 정상적으로 실행되면, 알림창을 띄우고 + 게시판 메인으로 이동한다. 
     %>
     				<script>
     					alert('글쓰기 성공');
     					location.href = 'bbs.jsp';
     				</script>
     <%         		
               	}
        	}
       
        }
     %>
</body>
</html>