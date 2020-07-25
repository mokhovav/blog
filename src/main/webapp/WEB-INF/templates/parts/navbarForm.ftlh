<#import "loginForm.ftlh" as login>
<#import "projectPage.ftlh" as page>
<#import "signUpForm.ftlh" as signUp>

<#macro navbarForm title>
    <@login.loginForm/>
    <@signUp.signUpForm/>
    <!--navigation bar -lg -Screen size for no collapsed menu. -light - Color theme -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">${title}</a>
        <!-- Button on the screen that less than -lg -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Navigation bar. collapse - collapsible-->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!--automatically generated menu-->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item" >
                    <#if page.isAdmin>
                        <a  class="nav-link" href="/controlPanel">User Control</a>
                    </#if>
                </li>
            </ul>
            <div class="navbar-text">
                <span>${page.userName}</span>
                <label class="col-form-label">  </label>
            </div>
            <div>
                <#if page.isKnown>
                    <a class="nav-link" href="/logout"> logout</a></a>
                <#else>
                    <a class="nav-link" href="/login" data-toggle="modal" data-target="#loginModal">login</a>
                </#if>
            </div>
        </div>
    </nav>
</#macro>



