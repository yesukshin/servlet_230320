<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>


<%
//타이틀을 조건으로 조회
String titleC = request.getParameter("title");
String thumbnail = "";
String title = "";
String singer = "";
String time = "";
String composer = "";
String lyricist = "";
String album = "";
for (Map<String, Object> item : musicList) {
	if (titleC.equals(item.get("title"))) {

		thumbnail = String.valueOf(item.get("thumbnail"));
		title = String.valueOf(item.get("title"));
		singer = String.valueOf(item.get("singer"));
		time = String.valueOf(item.get("time"));
		composer = String.valueOf(item.get("composer"));
		lyricist = String.valueOf(item.get("lyricist"));
		album = String.valueOf(item.get("album"));

		break;
	}
}
%>
<% if (title.isEmpty()) { %>
<div id="content1" class="d-flex border border-success">
<h3>곡이 없습니다.</h3>
</div>
<%} else { %>
<div><strong>곡 정보</strong></div>
<div id="content1" class="d-flex border border-success">

	<div>
		<img src="<%=thumbnail%>" alt="아이유" width="200px">
	</div>
	<div>
		<div class="display-4">
			<h3><%=title%></h3>
		</div>
		<div class="display-12 text-info d-block"><%=singer%></div>
		<div class="display-10 d-block mt-3">
			앨범<%=album%></div>
		<div class="display-10 d-block">
			재생시간<%=time%></div>
		<div class="display-10 d-block">
			작곡가<%=composer%></div>
		<div class="display-10 d-block">
			작사가<%=lyricist%></div>
	</div>

</div>
<%} %>

<div id="content2">
	<span class="mt-10"><strong>가사</span></strong>
	<hr>
	<span class="mt-10"><strong>가사정보없음</span></strong>
	<hr>
</div>



