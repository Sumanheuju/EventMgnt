<%@include file="../../header.jsp" %>

<div class="container">
    <div class="page-header">
		<h1>Show Users: Admin panel</h1>
		<p class="lead">Here you can View User's Auth-Details.</p>
	</div>
    <table class="table table-bordered table-responsive table-hover">
        <tr>
            <th>User-Id</th>
            <th>Username</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach var="us" items="${users}">
            <tr>
                <td>${us.id}</td>
                <td>${us.username}</td>
                <td>${us.email}</td>
                <td>${us.password}</td>
                <td>
                    <a href="${SITE_URL}/admin/user/edit/${us.id}"><button class="btn btn-sm btn-success">Edit</button></a>
                    <a href="${SITE_URL}/admin/user/delete/${us.id}" onclick="return confirm('Are you Sure !! :D')"><button class="btn btn-sm btn-danger">DELETE</button></a>
                    <a href="${SITE_URL}/admin/user/show"><button class="btn btn-sm btn-primary">Profile</button></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="../../footer.jsp" %>
