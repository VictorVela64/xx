<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="CambioContraseñawebPag.aspx.cs" Inherits="BibliotkApp.CambioContraseñawebPag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Bibliotecas Municipales</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <telerik:RadAjaxPanel runat="server" ID="RadAjaxPanel1" LoadingPanelID="RadAjaxLoadingPanel1">
    
     <div class="ms-content-wrapper">
      <div class="row">

            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i> Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Seguridad</a></li>
                  <li class="breadcrumb-item active" >Contraseñas</li>
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
                  <li data-toggle="tooltip" data-placement="top" title="Contraseñas"> <i class="material-icons">lock_open</i> </li>
                </ul>
              </div>
            </div>

            <div class="ms-panel-body ms-scrollable">

                <div class="col-xl-10 col-md-6">
                      <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                        <div class="ms-card-body media">
                          <div class="media-body">
                            
                              <div class="customizedInd">
                                <div class="control-container">
                                    
                                    <div class="form-row">
                                      <div class="col-md-5 mb-3">
                                          <telerik:RadTextBox ID="txtpass" CssClass="form-control" Width="100%" runat="server" TextMode="Password" MaxLength="25" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left" >
                                          </telerik:RadTextBox>
                                      </div>
                                      <div class="col-md-5 mb-3">
                                          <telerik:RadTextBox ID="txtrepeatpass" CssClass="form-control" Width="100%" runat="server" TextMode="Password" MaxLength="25" HoveredStyle-HorizontalAlign="left" AutoPostBack="true" EnabledStyle-HorizontalAlign="left" OnTextChanged="txtrepeatpass_TextChanged" >
                                          </telerik:RadTextBox>
                                      </div>
                                      <div class="col-md-5 mb-3">
                                          <telerik:RadButton RenderMode="Lightweight" ID="mostrarpass" runat="server" ToolTip="Visualizar la Contraseña"  OnClick="mostrarpass_Click" Text="Ver Contraseña"><Icon SecondaryIconCssClass="rbHelp"></Icon></telerik:RadButton>
                                      </div>
                                    </div>
 
                                     <div class="col-md-6 mb-3">
                                           <div class="input-group">
                                             <asp:Button ID="btnsave" runat="server" Text="Guardar"  class="btn btn-pill btn-outline-primary" Width="100%" OnClick="btnsave_Click" />
                                           </div>
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
                        <i class="flaticon-security"></i>
                      </div>
                    </div>
            </div>
          </div>
        </div>

   </div>
 </div>
         
    </telerik:RadAjaxPanel>
    <asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtpass" runat="server" ValidationGroup="add" ErrorMessage="Su Contraseña!" Display="None" />
    <asp:RequiredFieldValidator ID="valida02" ControlToValidate="txtrepeatpass" runat="server" ValidationGroup="add" ErrorMessage="Repetir Contraseña!" Display="None" />
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

                    <telerik:AjaxSetting AjaxControlID="CheckBoxPasswordMode">
                        <UpdatedControls>  
                            <telerik:AjaxUpdatedControl ControlID="RadTextBox1"/> 
                            <telerik:AjaxUpdatedControl ControlID="RadTextBox2"/> 
                            <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
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

