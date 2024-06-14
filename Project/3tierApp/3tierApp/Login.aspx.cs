using BLL.User.Manager;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3tierApp
{
    public partial class Login : System.Web.UI.Page
    {

        LoginManager LR_OBJ = new LoginManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button4_Click1(object sender, EventArgs e)
        {
            LR_OBJ.LoginPro_Obj.email = TextBox1.Text.Trim();
            LR_OBJ.LoginPro_Obj.password = TextBox2.Text.Trim();

            string result = LR_OBJ.login();

            if (result == "Admin")
            {
                Response.Redirect("HomePageUser.aspx");
            }
            else if (result == "A")
            {
                DataTable table = LR_OBJ.GetUser(TextBox1.Text, TextBox2.Text);
                if (table.Rows.Count > 0)
                {
                    DataRow row = table.Rows[0];
                    Session["UserId"] = row["UserId"].ToString();
                    Session["UserName"] = row["UserName"].ToString();
                    Session["Email"] = row["Email"].ToString();
                    Session["Mobile"] = row["Mobile"].ToString();
                    Session["Pincode"] = row["Pincode"].ToString();
                    Session["District"] = row["District"].ToString();
                    Session["Password"] = row["Password"].ToString();
                    Response.Redirect("WelcomeToOrder_user.aspx");
                }
                else
                {
                    Label4.Visible = true;
                    Label4.Text = "invalid";
                }
            }



        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegisterForm.aspx");
        }

    }


}