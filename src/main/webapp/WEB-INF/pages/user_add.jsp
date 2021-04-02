<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加User </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form action="/user/add" modelAttribute="user"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="username" class="field prepend-icon">
                                    <input type="text" id="username" name="username" class="gui-input" placeholder="用户名..." />
                                    <label for="username" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="age" class="field prepend-icon">
                                    <input id="age" name="age" class="gui-input" placeholder="年龄..." />
                                    <label for="age" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="birthday" class="field prepend-icon">
                                    <input id="birthday" name="birthday" class="gui-input" placeholder="生日..." />
                                    <label for="birthday" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="password" class="field prepend-icon">
                                    <input id="password" name="password" type="password" class="gui-input" placeholder="密码..." />
                                    <label for="password" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section">
                            <label for="level" class="field prepend-icon">
                                <input id="level" name="level" class="gui-input" placeholder="等级..." />
                                <label for="level" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="phone" class="field prepend-icon">
                                <input id="phone" name="phone" class="gui-input" placeholder="电话..." />
                                <label for="phone" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="mail" class="field prepend-icon">
                                <input type="email" id="mail" name="mail" class="gui-input" placeholder="Email..." />
                                <label for="mail" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="want" class="field prepend-icon">
                                <input id="want" name="want" class="gui-input" placeholder="收藏..." />
                                <label for="want" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="sex" class="field prepend-icon">
                                <input id="sex" name="sex"  class="gui-input" placeholder="性别..." />
                                <label for="sex" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="bottom.jsp"/>