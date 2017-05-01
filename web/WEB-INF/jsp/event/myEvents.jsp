
<%@include file="../header.jsp" %>

<div class="container">
    <div class="page-header">
		<h1>Show Events: ${userDetail.firstName} ${userDetail.lastName}</h1>
		<p class="lead">${userDetail.firstName} ,Here you can View your Event's Details.</p>
	</div>
    <table class="table table-bordered table-responsive table-hover">
        <tr>
            <th>Img Thumb</th>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Event Location</th>
            <th>Event Date</th>
            <th>Event Description</th>
            <th>Event Price</th>
            <th>Event Added-Date</th>
            <th>Action</th>
            
        </tr>
        <c:forEach var="ev" items="${event}">
            <tr>
                <td><img src="${SITE_URL}/static/resources/images/eventsimages/${ev.eventName}.jpg" height="60px" alt="image" /></td>
                <td>${ev.id}</td>
                <td>${ev.eventName}</td>
                <td>${ev.eventLocation}</td>
                <td>${ev.eventDateTime}</td>
                <td>${ev.eventDescription}</td>
                <td>${ev.eventPrice}</td>
                <td>${ev.addedDate}</td>
                <td>
                    <a href="${SITE_URL}/events/edit/${ev.id}"><button class="btn btn-sm btn-success">Edit</button></a>
                    <a href="${SITE_URL}/events/delete/${ev.id}" onclick="return confirm('Are you Sure !! :D')"><button class="btn btn-sm btn-danger">DELETE</button></a>
                    <a href="${SITE_URL}/users/home"><button class="btn btn-sm btn-primary">Profile</button></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="../footer.jsp" %>
