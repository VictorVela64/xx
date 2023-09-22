<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="ProfilerUserWebPag.aspx.cs" Inherits="BibliotkApp.ProfilerUserWebPag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <telerik:RadAjaxPanel runat="server" ID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1">
    
     <div class="ms-content-wrapper">
      <div class="row">

            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i> Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Seguridad</a></li>
                  <li class="breadcrumb-item active" >Perfil del Usuario</li>
                </ol>
              </nav>
            </div>
          
          <div class="col-xl-12 col-md-12">
          <div class="ms-panel ms-panel-fh ms-widget ms-chat-conversations">
            <div class="ms-panel-header">
              <div class="ms-chat-header justify-content-between">
                <div class="ms-chat-user-container media clearfix">
                  <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                    <img src="Image/user-32.png" class="ms-img-round" alt="people">
                  </div>
                  <div class="media-body ms-chat-user-info mt-1">
                    <asp:Label ID="lblUsuario" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                    <span class="text-disabled fs-12">
                      Active Now
                    </span>
                  </div>
                </div>
                <ul class="ms-list ms-list-flex ms-chat-controls">
                  <li data-toggle="tooltip" data-placement="top" title="Información"> <i class="material-icons">info_outline</i> </li>
                </ul>
              </div>
            </div>
            <div class="ms-panel-body ms-scrollable">
              <div class="ms-chat-bubble ms-chat-message ms-chat-outgoing media clearfix">
                
                   <div class="col-xl-12 col-md-6">
                      <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                        <div class="ms-card-body media">
                          <div class="media-body">
                            <h6>Información del Usuario</h6>
                               <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <h6>Nombre Completo:</h6><asp:Label ID="lblNombre" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <h6>Nivel:</h6><asp:Label ID="lblNivel" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <h6>Biblioteca Asignada:</h6><asp:Label ID="lblBibliotk" runat="server" Font-Size="Medium" Font-Italic="true" ForeColor="#990000"></asp:Label>
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