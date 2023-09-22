<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="PrestatarioEquiposWebPag.aspx.cs" Inherits="BibliotkApp.PrestatarioEquiposWebPag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel" runat="server">
        <!-- Body Content Wrapper -->
    <div class="ms-content-wrapper">
                
      <div class="row">
         
            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i> Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Prestamos</a></li>
                  <li class="breadcrumb-item active" >Prestatario de Equipos de Computo</li>
                </ol>
              </nav>
            </div>
      
        <div class="ms-content-wrapper">
        <div class="row">

          <div class="col-xl-6 col-md-12">
          <div class="ms-panel">
                
            <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
            <div class="ms-card-body media">
              <div class="media-body">

              <div class="ms-panel-header">
                     <div class="form-row">
                           <div class="col-md-6 mb-3">
                               <h6>Consulta de prestatarios de Equipos de Computo</h6>
                            </div>
                            <div class="col-md-6 mb-3">
                                <button class="btn btn-link" type="button" id="btn1" runat="server"  data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" onclick="Cleart()"><img src="../image/Search-32.png"/>
                                          </button>
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="btn1" Position="TopLeft" RelativeTo="Element">
                                              Hacer Clic para Abrir Panel de Búsqueda
                                          </telerik:RadToolTip>
                            </div>

                            <div class="col-md-12 mb-0">
                                <div class="card-body collapse" id="collapseOne">
                                           <div class="form-row">
                                               <div class="col-md-9 mb-2">
                                                   <telerik:RadTextBox runat="server"  ID="txtnomprest"  Width="100%" Skin="Simple" ButtonsPosition="right" ShowButton="true" MaxLength="150"  EmptyMessage="Nombre del prestatario a Buscar" HoveredStyle-HorizontalAlign="Center" EnabledStyle-HorizontalAlign="Center" ClientIDMode="Static" ><ClientEvents OnButtonClick="Buscarpres"/></telerik:RadTextBox>
                                               </div>
                                          </div>
                                </div>
                            </div>
                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridPrestamos" runat="server" AllowAutomaticUpdates="false" AllowAutomaticDeletes="false" OnItemCommand="radGridPrestamos_ItemCommand" Font-Size="X-Small"
                                                Width="97%" Height="300px" AllowSorting="false" AutoGenerateColumns="false" AllowFilteringByColumn="false" 
                                                AllowPaging="false" GridLines="Both" ShowFooter="False" AllowMultiRowSelection="false" Skin="Simple"  OnItemDataBound="radGridPrestamos_ItemDataBound" OnSelectedIndexChanged="radGridPrestamos_SelectedIndexChanged"
                                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" MasterTableView-NoMasterRecordsText=" Ups, No hay registros!!!">

                                                <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdPrestamo,IdEquipo" ClientDataKeyNames="IdPrestamo,IdEquipo"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Equipos Asignados">
                                                        <Columns>
                                                          <telerik:GridBoundColumn DataField="IdPrestamo" UniqueName="IdPrestamo" Visible="false"  HeaderText="ID" HeaderStyle-Width="100%" DataType="System.Int32" />
                                                          <telerik:GridBoundColumn DataField="IdEquipo" UniqueName="IdEquipo" Visible="false"  HeaderText="ID" HeaderStyle-Width="100%" DataType="System.Int32" />
                                                          <telerik:GridBoundColumn DataField="Nombre" UniqueName="Nombre" HeaderText="Nombre" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Fecha" UniqueName="Fecha" HeaderText="Fecha" DataFormatString = "{0:dd/MM/yyyy}" HeaderStyle-Width="40px" ItemStyle-HorizontalAlign="Center" DataType="System.DateTime" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Hora" UniqueName="Hora" HeaderText="Hora" DataFormatString = "{0:00}" HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="Center" DataType="System.Int16" HeaderStyle-HorizontalAlign="Center"/>
                                                       </Columns>
                                                </MasterTableView>
                                                <ClientSettings>
                                                    <Selecting AllowRowSelect="true" />
                                                    <Scrolling AllowScroll="true" UseStaticHeaders="true" SaveScrollPosition="true" FrozenColumnsCount="2" />
                                                </ClientSettings>
                                            </telerik:RadGrid>
                        </div>
                     </div>

                  </div>
                </div>
                <i class="flaticon-network" style="resize:horizontal"></i>
                </div>


               </div>

            </div>
           
        </div> <%--Row--%>
    
     </div> <%--Content--%>
   </div> <%--Row--%>

 </div> 


</telerik:RadAjaxPanel>
   <telerik:RadWindowManager ID="RadWindowManager1" RenderMode="Lightweight" UseRadConfirm="True" Skin="Simple" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
        <Windows>
        </Windows>
    </telerik:RadWindowManager>

     <telerik:RadAjaxLoadingPanel ID="rAjaxLoadingPanelCat" runat="server">
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="18px">Procesando ... </asp:Label>
    </telerik:RadAjaxLoadingPanel>

        
  <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" EnableAJAX="true" OnAjaxRequest="RadAjaxManager1_AjaxRequest">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxPanel1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="rAjaxLoadingPanelCat" />                   
                </UpdatedControls>
            </telerik:AjaxSetting>


             <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="radGridPrestamos" LoadingPanelID="rAjaxLoadingPanel" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridPrestamos">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            
           function callConfirm() {
                radconfirm('Estas seguro?', confirmCallBackFn, 300, 200, null, "Confirmación");
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
            function AdjustRadWidow() {
                var oWindow = GetRadWindow();
                setTimeout(function () { oWindow.autoSize(true); if ($telerik.isChrome || $telerik.isSafari) ChromeSafariFix(oWindow); }, 900);
            }

            function ChromeSafariFix(oWindow) {
                var iframe = oWindow.get_contentFrame();
                var body = iframe.contentWindow.document.body;

                setTimeout(function () {
                    var height = body.scrollHeight;
                    var width = body.scrollWidth;

                    var iframeBounds = $telerik.getBounds(iframe);
                    var heightDelta = height - iframeBounds.height;
                    var widthDelta = width - iframeBounds.width;

                    if (heightDelta > 0) oWindow.set_height(oWindow.get_height() + heightDelta);
                    if (widthDelta > 0) oWindow.set_width(oWindow.get_width() + widthDelta);
                    oWindow.center();

                }, 310);
            }


            function Buscarpres() {
                        var txtBuscar = $find("txtnomprest");
                        var value = txtBuscar.get_value();
                        //alert(value);
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("getFindPres");
            }

            function Cleart() {
                $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("getCleart");
            }

            function Clear()
            {
                document.getElementById('txtnomprest').value = '';
            }

          
           function RadConfirm(sender, args) {
                var callBackFunction = Function.createDelegate(sender, function (shouldSubmit) {
                    if (shouldSubmit) {
                        //initiate the origianal postback again
                        this.click();
                    }
                });

                var text = "Are you sure you want to submit the page?";
                radconfirm(text, callBackFunction, 200, 200, null, "RadConfirm");
                //always prevent the original postback so the RadConfirm can work, it will be initiated again with code in the callback function
                args.set_cancel(true);
            }

            function refreshGrid(arg) {
                if (!arg) {
                    $find("<%=RadAjaxManager1.ClientID %>").ajaxRequest("Rebind");   // Invoking ajaxRequest            
                }
            }
	   

        </script>
    </telerik:RadCodeBlock>
    
</asp:Content>
