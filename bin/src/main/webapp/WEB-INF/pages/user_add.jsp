<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 编辑User </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/user/add" modelAttribute="user"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <%--<div class="col-md-6">
                                <label for="uid" class="field prepend-icon">
                                    <form:input path="uid" cssClass="gui-input" placeholder="UserID..."/>
                                    <label for="uid" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>--%>
                            <div class="col-md-6">
                                <label for="username" class="field prepend-icon">
                                    <form:input path="username" cssClass="gui-input" placeholder="用户名..." />
                                    <label for="username" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                          <%--  <div class="col-md-6">
                                <label for="age" class="field prepend-icon">
                                    <form:input path="age" cssClass="gui-input" placeholder="年龄..." />
                                    <label for="age" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="birthday" class="field prepend-icon">
                                    <form:input path="birthday" cssClass="gui-input" placeholder="生日..." />
                                    <label for="birthday" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>--%>
                            <div class="col-md-6">
                                <label for="password" class="field prepend-icon">
                                    <form:input path="password" cssClass="gui-input" placeholder="密码..." />
                                    <label for="password" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                      <%--  <div class="section">
                            <label for="level" class="field prepend-icon">
                                <form:input path="level" cssClass="gui-input" placeholder="等级..." />
                                <label for="level" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="phone" class="field prepend-icon">
                                <form:input path="phone" cssClass="gui-input" placeholder="电话..." />
                                <label for="phone" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="mail" class="field prepend-icon">
                                <form:input path="mail" cssClass="gui-input" placeholder="Email..." />
                                <label for="mail" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="want" class="field prepend-icon">
                                <form:input path="want" cssClass="gui-input" placeholder="收藏..." />
                                <label for="want" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="sex" class="field prepend-icon">
                                <form:input path="sex" cssClass="gui-input" placeholder="性别..." />
                                <label for="sex" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>--%>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>