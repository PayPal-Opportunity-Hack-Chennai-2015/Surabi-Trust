<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Surabi Trust</title>
	
    <!-- css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/nivo-lightbox.css" rel="stylesheet" />
	<link href="resources/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/animations.css" rel="stylesheet" />
    <link href="resources/css/style.css" rel="stylesheet">
	<link href="resources/color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	
	<section class="hero" id="intro">
            <div class="container">
              <div class="row">
                <div class="col-md-12 text-right navicon">
                  <a id="nav-toggle" class="nav_slide_button" href="#"><span></span></a>
                </div>
              </div>
              <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center inner">
					<div class="animatedParent">
						<h1 class="animated fadeInDown">BALAVIKAS</h1>
						<p class="animated fadeInUp">Transform livelihood- creating opportunities.</p>
					</div>
			   </div>
              </div>
              <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                  <a href="#about" class="learn-more-btn btn-scroll">Learn more</a>
                </div>
              </div>
            </div>
    </section>
	
	
    <!-- Navigation -->
    <div id="navigation">
        <nav class="navbar navbar-custom" role="navigation">
                              <div class="container">
                                    <div class="row">
                                          <div class="col-md-2">
                                                   <div class="site-logo">
                                                            <a href="index.html" class="brand">Surabi</a>
                                                    </div>
                                          </div>
                                          

                                          <div class="col-md-10">
                         
                                                      <!-- Brand and toggle get grouped for better mobile display -->
                                          <div class="navbar-header">
                                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                                                <i class="fa fa-bars"></i>
                                                </button>
                                          </div>
                                                      <!-- Collect the nav links, forms, and other content for toggling -->
                                                      <div class="collapse navbar-collapse" id="menu">
                                                            <ul class="nav navbar-nav navbar-right">
                                                                  <li class="active"><a href="#intro">Home</a></li>
                                                                  <li><a href="#about">About Us</a></li>
																  	                                                                  
                                                                  
                                                                  <li><a href="#contact">Become A Mentor</a></li>
                                                            </ul>
                                                      </div>
                                                      <!-- /.Navbar-collapse -->
                             
                                          </div>
                                    </div>
                              </div>
                              <!-- /.container -->
                        </nav>
    </div> 
    <!-- /Navigation -->  

	<!-- Section: about -->
    <section id="about" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
					<div class="section-heading text-center animated bounceInDown">
					<h2 class="h-bold">About our Surabi Trust</h2>
					<div class="divider-header"></div>
					</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">

		
        <div class="row">
		
		
            <div class="col-lg-8 col-lg-offset-2 animatedParent">		
				<div class="text-center">
					<p>
					Surabi Trust is a registered charitableTrust found by a group of socially committed youth in the year 2008 and is based in Chennai, Tamilnadu (Reg.No517/08). The Trust is established with the ultimate aim to serve the society. We initiated our efforts to serve children in distress and empower women to be self-reliant.
					</p>
					<p>
					We Thank many individuals and organisation donors, who have believed in rejuvenating the culture of giving support the destitute children and other underprivileged segment of the communities towards their integrated development. Your contribution makes significant difference in the lives of these deprived children and the society in distress. 
					</p>
					<a href="#contact" class="btn btn-skin btn-scroll">Become A Mentor</a>
				</div>
            </div>
		

        </div>		
		</div>

	</section>
	<!-- /Section: about -->
	
	
	
	<!-- Section: contact -->
    <section id="contact" class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
					<div class="section-heading text-center">
					<h2 class="h-bold animated bounceInDown">Register As A Mentor</h2>
					<div class="divider-header"></div>
					</div>
					</div>
				</div>
			</div>

		</div>
		
		<div class="container">

			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
						<form:form id="contact-form" method="POST" action="addPal" >
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<form:input type="text" class="form-control input-lg" id="name" placeholder="Enter name" required="required" path="name"/>
							</div>
							<div class="col-md-6">
								<input type="email" class="form-control input-lg" id="email" placeholder="Enter email" required="required" />
							</div>
						</div>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<form:select type="text" class="form-control input-lg" id="name" placeholder="Enter standard" required="required" path="standard" > 
									<option value="1">First</option>
									<option value="2">Second</option>
									<option value="3">Third</option>
									<option value="4">Fourth</option>
									<option value="5">Fifth</option>
									<option value="6">Sixth</option>
									<option value="7">Seventh</option>
									<option value="8">Eight</option>
									<option value="9">Nineth</option>
									<option value="10">Tenth</option>
								</form:select>
							</div>
							<div class="col-md-6">
								<form:select type="text" class="form-control input-lg" id="email" placeholder="Enter gender" required="required" path="gender" >
								<option value="M">Male</option>
									<option value="F">Female</option>
								</form:select>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<form:textarea name="message" id="message" style="height: 50px" class="form-control" rows="4" cols="25" required="required"
										placeholder="likingSubject" path="likingSubject" ></form:textarea>
								</div>
								<div class="form-group">
									<form:textarea name="message" style="height: 50px" id="message" class="form-control" rows="4" cols="25" required="required"
										placeholder="likingSport" path="likingSport"></form:textarea>
								</div>
								<div class="form-group">
									<form:textarea name="message" id="message" style="height: 50px"  class="form-control" rows="4" cols="25" required="required"
										placeholder="otherInterest" path="otherInterest"></form:textarea>
								</div>						
								<button type="submit" class="btn btn-skin btn-lg btn-block" id="btnContactUs">
									Become Mentor</button>
							</div>
						</div>
						</form:form>
				</div>
			</div>	


		</div>
	</section>
	<!-- /Section: contact -->


	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ul class="footer-menu">
						<li><a href="#">Home</a></li>
						<li><a href="#">Press release</a></li>
					</ul>
				</div>
				<div class="col-md-6 text-right">
					<p>&copy;Copyright 2015 - Surabi. Designed by Surabi Team</a></p>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Bocor
                    -->
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="resources/js/jquery.min.js"></script>	 
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.sticky.js"></script>
    <script src="resources/js/jquery.easing.min.js"></script>	
	<script src="resources/js/jquery.scrollTo.js"></script>
	<script src="resources/js/jquery.appear.js"></script>
	<script src="resources/js/stellar.js"></script>
	<script src="resources/js/nivo-lightbox.min.js"></script>
	
    <script src="resources/js/custom.js"></script>
	<script src="resources/js/css3-animate-it.js"></script>

</body>

</html>
