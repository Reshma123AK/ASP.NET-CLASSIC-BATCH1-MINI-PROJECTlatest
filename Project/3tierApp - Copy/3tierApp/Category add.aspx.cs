using BLL.ADMIN.MANAGER;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3tierApp
{
    public partial class Category_add : System.Web.UI.Page
    {
        Adminmanager admg_obj = new Adminmanager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                gridcategorybind();
            }
        }
        public void gridcategorybind()
        {
            GridView1.DataSource = admg_obj.selectallcategory();
            GridView1.DataBind();
        }
        private string GetRandomText()
        {
            string randomText = "";
            string alphabets = "0123456789";

            Random r = new Random();
            for (int j = 0; j <= 3; j++)
            {
                randomText += alphabets[r.Next(alphabets.Length)];
            }
            return randomText.ToString();
        }

        public void categoryinsert()
        {
            string path = Server.MapPath("~/Image/");
            string filename = GetRandomText();
            FileUpload1.SaveAs(path + filename + ".jpg");
            //admg_obj.obj2.CategoryId = int.Parse(HiddenField1.Value);
            admg_obj.obj2.CategoryName = TextBox1.Text.Trim().ToString();
            admg_obj.obj2.Image = ("~/Image/" + filename + ".jpg");
            string result = admg_obj.CategoryInsert();
            TextBox1.Text = "";
            //HiddenField1.Value = "-1";
            if (result == "Success")
            {
                labelmsg.Visible = true;
                labelmsg.Text = "insert sucessfully";
                if (result == "Success")
                {
                    labelmsg.Visible = true;
                    labelmsg.Text = "insert sucessfully";
                    clear();

                }
                else if (result == "Error")
                {
                    labelmsg.Visible = true;
                    labelmsg.Text = "error due to some technical problem";
                }
                else if (result == "Already Exist")
                {
                    labelmsg.Visible = true;
                    labelmsg.Text = "Allready exist";

                }
                else
                {
                    labelmsg.Visible = true;
                    labelmsg.Text = "error due to some technical error";

                }



            }
            else if (result == "Error")
            {
                labelmsg.Visible = true;
                labelmsg.Text = "error due to some technical problem";
            }
            else if (result == "Already Exist")
            {
                labelmsg.Visible = true;
                labelmsg.Text = "Allready exist";


            }
            else
            {
                labelmsg.Visible = true;
                labelmsg.Text = "error due to some technical error";

            }
            gridcategorybind();

        }
    
        public void clear()
        {
            TextBox1.Text = "";

        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void SUBMIT_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {



                if (HiddenField1.Value != "-1")
                {
                    categoryinsert();
                }
                else
                {
                    
                }

            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}