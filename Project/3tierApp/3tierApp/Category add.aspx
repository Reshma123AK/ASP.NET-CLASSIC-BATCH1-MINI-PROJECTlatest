<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Category add.aspx.cs" Inherits="_3tierApp.Category_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style19 {
            height: 141px;
        }
        .auto-style20 {
            margin-left: 39px;
        }
        .auto-style21 {
            width: 47%;
            height: 165px;
            background-color: burlywood;
        }
        .content{
         background-image:url("image/rose.png");    height: 519px;
    width: 1000px;
    padding: 0px;
    margin-top: 0px;
}
         

        

        .auto-style22 {
            background-image: url('image/rose.png') ;
            height: 2108px;
            width: 1000px;
            padding: 0px;
            margin-top: 0px;
        }
         
            .grid-container{
       
width: 50%;
height: 50%;
background-image: url("image/background.jpeg") ;




background-size: cover;
background-position: center;
    }
        

        .auto-style23 {
            width: 53%;
            height: 90%;
            background-image: url('image/background.jpeg');
            background-size: cover;
            background-position: center;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style22">


        &nbsp;
        &nbsp;<br />
&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="CATEGORY"></asp:Label>
        <br />
&nbsp;<table class="auto-style21">
            <tr>
                <td class="auto-style19">Category Name
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <br />
&nbsp;
                    <br />
&nbsp;Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="No file choosen" ForeColor="#FF3300" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="SUBMIT" runat="server" Font-Bold="True" Text="SUBMIT" CssClass="auto-style20" OnClick="SUBMIT_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Clear" runat="server" Font-Bold="True" Text="CLEAR" OnClick="Clear_Click" />
                    <asp:Label ID="labelmsg" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>&nbsp;
        &nbsp;<br />
        <asp:HiddenField ID="HiddenField1" runat="server" Visible="False" />
        <br />
        <br />
&nbsp;
&nbsp; <div class="auto-style23"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="498px">
            <Columns>
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" />
                <asp:BoundField DataField="Categoryname" HeaderText="CategoryName" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
<%--      <img src="image/background.jpeg"    class="auto-style17" />--%>

    </div>
</div>
</asp:Content>
