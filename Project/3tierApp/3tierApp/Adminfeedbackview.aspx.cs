using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using BLL.ADMIN.MANAGER;

namespace _3tierApp
{
    public partial class Adminfeedbackview : System.Web.UI.Page
    {
        Adminfeedbackviewmanager feedback_obj=new Adminfeedbackviewmanager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                GridFeedbackBind();

            }

        }
        public void GridFeedbackBind()
        {
            GridView2.DataSource = feedback_obj.SellectAllFeedback();
            GridView2.DataBind();
        }
    }
}