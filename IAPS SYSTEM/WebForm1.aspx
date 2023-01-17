<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IAPS_SYSTEM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="sweetalert/sweetalert2@11.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    
        <div runat="server" id="gridview" class="gridview">
            <asp:GridView ID="gridview_report" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="8" CellSpacing="10" Width="285px" AutoGenerateColumns="False" Font-Size="12pt"  >
                <Columns>
                    <asp:BoundField DataField="EMP_LNAME" HeaderText="LAST NAME" ReadOnly="True" SortExpression="EMP_LNAME" />
                    <asp:BoundField DataField="EMP_FNAME" HeaderText="FIRST NAME" SortExpression="EMP_FNAME" />
                    <asp:BoundField DataField="EMP_USRNAME" HeaderText="USERAME" SortExpression="EMP_USRNAME" />
                    <asp:BoundField DataField="EMP_PASS" HeaderText="PASSWORD" SortExpression="EMP_PASS" />
                
                </Columns>
                
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" Font-Size="9" />
                <FooterStyle BackColor="#5D7B9D" Font-Size="9" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Size="9"  Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" Font-Size="9"  ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" Font-Size="9"  ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
  
            <asp:SqlDataSource ID="dbStudents_Source" runat="server"></asp:SqlDataSource>
        </div>


</asp:Content>

