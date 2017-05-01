
<%@include file="../header.jsp" %>
<%@include file="../nav.jsp" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(function () {
        $("#datepicker").datepicker();
        $("#format").on("change", function () {
            $("#datepicker").datepicker("option", "dateFormat", $(this).val());
        });
    });
</script>
<div class="top-nav">
    <p></p>
    <span> 
        <a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/events/myevents">Back</a>
        <a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/logout">Logout</a>
    </span>
</div>

<div class=container>
    <div class="page-header">
        <h1>Add Events</h1>
        <p class="lead">Here you can Add Event.</p>
    </div>

    <form:form action="${SITE_URL}/events/save" method="post" commandName="event" enctype="multipart/form-data">
        <div class="form-group">
            <form:input type="hidden" name="id" class="form-control" id="id" path="id"/>
        </div>
        <div class="form-group">
            <label for="eventName">Event Name</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="eventName" cssStyle="color:red"/>
            <form:input type="text" name="eventName" class="form-control" id="eventName" placeholder="Event Name" path="eventName"/>
        </div>
        <div class="form-group">
            <form:input type="hidden" name="userId" class="form-control" id="userId" path="userId"/>
        </div>

        <div class="form-group">
            <label for="eventImage">Upload Event Image</label>
            <form:input path="eventImage" type="file" name="eventImage" id="eventImage" class="form:input-large"/>
            <!-- <p class="help-block">Example block-level help text here.</p> -->
        </div>
        <div class="form-group">
            <label for="eventLocation">Event Location</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="eventLocation" cssStyle="color:red"/>
            <form:input type="text" name="eventLocation" class="form-control" id="eventLocation" placeholder="Event Location" path="eventLocation"/>
        </div>

        <div class="form-group">
            <label for="eventDateTime">Event Date</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="eventDateTime" cssStyle="color:red"/>
            <form:input type="text" name="eventDateTime" size="30" class="form-control" id="datepicker" placeholder="Event Date" path="eventDateTime"/>
            <p>Format options:<br>
                <select id="format">
                    <option value="mm/dd/yy">Default - mm/dd/yy</option>
                    <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
                    <option value="d M, y">Short - d M, y</option>
                    <option value="d MM, y">Medium - d MM, y</option>
                    <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
                    <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - 'day' d 'of' MM 'in the year' yy</option>
                </select>
            </p>
        </div>

        <div class="form-group">
            <label for="eventDescription">Event Description</label>
            <form:textarea type="text" class="form-control" id="datepicker" placeholder="Event Description" path="eventDescription"/>
        </div>

        <div class="form-group">
            <label for="eventPrice">Event Price</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="eventPrice" cssStyle="color:red"/>
            <form:input type="text" name="eventPrice" class="form-control" id="eventPrice" placeholder="Event Price" path="eventPrice"/>
        </div>

        <div class="form-group">
            <label>Status</label>
            <label class="radio-inline">
                <form:radiobutton path="status" id="inlineRadio1" value="1"/>Active
            </label>
            <label class="radio-inline">
                <form:radiobutton path="status" id="inlineRadio2" value="0"/>Inactive	
            </label>
        </div>



        <button type="submit" class="btn btn-primary">  Submit</button><a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/event/myEvents">  Cancel</a>
    </form:form>

</div>	


<%@include file="../footer.jsp" %>
