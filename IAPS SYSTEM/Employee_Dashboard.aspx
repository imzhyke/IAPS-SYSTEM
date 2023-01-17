<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Employee_Dashboard.aspx.cs" Inherits="IAPS_SYSTEM.Employee_Dashboard" %>
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

                        <center>
                            <img width="150px" src="img/Box.png" />
                        </center>
                     </div>
                  </div>
                 <div class="row">
                     <div class="col">
                        <center>
                           <h5>FILL UP FORM</h5>
                        </center>
                     </div>
                 </div>
            
        <table style="margin: auto; padding: 5px; width: 100%; line-height: inherit; display: inline-table;" align="middle" runat="server">
        <tr runat="server">
            <td  runat="server" style="padding: 10px; width: 745px; color:black; height: 44px;" class="text-right">Client</td>
            <td  runat="server" class="modal-sm" style="padding: 10px; width: 233px; height: 44px;">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" style="margin-left: 0" Width="255px" placeholder="Full Name" Text="" ></asp:TextBox>
            </td>
            <td  runat="server" style="padding: 10px; width: 666px; height: 44px;">
            
            </td>
            <td  runat="server" style="padding: 10px; height: 44px;">
                </td>
        </tr>
       
        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px"  class="text-right">Contact </td>
            <td  runat="server" style="padding: 10px; width: 233px;" class="modal-sm">
            <asp:TextBox ID="txtCont" runat="server" CssClass="form-control" Width="255px" placeholder="Contact Number" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">
            
            </td>
            <td runat="server" style="padding: 10px;">
                &nbsp;</td>
        </tr>


            <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px"  class="text-right">Address </td>
            <td  runat="server" style="padding: 10px; width: 233px;" class="modal-sm">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Width="255px" placeholder="Address" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">
            
            </td>
            <td runat="server" style="padding: 10px;">
                &nbsp;</td>
        </tr>



 
        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px; " class="text-right">Product</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
            <asp:TextBox ID="txtProd" runat="server" CssClass="form-control" Width="255px" placeholder="Product Name" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">
                &nbsp;</td>
            <td runat="server" style="padding: 10px;">&nbsp;</td>
        </tr>
        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px; height: 44px;" class="text-right">Amount</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px; height: 44px;">
            <asp:TextBox ID="txtAmnt" runat="server" CssClass="form-control" TextMode="Number" placeholder="Amount" Width="255px" Text="" ></asp:TextBox>
            </td>
            <td runat="server" style="padding: 10px; width: 666px; height: 44px;" colspan="1">
            

            </td>
            <td runat="server" style="padding: 10px; height: 44px;">
            
            </td>
        </tr>

        <tr runat="server">
            <td runat="server" style="padding: 10px; color:black; width: 745px" class="text-right">Date</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
              <asp:TextBox ID="txttdate" runat="server" Enabled="false" CssClass="form-control" Width="255px"  Text=""></asp:TextBox> 
            </td>
            <td runat="server" style="padding: 10px; width: 666px;">&nbsp;</td>
            <td runat="server" style="padding: 10px">&nbsp;</td>
        </tr>
       
        
        <tr runat="server">
            <td runat="server" style="padding: 10px; width: 745px">
                &nbsp;</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
                <asp:Button ID="btn" runat="server" OnClick="btn_Click" class="btn btn-success btn-block btn-lg" Text="Submit" />

            </td>
            <td runat="server" style="padding: 10px; width: 666px;">&nbsp;</td>
            <td runat="server" style="padding: 10px">&nbsp;</td>
        </tr>

         <tr runat="server" class="mb-2">
            <td runat="server" style="padding: 10px; width: 745px">
                &nbsp;</td>
            <td runat="server" class="modal-sm" style="padding: 10px; width: 233px;">
                <asp:Button ID="Button1" runat="server" OnClick="btn_Click2" class="btn btn-warning btn-block btn-lg" Text="View History" />

            </td>
            <td runat="server" style="padding: 10px; width: 666px;">&nbsp;</td>
            <td runat="server" style="padding: 10px">&nbsp;</td>
        </tr>
        </table>

        </div>



        


      

</div>
          </div>


</asp:Content>
