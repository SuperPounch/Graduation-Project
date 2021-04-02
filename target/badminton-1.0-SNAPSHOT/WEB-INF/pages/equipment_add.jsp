<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 添加装备 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/equipment/add" modelAttribute="equipment"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="equid" class="field prepend-icon">
                                    <form:input path="equid" cssClass="gui-input" placeholder="装备编号..."/>
                                    <label for="equid" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="equname" class="field prepend-icon">
                                    <form:input path="equname" cssClass="gui-input" placeholder="装备名称..." />
                                    <label for="equname" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="price" class="field prepend-icon">
                                    <form:input path="price" cssClass="gui-input" placeholder="装备价格..." />
                                    <label for="price" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="brand" class="field prepend-icon">
                                    <form:select path="brand" cssClass="gui-input" placeholder="品牌..." items="${brand}"/>
                                    <label for="brand" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="series" class="field prepend-icon">
                                    <form:input path="series" cssClass="gui-input" placeholder="系列..." />
                                    <label for="series" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="category" class="field prepend-icon">
                                    <form:select path="category" cssClass="gui-input" placeholder="所属类别..." items="${category}"/>
                                    <label for="category" class="field-icon">
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section">
                            <label for="introduction" class="field prepend-icon">
                                <form:input path="introduction" cssClass="gui-input" placeholder="装备介绍..." />
                                <label for="introduction" class="field-icon">
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="img" class="field prepend-icon">
                                <form:input path="img" cssClass="gui-input" placeholder="装备链接..." />
                                <label for="img" class="field-icon">
                                </label>
                            </label>
                        </div>
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