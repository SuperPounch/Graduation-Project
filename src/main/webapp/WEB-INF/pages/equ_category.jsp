<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断用户是普通用户还是管理员--%>
<jsp:include page="top2.jsp"/>
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
                <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" charset="UTF-8"></script>
                <div class="main">
                    <div id="app">
                        <c:forEach items="${equ}" var="equ">
                            <div class="box">
                                <div class="imgBox">
                                    <a href="/equipment/to_detail?equid=${equ.equid}">
                                        <img src="/img/equipment/${equ.equid}/${equ.equid}.png"
                                             style="max-height: 250px;max-width: 250px"/>
                                    </a>
                                </div>
                                <span>装备名:${equ.equname}</span>
                                <span style="margin-left: 20px">类别:${equ.category}</span>
                                <span style="margin-left: 20px">品牌:${equ.brand}</span>
                                <p>----------------------------------------------------------------</p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"/>