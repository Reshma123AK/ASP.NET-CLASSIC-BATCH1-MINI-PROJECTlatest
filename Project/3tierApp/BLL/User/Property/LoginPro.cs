using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.User.Property
{
    public class LoginPro
    {
        public int userId { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string contact { get; set; }
        public string disrtict { get; set; }

        public int pincode { get; set; }
        public string password { get; set; }
        public string status { get; set; }
    }
} 
