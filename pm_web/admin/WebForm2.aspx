<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="pm_web.admin.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <toaster-container></toaster-container>
  <div ui-view>
  </div>


  <script src="../bower_components/jquery/dist/jquery.min.js"></script>
  <script src="../bower_components/angular/angular.min.js"></script>
  <script src="../bower_components/angular-animate/angular-animate.min.js"></script>
  <script src="../bower_components/angular-input-masks/angular-input-masks-standalone.min.js"></script>
  <script src="../bower_components/angular-touch/angular-touch.min.js"></script>
  <script src="../bower_components/angular-ui-select/dist/select.min.js"></script>
  <script src="../bower_components/angular-ui-router/release/angular-ui-router.min.js"></script>
  <script src="../bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>
  <script src="../bower_components/AngularJS-Toaster/toaster.min.js"></script>
  <script src="../bower_components/ngstorage/ngStorage.min.js"></script>
  <script src="../bower_components/angular-loading-bar/build/loading-bar.min.js"></script>
  <script src="../bower_components/moment/min/moment.min.js"></script>
  <script src="../bower_components/moment/min/locales.min.js"></script>
  <script src="../node_modules/chart.js/dist/Chart.min.js"></script>
  <script src="../node_modules/angular-chart.js/dist/angular-chart.min.js"></script>

  <script src="/resources/js/app.js"></script>
  <script src="/resources/js/app.config.js"></script>
  <script src="/resources/js/home/controllers.js"></script>
  <script src="/resources/js/home/routers.js"></script>
  <script src="/resources/js/home/services.js"></script>
  <script src="/resources/js/user/controllers.js"></script>
  <script src="/resources/js/user/routers.js"></script>
  <script src="/resources/js/user/services.js"></script>
    </div>
    </form>
</body>
</html>
