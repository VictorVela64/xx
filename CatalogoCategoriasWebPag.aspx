<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="CatalogoCategoriasWebPag.aspx.cs" Inherits="BibliotkApp.CatalogoCategoriasWebPag" %>
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
                  <li class="breadcrumb-item"><a href="#">Catalogo</a></li>
                  <li class="breadcrumb-item active" >Categorias</li>
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
                               <h6>Lista de Categorias de Libros</h6>
                            </div>

                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">

                              <telerik:RadGrid ID="radGridCatego" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small" 
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridCatego_ItemCommand" OnNeedDataSource="radGridCatego_NeedDataSource"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridCatego_SelectedIndexChanged">
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdCategoria" ClientDataKeyNames="IdCategoria"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Registros">
                                     <Columns>
                                          <telerik:GridBoundColumn DataField="IdCategoria" UniqueName="IdCategoria" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="Categoria" UniqueName="Categoria" HeaderText="Categorias" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="cddewey" UniqueName="cddewey" HeaderText="Sistema Decimal Dewey" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
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
                 <i class="flaticon-browser" style="resize:horizontal"></i>
                </div>

               </div>

            </div>
                          


            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">

                <div class="ms-panel-header">
                  <h6>Registro de Categorias</h6>
                </div>

                <div class="ms-panel-body">

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Categoria:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtCategoria" Width="100%" CssClass="form-control" MaxLength="150" EmptyMessage="Nombre de la Categoria"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Sistema Decimal Dewey:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtdewey" Width="100%" CssClass="form-control" MaxLength="90" EmptyMessage="Clasificación Decimal Dewey"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                        </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-3 mb-3">
                             <div class="input-group">
                                  <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" class="btn btn-pill btn-outline-light" Width="100%" OnClick="btnNuevo_Click" />
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

              </div> <%--panel body--%>
            </div>  <%--ms pannel--%>
         </div> <%--Col--%>


        </div> <%--Row--%>
    
     </div> <%--Content--%>
   </div> <%--Row--%>

 </div> 


</telerik:RadAjaxPanel>
<asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtCategoria" runat="server" ValidationGroup="add" ErrorMessage="Describa la Clasificación!" Display="None" />
<asp:RequiredFieldValidator ID="valida02" ControlToValidate="txtdewey" runat="server" ValidationGroup="add" ErrorMessage="Sistema Decimal Dewey!" Display="None" />

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
                    <telerik:AjaxUpdatedControl ControlID="radGridCatego" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridCatego">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtCategoria"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdewey"/> 
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="btnNuevo"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtCategoria"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdewey"/> 
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtCategoria"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdewey"/> 
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridCatego"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            function Buscarbook() {
                        var txtBuscar = $find("txtfindbook");
                        var value = txtBuscar.get_value();
                        //alert(value);
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("getFindBook");
                    }
             function Clear()
            {
                 document.getElementById('txtfindbook').value = '';
            }
          
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
