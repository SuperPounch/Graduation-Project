<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="home.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==2}">
    <section id="content" class="table-layout animated fadeIn">
        <div class="tray tray-center">
            <div class="content-header">
                <h2>${news.title}</h2>
                <p class="lead"></p>
            </div>
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                <div class="panel heading-border">
                    <form:form action="/news/to_detail" modelAttribute="news" id="admin-form" name="addForm">
                        <div class="panel-body bg-light">
                            <div class="section-divider mt20 mb40">
                                <span> 基本信息 </span>
                            </div>
                            <div class="section row">
                                <div class="col-md-6">
                                    <label for="newsid" class="field prepend-icon">
                                        <form:textarea path="newsid" cssClass="gui-input"
                                                       placeholder="新闻编号..."/>
                                        <label for="newsid" class="field-icon">
                                            <i class="fa fa-user"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="title" class="field prepend-icon">
                                        <form:textarea path="title" cssClass="gui-input"
                                                       placeholder="标题..."/>
                                        <label for="title" class="field-icon">
                                            <i class="fa fa-user"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="source" class="field prepend-icon">
                                        <form:textarea path="source" cssClass="gui-input"
                                                       placeholder="来源..."/>
                                        <label for="source" class="field-icon">
                                            <i class="fa fa-user"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="category" class="field prepend-icon">
                                        <form:textarea path="category" cssClass="gui-input"
                                                       placeholder="类别..."
                                                       items="${category}"/>
                                        <label for="category" class="field-icon">
                                            <i class="fa fa-user"></i>
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="createdate" class="field prepend-icon">
                                        <form:textarea path="createdate" cssClass="gui-input"
                                                       placeholder="创建时间..."/>
                                        <label for="createdate" class="field-icon">
                                            <i class="fa fa-user"></i>
                                        </label>
                                    </label>
                                </div>
                            </div>
                            <div class="section">
                                <label for="text" class="field prepend-icon">
                                    <form:textarea path="text" cssClass="gui-input" placeholder="正文..."/>
                                    <label for="text" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                            </div>
                            <td>
                                <img src="/upload/${news.newsid}/${news.newsid}1.png"
                                     style="max-height: 600px;max-width: 600px"/>
                            </td>
                            <div class="panel-footer text-right">
                                <button type="button" class="button"
                                        onclick="javascript:window.history.go(-1);"> 返回
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </section>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <%--<div id="childNav">
        <div class="wrap">
            <ul class="clearfix">
                <c:forEach items="${nc}" var="nc">
                    <li><a href="/news/to_category?category=${nc}">${nc}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>--%>
    <div id="main" class="wrap">
        <div class="lefter">
            <div class="box">
                <h2 style="background: #faa42b;">新闻类型</h2>
                <c:forEach items="${nc}" var="nc">
                    <dl>
                        <dd class="glyphicon glyphicon-subtitles"><a href="/news/to_category?caegory=${nc}" >${nc}</a></dd>
                    </dl>
                </c:forEach>
            </div>
        </div>
        <div id="product" class="main">
            <h1>${news.title}</h1>
            <h3> </h3>
            <div class="infos">
                <div class="ncon">
                    <p><span class="intro">来源: ${news.source}<span style="margin-left: 40px">所属类别: ${news.category}</span></span></p>

<%--
                    <p><span class="intro">来源: ${news.source}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所属类别: ${news.category}</span></p>
--%>
                    <span class="intro"></span>
                    <p><span class="intro">正文: ${news.text}</span></p>
                    <p><span class="introdate">${news.createdate}</span></p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>

</c:if>
<jsp:include page="bottom.jsp"/>