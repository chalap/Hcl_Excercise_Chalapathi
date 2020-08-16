﻿using System;
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
    public partial class Fund_Tran : System.Web.UI.Page
    {
        SqlConnection cn = null;
        SqlCommand cmd = null;
        SqlCommand cmd1 = null;
        string strSqlCommand1 = String.Empty;
        string strSqlCommand = String.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(); cn.ConnectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            if (!IsPostBack)
            {

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (btnSave.Text == "Save")
            {
                strSqlCommand = "Insert Into Bank_App_Trans_tab (Account_Number, Beneficiary, Withdrawal, Message) Values(" + txtaccfrom.Text.Trim() + ", " + txtba.Text.Trim() + "," + txtamount.Text.Trim() + ", '" + txtmess.Text.Trim() + "')";
                strSqlCommand1 = "insert into Bank_App_Bal_tab(Account_Number,Account_Bal) select Account_Number,Account_Bal from Bank_App_Bal_tab where Tran_Num=(Select Max(Tran_Num) from Bank_App_Bal_tab) update Bank_App_Bal_Tab set Account_Bal=Account_Bal-1000 where Tran_Num=(select max(Tran_Num) from Bank_App_Bal_Tab)";
                if (cn.State != ConnectionState.Open)
                    cn.Open();
                cmd = new SqlCommand();
                cmd1 = new SqlCommand();
                cmd.CommandText = strSqlCommand;
                cmd1.CommandText = strSqlCommand1;
                cmd.Connection = cn;
                cmd1.Connection = cn;
                int rowAffected = cmd.ExecuteNonQuery();
                int rowAffected1 = cmd1.ExecuteNonQuery();
                if (rowAffected > 0)
                {

                    lblStatus.Text = "<b style='color:green'>Fund Transaction successfull!!!</b>";
                    txtaccfrom.Text = string.Empty;
                    txtba.Text = string.Empty;
                    txtamount.Text = string.Empty;
                    txtmess.Text = string.Empty;
                }

                else
                {
                    lblStatus.Text = "<b style='color:red>Transaction failed!!!</b>";
                }
                cn.Close();
            }
            
        }
       
    }
    }
 