using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease;
using BLL.User.Manager;
//using System.Reflection.Emit;
using System.Xml.Linq;

namespace _3tierApp
{

    public partial class RegisterForm : System.Web.UI.Page
    {
        LoginManager LR_OBJ = new LoginManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                if (HiddenField1.Value == "-1")
                {
                    Registerinsert();
                }
            }
        }

        public void Registerinsert()
        {
            LR_OBJ.LoginPro_Obj.name = TextBox1.Text.Trim().ToString();
            LR_OBJ.LoginPro_Obj.email = TextBox2.Text.Trim().ToString();
            LR_OBJ.LoginPro_Obj.contact = TextBox3.Text.Trim().ToString();
            LR_OBJ.LoginPro_Obj.disrtict = TextBox4.Text.Trim().ToString();
            LR_OBJ.LoginPro_Obj.pincode = int.Parse(TextBox8.Text.Trim().ToString());
            LR_OBJ.LoginPro_Obj.password = TextBox10.Text.Trim().ToString();
            string result = LR_OBJ.insert();
          
            HiddenField1.Value = "-1";
           
            
            if (result == "Success")
            {
                Label12.Visible = true;
                Label12.Text = "Inserted Successfully";
            }
            else if (result == "AlreadyExist")
            {
                Label12.Visible = true;
                Label12.Text = "AlreadyExist";
            }
            else if (result == "Error")
            {
                Label12.Visible = true;
                Label12.Text = "Error";
            }
            else
            {
                Label12.Visible = true;
                Label12.Text = "failed due to some technical error";
            }



        }

    }
}