<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="KasasQuality.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
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
                           <h3>User Sign UP</h3>
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
                          
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                         <label>Phone Number</label>
                        <div class="form-group">
                           <asp:TextBox TextMode="Number" CssClass="form-control" ID="TextBox2" runat="server" placeholder="Phone number"></asp:TextBox>
                        </div>
                         <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox TextMode="Email" CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                         <label>Department</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Admin" Value="Admin" />
                              <asp:ListItem Text="Quality and Safety" Value="Quality and Safety" />
                              <asp:ListItem Text="Flight Operations" Value="Flight Operations" />
                              <asp:ListItem Text="Maintenance" Value="Maintenance" />
                              <asp:ListItem Text="Tech Records" Value="Tech records" />
                              <asp:ListItem Text="Stores" Value="Stores" />
                           </asp:DropDownList>
                        </div>
                        <div class="row">
                            
                            <div class="col">
                                <center>
                                    <span class=" badge badge-pill badge-info">Login Credentials</span> 

                                </center>
                            </div>

                           
                        </div>
                       <div class="row">
                          <div class="col-md-6">
                            <label>User ID</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="User ID" ></asp:TextBox>
                            </div>
                            </div>
                           <div class="col-md-6">
                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" TextMode="Password" ID="TextBox5" runat="server" placeholder="Password"></asp:TextBox>
                            </div>
                            </div>
                           
                        </div>
                         <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="HomePage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
