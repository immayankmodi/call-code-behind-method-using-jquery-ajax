using System;
using System.Web.Services;

namespace CallCodeBehindMethodsUsingJson {

    public partial class CallMethodUsingJson : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {

        }

        [WebMethod]
        public static string callFunction(string FirstName, string LastName) {
            return "Your name is " + FirstName + " " + LastName + "";
        }
    }
}