<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Prop_DashBoard.aspx.cs" Inherits="IAPS_SYSTEM.Prop_DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="bootstrap/css/style.css" rel="stylesheet" />
    <script src="sweetalert/sweetalert2@11.js"></script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">

    
    
    

       <div class="container-fluid d-flex justify-content-center">
      <div class="row">
           <asp:Button ID="viewTrans" OnClick="ViewTrans1_Click" class="btn btn-lg btn-block my-2 btn-danger tex" runat="server" Text="View Transaction History" />

         <div class="col-4">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Employee Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px"src="img/User.png" />
                        
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg">
                        <label>Username</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="usrname" runat="server" placeholder="Member ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="srchBtn" runat="server" OnClick="SrchBtn_Click"><i class="fas fa-search"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                   </div>
                   <div class="row">
                       <div class="col-lg">
                           <label>Last Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="lname" runat="server" placeholder="Last Name" Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>
            
                    <div class="row">
                       <div class="col-lg">
                           <label>First Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="fname" runat="server" placeholder="First Name" Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>

                    <div class="row">
                       <div class="col-lg">
                           <label>Password</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="pass" runat="server" placeholder="Password"  Enabled="False"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                 
                 
                  <div class="row">
                     <div class="col-6 mx-auto">
                        <asp:Button ID="editBtn" class="btn btn-lg btn-block btn-success" runat="server" OnClick="EditBtn_Click" Text="Edit"/>
                       
                     </div>

                      <div class="col-6 mx-auto">
                         <asp:Button ID="saveBtn" class="btn btn-lg btn-block btn-danger" runat="server"  OnClick="SaveBtn_Click" Text="Save"/>
                        <asp:Button ID="delBtn" class="btn btn-lg btn-block btn-danger tex" runat="server" OnClick="DelBtn_Click" Text="Delete" />
                     </div>
                  </div>
               </div>
            </div>
          
            <br>
         </div>


         <div class="col-8 p-2">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Employee List</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        
                           <div runat="server" id="gridview" class="gridview mx-auto">
                            <asp:GridView ID="gridview_report" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="8" CellSpacing="10" Width="500px" AutoGenerateColumns="False" Font-Size="15px" HorizontalAlign="Center" Font-Bold="True"  >
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


                     </div>
                  </div>
               </div>
            </div>
         </div>

         
      </div>
   </div>


</asp:Content>
