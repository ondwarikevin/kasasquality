<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manuals.aspx.cs" Inherits="KasasQuality.Manuals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {

             //$(document).ready(function () {
           //  $('.table').DataTable();
            //  });

             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            // $('.table1').DataTable();
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
                          <h5 class="navbar-nav mr-auto">CURRENT APPROVED MANUALS</h5>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Manuals_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Manual_ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Manual_ID" HeaderText="Manual_ID" ReadOnly="True" SortExpression="Manual_ID" />
                                        <asp:BoundField DataField="Manual_Name" HeaderText="Manual_Name" SortExpression="Manual_Name" />
                                        <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                                        <asp:BoundField DataField="Effective_Date" HeaderText="Effective_Date" SortExpression="Effective_Date" />
                                        <asp:BoundField DataField="Approval_date" HeaderText="Approval_date" SortExpression="Approval_date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
    </div>
</asp:Content>
