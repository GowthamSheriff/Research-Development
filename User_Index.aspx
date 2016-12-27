<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="User_Index.aspx.cs" Inherits="Research_Development.User_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
                .User {
            border: outset;
            border-color:darkred;
            margin-left: 10%;
            margin-left: 10%;
            width: auto;
            height: auto;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        }   
        .auto-style1 {
            width: 120px;
        }
        .Block1{
  float: left;
  width:410px;
  text-align: right;
  margin: 10px 10px;
  display: inline;
        }
    </style>
            <script type="text/javascript" >        history.forward();
    </script>
    <h4 style="color:darkred">
        Welcome <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label></h4>
    <div style="margin-left:86%" >
                <table>
            <tr>
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
    <div class="User">
        <center>
            <asp:Panel ID="Add_Panel" runat="server">
                <br /><br />
            <table >
            <tr>
                <td class="auto-style1">
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Type of Paper:
                </td>
                <td>
                    <asp:DropDownList ID="TypeDropDownList" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Seminar</asp:ListItem>
                        <asp:ListItem>National Conference</asp:ListItem>
                        <asp:ListItem>InterNational Conference</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Title:
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" placeholder="Title"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Simple Descripition:
                </td>
                <td>
                    <asp:TextBox ID="DescriptionTextBox" runat="server" placeholder="Description" TextMode="MultiLine" Height="70px" Width="150px"></asp:TextBox>
                </td>
            </tr>
                <tr>
                    <td>
                        Date:
                    </td>
                    <td><asp:TextBox ID="DateTextBox" placeholder="(DD/MM/YY) Eg:05/02/2016" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Place/Venu:
                    </td>
                    <td>
                        <asp:TextBox ID="PlaceTextBox" runat="server" placeholder="Place/Venu" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Year:
                    </td>
                    <td>
                        <asp:TextBox ID="YearTextBox" runat="server" placeholder="2015-2016" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFilename" runat="server" Text="Browse:"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Submit" OnClick="btnUpload_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="Reset_Button" runat="server" Text="Reset" ></asp:Button>
                    </td>
                </tr>
        </table>
                <br />
            </asp:Panel>
            <div class="Block1">
            <asp:GridView ID="UploadedGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="UploadedSqlDataSource" EnableModelValidation="True" >
                <Columns>
                    
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />                    
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" Text='<%# Eval("Data") %>' CommandArgument= '<%# Eval("Data") %>' OnClick = "DownloadFile" ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:GridView></div>
            <asp:SqlDataSource ID="UploadedSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RDdbConnectionString %>" SelectCommand="SELECT [ID], [Title], [Description], [Date], [Place], [Year], [Data], [Type],[Status] FROM [Upload] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="ID" SessionField="ID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>

    </div>
</asp:Content>
