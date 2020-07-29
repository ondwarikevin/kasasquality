<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AcDocuments.aspx.cs" Inherits="KasasQuality.AcDocuments" %>
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
                          <h5 class="navbar-nav mr-auto">KASAS AIRCRAFT DOCUMENT STATUS</h5>
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

                                <Center>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Aircraft_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Registration_No" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Registration_No" HeaderText="Registration_No" ReadOnly="True" SortExpression="Registration_No" />
                                        <asp:BoundField DataField="CofA_Expiry" HeaderText="CofA_Expiry" SortExpression="CofA_Expiry" />
                                        <asp:BoundField DataField="Weight_balance" HeaderText="Weight_balance" SortExpression="Weight_balance" />
                                        <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance" />
                                        <asp:BoundField DataField="CRS_Expiry" HeaderText="CRS_Expiry" SortExpression="CRS_Expiry" />
                                        <asp:BoundField DataField="Concessions" HeaderText="Concessions" SortExpression="Concessions" />
                                    </Columns>
                                    </asp:GridView>
                           </Center>
                            </div>
                        </div>
    </div>
</asp:Content>
