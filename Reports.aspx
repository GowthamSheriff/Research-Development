<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Research_Development.Reports" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" >        history.forward();
    </script>
    <style>
        .Login {
            border: outset;
            border-color:darkred;
            width: 500px;
            height: 340px;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        }  
        </style>
    <h4 style="color:darkred">
    Welcome <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label></h4>
    <div style="margin-left:86%" >
                <table>
            <tr>
                <td>
                    <asp:ImageButton ID="BackImageButton" runat="server" ImageUrl="~/img/back.png" Height="80px" Width="80px" PostBackUrl="~/Admin.aspx" OnClick="BackImageButton_Click" />
                </td>
                <td class="auto-style2">
                   <asp:Button ID="LogOutButton" runat="server" Text="Logout" Height="30px" Width="75px" OnClick="LogOutButton_Click" UseSubmitBehavior="False" />
                </td>
            </tr>
        </table> 
        </div>
    <center>
        <h1>Report Generation</h1>
        <table>
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="PDF_ImageButton" runat="server" ImageUrl="~/img/pdf-icon.png" Height="55px" Width="55px" OnClick="PDF_ImageButton_Click" />
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="Excel_ImageButton" runat="server" ImageUrl="~/img/xls-logo.png" Height="55px" Width="55px" OnClick="Excel_ImageButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="Word_ImageButton" runat="server" ImageUrl="~/img/word-doc-icon.png" Height="55px" Width="55px" OnClick="Word_ImageButton_Click"/>
                </td>
                </tr>
        </table>
<asp:GridView ID="ReportGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ReportSqlDataSource" Visible="False">
    <Columns>
        <asp:BoundField DataField="Nos" HeaderText="Nos" InsertVisible="False" ReadOnly="True" SortExpression="Nos" />
        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
    </Columns>
        </asp:GridView>
         <asp:SqlDataSource ID="ReportSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RDdbConnectionString %>" SelectCommand="SELECT [Nos], [ID], [Type], [Title], [Description], [Date], [Place], [Department], [Year], [Designation], [Status] FROM [RDDummy]"></asp:SqlDataSource>
         <div class="Login">
        <br />
    <table>
        <tr>
            <td>
                <asp:TextBox ID="IdSearchTextBox" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                 <asp:CheckBox ID="IdCheckBox" runat="server" Text="ID" OnCheckedChanged="IdCheckBox_CheckedChanged" AutoPostBack="True" CausesValidation="True" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="PlaceSearchTextBox" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:CheckBox ID="PlaceCheckBox" runat="server" Text="Place" OnCheckedChanged="PlaceCheckBox_CheckedChanged" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="DateSearchTextBox" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:CheckBox ID="DateCheckBox" runat="server" Text="Date" OnCheckedChanged="DateCheckBox_CheckedChanged" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DesignationDropDownList" runat="server" Height="19px" Width="131px" Enabled="False">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>DEAN</asp:ListItem>
                            <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>AHOD</asp:ListItem>
                            <asp:ListItem>FACULTY</asp:ListItem>
                            <asp:ListItem>STUDENT</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td>
                <asp:CheckBox ID="DesignationCheckBox" runat="server" Text="Desgination" AutoPostBack="True" OnCheckedChanged="DesignationCheckBox_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="TypeDropDownList" runat="server" Height="16px" Width="136px" Enabled="False">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Seminar</asp:ListItem>
                        <asp:ListItem>National Conference</asp:ListItem>
                        <asp:ListItem>InterNational Conference</asp:ListItem>
                    </asp:DropDownList>
            </td>
        
            <td>
                <asp:CheckBox ID="TypeCheckBox" runat="server" Text="Type" CausesValidation="True" AutoPostBack="True" OnCheckedChanged="TypeCheckBox_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TitleSearchTextBox" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:CheckBox ID="TitleCheckBox" runat="server" Text="Title" AutoPostBack="True" OnCheckedChanged="TitleCheckBox_CheckedChanged" />
            </td>
        </tr>
        
         <tr>
            <td>
                <asp:DropDownList ID="StatusDownList1" runat="server" Height="16px" Width="136px" Enabled="False">
                    <asp:ListItem></asp:ListItem>    
                    <asp:ListItem>Accepted</asp:ListItem>
                        <asp:ListItem>Declined</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td>
                <asp:CheckBox ID="StatusCheckBox" runat="server" Text="Status" CausesValidation="True" AutoPostBack="True" OnCheckedChanged="StatusCheckBox_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DepartmentDropDownList" runat="server" Height="22px" Width="136px" Enabled="False">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>CIVIL</asp:ListItem>
                            <asp:ListItem>MECH</asp:ListItem>
                            <asp:ListItem>ECE</asp:ListItem>
                            <asp:ListItem>EEE</asp:ListItem>
                            <asp:ListItem>EIE</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td>
                <asp:RadioButton ID="DepartmentRadioButton" runat="server" GroupName="Software" Text="Department" AutoPostBack="True" OnCheckedChanged="DepartmentCheckBox_CheckedChanged" />
    
            </td>
        </tr>
      <tr>
            <td>
                <asp:TextBox ID="YearSearchTextBox" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:RadioButton ID="YearRadioButton" runat="server" GroupName="Software" Text="Year" AutoPostBack="True" OnCheckedChanged="YearCheckBox_CheckedChanged" />
            </td>
        </tr>

        </table>
        <br />
        <br />
        <table>
        <tr>
            
            <td>

                <asp:Button ID="ReportButton" runat="server" Text="GenerateReport" OnClick="ReportButton_Click" />
            </td>
        </tr>

    </table>
    </div>
<br id="break_name" runat="server" />
    </center>
    
   
    </asp:Content>
