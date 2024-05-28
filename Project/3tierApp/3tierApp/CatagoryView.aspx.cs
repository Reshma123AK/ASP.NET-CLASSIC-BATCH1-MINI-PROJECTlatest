using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.User.Manager;

namespace _3tierApp
{
    public partial class CatagoryView : System.Web.UI.Page
    {
        CatagoryManager catagory = new CatagoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ListAllCategories();
            }
        }
        public void ListAllCategories()
        {
            DataList1.DataSource = catagory.SellectAllCategory();
            DataList1.DataBind();
        }
    }
}