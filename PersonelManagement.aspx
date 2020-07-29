<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PersonelManagement.aspx.cs" Inherits="KasasQuality.PersonelManagement" %>
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
                                        <h4>Personnel Details</h4>
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
                                <label>Personnel ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder=" ID"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" Full name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Position</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Position"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Licence No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" Licence Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Licence expiry</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox10" runat="server" placeholder=" Licence expiry"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Authorization No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Authorization No"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Authorization Expiry</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox8" runat="server" placeholder="Authorization expiry"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Human Factors</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox5" runat="server" placeholder=" HF"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>SMS</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox6" runat="server" placeholder=" SMS"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Dangerous Goods</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox1" runat="server" placeholder=" DG"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Type Course</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox2" runat="server" placeholder="Type course"></asp:TextBox>
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
                                        <h4>Personnel List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Personnel_ID" DataSourceID="SqlDataSource1">
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
                </div>
            </div>
        </div>
    </div>
</asp:Content>
