<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BibliotkApp.Default" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Bibliotecas Municipales</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <telerik:RadAjaxPanel runat="server" ID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1">
    
     <div class="ms-content-wrapper">
      <div class="row">

            <div class="col-md-6">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i> Home</a></li>
                </ol>
              </nav>
            </div>
          

        <div class="ms-content-wrapper">
        <div class="row">

          <div class="col-xl-4 col-md-6">
          <div class="ms-panel">
              <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                <div class="ms-card-body media">
                  <div class="media-body">


                      <div class="ms-panel-header">
                             <div class="form-row">
                               <a href="#" class="has-chevron" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="cc ETH">Libros</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="Image/book-32.png" alt="logo" >
                               </a>
                             </div>
                        </div>
             
                       <div class="form-row">
                          <div class="col-md-6 mb-3">
                           <telerik:RadDropDownList RenderMode="Lightweight" ID="RadDropDownList" runat="server"  DropDownHeight="200px" Width="300px" Skin="Sunset"
                            DefaultMessage="Seleccione la consulta " DropDownWidth="300px" OnSelectedIndexChanged="RadDropDownList_SelectedIndexChanged"  AutoPostBack="true">
                            </telerik:RadDropDownList>
                            </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridGraf" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="12" 
                                Width="95%" AllowSorting="false" AutoGenerateColumns="false" Skin="WebBlue" Font-Size="X-Small" 
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" >
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="95%" GridLines="None" CommandItemDisplay="None" DataKeyNames="Mes" ClientDataKeyNames="Mes"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Registros">
                                     <Columns>
                                          <telerik:GridBoundColumn DataField="Mesletra" UniqueName="Mesletra" HeaderText="Mes" HeaderStyle-Width="40px" DataType="System.Char" />
                                          <telerik:GridBoundColumn DataField="Total" UniqueName="Total" HeaderText="Total" HeaderStyle-Width="40px" DataType="System.Int32" />
                                       </Columns>
                                 </MasterTableView>
                               <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                            <Selecting AllowRowSelect="True" EnableDragToSelectRows="True"></Selecting>
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="2" />
			                      </ClientSettings>
                           </telerik:RadGrid>
                        </div>
                     </div>

                </div>
                </div>
                  <i class="flaticon-pie-chart"></i>
                </div>
               </div>
            </div>

            <div class="col-xl-6 col-md-6">
              <div class="ms-panel ms-panel-fh">
                <div class="ms-panel-body">

                   <div class="form-row">
                      <div class="col-md-6 mb-3">
                       <telerik:RadHtmlChart runat="server" ID="RadHtmlChart1"   Width="200%"  Transitions="true" Skin="Silk" BackColor="Beige" >
                                 <PlotArea>
                                    <Series>
                                        <telerik:BarSeries Name="Total" DataFieldY="Total" ColorField="#123456" Stacked="true">
                                            <Appearance>
                                                <FillStyle BackgroundColor="#c5d291"></FillStyle>
                                            </Appearance>
                                            <TooltipsAppearance BackgroundColor="#92b622" DataFormatString="{0}" Color="White" ></TooltipsAppearance>
                                            <TooltipsAppearance Color="White" DataFormatString="{0}"></TooltipsAppearance>
                                            <LabelsAppearance Visible="true" Position="Center" Color="#800000" DataFormatString="{0}">  
                                            </LabelsAppearance>
                                        </telerik:BarSeries>
                                    </Series>
                                    <XAxis DataLabelsField="Mesletra" MajorTickType="Outside" MinorTickType="Outside" >
                                        <MinorGridLines Visible="true"></MinorGridLines>
                                        <MajorGridLines Visible="true"></MajorGridLines>
                                    </XAxis>
                                    <YAxis>
                                        <LabelsAppearance DataFormatString="{0}"></LabelsAppearance>
                                        <MinorGridLines Visible="true"></MinorGridLines>
                                        <TitleAppearance Position="Center" RotationAngle="0" Text="Prestamos"></TitleAppearance>
                                    </YAxis>
                                </PlotArea>
                                <Legend>
                                    <Appearance Visible="true" BackgroundColor="Transparent" Position="Bottom" >
                                </Appearance>
                                </Legend>

                                <ChartTitle Text="PRESTAMO DE LIBROS MENSUALMENTE"></ChartTitle>
                       </telerik:RadHtmlChart> 
                    </div>
                </div>

              </div>
            </div> 
         </div>

        </div> 
     </div> 


      <div class="ms-content-wrapper">
        <div class="row">

          <div class="col-xl-4 col-md-6">
          <div class="ms-panel">
              
              <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                <div class="ms-card-body media">
                  <div class="media-body">


                      <div class="ms-panel-header">
                             <div class="form-row">
                               <a href="#" class="has-chevron" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="cc AMP">Equipos de Computo</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="Image/computer-32.png" alt="logo" >
                               </a>
                             </div>
                        </div>
             
                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridGraf1" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="12" 
                                Width="95%" AllowSorting="false" AutoGenerateColumns="false" Skin="WebBlue" Font-Size="X-Small" 
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" 
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" >
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="95%" GridLines="None" CommandItemDisplay="None" DataKeyNames="Mes" ClientDataKeyNames="Mes"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Registros">
                                     <Columns>
                                          <telerik:GridBoundColumn DataField="Mesletra" UniqueName="Mesletra" HeaderText="Mes" HeaderStyle-Width="40px" DataType="System.Char" />
                                          <telerik:GridBoundColumn DataField="Total" UniqueName="Total" HeaderText="Total" HeaderStyle-Width="40px" DataType="System.Int32" />
                                       </Columns>
                                 </MasterTableView>
                               <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="false">
                                            <Selecting AllowRowSelect="True" EnableDragToSelectRows="True"></Selecting>
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="2" />
			                      </ClientSettings>
                           </telerik:RadGrid>
                        </div>
                     </div>

                      </div>
                    </div>
                    <i class="flaticon-pie-chart"></i>
                  </div>


               </div>
            </div>

            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">
                <div class="ms-panel-body">

                   <div class="form-row">
                      <div class="col-md-6 mb-3">
                       <telerik:RadHtmlChart runat="server" ID="RadHtmlChart2"   Width="200%" Transitions="true" Skin="Silk" BackColor="Beige" >
                                 <PlotArea>
                                    <Series>
                                        <telerik:BarSeries Name="Total" DataFieldY="Total" ColorField="#123456" Stacked="true">
                                            <Appearance>
                                                <FillStyle BackgroundColor="#c5d291"></FillStyle>
                                            </Appearance>
                                            <TooltipsAppearance BackgroundColor="#92b622" DataFormatString="{0}" Color="White" ></TooltipsAppearance>
                                            <TooltipsAppearance Color="White" DataFormatString="{0}"></TooltipsAppearance>
                                            <LabelsAppearance Visible="true" Position="Center" Color="#800000" DataFormatString="{0}">  
                                            </LabelsAppearance>
                                        </telerik:BarSeries>
                                    </Series>
                                    <XAxis DataLabelsField="Mesletra" MajorTickType="Outside" MinorTickType="Outside" >
                                        <MinorGridLines Visible="true"></MinorGridLines>
                                        <MajorGridLines Visible="true"></MajorGridLines>
                                    </XAxis>
                                    <YAxis>
                                        <LabelsAppearance DataFormatString="{0}"></LabelsAppearance>
                                        <MinorGridLines Visible="true"></MinorGridLines>
                                        <TitleAppearance Position="Center" RotationAngle="0" Text="Prestamos"></TitleAppearance>
                                    </YAxis>
                                </PlotArea>
                                <Legend>
                                    <Appearance Visible="true" BackgroundColor="Transparent" Position="Bottom" >
                                </Appearance>
                                </Legend>

                                <ChartTitle Text="PRESTAMO DE EQUIPOS DE COMPUTO POR MES"></ChartTitle>
                       </telerik:RadHtmlChart> 
                    </div>
                </div>

              </div>
            </div> 
         </div>

        </div> 
     </div> 


   </div>
 </div>
         
    </telerik:RadAjaxPanel>
    <telerik:RadWindowManager ID="RadWindowManager1" Skin="Sunset" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
          <Windows>
        </Windows>
    </telerik:RadWindowManager>

     
     <telerik:RadAjaxLoadingPanel ID="rAjaxLoadingPanelCat" runat="server">
            <asp:Label ID="Label10" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="18px">Procesando ... </asp:Label>
        </telerik:RadAjaxLoadingPanel>

        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" EnableAJAX="true">
            <AjaxSettings>

                    <telerik:AjaxSetting AjaxControlID="RadAjaxPanel">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="RadWizard"/>
                            <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel" LoadingPanelID="rAjaxLoadingPanelCat" />
                        </UpdatedControls>
                    </telerik:AjaxSetting>

            </AjaxSettings>
        </telerik:RadAjaxManager>
            <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            function RadConfirm(sender, args) {
                var callBackFunction = Function.createDelegate(sender, function (shouldSubmit) {
                    if (shouldSubmit) {
                        this.click();
                    }
                });

                var text = "Desea generar ahora el PDF?";
                radconfirm(text, callBackFunction, 300, 200, null, "Confirmación");
                args.set_cancel(true);
            }

            function callConfirm() {
                radconfirm('Estas seguro de eliminar este registro?', confirmCallBackFn, 300, 200, null, "Confirmación");
            }
            function confirmCallBackFn(arg) {
                var ajaxManager = $find("<%=RadAjaxManager1.ClientID%>");
                if (arg) {
                    ajaxManager.ajaxRequest('ok');
                }
                else {
                    ajaxManager.ajaxRequest('cancel');
                }
            }

            function refreshGrid(arg) {
                if (!arg) {
                    $find("<%=RadAjaxManager1.ClientID %>").ajaxRequest("Rebind");   // Invoking ajaxRequest            
                }
            }
        </script>
    </telerik:RadCodeBlock>

</asp:Content>

