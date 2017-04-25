
<%@include file="../header.jsp" %>
<%@include file="../nav.jsp" %>
<div class="top-nav">
    <p></p>
    <span> 
        <a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/users/home">Back</a>
        <a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/logout">Logout</a>
    </span>
</div>

<div class=container>
    <div class="page-header">
        <h1>Update User's Profile</h1>
        <p class="lead">Here you can Update User's details.</p>
    </div>

    <form:form action="${SITE_URL}/users/save" method="post" commandName="userdetail" enctype="multipart/form-data">
        <div class="form-group">
            <form:input type="hidden" name="userId" class="form-control" id="userId" path="userId"/>
        </div>
        <div class="form-group">
            <label for="firstName">First Name</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="firstName" cssStyle="color:red"/>
            <form:input type="text" name="firstName" class="form-control" id="firstName" placeholder="First Name" path="firstName"/>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="lastName" cssStyle="color:red"/>
            <form:input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name" path="lastName"/>
        </div>
        <div class="form-group">
            <label for="contactNo">Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="contactNo" cssStyle="color:red"/>
            <form:input type="text" name="contactNo" class="form-control" id="contactNo" placeholder="Contact No" path="contactNo"/>
        </div>


        <div class="form-group">
            <label for="profileDescription">Profile Description</label>
            <form:textarea type="text" class="form-control" id="profileDescription" placeholder="Profile Description" path="profileDescription"/>
        </div>

        <div class="form-group">
            <label for="linkedin">Linkedin Link</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="linkedin" cssStyle="color:red"/>
            <form:input type="text" name="linkedin" class="form-control" id="linkedin" placeholder="Linkedin Link" path="linkedin"/>
        </div>

        <div class="form-group">
            <label for="github">Github Link</label>&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="github" cssStyle="color:red"/>
            <form:input type="text" name="github" class="form-control" id="github" placeholder="Github Link" path="github"/>
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

        <div class="form-group">
            <label for="profilePicture">Upload Image</label>
            <form:input path="profilePicture" type="file" name="profilePicture" id="profilePicture" class="form:input-large"/>
            <!-- <p class="help-block">Example block-level help text here.</p> -->
        </div>

        <button type="submit" class="btn btn-primary">Submit</button><a class="Signup play-icon popup-with-zoom-anim" href="${SITE_URL}/users/home">Cancel</a>
    </form:form>

</div>	


<%@include file="../footer.jsp" %>