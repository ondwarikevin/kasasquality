<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AudSummary.aspx.cs" Inherits="KasasQuality.AudSummary" %>
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
                          <h5 class="navbar-nav mr-auto">2020 -AUDIT SUMMARY</h5>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Audits_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Audit_ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Audit_ID" HeaderText="Audit_ID" ReadOnly="True" SortExpression="Audit_ID" />
                                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                        <asp:BoundField DataField="Auditee" HeaderText="Auditee" SortExpression="Auditee" />
                                        <asp:BoundField DataField="Auditor" HeaderText="Auditor" SortExpression="Auditor" />
                                        <asp:BoundField DataField="Date_Audit" HeaderText="Date_Audit" SortExpression="Date_Audit" />
                                        <asp:BoundField DataField="Date_Report" HeaderText="Date_Report" SortExpression="Date_Report" />
                                        <asp:BoundField DataField="Date_Car" HeaderText="Date_Car" SortExpression="Date_Car" />
                                        <asp:BoundField DataField="Total_Findings" HeaderText="Total_Findings" SortExpression="Total_Findings" />
                                        <asp:BoundField DataField="Closed_Findings" HeaderText="Closed_Findings" SortExpression="Closed_Findings" />
                                        <asp:BoundField DataField="Pending_findings" HeaderText="Pending_findings" SortExpression="Pending_findings" />
                                    </Columns>
                                    </asp:GridView>
                                </center>
                            </div>
                        </div>
    </div>
</asp:Content>
