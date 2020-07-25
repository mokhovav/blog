<#macro head title>
    <!DOCTYPE html>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <title>${title}</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="webjars/bootstrap/4.5.0/css/bootstrap.min.css">
        <#nested>
    </head>
</#macro>

<#macro body>
    <body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/popper.js/1.16.0/popper.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <#nested>
    </body>
</#macro>