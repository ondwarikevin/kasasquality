<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ScheduleManagement.aspx.cs" Inherits="KasasQuality.ScheduleManagement" %>
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
                                        <h4>Event Details</h4>
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
                                <label>Event ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="FIND" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Date of Event</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="DateTime" CssClass="form-control" ID="TextBox4" runat="server" placeholder=" Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" Description"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox  CssClass="form-control" ID="TextBox10" runat="server" placeholder=" State"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <
                        
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
                                        <h4>2020 SCHEDULED EVENTS</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qualityappDBConnectionString %>" SelectCommand="SELECT * FROM [Schedule_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Event_ID" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" ReadOnly="True" SortExpression="Event_ID" />
                                        <asp:BoundField DataField="Event_Date" HeaderText="Event_Date" SortExpression="Event_Date" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
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
