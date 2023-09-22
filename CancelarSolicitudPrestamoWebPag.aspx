<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelarSolicitudPrestamoWebPag.aspx.cs" Inherits="BibliotkApp.CancelarSolicitudPrestamoWebPag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cancelación de Solicitud de Prestamo</title>
    <base TARGET="_self">
</head>
<body>
    <form id="form1" runat="server">
        <div>
       <telerik:RadAjaxPanel ID="RadAjaxPanel" runat="server">
    
       <div class="ms-content-wrapper">
         <div class="row">
          <div class="col-xl-6 col-md-6">
          <div class="ms-panel ms-panel-fh ms-widget ms-chat-conversations">
            <div class="ms-panel-header">
            
            
            
                   <div class="col-xl-12 col-md-6">
                      <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                        <div class="ms-card-body media">

                          <div class="media-body">
                            <h6>Solicito el Prestamo de un Equipo de Computo con la Siguiente Información:</h6>
                          <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <asp:Label ID="lblBibliotk" runat="server" Font-Size="Large" Font-Italic="true" Font-Bold="true" ForeColor="#990000"></asp:Label>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <asp:Label ID="lblNombre" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <asp:Label ID="lblFecha" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <asp:Label ID="lblHora" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                                </div>
                          </div>
                           <div class="form-row">
                                <div class="col-md-3 mb-3">
                                  <asp:Button ID="btnCancel" runat="server" Text="Cancelar Prestamo" class="btn btn-pill btn-outline-success" Width="100%" OnClick="btnCancel_Click" />
                                </div>
                               <div class="col-md-3 mb-3">
                                  <asp:Button ID="btnsalir" runat="server" Text="Cerrar" class="btn btn-pill btn-outline-danger" Width="100%" OnClientClick="Cerrar()" />  
                                </div>
                            </div>
                          </div>
                        </div>
                        <i class="flaticon-information"></i>
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
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="18px">Procesando ... </asp:Label>
            </telerik:RadAjaxLoadingPanel>
            <telerik:RadScriptManager runat="server" ID="RadScriptManager1" AsyncPostBackTimeout="0" /> 

            <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" EnableAJAX="true" OnAjaxRequest="RadAjaxManager1_AjaxRequest">
                <AjaxSettings>
                     <telerik:AjaxSetting AjaxControlID="RadAjaxPanel1">
                     <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="rAjaxLoadingPanelCat" />                   
                     </UpdatedControls>
                 </telerik:AjaxSetting>
               </AjaxSettings>
            </telerik:RadAjaxManager>
            <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
                <script type="text/javascript">

                    function Cerrar() {
                       var win = top.window.self;
                            win.opener=top.window.self;
                            win.close();
                    }

                    function callConfirm() {
                        radconfirm('Estas seguro?', confirmCallBackFn, 300, 200, null, "Confirmación");
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

                    function MostrarMensaje(mensaje, titulo) {

                        var ventana = $('<div id="errortitulo" title="' + titulo + '"><span id="errormensaje">' + mensaje + '</span></div>');

                        ventana.dialog({
                            modal: true, 
                            buttons: { "OK": function () { $(this).dialog("close"); } },
                            show: "fold",
                            hide: "scale",
                        });
                    }
                </script>
            </telerik:RadCodeBlock> 

        </div>
    </form>
</body>
</html>
