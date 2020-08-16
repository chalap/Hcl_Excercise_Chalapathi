<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fund_Tran.aspx.cs" Inherits="HCL_EXCERCISE_CHALAPATHI.Fund_Tran" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">   
            
        <tr>             
            <th colspan="3">Fund Transfer</th>         
         </tr>         
        <tr> 
            <th colspan="3">                 
                <asp:Label ID="lblStatus" runat="server" />             
            </th>         
            </tr>         
        <tr>             
            <th colspan="3" width="20%" align="left">Account From</th>             
            <th width="2%">:</th>             
            <td>                 
                <asp:TextBox ID="txtaccfrom" runat="server" />             
            </td>         
            </tr>         
             <tr>             
                 <th colspan="3" align="left">Beneficiary Account</th>             
                 <th>:</th>             
                 <td>              
                     <asp:TextBox ID="txtba" runat="server" />             
             </td>         
             </tr>         
             <tr>             
                 <th colspan="3" align="left">Amount</th>             
                 <th>:</th>             
                 <td>                 
                     <asp:TextBox ID="txtamount" runat="server" />             
                 </td>         
             </tr> 
        <tr>             
                 <th colspan="3" align="left">Message (Optional)</th>             
                 <th>:</th>             
                 <td>                 
                     <asp:TextBox ID="txtmess" runat="server" />             
                 </td>         
             </tr> 
         <tr>             
             <th colspan="3"></th>             
             <th></th>             
             <td>                 
                 <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"/>             
         </td>         
         </tr>     
         <tr>             
             <th colspan="3"></th>             
             <th></th>             
             <td>                 
                 <a href="Acc_Bal.aspx" style="text-align:center">Account Balance</a>          
         </td>         
         </tr>   
        <tr>             
             <th colspan="3"></th>             
             <th></th>             
             <td>                 
                 <a href="Display_Last_Five.aspx" style="text-align:center">Last Five Transaction</a>          
         </td>         
         </tr>   
    </table> 
    </form>
</body>
</html>
