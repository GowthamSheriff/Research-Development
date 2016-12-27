<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Research_Development.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Login {
            border: outset;
            margin-top: 15%;
            margin-left: 40%;
            border-color:darkred;
            width: 400px;
            height: 200px;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        }  
        .footer{
    color:darkred;
    margin-left: 40%;
    margin-bottom:auto;
}
    
</style>
        <script type="text/javascript" >        history.forward();
    </script>


 
      <div class="Login">
            <br />
            <br /><br />



            <center>
        <table>
            <tr>
                <td style="color:darkred">
                    UserName:
                </td>
                <td>
                <asp:TextBox ID="UNameTextBox" PlaceHolder="UserName" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                    <td style="color:darkred">
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" PlaceHolder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>

                </td>
                <td>
                     
                <asp:Button ID="LoginButton" runat="server" Text="Login" Width="70px" OnClick="LoginButton_Click"></asp:Button>
                </td>
            </tr>
            
        </table>
                </center>
        </div>
        <div class="footer">
            <br />
            <h4>Developed By: Gowtham D [B.Tech IT(2013-2017)♣ NEC ♣]</h4>
                     
    </div>

    <br />

</asp:Content>
