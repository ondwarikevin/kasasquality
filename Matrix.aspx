<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Matrix.aspx.cs" Inherits="KasasQuality.Matrix" %>
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
                          <h5 class="navbar-nav mr-auto">KASAS AUDIT FOLLOW-UP MATRIX</h5>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
    </div>
</asp:Content>
