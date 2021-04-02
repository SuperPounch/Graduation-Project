<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h2> 个人信息 </h2>
                <p class="lead"></p>
            </div>
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                <div class="panel heading-border">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-2">工号</div>
                            <div class="col-md-4">${sessionScope.user.uid}</div>
                            <div class="col-md-2">姓名</div>
                            <div class="col-md-4">${sessionScope.user.username}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-2">等级</div>
                            <div class="col-md-4">${sessionScope.user.level}</div>
                            <div class="col-md-2">性别</div>
                            <div class="col-md-4">${sessionScope.user.sex}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-2">生日</div>
                            <div class="col-md-4">${sessionScope.user.birthday}</div>
                            <div class="col-md-2">年龄</div>
                            <div class="col-md-4">${sessionScope.user.age}</div>
                        </div>
                        <div class="section row">
                            <div class="col-md-2">电话号码</div>
                            <div class="col-md-4">${sessionScope.user.phone}</div>
                            <div class="col-md-2">电子邮箱</div>
                            <div class="col-md-4">${sessionScope.user.mail}</div>
                        </div>
                        <div class="section row">
                            <c:if test="${sessionScope.user.want}!=null" >
                                <div class="col-md-2">想要</div>
                                <div class="col-md-4">${sessionScope.user.want}</div>
                            </c:if>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
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
                <div id="product" class="main">
                    <div class="section-divider mt20 mb40">
                        <span> 基本信息 </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">工号</div>
                        <div class="col-md-4">${sessionScope.user.uid}</div>
                        <div class="col-md-2">姓名</div>
                        <div class="col-md-4">${sessionScope.user.username}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">等级</div>
                        <div class="col-md-4">${sessionScope.user.level}</div>
                        <div class="col-md-2">性别</div>
                        <div class="col-md-4">${sessionScope.user.sex}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">生日</div>
                        <div class="col-md-4">${sessionScope.user.birthday}</div>
                        <div class="col-md-2">年龄</div>
                        <div class="col-md-4">${sessionScope.user.age}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">电话号码</div>
                        <div class="col-md-4">${sessionScope.user.phone}</div>
                        <div class="col-md-2">电子邮箱</div>
                        <div class="col-md-4">${sessionScope.user.mail}</div>
                    </div>
                    <div class="section row">
                        <c:if test="${sessionScope.user.want}!=null" >
                            <div class="col-md-2">想要</div>
                            <div class="col-md-4">${sessionScope.user.want}</div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>
<jsp:include page="bottom.jsp"/>