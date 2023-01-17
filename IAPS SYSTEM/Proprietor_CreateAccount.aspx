<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Proprietor_CreateAccount.aspx.cs" Inherits="IAPS_SYSTEM.Proprietor_CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="bootstrap/css/style.css" rel="stylesheet" />

   <script src="sweetalert/sweetalert2@11.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">

     <div class="container my-3 py-3">
        
      <div class="row">
         <div class="col-md-6 mx-auto cardsss rounded">


                  <div class="row  my-3">
                     <div class="col ">

                         <a href="Landing_Page.aspx">
                            <img src="img/BACK.png" width="30px"/> </a>
                        <center>
                           <img width="150px"  src="img/Prop.png"/>
                        </center>
                     </div>
                  </div>
        <div class="row">
                     <div class="col">
                        <center>
                          <h3>PROPRIETOR</h3>
                           <h5>SIGN UP</h5>
                        </center>
                  </div>
        </div>
            
        <table style="margin: auto; padding: 5px; width: 100%; line-height: inherit; display: inline-table;" align="middle" runat="server">
        <tr runat="server">
            <td  runat="server" style="padding: 10px; width: 745px; color:black; height: 44px;" class="text-right">Lastname</td>
            <td  runat="server" class="modal-sm" style="padding: 10px; width: 233px; height: 44px;">
            <asp:TextBox ID="txtLname" runat="server" CssClass="form-control" style="margin-left: 0" Width="255px" placeholder="Last Name" Text="" ></asp:TextBox>
            </td>
            <td  runat="server" style="padding: 10px; width: 666px; height: 44px;">
            
            </td>
            <td  runat="server" style="padding: 10px; height: 44px;">
                </td>
        </tr>
       
        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px"  class="text-right">Firstname </td>
            <td  runat="server" style="padding: 10px; width: 233px;" class="modal-sm">
            <asp:TextBox ID="txtFname" runat="server" CssClass="form-control" Width="255px" placeholder="First Name" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">
            
            </td>
            <td runat="server" style="padding: 10px;">
                &nbsp;</td>
        </tr>
      
        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px; " class="text-right">Username</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
            <asp:TextBox ID="txtusrn" runat="server" CssClass="form-control" Width="255px" placeholder="Username"></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">
                &nbsp;</td>
            <td runat="server" style="padding: 10px;">&nbsp;</td>
        </tr>


        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px; height: 44px;" class="text-right">Password</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px; height: 44px;">
            <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" TextMode="Password" Width="255px" placeholder="Password" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px; height: 44px;" colspan="1">
            

            </td>
            <td runat="server" style="padding: 10px; height: 44px;">
            
            </td>
        </tr>
       
        
        <tr runat="server">
            <td runat="server" style="padding: 10px; width: 745px">
                &nbsp;</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
                <asp:Button ID="btn" runat="server" class="btn btn-success btn-block btn-lg" Text="Submit" OnClick="btn_Click1" />

            </td>
            <td runat="server" style="padding: 10px; width: 666px;">&nbsp;</td>
            <td runat="server" style="padding: 10px">&nbsp;</td>
        </tr>
        </table>

             <p class="text-center">Already have an account? <a href="PROPRIETOR_LOGIN.aspx">Sign in</a>.</p>
        </div>

      

</div>
          </div>



   <%--    
    <h1>PropCreateACc
        </h1>--%>
</asp:Content>
