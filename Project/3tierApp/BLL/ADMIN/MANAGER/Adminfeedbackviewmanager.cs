using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL.ADMIN.Property;
using DAL;
using System.Collections;
using System.Data;
using System.Data.SqlClient;


namespace BLL.ADMIN.MANAGER
{
    public class Adminfeedbackviewmanager
    {
        private DBHelper Db_Obj = new DBHelper();
        public Feedbackviewpro Feedpro_Obj = new Feedbackviewpro();
        private SortedList S1 = new SortedList();


        public List<Feedbackviewpro> SellectAllFeedback()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallfeedback");
            List<Feedbackviewpro> _list = new List<Feedbackviewpro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new Feedbackviewpro
                {
                    Name = dr["UserName"].ToString(),
                    Email = dr["Email"].ToString(),
                    Comment = dr["comment"].ToString(),

                });

            }
            return _list;

        }
    }
}
