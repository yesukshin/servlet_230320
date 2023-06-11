<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//DB연결
MysqlService ms = MysqlService.getInstance();
ms.connect();

//DB select
String selectQuery = " select used_goods.id as id , used_goods.title as title, "
		+ " used_goods.picture as picture , used_goods.price as price, seller.nickname as nickname "
		+ " from  `used_goods` inner join `seller` on used_goods.sellerId = seller.id order by used_goods.id desc  ";

String cntQuery = " select count(*) as cnt "
		+ " from  `used_goods` inner join `seller` on used_goods.sellerId = seller.id  ";
%>


<%
int i = 0;

try {

	ResultSet resCnt = ms.select(cntQuery);

	String[] picture = new String[100];
	String[] title = new String[100];
	Integer[] price = new Integer[100];
	String[] nickname = new String[100];

	int rowCnt = 0;

	while (resCnt.next()) {

		rowCnt = resCnt.getInt("cnt");
	}

	//rowCnt = 7;
	ResultSet res = ms.select(selectQuery);
	while (res.next()) {

		picture[i] = res.getString("picture");
		title[i] = res.getString("title");
		price[i] = res.getInt("price");
		nickname[i] = res.getString("nickname");
		i++;

		if (i % 3 == 0) {
%>

<div class="d-flex">
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[0]%>" alt="상품이미지" width="300"
			height="200">
		<div><%=title[0]%></div>
		<div><%=price[0]%></div>
		<div><%=nickname[0]%></div>
	</div>
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[1]%>" alt="상품이미지" width="300"
			height="200">
		<div><%=title[1]%></div>
		<div><%=price[1]%></div>
		<div><%=nickname[1]%></div>
	</div>
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[2]%>" alt="상품이미지" width="300"
			height="200">
		<div><%=title[2]%></div>
		<div><%=price[2]%></div>
		<div><%=nickname[2]%></div>
	</div>
</div>

<%
i = 0;
} else {
continue;
}
%>
<%
}
%>


<%
if (rowCnt % 3 == 1) {
%>

<div class="d-flex">
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[0]%>" alt="상품이미지" width="300"	height="200">
		<div><%=title[0]%></div>
		<div><%=price[0]%></div>
		<div><%=nickname[0]%></div>
	</div>
</div>	


<%
} else if (rowCnt % 3 == 2) {
%>

<div class="d-flex">
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[0]%>" alt="상품이미지" width="300"
			height="200">
		<div><%=title[0]%></div>
		<div><%=price[0]%></div>
		<div><%=nickname[0]%></div>
	</div>
	<div class="goods-box border border-warning p-4  mt-4 mr-4">
		<img class="imageStyle" src="<%=picture[1]%>" alt="상품이미지" width="300"
			height="200">
		<div><%=title[1]%></div>
		<div><%=price[1]%></div>
		<div><%=nickname[1]%></div>
	</div>	
</div>


<%
}
} catch (SQLException e) {
e.printStackTrace();
}

ms.disconnect();
%>