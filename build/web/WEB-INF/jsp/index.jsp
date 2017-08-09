
<%@include file="header.jsp" %>
<div id="home" class="header">
    <%@include file="nav.jsp" %>
    <div class="top-nav">
        <p>You are not Logged in, <a class="Signup play-icon popup-with-zoom-anim" href="#small-dialog3">Log in here </a>   or<span> <a class="Signup play-icon popup-with-zoom-anim" href="#small-dialog2">Register</a></P>
    </div>
    <!-- header -->
    <div class="clearfix"> </div>

    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--//End-slider-script -->
    <div  id="top" class="callbacks_container">

        <c:if test="${param.error != null}">
            <div class="alert alert-danger alert-dismissible fade in" role="alert"> 
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button> 
                <strong>Invalid Username/Password !!</strong> <br/>
                Sorry You àre not Sexy!! You cant login ! :D 
            </div>
        </c:if> 

        <ul class="rslides" id="slider4">

            <c:forEach var="ev" items="${event}">
                <li>
                    <div class="header-info">

                        <p>${ev.eventName}</p>
                        <p>BY<span> HARRY</span><span class="sub-text">POTTER</span></p>
                        <p>	${ev.eventLocation}</p>
                        <div class="red">${ev.eventDateTime}</div>



                        <div class="cus-nav"><a href="#">View Here</a></div>
                    </div>
                </li>
            </c:forEach>

        </ul>
        <div class="clearfix"> </div>
        <!-- banner Slider Ends Here --> 
    </div>
</div>
<!-- container -->
</div>
<!-- header -->
<!-- sticky -->
<div class="sticky">
    <!-- container -->
    <div class="container">
        <div class="top-header">
            <div class="fixed-header">
                <div class="sticky-logo">
                    <h1><a class="scroll" href="#home">FRANKY's <span>Event</a> </span></h1>
                </div>	
                <div class="sticky-nav">
                    <ul>
                        <li><a class="scroll active" href="#about">About</a></li>   
                        <li><a class="scroll" href="#event">Event</a></li>
                        <li><a class="scroll" href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- container -->	
</div>
<!-- sticky -->
<!-- script-for sticky-nav -->
<script>
    $(document).ready(function () {
        var navoffeset = $(".top-header").offset().top;
        $(window).scroll(function () {
            var scrollpos = $(window).scrollTop();
            if (scrollpos >= navoffeset) {
                $(".top-header").addClass("fixed");
            } else {
                $(".top-header").removeClass("fixed");
            }
        });

    });
</script>
<!-- /script-for sticky-nav -->
<!-- banner -->
<div class="banner">
    <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span> </span></a>

    <!-- pop-up-box -->
    <%@include file="popupBoxJS.jsp" %>
    <!--//pop-up-box-->

    <!--    Video Playing Embed Code-->
    <div id="small-dialog" class="mfp-hide">
        <iframe src="https://www.youtube.com/embed/cNTspQ5uUUU" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
    </div>	

    <!--    Login KO Form-->
    <div id="small-dialog3" class="mfp-hide">
        <form method="POST" action="${SITE_URL}/save">
            <div class="login">
                <h3>Login</h3>
                <p>Enter your account details to login</p>

                <input type="text" name="email" maxlength="20" value="EMAIL" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'EMAIL';
                        }">			

                <input type="password" name="password" maxlength="10" placeholder="PASSWORD" onfocus="this.value = '';" onblur="if (this.value == '')">							

                <input type="submit"  value="Submit"/>
            </div>
        </form>
    </div>

    <!--  Register KO Form-->        
    <div id="small-dialog2" class="mfp-hide">
        <form method="POST" action="${SITE_URL}/register/save">
            <div class="signup">
                <h3>Register</h3>
                <h4>Please Enter Your Details</h4>
                <input type="text" name="username" placeholder="Username" onfocus="this.value = '';" onblur="if (this.value == '')" />
                <input type="text" class="email" name="email"  placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '')"  />
                <input type="password" class="password" name="password"  placeholder="Password" onfocus="this.value = '';" onblur="if (this.value == '')"/>
                <input type="password" class="email"  placeholder="Confirm Password" onfocus="this.value = '';" onblur="if (this.value == '')"/>
                <input type="submit" value="Submit"/>
            </div>
        </form>
    </div>	

    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>	
