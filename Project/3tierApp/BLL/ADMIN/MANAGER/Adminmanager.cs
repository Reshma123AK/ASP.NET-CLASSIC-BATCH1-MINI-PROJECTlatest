using BLL.ADMIN.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.ADMIN.MANAGER
{
    public class Adminmanager
    {
        private DBhelpers DB_obj = new DBhelpers();
        private SortedList s1 = new SortedList();
        public Categorypro obj2 = new Categorypro();

          
public List<Categorypro> selectallcategory()
        {
            DataTable dt= new DataTable();
            dt = DB_obj.getdatatable("selectallCategory");
            List<Categorypro>list = new List<Categorypro>();
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new Categorypro
                {
                    CategoryId = Convert.ToInt32(dr["CategoryId"]),
                    CategoryName = dr["CategoryName"].ToString(),
                    Image = dr["Image"].ToString(),
                    Status = dr["Status"].ToString()
                });
            }return list;

        }
        public string CategoryInsert()
        {
            s1.Clear();
            s1.Add("CategoryName", obj2.CategoryName);
            s1.Add("Image", obj2.Image);
            return DB_obj.executeprocedure(s1, "Category_Insert");

        }


    }
}
