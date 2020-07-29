<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManualsManagement.aspx.cs" Inherits="KasasQuality.ManualsManagement" %>
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
    <div class="container">
        <div class="row">
            <div class="col-md-5">
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
                                        <h4>Manual Details</h4>
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
                                <label>Manual ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="FIND" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Manual Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Effective Date</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Effective date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                         <div class="col-md-6">
                                <label>Approval Date</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox5" runat="server" placeholder=" Approval Date"></asp:TextBox>
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
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Manuals List</h4>
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
                          </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
