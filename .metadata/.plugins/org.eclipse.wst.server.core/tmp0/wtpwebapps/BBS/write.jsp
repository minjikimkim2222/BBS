<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "css/bootstrap.css">
<style>

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

		}

</style>
<title>write 화면</title>
</head>
<body>

	<div class = "my-container">
		<div class = "my-row">
			<form method = "post" action = "writeAction.jsp">
				<table class = "table table-striped" style = "text-align : center;">
					<thead>
						<tr>
							<th colspan = "2" style = "background-color : #eeeeee;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type = "text" class = "form-control" placeholder = "글 제목" name = "bbsTitle" maxlength = "50"></td>
						</tr>
						<tr>
							<td><textarea class = "form-control" placeholder = "글 내용" name = "bbsContent" maxlength = "2048" style = "height : 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				
				<!-- 글쓰기 버튼 생성  -->
				<input type = "submit" class = "button" value = "글쓰기" style = "float : right;">
			</form>
		</div>
	</div>
</body>
</html>