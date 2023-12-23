<%-- <%@ page import = "java.sql.DriverManager" %> <!-- java.sql.DriverManager 클래스를 현재 jsp 페이지에 import -->
<%@ page import = "java.sql.Connection" %>
<%@ page language="java" contentType = "text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!-- DriverManager 클래스는 JDBC 드라이버 관리, DB 연결 및 관리
Connection interface는 DB와의 연결을 통한 통신  -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MySQL 연결 드라이버 테스트</title>
</head>
<body>
	<h1>MySQL 연결 드라이버 테스트 </h1>
	<%
	String jdbcUrl = "jdbc:mysql://localhost:3306/user";
	String dbId = "root";
	String dbPwd = "olivia0929";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  /* MYSQL JDBC 드라이버 로드  */
		Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); /* 지정된 URL, 사용자 이름, 암호로 데이터베이스에 연결  */
		out.println("MySQL 연결 성공");
	}
	catch (Exception ex)
	{
		out.println("연결 오류입니다. 오류 메세지 : " + ex.getMessage());
	}
	%>
</body>
</html> --%>

<%@ page import = "java.sql.DriverManager" %> <!-- java.sql.DriverManager 클래스를 현재 jsp 페이지에 import -->
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page language="java" contentType = "text/html; charset = UTF-8" pageEncoding="UTF-8"%>
<!-- DriverManager 클래스는 JDBC 드라이버 관리, DB 연결 및 관리
Connection interface는 DB와의 연결을 통한 통신  -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MySQL 연결 드라이버 테스트</title>
</head>
<body>
	<h1>MySQL 연결 드라이버 테스트 </h1>
	<%
	String jdbcUrl = "jdbc:mysql://localhost:3306/BBS"; // 프로토콜, 서버주소, 서버포트, DB이름
	String dbId = "root";
	String dbPwd = "olivia0929";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  /* MYSQL JDBC 드라이버 로드  */
		Connection conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); /* 지정된 URL, 사용자 이름, 암호로 데이터베이스에 연결  */
		out.println("MySQL 연결 성공<br>");
		
		out.println("sql문 - select test 예제<br>");
		
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM user";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while (rs.next()){
			out.println(rs.getNString(1)); // userID
			out.println(rs.getNString(2)); // userPassword
			out.println(rs.getNString(3)); // userName
		}

	}
	catch (Exception ex)
	{
		out.println("연결 오류입니다. 오류 메세지 : " + ex.getMessage());
	}
	%>
</body>
</html>