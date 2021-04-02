<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${sessionScope.user.level==2||sessionScope.user.level==3}">
    <jsp:include page="top.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==1||sessionScope.user.level==0}">
    <jsp:include page="top2.jsp"/>
</c:if>
<c:if test="${sessionScope.user.level==2||sessionScope.user.level==3}">
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
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="title" class="field prepend-icon">
                                        <form:textarea path="title" cssClass="gui-input"
                                                       placeholder="标题..."/>
                                        <label for="title" class="field-icon">
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="source" class="field prepend-icon">
                                        <form:textarea path="source" cssClass="gui-input"
                                                       placeholder="来源..."/>
                                        <label for="source" class="field-icon">
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="category" class="field prepend-icon">
                                        <form:textarea path="category" cssClass="gui-input"
                                                       placeholder="类别..."
                                                       items="${category}"/>
                                        <label for="category" class="field-icon">
                                        </label>
                                    </label>
                                </div>
                                <div class="col-md-6">
                                    <label for="createdate" class="field prepend-icon">
                                        <form:textarea path="createdate" cssClass="gui-input"
                                                       placeholder="创建时间..."/>
                                        <label for="createdate" class="field-icon">
                                        </label>
                                    </label>
                                </div>
                            </div>
                            <div class="section">
                                <label for="text" class="field prepend-icon">
                                    <form:textarea path="text" cssClass="gui-input" placeholder="正文..."/>
                                    <label for="text" class="field-icon">
                                    </label>
                                </label>
                            </div>
                           <%-- <td>
                                <img src="/upload/${news.newsid}/${news.newsid}1.png"
                                     style="max-height: 600px;max-width: 600px"/>
                            </td>--%>
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
    <div id="main" class="wrap">
            <%--left--%>
        <div class="lefter">
            <div class="box">
                <h2 style="background: #faa42b;">新闻类型</h2>
                <c:forEach items="${nc}" var="nc">
                    <dl>
                        <dd class="glyphicon glyphicon-subtitles"><a href="/news/to_category?category=${nc}">${nc}</a>
                        </dd>
                    </dl>
                </c:forEach>
            </div>
        </div>
            <%----%>
        <div id="product" class="main">
            <h1>${news.title}</h1>
            <h3></h3>
            <div class="infos">
                <div class="ncon">
                    <p style="color: #f0ad4e"><span class="intro" style="margin-left:25%">来源: ${news.source}
                        <span style="margin-left: 20%">所属类别: ${news.category}</span></span></p>
                    <p><span class="intro">正文: ${news.text}</span></p>
                    <p><span class="introdate">日期：<spring:eval expression="news.createdate"/></span></p>
                </div>
                <div class="clear"/>
            </div>
        </div>
        <div class="main">
            <div class="wrapper">
                <div class="ds-post-main">
                    <div class="ds-comment-body">
                        <c:forEach items="${news.commentList}" var="list">
                            <div class="wrapper">
                                <a href="" target="_blank" class="user-name">用户名:${list.user.username}-评论ID:${list.commentid}</a>
                                <p>${list.content}</p>
                                <div class="ds-post-main">
                                    <input name="id" value="${list.commentid}" hidden>
                                    <button class="reply">回复</button>
                                </div>
                                <p>
                                    <c:forEach items="${list.reply}" var="reply">
                                <p CLASS="user-name">回复ID${reply.commentid}:内容:${reply.content}--NEWSID= ${reply.newsid}--iscomment${reply.iscomment}</p>
                                </c:forEach>
                                </p>
                            </div>
                        </c:forEach>
                        <p>
                            <button class="reply2">发表评论</button>
                        </p>
                    </div>
                </div>
            </div>
            <div style="text-align:center;clear:both"/>
            <div class="clear"/>
        </div>
    </div>
    <script>
    var show = false;
    $(".reply").click(function () {
        if (show)
            return;
        show = true;
        console.log(123456);
        $(".form").remove();
        var r = $('<div class="ui form" style="margin-bottom:20px"></div>');
        var f = $('<form method="get" action="/newsComment/addself"></form>');
        f.append($('<div class="contentField field"></div>').append($('<textarea name="content" style="resize:none" placeholder="回复内容"></textarea>')));
        f.append($('<div class="contentField field"></div>').append($('<textarea name="iscomment" style="resize:none" placeholder="当前评论ID"></textarea>')));
        //f.append($('<input name="newsid" hidden readonly>').val($(this).parents().find(".content").find("[name=id]").val() ));
        f.append($('<input name="newsid" hidden readonly>').val(${news.newsid}));
        f.append($('<input name="uid" hidden readonly>').val(${sessionScope.user.uid}));
        //f.append($('<input name="iscomment" hidden readonly>').val($(this).parents().find(".ds-comment-body").find(".wrapper").find(".ds-post-main").find("[name=id]").val()));
        f.append($('<div class="ui teal submit"></div>').append($('<button type="submit" class="btn btn-info">提交评论</button>')));
        r.append(f);
        $(this).parent().parent().append(r);
        var cancel = $('<a class="cancel"  href="javascript:void(0)">取消回复</a>"');
        cancel.click(function () {
            if (!show)
                return;
            $(".form").remove();
            $(this).remove();
            show = false;
        });
        $(this).parent().append(cancel);
    });
    $(".reply2").click(function () {
        if (show)
            return;
        show = true;
        $(".form").remove();
        var r = $('<div class="ui form" style="margin-bottom:20px"></div>');
        var f = $('<form method="get" action="/newsComment/addself"></form>');
        f.append($('<div class="contentField field"></div>').append($('<textarea name="content" style="resize:none" placeholder="评论内容"></textarea>')));
        f.append($('<input name="newsid" hidden readonly>').val(${news.newsid}));
        f.append($('<input name="uid" hidden readonly>').val(${sessionScope.user.uid}));
        f.append($('<input name="iscomment" hidden readonly>').val(0));
        f.append($('<div class="ui teal submit"></div>').append($('<button type="submit" class="btn btn-info">提交评论</button>')));
        r.append(f);
        $(this).parent().parent().append(r);
        var cancel = $('<a class="cancel"  href="javascript:void(0)">取消评论</a>"');
        cancel.click(function () {
            if (!show)
                return;
            $(".form").remove();
            $(this).remove();
            show = false;
        });
        $(this).parent().append(cancel);
    });
