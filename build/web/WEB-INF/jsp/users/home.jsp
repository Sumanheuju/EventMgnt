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
                                            
                                            <h2>Nicole Pearson</h2>
                                            <p><strong>About: </strong> Web Designer / UI. </p>
                                            <p><strong>Hobbies: </strong> Read, out with friends, listen to music, draw and learn new things. </p>
                                            <p><strong>Skills: </strong>
                                                <span class="tags">html5</span> 
                                                <span class="tags">css3</span>
                                                <span class="tags">jquery</span>
                                                <span class="tags">bootstrap3</span>
                                            </p>
                                        </div>             
                                        <div class="col-xs-12 col-sm-4 text-center">
                                            <figure>
                                                <img src="${SITE_URL}/static/resources/images/profilepics/1001.jpg" alt="" class="img-circle img-responsive">
                                            </figure>
                                        </div>
                                    </div>            
                                    <div class="col-xs-12 divider text-center">
                                        <div class="col-xs-12 col-sm-4 emphasis">
                                            <h2><strong> 20,7K </strong></h2>                    
                                            <p><small>Followers</small></p>
                                            <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Follow </button>
                                        </div>
                                        <div class="col-xs-12 col-sm-4 emphasis">
                                            <h2><strong>245</strong></h2>                    
                                            <p><small>Following</small></p>
                                            <button class="btn btn-info btn-block"><span class="fa fa-user"></span> View Profile </button>
                                        </div>
                                        <div class="col-xs-12 col-sm-4 emphasis">
                                            <h2><strong>43</strong></h2>                    
                                            <p><small>Snippets</small></p>
                                            <div class="btn-group dropup btn-block">
                                                <button type="button" class="btn btn-primary"><span class="fa fa-gear"></span> Options </button>
                                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                </button>
                                                <ul class="dropdown-menu text-left" role="menu">
                                                    <li><a href="#"><span class="fa fa-envelope pull-right"></span> Send an email </a></li>
                                                    <li><a href="#"><span class="fa fa-list pull-right"></span> Add or remove from a list  </a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#"><span class="fa fa-warning pull-right"></span>Report this user for spam</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#" class="btn disabled" role="button"> Unfollow </a></li>
                                                </ul>
                                            </div>
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