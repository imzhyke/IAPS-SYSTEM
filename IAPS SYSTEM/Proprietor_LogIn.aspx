<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Proprietor_LogIn.aspx.cs" Inherits="IAPS_SYSTEM.Proprietor_LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
    <link href="bootstrap/css/style.css" rel="stylesheet" />

    <script src="sweetalert/sweetalert2@11.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">

      <div class="container">
        
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
                           <img width="150px"  src="img/Prop.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>PROPRIETOR LOG IN</h3>
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
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="usrname" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="LogInProp" runat="server" Text="Login" OnClick="LogInProp_Click" />
                        </div>
                        <div class="form-group">
                           <a href="Proprietor_CreateAccount.aspx"><input class="btn btn-info btn-block btn-lg" id="signUpProp" type="button" value="Sign Up" /></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>


</asp:Content>
