<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="ControlUsuariosWebPag.aspx.cs" Inherits="BibliotkApp.ControlUsuariosWebPag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel" runat="server">
        <link href="style.css" rel="stylesheet" />
        <!-- Body Content Wrapper -->
    <div class="ms-content-wrapper">
      <div class="row">

            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i>Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Seguridad</a></li>
                  <li class="breadcrumb-item active" >Control de Usuarios</li>
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
                               <h6>Lista de Usuarios</h6>
                            </div>

                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">

                              <telerik:RadGrid ID="radGridUsers" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small" 
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridUsers_ItemCommand" OnNeedDataSource="radGridUsers_NeedDataSource"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridUsers_SelectedIndexChanged">
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdUserWeb" ClientDataKeyNames="IdUserWeb"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Usuarios">
                                     <Columns>
                                          <telerik:GridBoundColumn DataField="IdUserWeb" UniqueName="IdUserWeb" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="Usuario" UniqueName="Usuario" HeaderText="Usuario" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="Nombre" UniqueName="Nombre" HeaderText="Nombre" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="Bibliotek" UniqueName="Bibliotek" HeaderText="Biblioteca" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridTemplateColumn HeaderText="Eliminar" UniqueName="DEL" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                            <ItemTemplate>
                                               <asp:ImageButton ID="imgdel" ImageUrl="~/Image/Delete-32.png" Width="30px" Height="30px" runat="server" CommandName="delete" ToolTip="Selecciona para elimiar una Biblioteca"/>
                                            </ItemTemplate>
                                          </telerik:GridTemplateColumn>
                                       </Columns>
                                 </MasterTableView>
                               <ClientSettings Selecting-AllowRowSelect="true" EnableRowHoverStyle="true" EnablePostBackOnRowClick="true">
                                            <Selecting AllowRowSelect="True" EnableDragToSelectRows="True"></Selecting>
                                            <Scrolling AllowScroll="True" UseStaticHeaders="True" SaveScrollPosition="true" FrozenColumnsCount="2" />
			                      </ClientSettings>
                           </telerik:RadGrid>
                        </div>
                     </div>

                   </div>
                  </div>
                    <i class="flaticon-secure-shield" style="resize:horizontal"></i>
                </div>

               </div>

            </div>
                          


            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">

               <div class="ms-card card-gradient-widget ms-widget ms-infographics-widget">
                 <div class="ms-card-body media">
                   <div class="media-body">

                <div class="ms-panel-header">
                  <h6 style="color:brown">Registro de Usuarios</h6>
                </div>

                <div class="ms-panel-body">

                     

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Usuario:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtusuario" Width="100%" CssClass="form-control" MaxLength="20" EmptyMessage="Nombre del Usuario"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Biblioteca:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbibliotek"  AllowCustomText="true"  Skin="Simple" Filter="Contains" runat="server" Width="100%"  DataTextField="Biblioteca:"  AutoPostBack="true" ></telerik:RadDropDownList>
                        </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Nombre:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtnombre" Width="100%" CssClass="form-control" MaxLength="100" EmptyMessage="Nombre Completo del Usuario"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Contraseña:" Font-Italic="true"></telerik:RadLabel>
                               <telerik:RadTextBox ID="txtcontraseña" CssClass="form-control" Width="100%" runat="server" TextMode="Password" MaxLength="25" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left" >
                              </telerik:RadTextBox>
                          </div>
                          <div class="col-md-2 mb-3"><br />
                              <telerik:RadButton RenderMode="Lightweight" ID="mostrarpass" runat="server" ToolTip="Visualizar la Contraseña"  OnClick="mostrarpass_Click" Text="Ver Contraseña"><Icon SecondaryIconCssClass="rbHelp"></Icon></telerik:RadButton>
                          </div>
                        </div>
                    
                        <div class="form-row">
                            <div class="col-md-2 mb-3">
                             <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Estatus:" Font-Italic="true"></telerik:RadLabel>
                            </div>
                          <div class="col-md-2 mb-3">
                               <telerik:RadCheckBox ID="Estatus" runat="server" Checked="true" Text="Activo"  ></telerik:RadCheckBox>
                          </div>
                          <div class="col-md-2 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Nivel:" Font-Italic="true"></telerik:RadLabel>
                          </div>
                          <div class="col-md-6 mb-3">
                               <telerik:RadRadioButtonList runat="server" ID="chknivel" AutoPostBack="false" Direction="Horizontal" Width="100%" Skin="Simple" >
                                  <Items>
                                     <telerik:ButtonListItem Text="Administrador" Value="0"  Selected="true" />
                                      <telerik:ButtonListItem Text="Usuario" Value="1"/>
                                  </Items>
                               </telerik:RadRadioButtonList>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel7" CssClass="text-nowrap" Text="Correo Electronico:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtCorreo" Width="100%" CssClass="form-control" MaxLength="25" EmptyMessage="Correo Electronico"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>
                       
                        <div class="form-row">
                          <div class="col-md-3 mb-3">
                             <div class="input-group">
                                  <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" class="btn btn-pill btn-outline-light" Width="100%" OnClick="btnNuevo_Click"/>
                             </div>
                           </div>
                           <div class="col-md-5 mb-3">
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

                   

              </div> <%--panel body--%>

                </div>
                </div>
                    <i class="flaticon-pencil"></i>
                </div>

            </div>  <%--ms pannel--%>
         </div> <%--Col--%>


        </div> <%--Row--%>
    
     </div> <%--Content--%>
   </div> <%--Row--%>

 </div> 


</telerik:RadAjaxPanel>
<asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtusuario" runat="server" ValidationGroup="add" ErrorMessage="Nombre del Usuario!" Display="None" />
<asp:RequiredFieldValidator ID="valida02" ControlToValidate="txtnombre" runat="server" ValidationGroup="add" ErrorMessage="Nombre Completo!" Display="None" />
<asp:RequiredFieldValidator ID="valida03" ControlToValidate="txtcontraseña" runat="server" ValidationGroup="add" ErrorMessage="Contraseña!" Display="None" />
   <telerik:RadWindowManager ID="RadWindowManager1" Skin="Sunset" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
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
                    <telerik:AjaxUpdatedControl ControlID="radGridUsers" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridUsers">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtusuario"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtcontraseña"/>
                    <telerik:AjaxUpdatedControl ControlID="Estatus"/>
                    <telerik:AjaxUpdatedControl ControlID="chknivel"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbibliotek"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>


            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtusuario"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtcontraseña"/>
                    <telerik:AjaxUpdatedControl ControlID="Estatus"/>
                    <telerik:AjaxUpdatedControl ControlID="chknivel"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbibliotek"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtusuario"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtcontraseña"/>
                    <telerik:AjaxUpdatedControl ControlID="Estatus"/>
                    <telerik:AjaxUpdatedControl ControlID="chknivel"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridUsers"/>
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
    
</asp:Content>