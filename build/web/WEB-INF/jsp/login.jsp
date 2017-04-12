<%@include file="header.jsp" %>
<div class="container">
    <c:if test="${param.error != null}">
        <div class="alert alert-danger alert-dismissible fade in" role="alert"> 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button> 
            <strong>Invalid Username/Password !!</strong> <br/>
            Sorry Bro !! Do try again !! :D 
        </div>
    </c:if> 

    <!-- Large modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Login</button>

    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div>



                <form method="POST" action="${SITE_URL}/save">
                    <div class="form-group">
                        <label class="sr-only" for="email">Email address</label>
                        <input type="email" class="form-control" name="email" placeholder="Email" required="required">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="password">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                    </div>
                    <div class="checkbox">
                         <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>


                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>


            </div>
        </div>
    </div>

</div>
<%@include file="footer.jsp" %>