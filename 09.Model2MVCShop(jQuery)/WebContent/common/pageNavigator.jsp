<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	$(function(){
		
		$('span:contains("이전")').on("click", function(){
			fncGetUserList('${resultPage.endUnitPage-1}');
		})
		
		$('span.otherPages').on("click", function(){
			//var currentPage=$(this).text();
			fncGetUserList(this.innerHTML);	
		})
		
		$('span:contains("이후")').on("click", function(){
			fncGetUserList('${resultPage.endUnitPage+1}');
		});
	})
	</script>
<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
		◀ 이전
</c:if>
<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
		<span>◀ 이전</span>
</c:if>

<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
	<span class="otherPages">${ i }</span>
</c:forEach>

<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
		이후 ▶
</c:if>
<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
		<span>이후 ▶</span>
</c:if>