<%@include file="../header.jsp" %>
<%@include file="../popupBoxJS.jsp" %>


<div class="container">
    <div class="header-logo">
        <h1><a href="${SITE_URL}/">KABITA's <span>Event</span></a></h1>
        <div class="header-logo">

        </div>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    </div>
    <style>
        body
        {
            font-family: 'Lato', 'sans-serif';
        }
        .profile 
        {
            min-height: 355px;
            display: inline-block;
        }
        figcaption.ratings
        {
            margin-top:20px;
        }
        figcaption.ratings a
        {
            color:#f1c40f;
            font-size:11px;
        }
        figcaption.ratings a:hover
        {
            color:#f39c12;
            text-decoration:none;
        }
        .divider 
        {
            border-top:1px solid rgba(0,0,0,0.1);
        }
        .emphasis 
        {
            border-top: 4px solid transparent;
        }
        .emphasis:hover 
        {
            border-top: 4px solid #1abc9c;
        }
        .emphasis h2
        {
            margin-bottom:0;
        }
        span.tags 
        {
            background: #1abc9c;
            border-radius: 2px;
            color: #f5f5f5;
            font-weight: bold;
            padding: 2px 4px;
        }
        .dropdown-menu 
        {
            background-color: #34495e;    
            box-shadow: none;
            -webkit-box-shadow: none;
            width: 250px;
            margin-left: -125px;
            left: 50%;
        }
        .dropdown-menu .divider 
        {
            background:none;    
        }
        .dropdown-menu>li>a
        {
            color:#f5f5f5;
        }
        .dropup .dropdown-menu 
        {
            margin-bottom:10px;
        }
        .dropup .dropdown-menu:before 
        {
            content: "";
            border-top: 10px solid #34495e;
            border-right: 10px solid transparent;
            border-left: 10px solid transparent;
            position: absolute;
            bottom: -10px;
            left: 50%;
            margin-left: -10px;
            z-index: 10;
        }
        .color-white p{
            color:#000000 !important;
        }
    </style>
    <div class="top-nav">
        <p></p>
        <span> <a href="${SITE_URL}/logout" class="Signup play-icon">Logout</a></span>
    </div>
    <div class="cus-nav">
        <span><a href="${SITE_URL}/events/create" class="Signup play-icon">Create Event</a> 
            <a href="${SITE_URL}/users/addDetails" class="Signup play-icon">Update Profile</a></span>


        <div>
            <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
                        <div class="well profile">
                            <div class="col-sm-12">
                                <div class="col-xs-12 col-sm-8 color-white">
                                    


                                    <h2><span class="fa fa-user"> ${userDetail.firstName}${userDetail.lastName}</span></h2><br/>
                                    <span class="fa fa-book"><strong> Contact No: </strong>${userDetail.contactNo} </span><br/>
                                        <strong>Username: </strong> ${user.username}<br/>
                                        <strong>Email: </strong> ${user.email}<br/>
                                        <strong>Description: </strong> ${userDetail.profileDescription}<br/>
                                        <p><strong>Porfolio Links: </strong></p>
                                            LinkedIn Link:<span class="tags">${userDetail.linkedin}</span><br/><br/>
                                            Github Link:<span class="tags">${userDetail.github}</span><br/>
                                            
                                        </p>
                                    </div>             
                                    <div class="col-xs-12 col-sm-4 text-center">
                                        <figure>
                                            <img src="${SITE_URL}/static/resources/images/profilepics/${userDetail.userId}.jpg" alt="" class="img-circle img-responsive">
                                        </figure>
                                    </div>
                                </div>            
                                <div class="col-xs-12 divider text-center">
                                    <div class="col-xs-12 col-sm-4 emphasis">
                                        <h2><strong> 7 </strong></h2>                    
                                        <small>Events</small>
                                        <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> My Events</button>
                                    </div>
                                    <div class="col-xs-12 col-sm-4 emphasis">
                                        <h2><strong>245</strong></h2>                    
                                        <small>Following</small>
                                        <a href="${SITE_URL}/users/addDetails"><button class="btn btn-info btn-block"><span class="fa fa-user"></span> View Profile </button></a>
                                    </div>
                                    
                                </div>
                            </div>  
                        
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


<%@include file="../footer.jsp" %>           