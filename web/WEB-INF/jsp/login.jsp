<%@include file="header.jsp" %>
<div class="container">
    <!--Pulling Awesome Font -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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
        <div class="row">
            <form method="POST" action="${SITE_URL}/save">
                <div class="col-md-offset-5 col-md-3">
                    <div class="form-login">
                        <h4>Welcome back.</h4>
                        <input type="email" id="email" name="email" class="form-control input-sm chat-input" placeholder="email" />
                        </br>
                        <input type="password" id="password" name="password" class="form-control input-sm chat-input" placeholder="password" />
                        </br>
                        <div class="wrapper">
                            <span class="group-btn">     
                                <button type="submit" class="btn btn-primary btn-md"><i class="fa fa-sign-in"> Login </i></button>
                            </span>
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>

</div>
<%@include file="footer.jsp" %>