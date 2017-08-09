<div class="container">
    <br/>
    <br/>
</div>
<div class="border-bottom"> </div>
<div id="contact" class="contact">
    <!-- container -->
    <div class="container">
        <h3>Contact Us</h3>
        <div class="col-md-7">
            <div class="col-md-6">
                <form class="cus-nav">
                    <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '')">
                    <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '')">
                </form>
            </div>
            <div class="col-md-6">
                <form>
                    <textarea value="Message:" onfocus="if (this.value == 'Message')
                                this.value = '';" onblur="if (this.value == '')
                                            this.value = 'Message';">Message</textarea>	
                </form>
            </div>
            <div class="clearfix"> </div>
            <div class="submit-button">
                <form>
                    <input type="submit" value="SEND">
                </form>
            </div>
        </div>
        <div class="col-md-5">
            <ul>
                <li><a href="https://www.facebook.com/KabitaWAY" class="facebook"> </a></li>
                <li><a href="#" class="twitter"> </a></li>
                <li><a href="#" class="rect"> </a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- container -->
</div>
<!-- contact -->
<div class="border-bottom"> </div>
<!-- footer -->
<div class="footer">
    <div class="copyright">
        <p>
            FRANKY's <a href="https://www.facebook.com/KabitaWAY">MonkeyKing.com</a>
        </p>
    </div>
</div>
<!-- footer -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear' 
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- content-Get-in-touch -->
</body>
</html>