</script>
</c:if>
<style type="text/css">
    a {
        text-decoration: none;
    }

    a img {
        border: 0;
    }

    a:hover {
        text-decoration: underline;
    }

    .user-name {
        font-size: 14px;
        font-weight: bold;
        color: #DE4C1C;
    }

    .wrapper {
        margin: 0 auto;
    }

    /*    h1 {
            font-size: 18px;
            line-height: 30px;
            text-align: center;
            margin: 100px 0;
        }

        h1 span {
            font-size: 12px;
            color: #696A52;
        }*/

    /* comment style */
    .ds-post-main {
        position: relative;
        margin-bottom: 30px;
    }

    .ds-avatar {
        z-index: 2;
        position: absolute;
        top: 48px;
        left: -20px;
        padding: 5px;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        box-shadow: -1px 0 1px rgba(0, 0, 0, .15) inset;
        background: #E5E6D0 url(/Home/bg.jpg) repeat 0 0;
    }

    .ds-avatar a {
        display: block;
        padding: 1px;
        width: 32px;
        height: 32px;
        border: 1px solid #B9BAA6;
        border-radius: 50%;
        background-color: #fff;
        -moz-transition: color 0.15s linear;
        -webkit-transition: color 0.15s linear;
        transition: color 0.15s linear;
    }

    .ds-avatar img {
        display: block;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        box-shadow: 0 1px 5px rgba(0, 0, 0, 0.22);
    }

    .ds-comment-body, .ds-avatar, .ds-avatar a,
    .ds-avatar img {
        -webkit-transition: .4s all ease-in-out;
        -moz-transition: .4s all ease-in-out;
        -o-transition: .4s all ease-in-out;
        -ms-transition: .4s all ease-in-out;
    }

    .ds-post-main:hover .ds-avatar img {
        -webkit-transform: rotate(360deg);
        -moz-transform: rotate(360deg);
        -o-transform: rotate(360deg);
        -ms-transform: rotate(360deg);
        transform: rotate(360deg);
    }

    .ds-comment-body {
        z-index: 1;
        position: relative;
        left: 0;
        background: #F0F0E3;
        padding: 15px 15px 15px 47px;
        color: #696A52;
        border-radius: 5px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, .15), 0 1px 0 rgba(255, 255, 255, .75) inset;
    }


    /* layout */
    .ds-post-main:hover .ds-comment-body {
        /* left: 40px;*/
        /*鼠标监听会左移评论栏*/
    }

    .ds-post-main:hover .ds-avatar:after, .ds-post-main:hover .ds-avatar a:after, .ds-post-main:hover .ds-avatar a:before {
        position: absolute;
        content: '+';
        font-size: 18px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        color: #696A52;
    }

    .ds-post-main:hover .ds-avatar:after {
        top: 14px;
        left: 56px;
    }

    .ds-post-main:hover .ds-avatar a:after {
        top: 9px;
        left: 48px;
    }

    .ds-post-main:hover .ds-avatar a:before {
        top: 9px;
        left: -29px;
    }

    .ds-post-main:hover .ds-avatar {
        left: -40px;
    }

    .ds-post-main:hover .ds-avatar a {
        position: relative;
        left: -80px;
    }

    .ds-post-main:hover .ds-avatar a img {
        position: relative;
        left: -80px;
    }
