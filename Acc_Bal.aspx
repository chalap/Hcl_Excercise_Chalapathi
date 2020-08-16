<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acc_Bal.aspx.cs" Inherits="HCL_EXCERCISE_CHALAPATHI.Acc_Bal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>             
         <h3 style="text-align: center; color: blue">Account Holder Balance</h3>             
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">                 
             <Columns>                     
                 <asp:BoundField DataField="Account_Number" HeaderText="Account Number" />                     
                 <asp:BoundField DataField="Account_Bal" HeaderText="Account Balance" />                                     
             </Columns>             
         </asp:GridView>
     </div>
        <div style="text-align:center">
            <a href="Display_Last_Five.aspx" style="text-align:center">Last Five Transaction</a>
        </div>
         <div style="text-align:center">
            <a href="Fund_Tran.aspx" style="text-align:center">Fund Transfer</a>
        </div>
    </form>
</body>
</html>
