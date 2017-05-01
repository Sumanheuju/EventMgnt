<%@page import="com.themercinaries.kabita.eventmgnt.dao.impl.UserDAOImpl"%>
<%@page import="com.themercinaries.kabita.eventmgnt.dao.UserDAO"%>
<%@include file="../../header.jsp" %>
    <div class="container">
        <h1>All Events Details:</h1>
        <table class="table table-bordered table-responsive">
            <tr>
                <th>Image Thumb</th>
                <th>Event Name</th>
                <th>Event Organizer</th>
                <th>Event Location</th>
                <th>Event Date</th>
                <th>Event Description</th>
                <th>Event Price</th>
                <th>Added Date</th>
                <th>Status</th>
            </tr>
            <c:forEach var="ev" items="${events}">
                <tr>
                    <td><img src="${SITE_URL}/static/resources/images/eventsimages/${ev.eventName}.jpg" height="60px" alt="image" /></td>
                    <td>${ev.eventName}</td>
                    <td>${ev.userId}</td>
                    <td>${ev.eventLocation}</td>
                    <td>${ev.eventDateTime}</td>
                    <td>${ev.eventDescription}</td>
                    <td>${ev.eventPrice}</td>
                    <td>${ev.addedDate}</td>
                    <td>${ev.status}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
<%@include file="../../footer.jsp" %>