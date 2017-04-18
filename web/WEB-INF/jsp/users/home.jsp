<%@include file="../header.jsp" %>
<%@include file="../popupBoxJS.jsp" %>
	
    
<div id="home" class="header">
    <div class="container">
        <div class="header-logo">
            <h1><a href="${SITE_URL}/">KABITA's <span>Event</span></a></h1>
            <div class="header-logo">
                <c:forEach var="usr" items="${user}">
                    <h3> "${usr.id} Welcome !!"</h3>
                </c:forEach>
                
                
            </div>
         
        </div>
            <div class="top-nav">
                <span> <a href="${SITE_URL}/logout" class="Signup play-icon">Logout</a>
                </div>
            
    </div>

</div>
                
 <%@include file="../footer.jsp" %>           