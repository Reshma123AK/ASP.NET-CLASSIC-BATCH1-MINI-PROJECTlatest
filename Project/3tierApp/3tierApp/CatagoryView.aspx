<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CatagoryView.aspx.cs" Inherits="_3tierApp.CatagoryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .CatagoryListDiv{
            background-image:url("Images/wood.jpg");
            width:1000px;
            height:1000px;
        }
        .alert-heading{
            text-align: center;
  position: absolute; 
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-family: "Lucida Console", "Courier New", monospace;
        }
        .category-image{
            width:90px;
            height:90px;
        }
        .category-label{
            margin-top:15px;
            color:white;
            font-style:italic;
            font-size:12px;
               
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="CatagoryListDiv">
         <h1 style="font-size:20px " class="alert-heading">
             Whats on Your mind?</h1>
        
        
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
             <ItemTemplate>
                 <asp:ImageButton ID="ImageButton2" runat="server" CssClass="category-image" ImageUrl='<%# Eval("Image") %>' />
                 <br />
                 <asp:Label ID="lblcategoryname" runat="server" Text='<%# Eval("Categoryname") %>' CssClass="category-label" ></asp:Label>
             </ItemTemplate>
         </asp:DataList>
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        
         <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>
