package com.example.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//전체조회하는 함수와 유저의 이름을 받아 상세조회하는 함수
public class UserDao {
	private String jdbcUrl = "jdbc:mysql://localhost:3306/BBS"; // 프로토콜, 서버주소, 서버포트, DB이름
	private String dbId = "root";
	private String dbPwd = "olivia0929";

	// 1 - 로그인 성공, 0 - 비번 틀림, -1 - 아이디 없음, -2 - 그외 에러(데이터베이스)
	public int login(String userID, String userPassword) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception ex) {
			System.out.println("연결 오류입니다. 오류 메세지 : " + ex.getMessage());
		}

		String sql = "SELECT userPassword FROM user WHERE userID = ?";

		try {

			Connection conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userID); // 첫번째 '?'에 매개변수로 받아온 'userID' 대입

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					return (1); // 로그인 성공
				else
					return (0); // 비번 틀림
			}
			return (-1); // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (-2); // 그외 오류 (데이터베이스 오류 추정)
	}

	public int join(User user) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception ex) {
			System.out.println("연결 오류입니다. 오류 메세지 : " + ex.getMessage());
		}

		String sql = "INSERT INTO user values(?,?,?,?,?)";

		try {

			Connection conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, user.getUserID()); // 첫번째 '?'에 매개변수로 받아온 'userID' 대입
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());

			return (pstmt.executeUpdate());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return (-1); // 아이디 중복 이슈
	}
}
