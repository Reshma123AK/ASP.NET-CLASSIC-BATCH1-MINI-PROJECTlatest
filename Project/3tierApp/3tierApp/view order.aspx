<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="view order.aspx.cs" Inherits="_3tierApp.view_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .auto-style17 {
     height: 519px;
     width: 1000px;
     padding: 0px;
     margin-top: 241px;
 }
        .auto-style18 {
            margin-left: 4px;
        }
        
               .content{
         background-image:url("image/rose.png");    height: 519px;
    width: 1000px;
    padding: 0px;
    margin-top: 0px;
}
              
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=content>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="ORDER LIST"></asp:Label>
        <br />
        <br />
        <div class="gridcontainer">
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style18" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="UserId" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" />
                <asp:BoundField DataField="UserName" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="EmailId" />
                <asp:BoundField DataField="Mobile" HeaderText="Contact" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                <asp:BoundField DataField="DishName" HeaderText="DishName" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" />
                <asp:TemplateField HeaderText="Order Submission">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Red" Text="Notify" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
        <img src="image/rose.png" class="auto-style17" />
    </div>
</asp:Content>
