<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2||sessionScope.user.level==3}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1 || sessionScope.user.level==0}">
    <!DOCTYPE html>
    <html>
    <!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->
    <head>
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <title> 羽毛球装备系统 </title>
            <%--静态前面加/--%>
        <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
        <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
        <link rel="shortcut icon" href="/assets/img/favicon.ico">
            <%--search--%>
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <link rel="stylesheet" type="text/css" href="/search/css/style.css">
    </head>
    <body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">

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
                            <form name="form1" method="post" action="change_password" id="admin-form">
                                <input hidden name="${sessionScope.user.uid}">
                                <div class="panel-body bg-light">
                                    <div class="section-divider mt20 mb40">
                                        <span> 基本信息 </span>
                                    </div>
                                    <div class="section row">
                                        <div class="col-md-6">
                                            <label for="old" class="field prepend-icon">
                                                <input type="password" name="old" id="old" class="gui-input" value="${sessionScope.user.password}" placeholder="原始密码...">
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
                                        <button type="submit" class="button" onclick="check()" > 修改 </button>
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
<script language="JavaScript">
    function check() {
        var new1 = document.form1.new1.value;
        var new2 = document.form1.new2.value;
        if(new1==""){
            alert("new1=null");
            return false;
        }
        if(new2==""){
            alert("new2=null");
            return false;
        }
        if(new2!=new1){
            alert("new2!=new1");
            return false;
        }
        document.form1.submit();
    }
</script>
<jsp:include page="bottom.jsp"/>