
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무마켓</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<style>
header {
	height: 80px;
	background-color: #ff7f50;
	color: #ffffff;
}

nav {
	height: 50px;
	background-color: #ff7f50;
	color: #ffffff;
}

.border {
	border-color: #ff7f50;
}

.imageStyle:hover {
	background-color: #ff7f50
}
</style>

<script>
      //체크 함수 생성
      function check() {
       //myfrom 이름 설정
        var myForm = document.myform;

        //id가 공백이면
        if (myForm.id.value == "") {
            alert("id 입력해주십시오");
            myForm.id.focus();
		    return false;
        }
        
        //title이 공백이면
        if (myForm.title.value == "") {
            alert("title 입력해주십시오");
            myForm.title.focus();
		    return false;
        }
       
       //price이 공백이면
        if (myForm.price.value == "") {
            alert("price 입력해주십시오");
            myForm.price.focus();
		    return false;
        }
      }
     
</script>

</head>
<body>

	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>

		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		<%
					
			String gbn = request.getParameter("gbn");
			String jspPage = "";
			if (gbn == null ) {
				jspPage = "content.jsp";
			} else if (gbn.equals("list")){
				jspPage = "content.jsp";
			} else if (gbn.equals("input")){
				jspPage = "content2.jsp";
			}
			
		%>
		<section class="contents cols-12">
			<jsp:include page="<%=jspPage%>" />
		</section>

		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>