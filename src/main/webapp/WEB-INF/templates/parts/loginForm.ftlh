<#import "projectPage.ftlh" as page>

<#macro loginForm>
    <!-- Modal -->
    <div class="modal fade" id="loginModal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Login</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body" style="padding:40px 50px;">
                    <form role="form" method="post" action = "/login">
                        <div class="form-group">
                            <label for="userName">Username</label>
                            <input type="text" class="form-control" name="userName" placeholder="Enter user name">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password</label>
                            <input type="password" class="form-control" name="pwd" placeholder="Enter password">
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" value="" checked name="rememberUser"> Remember me</label>
                        </div>
                        <button class="btn btn-primary" type="submit" name="loginSubmit">Login</button>

                        <div class="col-form-label" id="message"><#if error??>${error}</#if></div>

                        <#if action?? >
                            <#if action == "login">
                                <#if !page.isKnown>
                                    <script>
                                        $(document).ready(function(){
                                            // Show the Modal on load
                                            $("#loginModal").on('show.bs.modal', function (event) {
                                                $("#message").text("<#if error??> ${error}</#if>");
                                            });
                                            $("#loginModal").modal("show");
                                        });
                                    </script>
                                </#if>
                            </#if>
                        </#if>
<#--                        <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                    </form>
                </div>

                <div class="modal-footer">
                    <p>Not a member? <a href="/signUp" ta-toggle="modal" data-target="#signUpModal">Sign Up</a></p>
                    <p>Forgot <a href="#">Password?</a></p>
                </div>
            </div>

        </div>
    </div>
</#macro>