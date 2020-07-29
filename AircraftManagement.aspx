<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AircraftManagement.aspx.cs" Inherits="KasasQuality.AircraftManagement" %>
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
                                        <h4>Aircrafts Details</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Aircraft Registration No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" Aircraft Registration"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>C of A Expiry Date</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox4" runat="server" placeholder=" CofA Expiry"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Weight & Balance</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox9" runat="server" placeholder=" W&B expiry"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Insurance</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox10" runat="server" placeholder=" Insurance expiry"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Current CRS Expiry</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox7" runat="server" placeholder="CRS Expiry Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Number of Concessions</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox8" runat="server" placeholder="Consessions"></asp:TextBox>
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
                                        <h4>Aircraft List</h4>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
