using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HCL_EXCERCISE_CHALAPATHI
{
    public partial class Acc_Bal : System.Web.UI.Page
    {
        SqlConnection cn = null;
        SqlDataAdapter da = null;
        DataSet ds = null;
        string strSqlQuery = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
            if (!Page.IsPostBack)
            {
                BindEmpData();
            }
        }
        void BindEmpData()
        {
            strSqlQuery = "Select top 1 Account_Number,Account_Bal from Bank_App_Bal_tab order by Tran_Num desc";
            da = new SqlDataAdapter(strSqlQuery, cn);
            ds = new DataSet();
            da.Fill(ds, "Bank_App_Bal_tab");
            GridView1.DataSource = ds.Tables["Bank_App_Bal_tab"];
            GridView1.DataBind();

        }
    }
}