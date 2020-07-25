<#import "projectPage.ftlh" as page>

<#macro signUpForm>
    <!-- Modal -->
    <div class="modal fade" id="signUpModal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Sign Up</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body" style="padding:40px 50px;">
                    <form role="form" method="post" action = "/signUp" modelAttribute="userData">
                        <div class="form-group">
                            <label for="userName">Username</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter user name" >
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password</label>
                            <input type="password" class="form-control" name="signPwd" placeholder="Enter password">
                        </div>
                        <div class="form-group">
                            <label for="confPwd">Confirm password</label>
                            <input type="password" class="form-control" name="confirmSignPwd" placeholder="Confirm password">
                        </div>
                        <div class="col-form-label" id="message"><#if error??> ${error}</#if></div>

                        <button class="btn btn-primary" type="submit" name="signUpSubmit">Submit</button>

                        <#if action?? >
                            <#if action == "signUp">
                                <#if !page.isKnown>
                                    <script>
                                        $(document).ready(function(){
                                            $("#signUpModal").modal("show");
                                        });
                                    </script>
                                </#if>
                            </#if>
                        </#if>

<#--                        <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                    </form>
                </div>

                <div class="modal-footer">
                </div>
            </div>

        </div>
    </div>
</#macro>
