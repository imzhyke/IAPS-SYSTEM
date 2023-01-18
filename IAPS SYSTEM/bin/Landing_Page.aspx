<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Landing_Page.aspx.cs" Inherits="IAPS_SYSTEM.Landing_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="bootstrap/css/style.css" rel="stylesheet" />
    <script src="sweetalert/sweetalert2@11.js"></script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="publicView" runat="server">
    <h1>HELLO</h1>
    <div class="container mt-3 bg-opacity-75">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card cardsss">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px"src="img/firefox-monitor.svg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>LOG IN AS</h3>
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
                        
                        <div class="form-group">

                            <a href="Proprietor_LogIn.aspx" class="btn btn-success btn-block btn-lg" >
                                 <i class="fa-solid fa-user-shield"></i>
                                     Proprietor</a>
                        </div>


                        <div class="form-group">
                            <a href="EMPLOYEE_LOGIN.aspx" class="btn btn-info btn-block btn-lg" >
                                 <i class="fa-solid fa-user"></i>
                                     Employee</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
     
         </div>
      </div>
   </div>
     
       


</asp:Content>
