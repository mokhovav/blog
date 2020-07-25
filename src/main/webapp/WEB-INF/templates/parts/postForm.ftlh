<#import "projectPage.ftlh" as page>

<#macro postForm>
    <!-- Modal -->
    <div class="modal fade" id="postModal" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Login</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body" style="padding:40px 50px;">
                    <#--                    <form role="form" method="post" action = "/login">-->
                    <div class="form-group">
                        <label for="postText">Post:</label>
                        <input type="text" class="form-control" id="postText" placeholder="Enter text">
                    </div>
                    <div>
                        <button class="btn btn-primary" id="postSubmit">Add</button>
                        <button class="btn btn-primary" id="postCancel">Cancel</button>
                    </div>
                    <div class="col-form-label" id="message"><#if error??>${error}</#if></div>

                    <#--                        <input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                    <#--                    </form>-->
                </div>

            </div>

        </div>
    </div>
</#macro>