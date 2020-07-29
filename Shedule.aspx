<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shedule.aspx.cs" Inherits="KasasQuality.Sheduler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                          <h5 class="navbar-nav mr-auto">ALL QUALITY EVENTS LIST</h5>
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
</asp:Content>