</style>
<style type="text/css">
    :root {
        --primary: 0, 0%, 100%;
        --secondary: 202, 73%, 28%;
        --c: cubic-bezier(1, .49, .16, .96);
    }

    .btn {
        --w: 200px;
        --h: 50px;
        position: relative;
        display: -webkit-box;
        display: flex;
        width: var(--w);
        height: var(--h);
        border: 1px solid hsl(var(--primary));
    }

    div {
        margin-bottom: 20px;
    }

    div:last-child {
        margin-bottom: 0px;
    }

    i {
        content: '';
        width: 100%;
        height: 100%;
        -webkit-transition: all .5s var(--c);
        transition: all .5s var(--c);
        background: hsl(var(--primary));
    }

    i:nth-child(1) {
        -webkit-transition-delay: .02s;
        transition-delay: .02s;
    }

    i:nth-child(2) {
        -webkit-transition-delay: .04s;
        transition-delay: .04s;
    }

    i:nth-child(3) {
        -webkit-transition-delay: .06s;
        transition-delay: .06s;
    }

    i:nth-child(4) {
        -webkit-transition-delay: .08s;
        transition-delay: .08s;
    }

    i:nth-child(5) {
        -webkit-transition-delay: .10s;
        transition-delay: .10s;
    }

    i:nth-child(6) {
        -webkit-transition-delay: .12s;
        transition-delay: .12s;
    }

    i:nth-child(7) {
        -webkit-transition-delay: .14s;
        transition-delay: .14s;
    }

    i:nth-child(8) {
        -webkit-transition-delay: .16s;
        transition-delay: .16s;
    }

    i:nth-child(9) {
        -webkit-transition-delay: .18s;
        transition-delay: .18s;
    }

    i:nth-child(10) {
        -webkit-transition-delay: .2s;
        transition-delay: .2s;
    }

    spanbutton {
        position: absolute;
        width: 100%;
        font-size: 14px;
        font-weight: inherit;
        line-height: var(--h);
        letter-spacing: 25px;
        text-align: center;
        text-transform: uppercase;
        color: #f7931a;
        /*hsl(var(--primary))*/
        -webkit-transition: all .4s var(--c);
        transition: all .4s var(--c);
        z-index: 100;
    }

    .style-1,
    .style-2 {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        flex-direction: column;
    }

    .style-3,
    .style-4,
    .style-5,
    .style-6 {
        -webkit-box-orient: horizontal;
        -webkit-box-direction: normal;
        flex-direction: row;
    }

    .style-1 i,
    .style-5 i {
        -webkit-transform-origin: center;
        transform-origin: center;
    }

    .style-2 i,
    .style-6 i {
        -webkit-transform-origin: center;
        transform-origin: right;
    }

    .style-3 i {
        -webkit-transform-origin: center bottom;
        transform-origin: center bottom;
    }

    .style-4 i {
        -webkit-transform-origin: center top;
        transform-origin: center top;
    }

    .style-1 i,
    .style-2 i,
    .style-5 i,
    .style-6 i {
        -webkit-transform: scaleX(0);
        transform: scaleX(0);
    }

    .style-3 i,
    .style-4 i {
        -webkit-transform: scaleY(0);
        transform: scaleY(0);
    }

    .style-1:hover i,
    .style-2:hover i,
    .style-5:hover i,
    .style-6:hover i {
        -webkit-transform: scaleX(1);
        transform: scaleX(1);
    }

    .style-3:hover i,
    .style-4:hover i {
        -webkit-transform: scaleY(1);
        transform: scaleY(1);
    }

    btn:hover span {
        color: hsl(var(--secondary));
        -webkit-transition-delay: .4s;
        transition-delay: .4s;
    }
</style>

<%--<c:if test="${sessionScope.user.level==2}">--%>
<jsp:include page="bottom.jsp"/>