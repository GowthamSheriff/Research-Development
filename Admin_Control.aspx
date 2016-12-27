<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Admin_Control.aspx.cs" Inherits="Research_Development.Admin_Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
                .Admin_Control {
            border: outset;
            border-color:darkred;
            width:80%;
            height: 100%;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        } 
            </style>
                <script type="text/javascript" >        history.forward();
    </script>
    <h4 style="color:darkred">
        Welcome <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label></h4>
    <div style="margin-left:86%" >
            <table>
            <tr>
                <td>
                    <asp:ImageButton ID="BackImageButton" runat="server" ImageUrl="~/img/back.png" Height="80px" Width="80px" PostBackUrl="~/Admin.aspx" OnClick="BackImageButton_Click" />
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="AddImageButton" runat="server" ImageUrl="~/img/AddLogo.png" Height="55px" Width="55px" OnClick="AddImageButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ChangePassword" runat="server" ImageUrl="~/img/password-icon.png" Height="55px" Width="55px" OnClick="ChangePassword_Click"/>
                </td>
                <td class="auto-style2">
                   <asp:Button ID="LogOutButton" runat="server" Text="Logout" Height="30px" Width="75px" OnClick="LogOutButton_Click" />
                </td>
            </tr>
        </table>      
    </div>
    <center>
    <div class="Admin_Control">
        <br /><br />
        <table style="float:right">
            <tr>
                <td>
                    <asp:Button ID="AcceptedButton" runat="server" Text="Accept" OnClick="AcceptedButton_Click" ></asp:Button>
                </td>
                <td>
                    <asp:Button ID="DeclinedButton" runat="server" Text="Decline" OnClick="DeclinedButton_Click"></asp:Button>
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click"></asp:Button>
                </td>
            </tr>
        </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="UploadedSqlDataSource" EnableModelValidation="True" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="chkSelect" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nos" SortExpression="Nos" Visible="false">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nos") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Nos") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" Text='<%# Eval("Data") %>' CommandArgument= '<%# Eval("Data") %>' OnClick = "DownloadFile" ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>

    </div>
            <asp:SqlDataSource ID="UploadedSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RDdbConnectionString %>" SelectCommand="SELECT [Nos],[ID], [Type], [Title], [Description], [Date], [Place], [Department], [Designation], [Data], [Status] FROM [Upload] WHERE (([SS] = @SS) AND ([Year] = @Year) AND ([Department] = @Department))">
                <SelectParameters>
                    <asp:SessionParameter Name="SS" SessionField="Desig" Type="String" />
                    <asp:SessionParameter Name="Year" SessionField="Year" Type="String" />
                    <asp:SessionParameter Name="Department" SessionField="Dept" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </center>
</asp:Content>
