<%@ Page Title="" Language="C#" MasterPageFile="~/RD1.Master" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Research_Development.demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FileUpload id="FileUpload1" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
    <asp:Label ID="lblFilename" runat="server" Text="Browse:"></asp:Label>
    <asp:LinkButton ID="OnLnkDownload" runat="server" OnClick="OnLnkDownload_Click">OnLnkDownload</asp:LinkButton>
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />


    <asp:Button ID="Button" runat="server" Text="Delete" OnClick="Button1_Click" />

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
            </asp:GridView>
    <asp:SqlDataSource ID="UploadedSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RDdbConnectionString %>" SelectCommand="SELECT [ID], [Title], [Description], [Date], [Place], [Year], [Data], [Type],[Status] FROM [Upload] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="ID" SessionField="ID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </asp:Content>
