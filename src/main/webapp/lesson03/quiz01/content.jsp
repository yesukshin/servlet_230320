<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%
List<Map<String, String>> list = new ArrayList<>();
Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
list.add(map);

map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
list.add(map);
map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
list.add(map);

%>

<table class="table text-center">
<thead>
	<tr class="row" >
	    <th class="col-1">채널</th>
		<th class="col-2">채널명</th>
		<th class="col-9">카테고리</th>
	</tr>	
</thead>

<tbody>

<% 
Map<String, String> channelMap = new HashMap<>();

String id = request.getParameter(id);

for (int i= 0 ; i < list.size() ; i++ ) {
	
	channelMap = list.get(i);
	
	Iterator<String> iter = channelMap.keySet().iterator();
	
	while(iter.hasNext()) {
		
		String chaKey = iter.next();
		
		if (chaKey.equals("ch")){
			
			String chanel = channelMap.get(chaKey);
			%>
			<tr class="row" >
			<td><%=chanel%></td>		
				<% }else if (chaKey.equals("name")){
					String chaName = channelMap.get(chaKey); %>
			<td><%=chaName%></td>		
			<% }else if (chaKey.equals("category")){
				String chaCategory = channelMap.get(chaKey); %>	
			<td><%=chaCategory%></td>	
			</tr>
<% 	
		
		}
		
		
	}
}
%>





