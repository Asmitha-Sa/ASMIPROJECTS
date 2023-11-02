<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkoutform.aspx.cs" Inherits="Empty.checkoutform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout Form</title>
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    background-color:#2d2d30;
  font-family:cursive;
  font-size: 17px;
  padding: 8px;
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
* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}
.btn {
  background-color:#e60073;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}
.btn:hover {
  background-color:#ff4da6;
}

span.price {
  float: right;
  color: grey;
}
.placeholder{
    color:#8f8e8e;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
  
</head>
<body>
    <br />
    <div class="glow">
       <span style='font-size:50px;'>&#127752;CRAVINGS&#129316;</span>
    </div>
    <br /><br />
    <div class="row">
  <div class="col-75">
    <div class="container">
       
      <form runat="server">
      
        <div class="row">
          <div class="col-50">
            <h3><b>Billing Address</b></h3><br />
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <asp:TextBox ID="name" runat="server" placeholder="Your name"></asp:TextBox>
            
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <asp:TextBox ID="email" runat="server" placeholder="Your email id"></asp:TextBox>
            
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <asp:TextBox ID="address" runat="server" placeholder="Your address"></asp:TextBox>
            
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <asp:TextBox ID="city" runat="server" placeholder="Your city"></asp:TextBox>
           

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <asp:TextBox ID="state" runat="server" placeholder="your state"></asp:TextBox>
              </div>
              <div class="col-50">
                <label for="Pincode">Pincode</label>
                <asp:TextBox ID="pin" runat="server" placeholder="000 000"></asp:TextBox>
               
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3><b>Payment</b></h3><br />
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="nameoncard">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="xxx xxx"/>
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444"/>
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="exp month"/>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="yyyy"/>
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="000"/>
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"/> Shipping address same as billing
        </label>
          <asp:Button ID="Button1" runat="server" Text="Continue to Checkout" class="btn" OnClick="Button1_Click" />
       
      </form>
        <h4>Delivery within 5 hrs inside coimbatore and delivery within 24hrs in other districts</h4>
    <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>  
    </div>
  </div>
   
</div><br /><br />
</body>
</html>
