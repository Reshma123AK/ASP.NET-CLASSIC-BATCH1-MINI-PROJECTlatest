using DAL;
using BLL.User.Property;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Data.SqlClient;

namespace BLL.User.Manager
{
    public class LoginManager
    {

        private DBHelper DB_Obj =new DBHelper();
        public LoginPro  LoginPro_Obj=new LoginPro();
        private SortedList S1 = new SortedList();

        public string insert()
        {
            S1.Clear();
            S1.Add("UserName", LoginPro_Obj.name);
            S1.Add("Email", LoginPro_Obj.email);
            S1.Add("Mobile", LoginPro_Obj.contact);
            S1.Add("District", LoginPro_Obj.disrtict);
            S1.Add("Pincode", LoginPro_Obj.pincode);
            S1.Add("Password", LoginPro_Obj.password);


            return DB_Obj.executeprocedure(S1,"User_Insert");

        }

        public string login()
        {

            S1.Add("Emailid", LoginPro_Obj.email); // Correct parameter name
            S1.Add("Password", LoginPro_Obj.password); // Correct parameter name

            return DB_Obj.executeprocedure(S1, "checkAdminStatus1");
        }
        public DataTable GetUser(string email, string password)
        {
            return DB_Obj.GetDataTable("User_Select1",
                new SqlParameter("@EmailId", email),
                new SqlParameter("@Password", password));
        } 
    }
}
