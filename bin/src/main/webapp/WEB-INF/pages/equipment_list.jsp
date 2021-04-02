<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断用户是普通用户还是管理员--%>
<c:if test="${sessionScope.user.level==2}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="home.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==2}">
    <section id="content" class="table-layout animated fadeIn">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" charset="UTF-8"></script>
        <div class="tray tray-center">
            <div class="content-header">
                <h2> 装备列表 </h2>
                <p class="lead"></p>
            </div>
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                <div class="panel  heading-border">
                    <div class="panel-menu">
                        <div class="row">
                            <div class="hidden-xs hidden-sm col-md-3">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-refresh"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-trash"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                            <%--修改1--%>
                                        <i class="fa fa-plus"
                                           onclick="javascript:window.location.href='/equipment/to_add';"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-9 text-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-chevron-left"></i>
                                    </button>
                                    <button type="button" class="btn btn-default light">
                                        <i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body pn">
                        <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                            <thead>
                            <tr class="" style="color:#000;">
                                <th class="text-center hidden-xs">Select</th>
                                <th class="hidden-xs">装备编号</th>
                                <th class="hidden-xs">价格</th>
                                <th class="hidden-xs">装备名称</th>
                                <th class="hidden-xs">品牌</th>
                                <th class="hidden-xs">系列</th>
                                <th class="hidden-xs">类别</th>
                                <th class="hidden-xs">介绍</th>
                                <th class="hidden-xs">图片</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list}" var="equ">
                                <tr class="message-unread" style="color:#000;">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>${equ.equid}</td>
                                    <td>${equ.price}</td>
                                    <td>${equ.equname}</td>
                                    <td>${equ.brand}</td>
                                    <td>${equ.series}</td>
                                    <td>${equ.category}</td>
                                    <td>${equ.introduction}</td>
                                    <td>
                                        <img src="/upload/${equ.equid}/${equ.equid}1.png"
                                             style="max-height: 20px;max-width: 20px"/>
                                    </td>
                                    <td>
                                        <a href="/equipment/to_update?equid=${equ.equid}">编辑</a>
                                        <a href="/equipment/remove?equid=${equ.equid}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div id="main" class="wrap">
                <div class="lefter">
                    <div class="box">
                        <h2 style="background: #faa42b;">装备类型</h2>
                        <c:forEach items="${ec}" var="ec">
                            <dl>
                                <dd class="glyphicon glyphicon-subtitles">
                                    <a href="/equipment/to_category?category=${ec}">${ec}</a></dd>
                            </dl>
                        </c:forEach>
                    </div>
                </div>
                    <%--<link rel="stylesheet" href="/assets/skin/default_skin/css/index.css">--%>
                    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" charset="UTF-8"></script>
                    <div id="app">
                        <c:forEach items="${list}" var="equ">
                            <div class="box">
                                <a href="/equipment/to_detail?equid=${equ.equid}">
                                    <div class="imgBox">
                                        <img src="../img/t${equ.equid}.png" alt="">
                                    </div>
                                    <span id="equname">${equ.equname}</span>
                                    <span id="brand">类别:${equ.category}品牌${equ.brand}</span>
                                    <span class="text">${equ.introduction}</span>
                                        <%--<a herf 链接Detail>--%>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
            </div>
        </div>
    </div>
</c:if>
<jsp:include page="bottom.jsp"/>