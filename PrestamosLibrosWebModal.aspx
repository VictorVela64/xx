<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrestamosLibrosWebModal.aspx.cs" Inherits="BibliotkApp.PrestamosLibrosWebModal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery/jquery-1.8.3.js"></script>
    <link href="jquery/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" />
    <script src="jquery/jquery-ui-1.9.2.custom.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <script type="text/javascript">
            function GetRadWindow() {
                var oWindow = null;
                if (window.radWindow) oWindow = window.radWindow;
                else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
                return oWindow;
            }
        
            function AdjustRadWidow() {
                var oWindow = GetRadWindow();
                setTimeout(function () { oWindow.autoSize(true); if ($telerik.isChrome || $telerik.isSafari) ChromeSafariFix(oWindow); }, 900);
            }

            //fix for Chrome/Safari due to absolute positioned popup not counted as part of the content page layout
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

            //RadConfirm
            function RadConfirm(sender, args) {
                var callBackFunction = Function.createDelegate(sender, function (shouldSubmit) {
                    if (shouldSubmit) {
                        //initiate the origianal postback again
                        this.click();
                    }
                });

                var text = "Are you sure you want to submit the page?";
                radconfirm(text, callBackFunction, 200, 200, null, "RadConfirm");
                //Evite siempre la devolución de datos original para que RadConfirm pueda funcionar, se iniciará nuevamente con el código en la función de devolución de llamada
                args.set_cancel(true);
            }

            function refreshGrid(arg) 
            { 
                 if(!arg) 
                 { 
                 $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("Rebind");              
                 } 
            }

            //Regresar a parent ...
            function CloseAndRebind(args) { GetRadWindow().BrowserWindow.refreshGrid(args); GetRadWindow().close(); }

            function callBackFn(arg) {
                alert("this is the client-side callback function. The RadAlert returned: " + arg);
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
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--Step 1 : Adding HTML-->
    
        <form class="active" runat="server"> 

            <telerik:RadScriptManager ID="RadScriptManager1" runat="server" ></telerik:RadScriptManager>
            <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Width="100%" >

            <div class="panel panel-default">
             <%--<div class="panel-heading">Ficha Tecnica</div>--%>
              <div class="panel-body">

                   <div class="container"> 
                            
                        <span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span>
                           	<div class="form-row">
                                <div class="col-md-2 mb-2">
                                      <telerik:RadLabel runat="server" ID="RadLabel7" CssClass="text-nowrap" Text="Fecha del Prestamo" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                                      <telerik:RadDatePicker RenderMode="Lightweight" runat="server" ID="RdpFechadp" Width="40%" Skin="Simple"  AutoPostBack="true" EnableTyping="false" ></telerik:RadDatePicker>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-2 mb-2">
                                      <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Fecha de Retorno" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                                      <telerik:RadDatePicker RenderMode="Lightweight" runat="server" ID="rdpFechavence" Width="40%" Skin="Simple"  AutoPostBack="true" EnableTyping="false" ></telerik:RadDatePicker>
                                </div>
                            </div>
                            <div class="col-md-2 mb-2">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Prestatario:" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtbuscaPrest" Width="60%" CssClass="form-control"  MaxLength="100" EmptyMessage="Buscar"  InputType="Text" Skin="Simple" TextMode="SingleLine" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left" OnTextChanged="txtbuscaPrest_TextChanged" ></telerik:RadTextBox>
                            </div>
                            <div class="col-md-2 mb-2">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Prestatario:" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                               <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbPrestatario"  AllowCustomText="true"  Skin="Simple" Filter="Contains" runat="server" Width="100%" Height="300px" DataTextField="Prestatario:" EmptyMessage="Buscar por prestatario..."  AutoPostBack="true"  OnSelectedIndexChanged="cmbPrestatario_SelectedIndexChanged"></telerik:RadDropDownList>
                            </div>
                            <div class="col-md-3 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Proposito:" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                              <telerik:RadComboBox RenderMode="Lightweight" ID="cmbProposito" AllowCustomText="false" Skin="Simple" Filter="Contains" runat="server" Width="100%" Height="300px"  DataTextField="Proposito:" ></telerik:RadComboBox>
                            </div>
                            <div class="col-md-3 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Observaciones:" Font-Italic="true" Font-Size="Small"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtObserva" Width="100%" CssClass="form-control"  MaxLength="125" EmptyMessage="Observaciones"  InputType="Text" TextMode="MultiLine" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                            </div>
                            <div class="form-row">
                                 <div class="col-md-6 mb-3">
                                     <asp:Button ID="btnRet" runat="server" Text="Aceptar" class="btn btn-pill btn-success" Width="100%" OnClick="btnRet_Click" />
                                 </div>
                             </div>
                             <div class="form-group">
                                 <div class="col-xs-6">
                                     <asp:ValidationSummary ID="valResumen" CssClass="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix alert-success" runat="server" ShowMessageBox="false" HeaderText="Datos no validos,favor de corregir..." />
                                 </div>
                             </div>
				    </div>

               </div> 

           </div>
        </telerik:RadAjaxPanel>            
        <asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtbuscaPrest" runat="server" ValidationGroup="add" ErrorMessage="Escriba un Nombre!" Display="None" />
        <asp:RequiredFieldValidator ID="valida02" ControlToValidate="cmbPrestatario" runat="server" ValidationGroup="add" ErrorMessage="Seleccione un prestatario!" Display="None" />
        <asp:RequiredFieldValidator ID="valida03" ControlToValidate="cmbProposito" runat="server" ValidationGroup="add" ErrorMessage="Seleccione un Proposito!" Display="None" />
     
      <telerik:RadWindowManager ID="windowManager1" runat="server" Animation="Resize" Skin="Sunset" EnableEmbeddedSkins="false" >
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
            
            <telerik:AjaxSetting AjaxControlID="cmbPrestatario">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManager>



  
        </form> 
</body>
</html>
