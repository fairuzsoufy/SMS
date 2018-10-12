 @extends('layouts.landing')

 @section('content')
 <!-- BEGAIN PRELOADER -->
 <div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<!-- END PRELOADER -->

<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<!-- END SCROLL TOP BUTTON -->

<!--=========== BEGIN HEADER SECTION ================-->
<header id="header">
  <!-- BEGIN MENU -->
  <div class="menu_area">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">MIU SMS</a>


        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main_nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="#contact">Contact Us</a></li>
            @auth
            <li><a href="{{ route('home') }}">Dashboard</a></li>
            @else
            <li><a href="{{ route('login') }}">Log in</a></li>
            @endauth
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <!-- END MENU -->

  <!-- BEGIN SLIDER AREA-->
  <div class="slider_area">
    <!-- BEGIN SLIDER-->
    <div id="slides">
      <ul class="slides-container">
        <li>
         <div class="slider_overlay"></div>
         <img src="{{ asset('images/landing/BackgroundSlider/1.jpg') }}" alt="img">
         <div class="slider_caption">'
          <br><br>
          <h2></h2>
          <p></p>
          <a href="#about" class="slider_btn">THIS IS SMS</a>     
        </div>
      </li>
      <li>
       <div class="slider_overlay"></div>
       <img src="{{ asset('images/landing/BackgroundSlider/2.jpg') }}" alt="img">
       <div class="slider_caption">'
        <br><br>
        <h2></h2>
        <p></p>
        <a href="#about" class="slider_btn">THIS IS SMS</a>     
      </div>
    </li>
    <li>
       <div class="slider_overlay"></div>
       <img src="{{ asset('images/landing/BackgroundSlider/3.jpg') }}" alt="img">
       <div class="slider_caption">'
        <br><br>
        <h2></h2>
        <p></p>
        <a href="#about" class="slider_btn">THIS IS SMS</a>     
      </div>
    </li>
  </ul>

  <!-- BEGAIN SLIDER NAVIGATION -->
  <nav class="slides-navigation">
    <!-- PREV IN THE SLIDE -->
    <a class="prev" href="/item1">
      <span class="icon-wrap"></span>
      <h3><strong>Prev</strong></h3>
    </a>
    <!-- NEXT IN THE SLIDE -->
    <a class="next" href="/item3">
      <span class="icon-wrap"></span>
      <h3><strong>Next</strong></h3>
    </a>
  </nav>
</div>
<!-- END SLIDER-->
</div>
<!-- END SLIDER AREA -->
</header>
<!--=========== End HEADER SECTION ================-->


<!--=========== BEGIN ABOUT SECTION ================-->
<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="about_area">
          <!-- START ABOUT HEADING -->
          <div class="heading">
            <h2 class="wow fadeInLeftBig">About Us</h2>
            <p>
            Stock Market Simulation (SMS) is an annual academic event operated and prepared by students, held in Misr International University (MIU). It is a 9-day event divided into 5 days of academic sessions and 4 days for the Stock Market Simulation. In the academic sessions, delegates learn information about worldwide stock exchanges, role of financial institutions and members, and finally recent global economical events. As for the entertainment, the simulation helps delegates understand more by applying real life experience using a computerized system to live the stock market world in the role of a broker, investor, mutual fund, or a bank.</p>
          </div>

          <!-- START ABOUT CONTENT -->
          <div class="about_content">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="about_slider">
                  <!-- BEGAIN FEATURED SLIDER -->
                  <div class="featured_slider">
                    <div class="single_iteam">
                      <a href="#"> <img src="{{ asset('images/landing/Logos/SMS.png') }}" alt="img"></a>                      
                    </div>
                  </div>
                  <!-- END FEATURED SLIDER -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--=========== END ABOUT SECTION ================-->

<!--=========== BEGAIN TEAM SECTION ================-->
<section id="team">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <!-- BEGAIN ABOUT HEADING -->
        <div class="heading">
          <h2 class="wow fadeInLeftBig">Our Team</h2>
        </div>
        <div class="team_area">
          <!-- BEGAIN TEAM SLIDER -->
          <div class="team_slider">
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/A.jpg') }}" alt="img">
                </div>
                <h5 class="">Ahmed Sahhar</h5>
                <span>Event Leader</span>                      
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/AS.jpg') }}" alt="img">
                </div>
                <h5 class="">Aly Sokar</h5>
                <span>OC Head</span>                   
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/MM.jpg') }}" alt="img">
                </div>
                <h5 class="">Mahiar Magdy</h5>
                <span>Coordination Head</span>                      
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/OA.jpg') }}" alt="img">
                </div>
                <h5 class="">Omar Atteya</h5>
                <span>Multimedia Head</span>                      
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/AE.jpg') }}" alt="img">
                </div>
                <h5 class="">Ahmed El-Khayat</h5>
                <span>AC Head</span>                      
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/HE.jpg') }}" alt="img">
                </div>
                <h5 class="">Hatem Ebaa</h5>
                <span>PR Head</span>                      
                <p></p>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4">
              <div class="single_team wow fadeInUp">
                <div class="team_img">
                  <img src="{{ asset('images/landing/Team/WA.jpg') }}" alt="img">
                </div>
                <h5 class="">Wessam Ahmed</h5>
                <span>IT Head</span>                     
                <p></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--=========== END TEAM SECTION ================-->

<!--=========== BEGAIN CONTACT SECTION ================-->
<section id="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12">
        <!-- START CONTACT HEADING -->
        <div class="heading">
          <h2 class="wow fadeInLeftBig">Contact Us</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <!-- BEGAIN CONTACT CONTENT -->
      <div class="contact_content">
        <!-- BEGAIN CONTACT FORM -->
        <div class="col-lg-5 col-md-5 col-sm-5">
          <div class="contact_form">

            <!-- FOR CONTACT FORM MESSAGE -->
            <div id="form-messages"></div>

            <form action="" method="post">
              <input class="form-control" type="text" placeholder="Name" name="Name" required>
              <input class="form-control" type="email" placeholder="Email" name="Email" required>
              <input class="form-control" type="text" placeholder="Subject" name="Subject" required>
              <textarea class="form-control" cols="30" rows="10" placeholder="Your Message" name="Message" required style="resize: none;"></textarea>
              <input class="submit_btn" type="submit" value="Temporarily disabled" disabled="">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--=========== END CONTACT SECTION ================-->


<!--=========== BEGAIN FOOTER ================-->
<footer id="footer">
 <div class="container">
   <div class="row">
     <div class="col-lg-6 col-md-6 col-sm-6">
       <div class="footer_left">
         <p>Copyright &copy; 2018 <a>MIU SMS</a>. All Rights Reserved</p>
       </div>
     </div>
     <div class="col-lg-6 col-md-6 col-sm-6">
       <div class="footer_right">
         <ul class="social_nav">
           <li><a href="https://www.facebook.com/MIUSMSEVENT/" data-toggle="tooltip" data-placement="top" title="MIU SMS 'Stock Market Simulation'"><i class="fa fa-facebook"></i></a></li>
           <li><a href="https://www.instagram.com/miusmsevent/" data-toggle="tooltip" data-placement="top" title="MIUSMSEvent"><i class="fa fa-instagram"></i></a></li>
           <li><a href="#" data-toggle="tooltip" data-placement="top" title="SMS_MIU"><i class="fa fa-snapchat"></i></a></li>
         </ul>
       </div>
     </div>
   </div>
 </div>
</footer>
<!--=========== END FOOTER ================-->

@endsection