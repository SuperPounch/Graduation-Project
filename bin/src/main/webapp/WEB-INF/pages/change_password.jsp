<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1 || sessionScope.user.level==0}">
    <jsp:include page="home.jsp"/>
</c:if>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <section id="content" class="table-layout animated fadeIn">
                <div class="tray tray-center">
                    <div class="content-header">
                        <h2> 修改密码 </h2>
                        <p class="lead"></p>
                    </div>
                    <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                        <div class="panel heading-border">
                            <form method="post" action="change_password" id="admin-form">
                                <input hidden name="${sessionScope.user.uid}">
                                <div class="panel-body bg-light">
                                    <div class="section-divider mt20 mb40">
                                        <span> 基本信息 </span>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="old" class="field prepend-icon">
                                                <input type="password" name="old" id="old" class="gui-input" placeholder="原始密码...">
                                                <label for="old" class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="new1" class="field prepend-icon">
                                                <input type="password" name="new1" id="new1" class="gui-input" placeholder="重复密码...">
                                                <label for="new1" class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="new2" class="field prepend-icon">
                                                <input type="password" name="new2" id="new2" class="gui-input" placeholder="重复密码...">
                                                <label for="new2" class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </label>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="panel-footer text-right">
                                        <button type="submit" class="button" > 修改 </button>
                                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<jsp:include page="bottom.jsp"/>