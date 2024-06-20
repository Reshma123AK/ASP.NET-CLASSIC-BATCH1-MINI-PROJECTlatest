<%@ Page Title="" Language="C#" MasterPageFile="~/HomeUser.Master" AutoEventWireup="true" CodeBehind="Usercontactus.aspx.cs" Inherits="_3tierApp.Usercontactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .containercontact{
            background-image:url("Images/contactimage.jpeg");
            width:1000px;
            margin:auto;
            height:700px;
            /*padding: 20px;*/
            display: flex;
            flex-direction: column;
            align-items: start;
            justify-content: center;
            /*text-align:center;*/
        }
        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            /*margin-right:20px;*/
        }
        .contact-icon {
            width: 45px;
            height: 45px;
            margin-right: 20px;
            margin-left:100px;
            /*margin-top:70px;*/
            
        }
        .contact-text {
            font-size: 20px;
            color: white;
            /*margin-top:70px;*/
            
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="containercontact">
        <div class="contact-item">
            <img class="contact-icon" src="Images/locationicon.jpg" />
            <span class="contact-text">Our Office Address<br />palm court M,501/B,5TH Floor,new link Road</span>
        </div>
        <div class="contact-item">
            <img class= "contact-icon" src="Images/Emailicon.png" />
            <span class="contact-text">General Enqueries<br />websupport@gjustdial.com</span>

         </div>
        <div class="contact-item">
            <img class="contact-icon" src="Images/callicon.jpg" />
            <span class="contact-text">Call Us<br />5566655598</span>


            </div>
        <div class="contact-item">
            <img class="contact-icon" src="Images/timeicon.png" />
            <span class="contact-text">Our Timing<br />Mon-sun:10AM-11PM</span>
   </div>
        </div>
  </asp:Content>
