<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./study_paramProcess.jsp" method="get">
		<!-- value 속성은 파라미터 값의 값이다! -->
		<div>
			<input type="text" name="p1" value="p1 data">
		</div>
		
		<div>
			<!--사용자가 넘겨줘야하는 값을 넣을 때 사용한다. -->
			<input type="hidden" value="hidden data" name="p2">
		</div>
		
		<div>
			남<input type="radio" value="남" name="p3">
			여<input type="radio" value="여" name="p3" checked="checked">
		</div>
		
		<div>
			<select name="p4">
				<option value="KT">KT</option>
				<option value="SKT" selected>SKT</option>
				<option value="LG">LG</option>
			</select>
		</div>
		
		<div>
			축구<input type="checkbox" value="축구" name="p5" checked="checked">
			야구<input type="checkbox" value="야구" name="p5" checked="checked">
			배구<input type="checkbox" value="배구" name="p5" checked>
			농구<input type="checkbox" value="농구" name="p5" checked>
		</div>
		<button type="submit">SUBMIT</button>
	</form>
	
	
</body>
</html>