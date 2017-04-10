
<%@include file="../../header.jsp" %>

<div class="container">
    <table class="table table-stripped table-hover table-bordered">
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
        
        <c:forEach var="usr" items="${users}">
            <tr>
                <td>${usr.id}</td>
                <td>${usr.username}</td>
                <td>${usr.email}</td>
                <td>${usr.password}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="../../footer.jsp" %>