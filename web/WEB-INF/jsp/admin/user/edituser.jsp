<%@include file="../../header.jsp" %>

<div class="container">
    <div class="page-header">
        <h1>EDIT Users: Admin panel</h1>
        <p class="lead">Here you can Edit User's Auth-Details.</p>
    </div>

    <form class="form-horizontal" method="POST" action="${SITE_URL}/admin/user/save">
        <div class="form-group">
            <label for="userId" class="col-sm-2 control-label">User ID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="userId" name="userId" value="${user.id}">
            </div>
        </div>
            
        <div class="form-group">
            <label for="username" class="col-sm-2 control-label">Username</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" name="username" value="${user.username}">
            </div>
        </div>

        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" name="email" value="${user.email}">
            </div>
        </div>

        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" name="password" value="${user.password}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Update</button>
            </div>
        </div>
    </form>
</div>
<%@include file="../../footer.jsp" %>