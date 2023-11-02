<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopcart.aspx.cs" Inherits="Empty.Shopcart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
 <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
   
 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <title>cart</title>
<style>
  body {
 font-family:cursive;
}

.container{
    align-content:center;
}

.product-container{
    scroll-behavior: smooth;
}
.product-container::-webkit-scrollbar{
    display: none;
}

.product-card{
    flex: 0 0 auto;
    width: 270px;
    height: 390px;
    
}

.product-image{
    position: relative;
    width: 270px;
    height: 250px;
    overflow: hidden;
}

.product-thumb{
    width: 100%;
    height: 350px;
    object-fit: cover;
}

.discount-tag{
    position: absolute;
    background: #fff;
    padding: 5px;
    border-radius: 5px;
    color: #ff7d7d;
    right: 10px;
    top: 10px;
    text-transform: capitalize;
}

.product-info{
    width: 100%;
    height: 100px;
    padding-top: 10px;
}

.product-brand{
    text-transform: uppercase;
}

.product-short-des{
    width: 100%;
    height: 20px;
    line-height: 20px;
    overflow: hidden;
    opacity: 0.5;
    text-transform: capitalize;
    margin: 5px 0;
}

.price{
    font-weight: 900;
    font-size: 20px;
}

.actual-price{
    margin-left: 10px;
    opacity: 0.5;
    text-decoration: line-through;
}
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
    background-color:#2d2d30;
  }
  .navbar-nav li :hover {
    color: #ff4da6 !important;
  }
  
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .cart,
  .clear-cart{
      background-color:#2d2d30;
      border:none;
  }

  * {
  box-sizing: border-box;
}

.row {
  margin-left:-3px;
  margin-right:-3px;
}
  
