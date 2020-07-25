<#import "parts/projectPage.ftlh" as common>
<#import "parts/postForm.ftlh" as post>

<@common.head title = "Evrika">
<#--<link rel="stylesheet" href="css/index.css">-->

</@common.head>

<@common.body navBarTitle = "Evrika">
    <script src="/resources/js/blog.js"></script>
    <@post.postForm/>
    <h4>Welcome to Blog!</h4>

    <button class="btn btn-primary" id="newPost">New post</button>
    <p id="message"></p>
<#--    <div id="main-content" class="container">-->
<#--        <div class="row">-->
    <div class="col-md-6">
        <div class="table-responsive">
            <div class="scrollable bodyContainer" id="messagesTable">
                <table class="table table-hover table-condensed table-sm">
                    <tbody id="posts">
                    </tbody>
                </table>
            </div>
            <table class="table table-hover table-striped table-condensed">
                <tfoot>
                <!-- add your footer here... -->
                </tfoot>
            </table>
        </div>
    </div>
    <div>
        <button class="btn btn-primary" id="back">< Back</button>
        <button class="btn btn-primary" id="forward">Forward ></button>
    </div>
<#--        </div>-->
<#--    </div>-->
</@common.body>



<#--<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>--%>-->
<#--<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>-->
<#--<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>-->
<#--<%--<html>--%>-->
<#--<%--<head>--%>-->
<#--<%--    <title>Эврика</title>--%>-->
<#--<%--</head>--%>-->
<#--<%--<body>--%>-->
<#--<%--<div>--%>-->
<#--<%--    <h3>Добро пожаловать в Блоги!</h3>--%>-->
<#--<%--</div>--%>-->
<#--<%--<div>--%>-->
<#--<%--    <form:form method="POST" action="/newPost">--%>-->
<#--<%--        <button>Новый пост</button>--%>-->
<#--<%--    </form:form>--%>-->
<#--<%--    <table>--%>-->
<#--<%--        <tr>--%>-->
<#--<%--            <div>01.02.2020 11:34</div>--%>-->
<#--<%--            <div>Текст поста</div>--%>-->
<#--<%--        </tr>--%>-->
<#--<%--    </table>--%>-->
<#--<%--</div>--%>-->


<#--<%--</body>--%>-->
<#--<%--</html>--%>-->
