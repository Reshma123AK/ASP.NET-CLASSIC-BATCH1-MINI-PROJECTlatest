<%@ Page Title="" Language="C#" MasterPageFile="~/HomeUser.Master" AutoEventWireup="true" CodeBehind="HomePageUser.aspx.cs" Inherits="_3tierApp.HomePageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #content{
            width: 1000px;
            margin: 0 auto;
           padding: 0;
          background-image:url("Image/IMG-20240508-WA0021.jpg");
           height: 600px;
          color:azure;
        }
        .Hungry{
              /*position: absolute;
             bottom: 8px;*/ 
              /*left: 300px;*/
               /*margin: 0 auto;
              padding: 0;*/
        }
        .auto-style6 {
           /* position: absolute;
            bottom:00px;
            left: 150px;
            width: 313px;
            height: 67px;
            font-size:80px;
            margin:auto;
            */
            position: absolute;
       top: 180px;
      left: 200px;
      font-size:80px;
        } 
        .Food{
                 /*position: absolute;
 top: 150px;
left: 10px;
font-size:80px;
bottom:500px;*/
                 /*position: absolute;
            bottom:8px;
            left: 150px;
            width: 313px;
            height: 67px;
            font-size:80px;
            margin:auto;*/
        }
        .auto-style7 {
            /*position: absolute;
 top: 150px;
left: 10px;
font-size:80px;
bottom:500px;*/
                /* position: absolute;
            bottom: 37px;
            top:170px;
            left: 400px;
            width: 578px;
            height: 67px;
            font-size: 80px;
            margin: auto;*/
             position: absolute;
  bottom: -30px;
  right: -195px;   
  font-size: 70px;
  left:200px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="content" >
        <h1 class="auto-style6"> <span style="color:forestgreen">H</span>ungry <span style="color:forestgreen">H</span>ive&nbsp; </h1>
        <h2 class="auto-style7">It's not Food, <br />It's an Exprience...</h2>
           
     </div>
</asp:Content>
