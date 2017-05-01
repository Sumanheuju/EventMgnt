<%@include file="../../header.jsp" %>
<%@include file="../../nav.jsp" %>

<div class=container>
	<div class="page-header">
		<h1>Show All Users:</h1>
		<p class="lead">Here you can View User's Details.</p>
	</div>
	
    
    <table class="table table-bordered table-responsive table-hover">
        <tr>
            <th>Profile-Picture</th>
            <th>Name</th>
            <th>Contact-No</th>
            <th>Profile-Description</th>
            <th>Linkedin Link</th>
            <th>Github Link</th>
            <th>Status</th>
        </tr>
        <c:forEach var="udd" items="${userdetails}">
            <tr>
                <td><img src="${SITE_URL}/static/resources/images/profilepics/${udd.userId}.jpg" height="60px" alt="image" /></td>
                <td>${udd.firstName} ${udd.lastName}</td>
                <td>${udd.contactNo}</td>
                <td>${udd.profileDescription}</td>
                <td>${udd.linkedin}</td>
                <td>${udd.github}</td>
                <td>${udd.status}</td>
                
                
            </tr>
        </c:forEach>
        
    </table>
	
	
</div>	
                
 <%@include file="../../footer.jsp" %>           