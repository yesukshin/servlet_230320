<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<ul class="nav nav-fill w-100">
    <!-- layout.jsp을 링크걸었지만 request사용할 수 있는 곳은 layout.jsp와 거기에서 호출하는 jsp모든 곳에서 가능하다 -->
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=전체"
		class="nav-link">전체</a></li>
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=지상파"
		class="nav-link">지상파</a></li>
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=드라마"
		class="nav-link">드라마</a></li>
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=예능"
		class="nav-link">예능</a></li>
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=영화"
		class="nav-link">영화</a></li>
	<li class="nav-item"><a href="/lesson03/quiz01/layout.jsp?id=스포츠"
		class="nav-link">스포츠</a></li>

</ul>
