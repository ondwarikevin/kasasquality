<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Personnel.aspx.cs" Inherits="KasasQuality.Personnel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
         $(document).ready(function () {

             //$(document).ready(function () {
           //  $('.table').DataTable();
            //  });

             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
             // $('.table1').DataTable();
             $('.table1').dataTable({
                 "scrollX": true
             });
         });
   </script>
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
                          <h5 class="navbar-nav mr-auto">KASAS PERSONNEL AND CONTINUATIION TRAINING RECORD</h5>
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
                                <center>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Personnel_tbl]"></asp:SqlDataSource>
                                <asp:GridView style="width:100%;overflow:auto" HorizontalAlign="Center"  class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Personnel_ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Personnel_ID" HeaderText="Personnel_ID" ReadOnly="True" SortExpression="Personnel_ID" />
                                        <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                                        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                                        <asp:BoundField DataField="Licence_No" HeaderText="Licence_No" SortExpression="Licence_No" />
                                        <asp:BoundField DataField="Licence_Expiry" HeaderText="Licence_Expiry" SortExpression="Licence_Expiry" />
                                        <asp:BoundField DataField="Authorization_No" HeaderText="Authorization_No" SortExpression="Authorization_No" />
                                        <asp:BoundField DataField="Authorization_Expiry" HeaderText="Authorization_Expiry" SortExpression="Authorization_Expiry" />
                                        <asp:BoundField DataField="Hf_Training" HeaderText="Hf_Training" SortExpression="Hf_Training" />
                                        <asp:BoundField DataField="Sms_Training" HeaderText="Sms_Training" SortExpression="Sms_Training" />
                                        <asp:BoundField DataField="Dg_Training" HeaderText="Dg_Training" SortExpression="Dg_Training" />
                                        <asp:BoundField DataField="Type_Training" HeaderText="Type_Training" SortExpression="Type_Training" />
                                    </Columns>
                                    </asp:GridView>
                            </center>

                             </div>

                        </div>
    </div>
</asp:Content>
