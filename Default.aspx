<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
<link rel="stylesheet" href="a.css"/>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.myLink {display: none}
</style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-border-bottom w3-xlarge">
  <a href="default.aspx" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b><i class="fa fa-map-marker w3-margin-right"></i>Logo</b></a>
  <a href="#" class="w3-bar-item w3-button w3-right w3-hover-red w3-text-grey"><i class="fa fa-search"></i></a>
  <a href="default.aspx" class="w3-bar-item w3-button w3-text-red w3-hover-red"><b>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </b></a>
     <div class="w3-bar w3-black">
            
         <asp:LinkButton class="w3-bar-item w3-button tablink" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Restaurants</asp:LinkButton>
         <asp:LinkButton class="w3-bar-item w3-button tablink" ID="LinkButton2" runat="server">Hotels</asp:LinkButton>
         <asp:LinkButton class="w3-bar-item w3-button tablink" ID="LinkButton3" runat="server">Places to visit</asp:LinkButton>
         <asp:LinkButton class="w3-bar-item w3-button tablink" ID="LinkButton4" runat="server">Sign in</asp:LinkButton>
         <asp:Button ID="Button3" runat="server" Text="Log out" class="w3-bar-item w3-button tablink" OnClick="Button3_Click" />
         
    </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-hide-small" style="max-width:1500px">
  <img class="w3-image" src="../w3images/london2.jpg" alt="London" width="1500" height="700">
  <div class="w3-display-middle" style="width:65%">
   

    
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px;">

  <!-- Good offers -->
  <div class="w3-container w3-margin-top">
    <h3>Good Offers Right Now</h3>
    <h6>Up to <strong>50%</strong> discount.</h6>
  </div>
  <div class="w3-row-padding w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="../w3images/cinqueterre.jpg" alt="Cinque Terre" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Cinque Terre</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="../w3images/newyork2.jpg" alt="New York" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">New York</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="../w3images/sanfran.jpg" alt="San Francisco" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">San Francisco</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="../w3images/pisa.jpg" alt="Pisa" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Pisa</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="../w3images/paris.jpg" alt="Paris" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Paris</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Explore Nature -->
  <div class="w3-container">
    <h3>Explore Nature</h3>
    <p>Travel with us and see nature at its finest.</p>
  </div>
  <div class="w3-row-padding">
    <div class="w3-half w3-margin-bottom">
      <img src="../w3images/ocean2.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>West Coast, Norway</h3>
        <p class="w3-opacity">Roundtrip from $79</p>
        <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
        <asp:Button ID="Button1" runat="server" class="w3-button w3<asp:FileUpload runat=" server="" Text="Buy Tickets" />
      </div>
    </div>
    <div class="w3-half w3-margin-bottom">
      <img src="../w3images/mountains2.jpg" alt="Austria" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Mountains, Austria</h3>
        <p class="w3-opacity">One-way from $39</p>
        <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
                <asp:Button ID="Button2" runat="server" class="w3-button w3<asp:FileUpload runat=" server="" Text="Buy Tickets" />
      </div>
    </div>
  </div>

  <!-- Newsletter -->
  <div class="w3-container">
    <div class="w3-panel w3-padding-16 w3-black w3-opacity w3-card w3-hover-opacity-off">
      <h2>Get the best offers first!</h2>
      <p>Join our newsletter.</p>
      <label>E-mail</label>
      <input class="w3-input w3-border" type="text" placeholder="Your Email address">
      <button type="button" class="w3-button w3-red w3-margin-top">Subscribe</button>
    </div>
  </div>
  
  <!-- Contact -->
  <div class="w3-container">
    <h2>Contact</h2>
    <p>Let us book your next trip!</p>
    <i class="fa fa-map-marker" style="width:30px"></i> Chicago, US<br>
    <i class="fa fa-phone" style="width:30px"></i> Phone: +00 151515<br>
    <i class="fa fa-envelope" style="width:30px"> </i> Email: mail@mail.com<br>
    </form>
    <footer class="w3-container w3-center w3-opacity w3-margin-bottom">
        <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by Shahbaa.team</p>
</footer>

    </div>
    </form>
</body>
</html>