.column {
  float: left;
  width: 25%;
  padding: 20px;
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
.btn-primary,
  .btn-secondary{
      background-color:#2d2d30;
      color:white;
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
  .jumptron{
      background-color:#e60073;
      color:white;
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
      </button>
     <a class="navbar-brand" href="#myPage">
          <div class="glow">
                 <span style='font-size:30px;'>&#127752;CRAVINGS&#129316;</span>
          </div></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><asp:HyperLink ID="HyperLink" runat="server" Text="HOME" NavigateUrl="cravingsform.aspx"><p style="color:white;">HOME</p></asp:HyperLink></li>
        <li><a><button class="cart" data-toggle="modal" data-target="#cart">CART(<span class="total-count"></span>)</button></a></li>       
        <li><a><button class="clear-cart">CLEAR CART</button> </a></li>
      </ul>
    </div>
  </div>

</nav>
        <br /><br /><br />
        <div class="topic text-center">
            <h1>Order Now !</h1>
        </div><br />
        

<!-- Main -->
<div class="container text-center">
     <h2 style="color:#f6147c;">Cakes By Flavours</h2>
    <table>
      <tr>
       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/p1.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Chocolate Cakes</h4>
            <p class="product-short-des">With chocolate buttercream... </p>
            <span class="price">&#8377;300\Kg</span><span class="actual-price">&#8377;399</span>
             </div><br />
            <a href="#" data-name="ChocolateCake" data-price="300" class="add-to-cart btn btn-primary">Add to cart</a>
        </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/p2.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Red Velvet Cakes</h4>
            <p class="product-short-des">With buttercream... </p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;499</span>
             </div><br />
            <a href="#" data-name="RedVelvetCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
        </div></td>
     
      <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/p3.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Truffle Cakes</h4>
            <p class="product-short-des">With chocolate ganache... </p>
            <span class="price">&#8377;500\Kg</span><span class="actual-price">&#8377;599</span>
             </div><br />
            <a href="#" data-name="TruffleCake" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
        </div></td>
     
    <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/p4.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Butterscotch Cakes</h4>
            <p class="product-short-des">With chocolate dripping...</p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;499</span>
             </div><br />
            <a href="#" data-name="ButterscotchCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
        </div></td>
   </tr>
        <br />

   <tr><td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/p5.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Black Forest Cakes</h4>
            <p class="product-short-des">With chocolate & cherries...</p>
            <span class="price">&#8377;600\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="BlackForestCake" data-price="600" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/p6.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Fresh Fruits Cakes</h4>
            <p class="product-short-des">With chocolate & whipping cream...</p>
            <span class="price">&#8377;500\Kg</span><span class="actual-price">&#8377;699</span>
             </div><br />
            <a href="#" data-name="FreshFruitsCake" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">30% off</span>
            <img src="image/pc7.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Oreo Cakes</h4>
            <p class="product-short-des">With oreo cream...</p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;699</span>
             </div><br />
            <a href="#" data-name="OreoCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">40% off</span>
            <img src="image/pc8.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Rich Coffee Cakes</h4>
            <p class="product-short-des">With chocolate coffeebeans...</p>
            <span class="price">&#8377;500\Kg</span><span class="actual-price">&#8377;899</span>
             </div><br />
            <a href="#" data-name="RichCoffeeCake" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
     </tr>
</table><br />

<table>
    <h2 style="color:#f6147c;">Specialized Cakes</h2><br />
      <tr><td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/rasa.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Royal Rasamalai Cakes</h4>
            <p class="product-short-des">With royal flavours...</p>
            <span class="price">&#8377;600\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="RoyalRasamalaiCake" data-price="600" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/cho.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Death By Chocolate</h4>
            <p class="product-short-des">Fully loaded dark chocolate...</p>
            <span class="price">&#8377;600\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="DeathByChocolate" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

         <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">50% off</span>
            <img src="image/pr3.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Rainbow Cake</h4>
            <p class="product-short-des">Colorfull cake with some magic..</p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="RainbowCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">50% off</span>
            <img src="image/pr4.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Pinata Cake</h4>
            <p class="product-short-des">Break it with a hammer..</p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="PinataCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>    

    <tr><td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">20% off</span>
            <img src="image/prr5.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Customised Photo Cakes</h4>
            <p class="product-short-des">Customised cakes for loved ones..</p>
            <span class="price">&#8377;800\Kg</span><span class="actual-price">&#8377;999</span>
             </div><br />
            <a href="#" data-name="CustomisedPhotoCake" data-price="800" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr6.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Pull me up Cakes</h4>
            <p class="product-short-des">Chocolate river for loved ones..</p>
            <span class="price">&#8377;700\Kg</span><span class="actual-price">&#8377;799</span>
             </div><br />
            <a href="#" data-name="PullmeupCake" data-price="700" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

         <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr9.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Eggless Cakes</h4>
            <p class="product-short-des">Available in all flavours...</p>
            <span class="price">&#8377;500\Kg</span><span class="actual-price">&#8377;599</span>
             </div><br />
            <a href="#" data-name="EgglessCake" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

         <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr8.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Tiramisu Cakes</h4>
            <p class="product-short-des">For coffee lovers...</p>
            <span class="price">&#8377;600\Kg</span><span class="actual-price">&#8377;699</span>
             </div><br />
            <a href="#" data-name="TiramisuCake" data-price="600" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>

    <tr><td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr11.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Dry Cakes</h4>
            <p class="product-short-des">Nuts and Fruits cakes...</p>
            <span class="price">&#8377;400\Kg</span><span class="actual-price">&#8377;499</span>
             </div><br />
            <a href="#" data-name="DryCake" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr10.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Hidden Suprise Cakes</h4>
            <p class="product-short-des">Suprise your loved ones...</p>
            <span class="price">&#8377;800\Kg</span><span class="actual-price">&#8377;899</span>
             </div><br />
            <a href="#" data-name="HiddenSupriseCake" data-price="800" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr12.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Kids Cakes</h4>
            <p class="product-short-des">Suprise your Kids...</p>
            <span class="price">&#8377;600\Kg</span><span class="actual-price">&#8377;699</span>
             </div><br />
            <a href="#" data-name="kidsCake" data-price="600" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

         <td><div class="product-card">
        <div class="product-image">
            <span class="discount-tag">10% off</span>
            <img src="image/pr13.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Fondant Cakes</h4>
            <p class="product-short-des">Suprise your loved ones...</p>
            <span class="price">&#8377;900\Kg</span><span class="actual-price">&#8377;999</span>
             </div><br />
            <a href="#" data-name="FondantCake" data-price="900" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>

</table><br />

    <h2 style="color:#f6147c;">Desserts</h2><br />
<table>
    <tr><td><div class="product-card">
        <div class="product-image">
            <img src="image/j1.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Rainbow Jar Cakes</h4>
            <p class="product-short-des">With vanilla cake...</p>
            <span class="price">&#8377;300\Kg</span>
             </div><br />
            <a href="#" data-name="RainbowJarCake" data-price="300" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j2.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Chocolate & Oreo</h4>
            <p class="product-short-des">Combo offer Jar cakes...</p>
            <span class="price">&#8377;400\Kg</span>
             </div><br />
            <a href="#" data-name="Chocolate&Oreo" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/jj3.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">RedVelvet & Cheery</h4>
            <p class="product-short-des">Combo offer Jar cakes...</p>
            <span class="price">&#8377;400\Kg</span>
             </div><br />
            <a href="#" data-name="RedVelvet&Cheery" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

         <td><div class="product-card">
        <div class="product-image">
            <img src="image/j4.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Butterscotch & Mousse</h4>
            <p class="product-short-des">Combo offer Jar cakes...</p>
            <span class="price">&#8377;400\Kg</span>
             </div><br />
            <a href="#" data-name="Butterscotch&Mousse" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>

    <tr><td><div class="product-card">
        <div class="product-image">
            <img src="image/j5.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Assorted CupCakes(4)</h4>
            <p class="product-short-des">Combo offer cup cakes...</p>
            <span class="price">&#8377;200\Kg</span>
             </div><br />
            <a href="#" data-name="AssortedCupCake(4)" data-price="200" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j6.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Assorted CupCakes(6)</h4>
            <p class="product-short-des">Combo offer cup cakes...</p>
            <span class="price">&#8377;300\Kg</span>
             </div><br />
            <a href="#" data-name="AssortedCupCake(6)" data-price="300" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j7.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Birthday CupCakes(6)</h4>
            <p class="product-short-des">Customised cup cakes...</p>
            <span class="price">&#8377;500\Kg</span>
             </div><br />
            <a href="#" data-name="BirthdayCupCake(6)" data-price="500" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/jj8.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Fondant CupCakes</h4>
            <p class="product-short-des">Customised cup cakes...</p>
            <span class="price">&#8377;700\Kg</span>
             </div><br />
            <a href="#" data-name="FondantCupCake" data-price="700" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>

    <tr><td><div class="product-card">
        <div class="product-image">
            <img src="image/j9.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Assorted Brownies(9)</h4>
            <p class="product-short-des">Traditional Brownies...</p>
            <span class="price">&#8377;200\Kg</span>
             </div><br />
            <a href="#" data-name="AssortedBrownies(9)" data-price="200" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j10.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Assorted Brownies(12)</h4>
            <p class="product-short-des">Chocolate Brownies...</p>
            <span class="price">&#8377;400\Kg</span>
             </div><br />
            <a href="#" data-name="AssortedBrownies(12)" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j11.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Chocolate Tarts(4)</h4>
            <p class="product-short-des">Chocolate Mousse...</p>
            <span class="price">&#8377;400\Kg</span>
             </div><br />
            <a href="#" data-name="ChocolateTarts(4)" data-price="400" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        <td><div class="product-card">
        <div class="product-image">
            <img src="image/j12.jpg" class="product-thumb" alt="">
        </div>
        <div class="product-info">
            <h4 class="product-brand">Mini Cakes(4)</h4>
            <p class="product-short-des">Mini Cakes combo offer...</p>
            <span class="price">&#8377;700\Kg</span>
             </div><br />
            <a href="#" data-name="MiniCakes(4)" data-price="700" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
    </tr>
</table><br />

    <h2 style="color:#f6147c;">Gift Combos</h2><br />
    <table>
        <tr><td><div class="product-card">
        <div class="product-image">
            <img src="image/e1.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Nuts & Chocolates</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;700\Kg</span>
             </div><br />
            <a href="#" data-name="Nuts&Chocolates" data-price="700" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

      <td><div class="product-card">
        <div class="product-image">
            <img src="image/e2.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Dark Chocolates(36)</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;800\Kg</span>
             </div><br />
            <a href="#" data-name="DarkChocolates(36)" data-price="800" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f1.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">FerreroRocher box</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;800\Kg</span>
             </div><br />
            <a href="#" data-name="FerreroRocherFLowerbox" data-price="800" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f2.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Chocolates & Teddy</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;800\Kg</span>
             </div><br />
            <a href="#" data-name="Chocolates&Teddy" data-price="800" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>
        </tr>

        <tr>
       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f4.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Cake & Bouquet</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;900\Kg</span>
             </div><br />
            <a href="#" data-name="Cake&Bouquet" data-price="900" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

            
       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f5.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Cake & Bouquet</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;900\Kg</span>
             </div><br />
            <a href="#" data-name="Cake&Bouquet" data-price="900" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f6.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Cake & TEDDYBouquet</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;1200\Kg</span>
             </div><br />
            <a href="#" data-name="Cake&TEDDYBouquet" data-price="1200" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

       <td><div class="product-card">
        <div class="product-image">
            <img src="image/f7.jpg" class="product-thumb" alt=""/>
        </div>
        <div class="product-info">
            <h4 class="product-brand">Cake & Bouquet</h4>
            <p class="product-short-des">combo offer...</p>
            <span class="price">&#8377;700\Kg</span>
             </div><br />
            <a href="#" data-name="Cake&Bouquet" data-price="700" class="add-to-cart btn btn-primary">Add to cart</a>
       </div></td>

        </tr>
    </table>
  
    </div><br /><br />
        
        <div class="jumptron text-center"><br />
            <h2>Want a customised order ?</h2>
            <h2>Do you want us to arrange for your parties ?</h2>
            <h3>Contact us :)</h3><br />
      <p><span class="glyphicon glyphicon-phone"></span> + 01 234 567 88</p>
      <p><span class="glyphicon glyphicon-envelope"></span> cravings@gmail.com</p>
            <br />
        </div>
  <br /><br /><br />
  
 <!-- Modal -->
      
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="show-cart table">
          
        </table>
        <div>Total price: &#8377;<span class="total-cart"></span></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
   
<asp:HyperLink ID="HyperLink2" runat="server" Text="Order Now" NavigateUrl="checkoutform.aspx"> <button type="button" class="btn btn-primary">Order now</button></asp:HyperLink>  
       
      </div>
    </div>
  </div>
</div> 
        <script>
            var shoppingCart = (function () {

                cart = [];

                // Constructor
                function Item(name, price, count) {
                    this.name = name;
                    this.price = price;
                    this.count = count;
                }

                // Save cart
                function saveCart() {
                    sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
                }

                // Load cart
                function loadCart() {
                    cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
                }
                if (sessionStorage.getItem("shoppingCart") != null) {
                    loadCart();
                }



                var obj = {};

                // Add to cart
                obj.addItemToCart = function (name, price, count) {
                    for (var item in cart) {
                        if (cart[item].name === name) {
                            cart[item].count++;
                            saveCart();
                            return;
                        }
                    }
                    var item = new Item(name, price, count);
                    cart.push(item);
                    saveCart();
                }
                // Set count from item
                obj.setCountForItem = function (name, count) {
                    for (var i in cart) {
                        if (cart[i].name === name) {
                            cart[i].count = count;
                            break;
                        }
                    }
                };
                // Remove item from cart
                obj.removeItemFromCart = function (name) {
                    for (var item in cart) {
                        if (cart[item].name === name) {
                            cart[item].count--;
                            if (cart[item].count === 0) {
                                cart.splice(item, 1);
                            }
                            break;
                        }
                    }
                    saveCart();
                }

                // Remove all items from cart
                obj.removeItemFromCartAll = function (name) {
                    for (var item in cart) {
                        if (cart[item].name === name) {
                            cart.splice(item, 1);
                            break;
                        }
                    }
                    saveCart();
                }

                // Clear cart
                obj.clearCart = function () {
                    cart = [];
                    saveCart();
                }

                // Count cart 
                obj.totalCount = function () {
                    var totalCount = 0;
                    for (var item in cart) {
                        totalCount += cart[item].count;
                    }
                    return totalCount;
                }

                // Total cart
                obj.totalCart = function () {
                    var totalCart = 0;
                    for (var item in cart) {
                        totalCart += cart[item].price * cart[item].count;
                    }
                    return Number(totalCart.toFixed(0));
                }

                // List cart
                obj.listCart = function () {
                    var cartCopy = [];
                    for (i in cart) {
                        item = cart[i];
                        itemCopy = {};
                        for (p in item) {
                            itemCopy[p] = item[p];

                        }
                        itemCopy.total = Number(item.price * item.count).toFixed(0);
                        cartCopy.push(itemCopy)
                    }
                    return cartCopy;
                }


                return obj;
            })();

            $('.add-to-cart').click(function (event) {
                event.preventDefault();
                var name = $(this).data('name');
                var price = Number($(this).data('price'));
                shoppingCart.addItemToCart(name, price, 1);
                displayCart();
            });

            // Clear items
            $('.clear-cart').click(function () {
                shoppingCart.clearCart();
                displayCart();
            });


            function displayCart() {
                var cartArray = shoppingCart.listCart();
                var output = "";
                for (var i in cartArray) {
                    output += "<tr>"
                        + "<td>" + cartArray[i].name + "</td>"
                        + "<td>(" + cartArray[i].price + ")</td>"
                        + "<td><div class='input-group'><button class='minus-item input-group-addon btn btn-primary' data-name=" + cartArray[i].name + ">-</button>"
                        + "<input type='number' class='item-count form-control' data-name='" + cartArray[i].name + "' value='" + cartArray[i].count + "'>"
                        + "<button class='plus-item btn btn-primary input-group-addon' data-name=" + cartArray[i].name + ">+</button></div></td>"
                        + "<td><button class='delete-item btn btn-danger' data-name=" + cartArray[i].name + ">X</button></td>"
                        + " = "
                        + "<td>" + cartArray[i].total + "</td>"
                        + "</tr>";
                }
                $('.show-cart').html(output);
                $('.total-cart').html(shoppingCart.totalCart());
                $('.total-count').html(shoppingCart.totalCount());
            }

            // Delete item button

            $('.show-cart').on("click", ".delete-item", function (event) {
                var name = $(this).data('name')
                shoppingCart.removeItemFromCartAll(name);
                displayCart();
            })


            // -1
            $('.show-cart').on("click", ".minus-item", function (event) {
                var name = $(this).data('name')
                shoppingCart.removeItemFromCart(name);
                displayCart();
            })
            // +1
            $('.show-cart').on("click", ".plus-item", function (event) {
                var name = $(this).data('name')
                shoppingCart.addItemToCart(name);
                displayCart();
            })

            // Item count input
            $('.show-cart').on("change", ".item-count", function (event) {
                var name = $(this).data('name');
                var count = Number($(this).val());
                shoppingCart.setCountForItem(name, count);
                displayCart();
            });

            displayCart();

        </script>

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
            <p><span class="glyphicon glyphicon-map-marker"></span>Coimbatore, NY 10012, India</p>
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
    <p>&copy; <%: DateTime.Now.Year %> - CRAVINGS-The CakeShop</p>

</footer>
</body>
</html>