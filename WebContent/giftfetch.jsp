<%@ page import="simplegift.controller.*,simplegift.model.*,java.util.*" %>

<script>
var json = {};
<%
List<Gift> gifts = GiftController.getLatestGifts();
if (gifts != null){%>
	json = {"total":<%=gifts.size()%>,"result":[]};
	<%
	for (Gift gift : gifts){
		%>
		json.result.push({"image" : '<%=gift.getGiftImgURL()%>' , "width":192});
	<%}%>
<%}
%>
var data = JSON.stringify(json);
var xhr = new XMLHttpRequest();
xhr.open('POST','giftfetch_callback.jsp',true);
xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded');
xhr.send('json=' + data);
window.location.replace("/SimpleGift/giftboard.jsp");
</script>