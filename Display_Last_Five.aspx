<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display_Last_Five.aspx.cs" Inherits="HCL_EXCERCISE_CHALAPATHI.Display_Last_Five" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>      
          <h3 style="text-align:center;color:blue">Account Holder Last 5 Transactions</h3>     
          <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"></asp:GridView>  
      </div>
         <div style="text-align:center">
            <a href="Acc_Bal.aspx" style="text-align:center">Account Balance</a>
        </div>
         <div style="text-align:center">
            <a href="Fund_Tran.aspx" style="text-align:center">Fund Transfer</a>
        </div>
    </form>
</body>
</html>
