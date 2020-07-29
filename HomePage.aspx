<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="KasasQuality.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row align-content-between">
            <div class="col-8">
               <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                         <img class="d-block w-100 img-fluid img-thumbnail"  src="images/quality-assurance-IDMT.jpg" alt="First slide">
       
                    </div>
                    <div class="carousel-item">
                         <img class="d-block w-100 img-fluid img-thumbnail" src="images/quality-management-blog.png" alt="Second slide">
        
                    </div>
                    <div class="carousel-item">
                         <img class="d-block w-100 img-fluid img-thumbnail"  src="images/QA-Martec-WP.png" alt="Third slide">

                    </div>
                 </div>
               </div>
            </div>
                
             <div class="col-4" >
                 <div class="row h-75 justify-content-center"   >
                     <h4>Upcoming Events</h4>
                 </div>
                 <div class="row" style="height:60px"> </div>
                 <div class="row justify-content-end" >
                     <h5 id ="dateme">Today</h5>
                     <script type="text/javascript">
                         var currentDate = new Date(),
      day = currentDate.getDate(),
      month = currentDate.getMonth() + 1,
      year = currentDate.getFullYear();
 dateme.innerHTML = (day + "/" + month + "/" + year)
</script>
                 </div>
                 
                <!--
                 <div class="row justify-content-end" >
                     <h4 id="timeme">22</h4>
                     <script>
                         var currentTime = new Date(),
                             hours = currentTime.getHours(),
                             minutes = currentTime.getMinutes();

                         if (minutes < 10) {
                             minutes = "0" + minutes;
                         }

                         var suffix = "AM";
                         if (hours >= 12) {
                             suffix = "PM";
                             hours = hours - 12;
                         }
                         if (hours == 0) {
                             hours = 12;
                         }

                         timeme.innerHTML=(hours + ":" + minutes + " " + suffix)
</script>
                 </div> -->
                
          <script src="Otherfiles/Calendar.js" type="text/javascript" ></script>

                     

               </div>
                  

       </div>
        
  </div>

</asp:Content>
