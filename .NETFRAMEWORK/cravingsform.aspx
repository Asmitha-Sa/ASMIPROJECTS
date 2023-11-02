<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cravingsform.aspx.cs" Inherits="Empty.cravingsform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cravings-The CakeShop</title>
   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        body {
           font-family: cursive;
         }
     
     .glow {
           
           color: #fff;
           text-align: center;
           animation: glow 1s ease-in-out infinite alternate;
      }

     @-webkit-keyframes glow {
     from {
           text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
      }
  
     to {
           text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
      }
     }
     .stickyicon-list {  
             position:fixed;
             bottom: 220px;   
             transform: translateY(-50%);        
             width: 60px;
             height: 60px;            
        }         
        .stickyicon-list a {   
            display: block;   
            text-align: center;    
            padding: 8px;   
            transition: all 0.5s ease;   
            color: white;    
            font-size: 20px;   
         }         

        .stickyicon-list a:hover {   
            color: #000;   
            width:50px;   
         }   
        .facebook {   
            background: #3b5998;   
            color: white;  
         }         
        .twitter {   
            color: white;   
            background: #00acee;   
         }   
        .snapchat-ghost {
            background: #fffc00;
            color: white;
         }
                  
        .google {   
            color: white;   
            background: #24cf09;   
         }   
        .instagram {   
            background: #f6147c;   
            color: white;   
         }         
        .youtube {   
            color: white;   
            background: #c4302b;    
         }   

    .carousel-inner img {
    
    width: 100%;
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
      @media (max-width: 600px) {
          .carousel-caption {
              display: none;
          }
      }
  .navbar {
    font-family:cursive;
    margin-bottom: 0;
    background-color:#2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #fff !important;
  }
  .navbar-nav li :hover {
    color: #ff4da6 !important;
  }
  
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
        .jumptron {
            background-color: #f6147c;
            color: white;
        }
  footer {
      width:100%;
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
    opacity: 0.9;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}
  .para{
      margin-left:40px;
      margin-right:40px;
  }
  .container-fluid1{
      background-color:#2d2d30;
      color:white;
  }  

  .open-button{
      background-color:#2d2d30;
      border: none;
      font-size: 11px !important;
  }
  .form-popup {
  display: none;
  position: fixed;
  top:55px;
  right:5px;
  border:none;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: #2d2d30;
  color:white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color:  #f6147c;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
     
* {
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 25%;
  padding: 5px;
}


.row::after {
  content: "";
  clear: both;
  display: table;
}

th, td {
  text-align: left;
  padding: 10px;
}

th{
background-color:#f6147c;
color:white;
}
.ccart{
    background-color:#2d2d30;
    border:none;
    border-radius:5px;
    width:250px;
}


  </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span>  
      </button>
      <a class="navbar-brand" href="#myPage">
          <div class="glow">
                 <span style='font-size:30px;'>&#127752;CRAVINGS&#129316;</span>
      </div></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myCarousel">HOME</a></li>
        <li><a href="#cakes">CAKES</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li><asp:HyperLink ID="HyperLink" runat="server" Text="SHOPNOW" NavigateUrl="Shopcart.aspx"><p style="color:white;">ORDER NOW</p></asp:HyperLink></li>
        <li><a><button class="open-button" onclick="openForm()">SIGN IN</button></a></li>       
      </ul>
    </div>     
</nav>


 <div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1 style="text-align:center">Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required/>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required/>

    <button type="submit" class="btn">Login</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
    function openForm() {
        document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
    }
</script>
<div class="stickyicon-list ">
  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
  <a href="#" class="google"><i class="fa fa-google"></i></a>
  <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
  <a href="#" class="youtube"><i class="fa fa-youtube"></i></a>
</div>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="image\as1.jpg" alt="CRAVINGS" width="2000" height="1125">
        <div class="carousel-caption">
          <h3>CRAVINGS</h3>
        </div>      
      </div>

      <div class="item">
        <img src="image\as2.jpg" alt="CRAVINGS" width="2000" height="1125">
        <div class="carousel-caption">
          <h3>CRAVINGS</h3>
        </div>      
      </div>
    
      <div class="item">
        <img src="image\as3.jpg" alt="CRAVINGS" width="2000" height="1125">
        <div class="carousel-caption">
          <h3>CRAVINGS</h3>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

    <div class="jumptron text-center"><br />
       <h3><span style='font-size:40px;'>&#127873;</span>Delivery within 5 hrs inside coimbatore and delivery within 24hrs in other districts<span style='font-size:40px;'>&#127873;</span></h3>
    <br /></div>
           <br /> <br />   


  <div id="cakes" class="container text-center">
           <h1>GRAB A CAKE!!!</h1>
      <br />
       <div class="row">
  <div class="column">
    <table>
      <tr>
        <th>CAKES BY FLAVOURS</th>
      </tr>
      <tr><td>Chocolate Cakes</td></tr>
      <tr><td>Truffle Cakes</td></tr>
      <tr><td>Black Forest Cakes</td></tr>
      <tr><td>Butterstoch Cakes</td></tr>
      <tr><td>Rasamalai Cakes</td></tr>
      <tr><td>Red Velvet Cakes</td></tr>
      <tr><td>Fresh Fruits Cakes</td></tr>     
    </table>
  </div>

  <div class="column">
    <table>
      <tr>
        <th>CAKES BY TYPES</th>
      </tr>
      <tr><td>All Cakes</td></tr>
      <tr><td>Photo Cakes</td></tr>
      <tr><td>Designer Cakes</td></tr>
      <tr><td>Eggless Cakes</td></tr>
      <tr><td>Fondant Cakes</td></tr>
      <tr><td>Kids Cakes</td></tr>
      <tr><td>Dry Cakes</td></tr>     
    </table>
  </div>
                  
  <div class="column">
    <table>
      <tr>
        <th>FLOWERS BY TYPES</th>
      </tr>
      <tr><td>Roses</td></tr>
      <tr><td>Lilies</td></tr>
      <tr><td>Orchids</td></tr>
      <tr><td>Carnations</td></tr>
      <tr><td>Gerberas</td></tr>
      <tr><td>Mixed Flowers</td></tr>
      <tr><td>Premium Flowers</td></tr>     
    </table>
  </div>       

                                     
  <div class="column">
    <table>
      <tr>
        <th>FLOWER COMBOS</th>
      </tr>
      <tr><td>Flowers & Cakes</td></tr>
      <tr><td>Flowers & Cakes</td></tr>
      <tr><td>Flowers & Guitarist</td></tr>

      <tr>
        <th>CAKE COMBOS</th>
      </tr>
      <tr><td>Cake & Chocolates</td></tr>
      <tr><td>Cake & Plants</td></tr>
      <tr><td>Cakes & Personalised Gifts</td></tr>
    
    </table>
  </div>
</div> <br />           
              
<asp:HyperLink ID="HyperLink1" runat="server" Text="SHOP NOW" NavigateUrl="Shopcart.aspx"><button class="ccart"><h2 style="color:white;">Order Now<span style='font-size:30px;'>&#128525;</span></h2></button></asp:HyperLink>    
 <br /><br />          
      <div class="creations">
          <h2>Our Creations</h2>
          <table>
              <tr>
                  <td><img src="image/z1.jpg" width="555px" /></td>
                  <td><img src="image/z2.jpg" width="555px" /></td>
              </tr>
              <tr>
                  <td><img src="image/z3.jpg" width="555px" /></td>
                  <td><img src="image/z4.jpg" width="555px" /></td>
              </tr>
          </table>
      </div>
      <br /><br />
       <div class="jumptron"><br />
            <h2>Want a customised order ?</h2>
            <h2>Do you want us to arrange for your parties ?</h2>
            <h3>Contact us :)</h3><br />
      <p><span class="glyphicon glyphicon-phone"></span> + 01 234 567 88</p>
      <p><span class="glyphicon glyphicon-envelope"></span> cravings@gmail.com</p>
            <br />
        </div>
  <br /><br /><br />
</div>


<!-- Container (The Aboutus Section) -->
    <div class="container-fluid1"><br /><br />
<div id="about">
    <div class="para">
  <h1 align="center">ABOUT US</h1>
  <p><em>We love to bake!</em></p>
  <p>We are exactly what you are looking for. Yes, we are an FSSAI certified 
      online cake and Bakery Company that specializes in delivering absolutely 
      lip-smacking delicacies. Currently, we are delivering cakes all over the world. We are not just a bakery, 
      we are not just bakers. In fact, we are just like you, a bunch of food lovers 
      fascinated with sweet indulgence, who dreamt of creating an appetizing fairy land 
      of divine delicacies that relishes the utmost desires.</p>
  <br/>
    <p>We are not just a bakery, we are not just bakers. In fact, we are just like you, 
        a bunch of food lovers fascinated with sweet indulgence, who dreamt of creating an 
        appetizing fairy land of divine delicacies that relishes the utmost desires.</p>
    <br />
    <div class="container text-center">
    <img src ="image/cover-image.jpg" />
    </div>
        <br />
 <p><ul>  
     <li>Beginning with finest flour mixed with our passion, sprinkling some sugar and butter, 
     blending it with our deepest emotions to create a perfect batter. Kindling it in the oven with our 
     warmth and finally crafting the intricate creations in the form of some lip-smacking cakes, which are
     out of this world! The only additives you’ll find in our products are an extra pinch of love, care and devotion!
<li>We add our magical touch to our recipe, to bring out the flavor and oomph into everything. With fresh ingredients and 
    some traditional methods, we craft some one-of-a-kind cakes baked-fresh-from-the-oven to excel your taste buds.</li>
<li>And then, to fill up each celebratory moment with euphoria and excitement, we put in our heart and soul in delivering the luscious 
    cake at just the right time because we understand! We understand the emotions attached to the occasion and so, we always make an effort to add to your happy moments.
We are here to redefine the all-time classics to create some heavenly and unforgettable experiences.
    And with all this and more, we wish to fill the empty spaces in every conversation with a smile.</li>
 </ul></p>
    </div>
</div>
    <br />
    <br />
</div>

<div class="container-fluid">
   <div id="contact" class="container text-center">
    
  <h2 class="text-center">CONTACT US</h2>
    <br />
       <br />
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 2 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Coimbatore, NY 10012, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> + 01 234 567 88</p>
      <p><span class="glyphicon glyphicon-envelope"></span> cravings@gmail.com</p>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit" style="background-color:#f6147c; border-block-color:#f6147c;">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
    
</div>
    <br />
    <br />
    <!-- Footer -->
<footer class="text-center">
    <br />
  
      <section class="">
      <div class="container text-center text-md-start mt-5">
        
        <div class="row mt-3">
          
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            
            <h6 class="text-uppercase fw-bold"><div class="glow">
                 <span style='font-size:40px;'>&#127752;CRAVINGS&#129316;</span>
            </div></h6>
            <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color:white; height: 2px"/>
            <p>
             Our Pvt Ltd Ecom store that delivers flowers and cakes all over India and internationally.
            </p>
          </div>
          
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          
            <h6 class="text-uppercase fw-bold">Useful links</h6>
            <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color:white; height: 2px"/>
            <p>
              <a href="#!" class="text-dark">Your Account</a>
            </p>
            <p>
              <a href="#!" class="text-dark">Privacy Policy</a>
            </p>
            <p>
              <a href="#!" class="text-dark">Cookies</a>
            </p>
            <p>
              <a href="#!" class="text-dark">Help</a>
            </p>
           
          </div>
          
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            
            <h6 class="text-uppercase fw-bold">Contact</h6>
            <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color:white; height: 2px"/>
            <p><span class="glyphicon glyphicon-map-marker"></span> Coimbatore, NY 10012, India</p>
            <p><span class="glyphicon glyphicon-envelope"></span> cravings@gmail.com</p>
            <p> <span class="glyphicon glyphicon-earphone"></span> + 01 234 567 88</p>
           
          </div>
          
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
         
            <h6 class="text-uppercase fw-bold">Opening times</h6>
              <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color:white; height: 2px"/>
                   <p>Mon - Sat 9:00am - 5:00pm</p>
                   <p>Sun 9:00am - 4:00pm</p>
              <br />
    <h6 class="text-uppercase fw-bold">Accepted Cards</h6>
             <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
          </div>
        </div>
     </div>    
 </section>
    <br />
    <p>&copy; <%: DateTime.Now.Year %> - CRAVINGS-The CakeShop</i></p>
</footer>
</body>
</html>
