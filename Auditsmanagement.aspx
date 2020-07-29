<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Auditsmanagement.aspx.cs" Inherits="KasasQuality.Auditsmanagement" %>
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
   <div class="container-fluid" style="align-items:center">
        <div class="row">
            <div class="col">
                <center>
                    <div class="col-5">
                <div class="card">
                    <div class="card-body">
 
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                                <img width="100" src="images/download.jpg" />
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                *********************</center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Audit Details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-5">
                                <label>Audit ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="FIND" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Audit Category</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Category"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Auditee Details</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" Auditee"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Auditor</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox10" runat="server" placeholder=" Auditor"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date of Audit</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox7" runat="server" placeholder="Audit date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date Report Sent</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox8" runat="server" placeholder="Date of report"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date CARs sent</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date of CARs"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Total Findings</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox6" runat="server" placeholder="Total Findings"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Closed Findings</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Closed Findings"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Pending findings</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox2" runat="server" placeholder="Pending findings"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
                        </div>
                    </center>
            </div>
            </div>
        <div class="row">    
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>2020 AUDITS</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Audits_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <center>
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
                </div>
            </div>
        </div>
 </div>
</asp:Content>
