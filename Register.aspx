<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Research_Development.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .Reg {
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
                    <asp:ImageButton ID="BackImageButton" runat="server" ImageUrl="~/img/back.png" Height="80px" Width="80px" PostBackUrl="~/Admin.aspx" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="LogOutButton" runat="server" Text="Logout" Height="30px" Width="75px" OnClick="LogOutButton_Click" />
                </td>
            </tr>
        </table>   
        </div>
    <div class="Reg">
        <center>
            <br /><br /><br />
            <h2 style="color:darkred">REGISTRATION</h2>
            <table>
                <tr>
                    <td>
                        ID:
                    </td>
                    <td>
                        <asp:TextBox ID="IDTextBox" Placeholder="ID" runat="server"></asp:TextBox>
                    </td>
                    <td style="color:red">
                        <asp:Label ID="NameExistLabel" runat="server" Text=""></asp:Label>
                        <asp:Label ID="StarLabel1" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" Placeholder="Name" runat="server"></asp:TextBox>
                    </td>
                    <td style="color:red">
                        <asp:Label ID="StarLabel2" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Designation:
                    </td>
                    <td>
                        <asp:DropDownList ID="DesignationDropDownList" runat="server" Height="22px" Width="95px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>DEAN</asp:ListItem>
                            <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>AHOD</asp:ListItem>
                            <asp:ListItem>FACULTY</asp:ListItem>
                            <asp:ListItem>STUDENT</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="color:red">
                        <asp:Label ID="StarLabel3" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Department:
                    </td>
                    <td>
                        <asp:DropDownList ID="DepartmentDropDownList" runat="server" Height="22px" Width="95px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>CIVIL</asp:ListItem>
                            <asp:ListItem>MECH</asp:ListItem>
                            <asp:ListItem>ECE</asp:ListItem>
                            <asp:ListItem>EEE</asp:ListItem>
                            <asp:ListItem>EIE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="color:red">
                        <asp:Label ID="StarLabel4" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        ContactNo:
                    </td>
                    <td>
                        <asp:TextBox ID="ContactNoTextBox" Placeholder="PhoneNo" runat="server"></asp:TextBox>
                    </td>
                    <td style="color:red">
                        <asp:Label ID="StarLabel5" runat="server" Text="*" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="ResetButton" runat="server" Text="Reset"></asp:Button>
                    </td>
                </tr>
            </table>
        </center>

    </div>  
</asp:Content>
