<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
th{width:400px}</style>
<script src=${pageContext.request.contextPath}/js/jquery-3.1.1.min.js type="text/javascript"></script>
<script> 
	 function xx(battleid){
			  var url="${pageContext.request.contextPath}/vote/changeState?battleid="+battleid;
			  var param={battleid:battleid};
			  $.post(url,param,function(data){
				  alert(data.content);
				  if(data.flag==1){
					$("#zz").css({"background-color":"red","color":"white"});
					$("#zz").val("开启");
				  }
			  });  
				
		  }
		


</script>
<body>

<table border="1px" style="margin-left: 0%;margin-top:0%">
		<tr><th>选手1</th><th>节目1</th><th>选手1得票</th><th>选手2</th><th>节目2</th><th>选手2得票</th><th colspan="2">状态</th></tr>
		<c:forEach items="${battles}" var="item">
			<tr><th>${item.playerid1}</th>
			<th>${item.song1}</th>
			<th>${item.polls1}</th>
			<th>${item.playerid2}</th>
			<th>${item.song2}</th>
			<th>${item.polls2}</th>
			<td><input id="zz" value="关闭" onclick="xx('${item.battleid}')" type="button"></td></tr>
		</c:forEach>
	</table>

</body>
</html>