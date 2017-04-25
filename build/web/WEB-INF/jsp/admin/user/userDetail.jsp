<%@include file="../../header.jsp" %>
<%@include file="../../nav.jsp" %>

<div class=container>
	<div class="page-header">
		<h1>Show All Users:</h1>
		<p class="lead">Here you can View User's Details.</p>
	</div>
	
    
    <table>
        <tr>
            <th>Profile-Picture</th>
            <th>Name</th>
            <th>Contact-No</th>
            <th>Profile-Description</th>
            <th>Linkedin Link</th>
            <th>Github Link</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        
        <c:forEach var="ud" items="userDetail">
            <tr>
                <td><img src="${SITE_URL}/resources/images/profilepics/Suman4.jpg" height="60px" alt="image" /></td>
                <td>${ud.firstName}</td>
                <td>${ud.contactNo}</td>
                <td>${ud.profileDescription}</td>
                <td>${ud.linkedin}</td>
                <td>${ud.github}</td>
                <td>${ud.status}</td>
                <td>
                    <a href="/edit/${ud.userId}">Edit</a>
                    <a href="/delete/${ud.userId}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
	
	
</div>	
                
 <%@include file="../../footer.jsp" %>           