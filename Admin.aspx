<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Research_Development.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .Admin {
            border: outset;
            border-color:darkred;
            margin-left: 20%;
            width: 800px;
            height: 500px;
            border-radius: 25px;
            box-shadow: 5px 5px 5px #888888;
        }    

            .auto-style2 {
                width: 213px;
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
                    <asp:ImageButton ID="ReportButton" runat="server" ImageUrl="~/img/Report.png" Height="55px" Width="55px" OnClick="ReportButton_Click"/>
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton" runat="server" ImageUrl="~/img/AddLogo.png" Height="55px" Width="55px" OnClick="ImageButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="ChangePassword" runat="server" ImageUrl="~/img/password-icon.png" Height="55px" Width="55px" OnClick="ChangePassword_Click"/>
                </td>
                <td class="auto-style2">
                   <asp:Button ID="LogOutButton" runat="server" Text="Logout" Height="30px" Width="75px" OnClick="LogOutButton_Click" UseSubmitBehavior="False" />
                </td>
            </tr>
        </table> 
        
    
        </div>
    <div class="Admin">
    <center>
        <br /><br /><br /><br />
       <table>
           <tr>
               <td style="color:darkred">
                   Year:
               </td>
               <td>
                   <asp:TextBox ID="YearTextBox" placeholder="2015-2016" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:Button ID="GoButton" runat="server" Text="Go" OnClick="GoButton_Click"></asp:Button>
               </td>
           </tr>
           <tr>
               <td><br /></td>
           </tr>
           <tr>
               <td>
                   Total Achivements of Staffs:
               </td>
               <td class="auto-style2">
                   <asp:LinkButton ID="TotalAchivementStaffsLinkButton" text="" runat="server" ></asp:LinkButton>
               </td>
               <td>
                   Total Achivements of Students:
               </td>
               <td>
                   <asp:LinkButton ID="TotalAchivementStudentsLinkButton" text="" runat="server" ></asp:LinkButton>
               </td>
           </tr>
           <tr><td><br /></td></tr>
                <tr>
                    <td>
                        IT:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="ITStaffsLinkButton" text="" runat="server" OnClick="ITStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        IT:
                    </td>
                    <td>
                        <asp:LinkButton ID="ITStudentsLinkButton" text="" runat="server" OnClick="ITStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        CSE:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="CSEStaffsLinkButton" text="" runat="server" OnClick="CSEStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        CSE:
                    </td>
                    <td>
                        <asp:LinkButton ID="CSEStudentsLinkButton" text="" runat="server" OnClick="CSEStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        CIVIL:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="CIVILStaffsLinkButton" text="" runat="server" OnClick="CIVILStaffsLinkButton_Click"></asp:LinkButton>
                    </td><td>
                        CIVIL:
                    </td>
                    <td>
                        <asp:LinkButton ID="CIVILStudentsLinkButton" text="" runat="server" OnClick="CIVILStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        MECH:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="MECHStaffsLinkButton" text="" runat="server" OnClick="MECHStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        MECH:
                    </td>
                    <td>
                        <asp:LinkButton ID="MECHStudentsLinkButton" text="" runat="server" OnClick="MECHStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        ECE:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="ECEStaffsLinkButton" text="" runat="server" OnClick="ECEStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        ECE:
                    </td>
                    <td>
                        <asp:LinkButton ID="ECEStudentsLinkButton" text="" runat="server" OnClick="ECEStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        EEE:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="EEEStaffsLinkButton" text="" runat="server" OnClick="EEEStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        EEE:
                    </td>
                    <td>
                        <asp:LinkButton ID="EEEStudentsLinkButton" text="" runat="server" OnClick="EEEStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        EIE:
                    </td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="EIEStaffsLinkButton" text="" runat="server" OnClick="EIEStaffsLinkButton_Click"></asp:LinkButton>
                    </td>
                    <td>
                        EIE:
                    </td>
                    <td>
                        <asp:LinkButton ID="EIEStudentsLinkButton" text="" runat="server" OnClick="EIEStudentsLinkButton_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        <table>
        <tr><td style="color:darkred">Total Registered users:</td>
                
            </tr>
            <tr>
                <asp:GridView ID="UserGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="UserSqlDataSource" EnableModelValidation="True" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                        <asp:BoundField DataField="Nos" HeaderText="Nos" InsertVisible="False" ReadOnly="True" SortExpression="Nos" Visible="false" />
                        <asp:TemplateField HeaderText="ID" SortExpression="ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                              <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkReset" Text = "Reset" CommandArgument = '<%# Eval("ID") %>' runat="server" OnClick = "Reset"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("ID") %>' runat = "server" OnClick = "DeleteUser" />
            </ItemTemplate>
        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:GridView>
                <asp:SqlDataSource ID="UserSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RDdbConnectionString %>" SelectCommand="SELECT [Nos], [ID], [Name], [Designation], [Department], [ContactNo] FROM [RDTBL] WHERE ([ID] &lt;&gt; @ID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="ADMIN" Name="ID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </tr>
 </table>
        
    </center>
    </div>

</asp:Content>
