<%@include file="header.jsp" %>
        <div class="container">
            <h1>Login Page !</h1>
            
            <form method="POST" action="<c:url value='/admin/user/login' />">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="j_username" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="j_password" placeholder="Password">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Login</button> 
                </div>
            </form>
        </div>
<%@include file="footer.jsp" %>
