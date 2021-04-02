<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断用户是普通用户还是管理员--%>
<c:if test="${sessionScope.user.level==2||sessionScope.user.level==3}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="top2.jsp"/>
</c:if>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 用户列表 </h2>
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
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='/user/to_add';"></i>
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
                            <th class="hidden-xs">用户ID</th>
                            <th scope="col">用户名</th>
                            <th scope="col">密码</th>
                            <th scope="col">年龄</th>
                            <th scope="col">电话号码</th>
                            <th scope="col">电子邮箱</th>
                            <th scope="col">等级</th>
                            <th scope="col">生日</th>
                            <th scope="col">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="user">
                        <tr class="message-unread" style="color:#000;">
                            <td>${user.uid}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.age}</td>
                            <td>${user.phone}</td>
                            <td>${user.mail}</td>
                            <td>${user.level}</td>
                            <td><spring:eval expression="user.birthday"/></td>
                            <td>
                                <a href="/user/to_update?uid=${user.uid}">编辑</a>
                                <a href="/user/remove?uid=${user.uid}">删除</a>
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


<jsp:include page="bottom.jsp"/>