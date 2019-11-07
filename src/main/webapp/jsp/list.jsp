<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path=request.getContextPath();
%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${path}/css/css.css"/>
<script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		
		<table>
			<tbody>
			<c:forEach items="${page.list}" var="l">
				<tr>
					<td>${l.gid}</td>
					<td>${l.gname}</td>
				</tr>
			</c:forEach>
			<tr><td colspan="15"><a href="<%=path%>/getGoodsAll?pageNum=1">首页</a>
						<a href="<%=path%>/getGoodsAll?pageNum=${page.pageNum-1<1?1:page.pageNum-1}">上一页</a>
						<a href="<%=path%>/getGoodsAll?pageNum=${page.pageNum+1>page.pages?page.pages:page.pageNum+1}">下一页</a>
						<a href="<%=path%>/getGoodsAll?pageNum=${page.pages}">尾页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						当前${page.pageNum}/${page.pages}页</td></tr>
			</tbody>
		</table>
	
	</div>

</body>
</html>