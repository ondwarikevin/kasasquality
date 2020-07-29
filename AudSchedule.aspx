<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AudSchedule.aspx.cs" Inherits="KasasQuality.AudSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   //<script type="text/javascript">
   //    $(document).ready(function () {
   //
   //        //$(document).ready(function () {
   //      //  $('.table').DataTable();
   //       //  });
   //
   //        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
   //        // $('.table1').DataTable();
   //        
   //    });
   //</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
                       <div class="row">
                           <div class="col">
                                <hr>
                            </div>
                        </div>
                       <div class="row">
                           <div class="col">
                           <center>
                          <h5 class="navbar-nav mr-auto">KASAS APPROVED AUDIT SCHEDULE-2020</h5>
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
                                <div class="container">
                                <div class="col-9 " >
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AllowSorting="True" ></asp:GridView>
                               </div>
                                    </div>
                               </div>
                        </div>
    </div>
</asp:Content>
