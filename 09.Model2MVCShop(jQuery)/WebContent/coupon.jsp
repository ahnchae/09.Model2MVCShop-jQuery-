<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>���� ���</title>

</head>
<form name="detailForm" method="post" action="/user/addCoupon">
<body>
	���� ��ȣ�� ����ϼ���
<br>
<br>
<c:if test="${user.discountCoupon10=='1' }">
<h5>������ �߱޵Ǿ����ϴ�.<br> �ߺ� �߱޵��� �ʽ��ϴ�.<br><br></h5>
</c:if>
<input type="text" name="couponId"> <input type="submit">
</body>
</form>

</html>