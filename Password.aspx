<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="Research_Development.Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <style>
        .Password {
            border: outset;
            border-color:darkred;
            margin-left: 20%;
            width: 800px;
            height: 500px;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        }  
        </style>
                <script type="text/javascript" >        history.forward();
    </script>

        <h4 style="color:darkred">
        Welcome <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label></h4>
    <div style="margin-left:90%" >
        
        <table>
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="BackImageButton" runat="server" ImageUrl="~/img/back.png" Height="80px" Width="80px" OnClick="BackImageButton_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="LogOutButton" runat="server" Text="Logout" Height="30px" Width="75px" OnClick="LogOutButton_Click" />
                </td>
            </tr>
        </table>   
        </div>
    <div class="Password">
        <br /><br /><br />
        <center>
            <table>
                <tr>
                    <td>
                        Current Password:
                    </td>
                    <td>
                        <asp:TextBox ID="CurrentPwdTextBox" placeholder="Current_Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        New Password:
                    </td>
                    <td>
                        <asp:TextBox ID="NewPwdTextBox" placeholder="New_Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Re-Enter Password:
                    </td>
                    <td>
                        <asp:TextBox ID="ReNewPwdTextBox" placeholder="Re-Enter New_Password" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="SubmitButton" runat="server" Text="Change_Password" OnClick="SubmitButton_Click"></asp:Button>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
