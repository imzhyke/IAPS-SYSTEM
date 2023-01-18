<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="EMPLOYEE_LOGIN.aspx.cs" Inherits="IAPS_SYSTEM.EMPLOYEE_LOGIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="bootstrap/css/style.css" rel="stylesheet" />
    <script src="sweetalert/sweetalert2@11.js"></script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">
  

    <div class="container ">
        
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card cardsss">
                 
               <div class="card-body">
                    <a href="Landing_Page.aspx">
                            <img src="img/BACK.png" width="30px"/>
                    </a>

                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="150px"  src="img/User.png" />
                         
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>EMPLOYEE</h3>
                           <h5>LOG IN</h5>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Username</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="btnLOGIN" OnClick="btnLOGIN_Click" runat="server" Text="Login" />
                        </div>
                        <div class="form-group">
                           <a href="CreateAccount.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>


</asp:Content>
