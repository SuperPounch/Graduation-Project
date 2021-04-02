<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 编辑新闻 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/news/update" modelAttribute="news"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 基本信息 </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="newsid" class="field prepend-icon">
                                    <form:input path="newsid" cssClass="gui-input" placeholder="新闻编号..."/>
                                    <label for="newsid" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="title" class="field prepend-icon">
                                    <form:input path="title" cssClass="gui-input" placeholder="标题..." />
                                    <label for="title" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="source" class="field prepend-icon">
                                    <form:input path="source" cssClass="gui-input" placeholder="来源..." />
                                    <label for="source" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="category" class="field prepend-icon">
                                    <form:select path="category" cssClass="gui-input" placeholder="类别..." items="${category}"/>
                                    <label for="category" class="field-icon">
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="createdate" class="field prepend-icon">
                                    <form:input path="createdate" cssClass="gui-input" placeholder="创建时间..." />
                                    <label for="createdate" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section">
                            <label for="text" class="field prepend-icon">
                                <form:input path="text" cssClass="gui-input" placeholder="正文..." />
                                <label for="text" class="field-icon">
                                    <i class="fa fa-lock"></i>
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