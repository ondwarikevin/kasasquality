<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Audits.aspx.cs" Inherits="KasasQuality.Audits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="auditscontainer" >
        <div class="row">
            <div class="col-4">
                <div class="container " style=" text-align:center; background-color:#F8F5F0; height:300px;  border:3px solid;border-color:lavender"  >
                    <div class="row h-25">
                       
                            <div class="col-12">
                                <hr>
                            </div>
                       
                    </div>
                    <div class="row h-50" style="align-content:center">
                        <div class="col-12">
                     <center>
                     
                        <asp:LinkButton Font-Size="XX-Large" ForeColor="Black" Text="Audit Schedule"  ID="LinkButton1" runat="server" CssClass="align-middle" OnClick="LinkButton1_Click"></asp:LinkButton>
                   
                      </center>
                            </div>
                        </div>
                    <div class="row h-25" style="align-content:center">
                        
                            <div class="col-12">
                                <hr>
                            </div>
                        
                    </div>
            </div></div>
            <div class="col-4">
                <div class="container " style=" text-align:center; background-color:#F8F5F0; height:300px;  border:3px solid;border-color:lavender"  >
                    <div class="row h-25">
                       
                            <div class="col-12">
                                <hr>
                            </div>
                       
                    </div>
                    <div class="row h-50" style="align-content:center">
                        <div class="col-12">
                     <center>
                     
                        <asp:LinkButton Font-Size="XX-Large" ForeColor="Black" Text="Audits Summary"  ID="LinkButton2" runat="server" CssClass="align-middle" OnClick="LinkButton2_Click"></asp:LinkButton>
                   
                      </center>
                            </div>
                        </div>
                    <div class="row h-25" style="align-content:center">
                        
                            <div class="col-12">
                                <hr>
                            </div>
                        
                    </div>
            </div>
                </div>
            
            <div class="col-4">
                <div class="container " style=" text-align:center; background-color:#F8F5F0; height:300px;  border:3px solid;border-color:lavender"  >
                    <div class="row h-25">
                       
                            <div class="col-12">
                                <hr>
                            </div>
                       
                    </div>
                    <div class="row h-50" style="align-content:center">
                        <div class="col-12">
                        <center>
                     
                        <asp:LinkButton Font-Size="XX-Large" ForeColor="Black" Text="Audit Matrix" ID="LinkButton3" runat="server" CssClass="align-middle" OnClick="LinkButton3_Click"></asp:LinkButton>
                   
                         </center>
                            </div>
                        </div>
                    <div class="row h-25" style="align-content:center">
                        
                            <div class="col-12">
                                <hr>
                            </div>
                        
                    </div>

            </div>

            </div>
          </div>
      
        </div>  
</asp:Content>
