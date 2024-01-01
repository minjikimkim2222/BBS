<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta HTTP-EQUIV="content-type" CONTENT="text/html; CHARSET=UTF-8" charset = "UTF-8"> <!--  클라이언트 문자 인코딩 방식  --> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<style>
		.my-container-fluid {
		/* background-color : skyblue; */
		text-align: right;
		
		}
	
	/*	
		.my-container {
			background-color : blue;
		}
		
		.my-row {
			background-color : pink;
		} */
		
		table, th, td {
			border : 2px solid #dddddd;
		}
		
		table {
		 	width : 100%;

		}
		
		.button {
    	margin: 5px; /* 간격 조절 */
    	font-size: 14px; /* 글자 크기 조절 */
    	text-decoration: none;
    	display: inline-block;
    	border-radius: 3px;
    	
		padding: 5px 10px; /* 크기 조절 */
		background-color:  #4CAF50; /* Green */
		color: white;
		text-align: right;
		}
		
		
		
	</style>
	<title>bbs 게시판 화면</title>
</head>
<body>

<!-- 게시판 메인 페이지 영역 시작  -->

	<div class = "my-container">
		<div class = "my-row">
			<h3 style = "text-align : center;">게시판 메인</h3>
			
			<div class = "my-container-fluid">
				<table class = "table table-striped" style = "text-align : center;">
					<thead>
						<tr>
							<th style = "background-color : #eeeeee" >번호</th>
							<th style = "background-color : #eeeeee">제목</th>
							<th style = "background-color : #eeeeee">작성자</th>
							<th style = "background-color : #eeeeee">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width = "25%">1</td>
							<td width = "25%">안녕하세요</td>
							<td width = "25%">minjiki2</td>
							<td width = "25%">2024-01-01</td>
						</tr>
						
						<tr>
							<td width = "25%">2</td>
							<td width = "25%">두번째 게시글 테스트</td>
							<td width = "25%">hi22</td>
							<td width = "25%">2024-01-02</td>
						</tr>
						
						<tr>
							<td width = "25%">3</td>
							<td width = "25%">세번째 게시글 테스트</td>
							<td width = "25%">hi33</td>
							<td width = "25%">2024-01-03</td>
						</tr>
					</tbody>
				</table>	
			
			<!-- 글쓰기 버튼 생성, 버튼 누르면 write.jsp 페이지로 이동할 것 -->
				<a href = "write.jsp" class = "button">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>
