<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="_3tierApp.Adminhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .backdesign{
             width: 1460px;
             height: 710px;
            }
      .auto-style2 {
            position:absolute;
            
            top: 126px; 
            left: 504px; 
            text-decoration: none;
            font-size: 24px;
            color: white; 
            display: flex;
            align-items: center;
            padding: 10px;
            border-radius: 8px;
            height: 49px;
            width: 195px;
            right: 478px;
        }
      .auto-style3 {
        height: 37px;
         width: 63px;
        margin-top: 10px;
        }
              .auto-style4 {
            position: absolute;
            top: 206px; 
            left: 503px; 
            text-decoration: none;
            font-size: 24px;
            color: white; 
            display: flex;
            align-items: center;
               padding: 10px;
            border-radius: 8px;
            height: 51px;
            width: 199px;
        }
        .auto-style5 {
            height: 39px;
            width: 62px;
            margin-top: 10px;
        }
        .category-link {
    position: absolute;
    top: 300px; 
    left: 503px;
    text-decoration: none;
    font-size: 24px;
    color: white; 
    display: flex;
    align-items: center;
    background: rgba(0, 0, 0, 0.5);
    padding: 10px;
    border-radius: 8px;
    height: 44px;
    width: 199px;
}
        .auto-style6,.auto-style7,.auto-style8,.auto-style10{
             height: 39px;
             width: 53px;
             margin-top: 10px;

            }
         .view-order-link {
    position: absolute;
    top: 373px; 
    left: 503px; 
    text-decoration: none;
    font-size: 24px;
    color: white; 
    display: flex;
    align-items: center;
    background: rgba(0, 0, 0, 0.5);
    padding: 10px;
    border-radius: 8px;
    height: 44px;
    width: 199px;
}
.category-list-link {
            position: absolute;
            top: 446px; 
            left: 503px; 
            text-decoration: none;
            font-size: 24px;
            color: white; 
            display: flex;
            align-items: center;
            background: rgba(0, 0, 0, 0.5); 
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 199px;
        }
 .feedback-view-link {
            position: absolute;
            top: 519px; 
            left: 503px; 
            text-decoration: none;
            font-size: 24px;
            color: white; 
            display: flex;
            align-items: center;
            background: rgba(0, 0, 0, 0.5); 
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 199px;
        }
        

        .auto-style9 {
            position: absolute;
            top: 519px;
            left: 503px;
            text-decoration: none;
            font-size: 24px;
            color: white;
            display: flex;
            align-items: center;
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 209px;
        }
        .logout-link {
            position: absolute;
            top: 592px; 
            left: 503px; 
            text-decoration: none;
            font-size: 24px;
            color: white; 
            display: flex;
            align-items: center;
            background: rgba(0, 0, 0, 0.5); 
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 199px;
        }
        

        .auto-style11 {
            position: absolute;
            top: 592px;
            left: 503px;
            text-decoration: none;
            font-size: 24px;
            color: white;
            display: flex;
            align-items: center;
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 210px;
        }
        .auto-style12 {
            position: absolute;
            top: 446px;
            left: 503px;
            text-decoration: none;
            font-size: 24px;
            color: white;
            display: flex;
            align-items: center;
            padding: 10px;
            border-radius: 8px;
            height: 44px;
            width: 201px;
        }
        

    </style>
</head>
<body>
    <div class="background">
        <img src="Image/adminhome.jpg" class="backdesign" />
        <a href="Adminhomepage.aspx" class="auto-style2">
            <img src="Image/home%20icon.jpeg" alt="Home Icon" class="auto-style3"  />&nbsp; Home
            </a>
        <a href="" class="auto-style4">
            <img src="Image/users%20logo.jpeg"  alt="User Icon" class="auto-style5" /> View User
            </a>
         <a href="" class="category-link">
             <img src="Image/add%20cate%20(1).jpeg" alt="Category Icon" class="auto-style6" />Add Category</a>
        <a href="" class="view-order-link">
    <img src="Image/view%20order.png" alt="View Order Icon" class="auto-style7"/> View Order</a>
        <a href="" class="auto-style12">
    <img src="Image/dish.png" alt="Category List Icon" class="auto-style8" />Category List</a>
         <a href="" class="auto-style9">
     <img src="Image/feedback%20view.png" alt="Feedback Icon" class="auto-style8" />Feedback View</a>
         <a href="" class="auto-style11">
             <img src="Image/logout.jpeg" alt="Logout Icon" class="auto-style10"/>Logout</a>


    </div>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
