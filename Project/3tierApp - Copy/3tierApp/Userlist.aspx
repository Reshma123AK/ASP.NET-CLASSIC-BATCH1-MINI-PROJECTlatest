<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Userlist.aspx.cs" Inherits="_3tierApp.Userlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

       
.auto-style12
{
    height:501px;
    width:1000px;
    margin:auto;
}

         .auto-style16 {
            height: 519px;
            width:1000px;
            padding:0px;
        margin-top: 8px;
    }
       .auto-style17{
               height: 519px;
    width:1000px;
    padding:0px;
margin-top: 0px;

       }  
        .auto-style18 {
            margin-top: 0px;
        }
        .grid-container{
            position: relative;
    width: 100%;
    height: 100%;
    background-image: url("image/background.jpeg");
    background-size: cover;
    background-position: center;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style17">
        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER LIST</label>
      <div class="grid-container">
         <asp:GridView ID="GridView1" runat="server" Height="33px" Width="1003px" CssClass="auto-style18" AutoGenerateColumns="False">
             <Columns>
                 <asp:BoundField DataField="UserId" HeaderText="Userid" />
                 <asp:BoundField DataField="UserName" HeaderText="UserName" />
                 <asp:BoundField DataField="Email" HeaderText="Email" />
                 <asp:BoundField DataField="Mobile" HeaderText="Contact" />
                 <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                 <asp:BoundField DataField="Status" HeaderText="Status" />
                 <asp:TemplateField HeaderText="Block">
                     <ItemTemplate>
                         <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" ForeColor="#FF3300" Text="Blocked" />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
          
      
          <img src="image/rose.png" class="auto-style17" />

        </div>
        </div>
    
</asp:Content>

