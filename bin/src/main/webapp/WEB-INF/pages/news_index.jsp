<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>news_index</title>
    <link rel="stylesheet" href="/assets/skin/default_skin/css/index.css">
</head>
<jsp:include page="top.jsp"/>
<body>
<div id="app">
    <c:forEach items="${news}" var="news">
        <div class="box">
            <a href="/news/to_detail?newsid=${news.newsid}">
                <div class="imgBox">
                    <img src="../img/t${news.newsid}.png" alt="">
                </div>
                <span class="source">${news.source}</span>
                <h2 class="title">${news.title}</h2>
                <span class="detail">${news.text}</span>
                    <%--<a herf 链接Detail>--%>
            </a>
        </div>
    </c:forEach>
</div>
</body>
</html>

<jsp:include page="bottom.jsp"/>