</div>
<!-- banner -->
<!-- about -->
<div id="about" class="about">
    <!-- container -->	
    <div class="container">
        <h3>About Us</h3>
        <label> </label>
    </div>
    <!-- container -->	
    <div class="border">

    </div>
    <!-- about-info -->
    <div class="about-info">
        <!-- container -->	
        <div class="container">
            <div class="col-md-8 about-info-left">
                <p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. 

                    <span>Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue.</span></p>

                <p class="bottom-text">"Sed non neque elit. Sed ut imperdiet nisi. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, ut aliquam massa nisl quis neque. Suspendisse in orci enim."</p>
                <!--                <div class="map">
                                    <img src="${SITE_URL}/static/images/map.png" alt="" />
                                </div>-->
            </div>
            <div class="col-md-4 about-info-right">
                <div class="about-img">
                    <img src="${SITE_URL}/static/images/3.png" alt="" />
                </div>
                <!--                <div class="about-right-hedding">
                                    <h3>TIMELINE</h3>
                                </div>
                                <div class="border-bottom1"> </div>
                                <div class="timeline-grid">
                                    <label class="red"> </label>
                                    <h4>2012</h4>
                                    <p>Was born</p>
                                </div>
                                <div class="timeline-grid middle">
                                    <label class="red1"> </label>
                                    <h4>2013</h4>
                                    <p>1st Album Launch</p>
                                </div>
                                <div class="timeline-grid bottom">
                                    <label class="red2"> </label>
                                    <h4>2014</h4>
                                    <p>3rd Album Launch</p>
                                </div>
                                <div class="border-bottom3"> </div>-->

            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- container -->	
        <div class="border-bottom"> </div>
    </div>
    <!-- about-info -->
</div>
<!-- about -->
<!-- content-events -->
<div id="event" class="content-event">
    <!-- container -->
    <div class="container">
        <h3>Events</h3>
        
        <c:forEach var="ev" items="${event}">
            <div class="event-grids">

                <div class="col-md-6 event-grid">
                    <div class="pic"> </div>
                    <ul>
                        <li class="hedding">${ev.eventName}</li>
                        <li class="date">${ev.eventDateTime}</li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 event-grid small-text">
                    <p>${ev.eventDescription}</p>
                </div>
                <div class="col-md-2 event-grid large-text">
                    <p class="text">$ ${ev.eventPrice}</p>
                </div>
                <!--            <div class="col-md-3 event-grid text-button">
                                <ul>
                                    <li class="num">100 tickets Available</li>
                                    <li class="button yellow"><a href="#">Buy Ticket</a></li>
                                </ul>
                            </div>
                -->

                <div class="clearfix"> </div>
            </div>
        </c:forEach>

    </div>
    <!-- container -->
</div>
<!-- contact-events -->
<!-- portfolio 
<div class="portfolio">
     container 
    <div class="container">
        <h3>Gallery</h3>
        <div class="gallery-images">
            <div class="gallery-image">
                <img src="${SITE_URL}/static/images/3.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="gallery-image">
                <img src="${SITE_URL}/static/images/4.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="gallery-image right">
                <img src="${SITE_URL}/static/images/5.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="gallery-image">
                <img src="${SITE_URL}/static/images/7.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="gallery-image">
                <img src="${SITE_URL}/static/images/6.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="gallery-image right">
                <img src="${SITE_URL}/static/images/8.jpg" alt="" />
                <div class="caption">
                    <span> </span>
                </div>
            </div>
            <div class="clearfix"> </div>
            <div class="gallery-text">

            </div>
        </div>
    </div>
     container 
</div>-->
<!-- portfolio -->
<!-- contact -->
<%@include file="footer.jsp" %>