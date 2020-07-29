<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Scheduler.aspx.cs" Inherits="KasasQuality.Scheduler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="eventscontainer" >
        <div class="row">
            <div class="col-6">
                <div class="container " style=" text-align:center; background-color:#F8F5F0; height:300px;  border:3px solid;border-color:lavender"  >
                    <div class="row h-25">
                       
                            <div class="col-12">
                                <hr>
                            </div>
                       
                    </div>
                    <div class="row h-50" style="align-content:center">
                        <div class="col-12">
                     <center>
                     
                        <asp:LinkButton Font-Size="XX-Large" ForeColor="Black" Text="View Scheduled Events"  ID="LinkButton1" runat="server" CssClass="align-middle" OnClick="LinkButton1_Click"></asp:LinkButton>
                   
                      </center>
                            </div>
                        </div>
                    <div class="row h-25" style="align-content:center">
                        
                            <div class="col-12">
                                <hr>
                            </div>
                        
                    </div>
            </div></div>
            <div class="col-6">
                <div class="container " style=" text-align:center; background-color:#F8F5F0; height:300px;  border:3px solid;border-color:lavender"  >
                    <div class="row h-25">
                       
                            <div class="col-12">
                                <hr>
                            </div>
                       
                    </div>
                    <div class="row h-50" style="align-content:center">
                        <div class="col-12">
                     <center>
                     
                        <asp:LinkButton Font-Size="XX-Large" ForeColor="Black" Text="Edit Event Schedule"  ID="LinkButton2" runat="server" CssClass="align-middle" OnClick="LinkButton2_Click"></asp:LinkButton>
                   
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
