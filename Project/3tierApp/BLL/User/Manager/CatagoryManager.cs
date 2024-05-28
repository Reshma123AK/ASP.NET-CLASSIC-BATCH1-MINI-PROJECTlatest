using BLL.User.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.User.Manager
{
   public  class CatagoryManager
    {
        private DBHelper  Db_Obj = new DBHelper();
        public CatagoryPro  catagoryPro_Obj = new CatagoryPro();
        private SortedList S1 = new SortedList();

        public List<CatagoryPro>SellectAllCategory()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallCategory");
            List<CatagoryPro> _list = new List<CatagoryPro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new CatagoryPro
                {
                    CategoryId = Convert.ToInt32(dr["CategoryId"]),
          Categoryname = dr["CategoryName"].ToString(),
                    Image = dr["Image"].ToString(),
                    Status = dr["Status"].ToString()
                }); 
            }
            return _list;
        }
    }
}
