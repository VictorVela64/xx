<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="PrestamoLibrosWebPag.aspx.cs" Inherits="BibliotkApp.PrestamoLibrosWebPag" %>
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
                  <li class="breadcrumb-item active" >Prestatario de Libros</li>
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
                               <h6>Consulta de Prestamos de Libros</h6>
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

                                                <MasterTableView Width="97%" GridLines="None" CommandItemDisplay="Top" Font-Size="X-Small" Font-Italic="true" GroupHeaderItemStyle-Font-Italic="true" DataKeyNames="IdPrestamo,IdLibros" ClientDataKeyNames="IdPrestamo,IdLibros"
                                                    HorizontalAlign="NotSet" AllowAutomaticInserts="false">
                                                    <CommandItemTemplate>
                                                         <telerik:RadToolBar RenderMode="Lightweight" ID="RadToolBar1" runat="server" AutoPostBack="true">
                                                             <Items>
                                                             <telerik:RadToolBarButton Text="Retornar Libros" Width="100%" Height="40px"  Font-Italic="true" Font-Bold="true" Font-Size="Smaller" CommandName="Retorno"  ImageUrl="image/book-32.png"> </telerik:RadToolBarButton>
                                                             </Items>
                                                             </telerik:RadToolBar>
                                                    </CommandItemTemplate>
                                                        <Columns>
                                                          <telerik:GridBoundColumn DataField="IdPrestamo" UniqueName="IdPrestamo" Visible="false"  HeaderText="ID" HeaderStyle-Width="100%" DataType="System.Int32" />
                                                          <telerik:GridBoundColumn DataField="IdLibros" UniqueName="IdLibros" Visible="false"  HeaderText="ID" HeaderStyle-Width="100%" DataType="System.Int32" />
                                                          <telerik:GridBoundColumn DataField="Nombre" UniqueName="Nombre" HeaderText="Nombre" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Titulo" UniqueName="Titulo" HeaderText="Titulo" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Prestado" UniqueName="Prestado" HeaderText="Prestado" DataFormatString = "{0:dd/MM/yyyy}" HeaderStyle-Width="40px" ItemStyle-HorizontalAlign="Center" DataType="System.DateTime" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Vencimiento" UniqueName="Vencimiento" HeaderText="Vencimiento" DataFormatString = "{0:dd/MM/yyyy}" HeaderStyle-Width="40px" ItemStyle-HorizontalAlign="Center" DataType="System.DateTime" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="Vence" UniqueName="Vence" HeaderText="Dias" DataFormatString = "{0:00}" HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="Center" DataType="System.Int16" HeaderStyle-HorizontalAlign="Center" />
                                                          <telerik:GridBoundColumn DataField="DiasTrans" UniqueName="DiasTrans" HeaderText="Restantes" DataFormatString = "{0:00}" HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="Center" DataType="System.Int16" HeaderStyle-HorizontalAlign="Center"/>
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
               <i class="flaticon-control"></i>
               </div>

               </div>

            </div>
                          


            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">

                <div class="ms-panel-header">
                  <h6>Registro de Prestamo de Libros</h6>
                </div>

                <div class="ms-panel-body">

                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Prestatario:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtbuscaPrest" Width="100%" CssClass="form-control"  MaxLength="100" EmptyMessage="Buscar"  InputType="Text" Skin="Simple" TextMode="SingleLine" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left" OnTextChanged="txtbuscaPrest_TextChanged"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-8 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Prestatario:" Font-Italic="true"></telerik:RadLabel>
                               <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbPrestatario"  AllowCustomText="true"  Skin="Simple" Filter="Contains" runat="server" Width="100%" Height="400px" DataTextField="Prestatario:" EmptyMessage="Buscar por prestatario..." OnSelectedIndexChanged="cmbPrestatario_SelectedIndexChanged1" AutoPostBack="true" ></telerik:RadDropDownList>
                          </div>
                        </div>
                        <div class="form-row">
                           <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel8" CssClass="text-nowrap" Text="Libro:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtBuscaLibros" Width="100%" CssClass="form-control"  MaxLength="100" EmptyMessage="Buscar"  InputType="Text" TextMode="SingleLine" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left" OnTextChanged="txtBuscaLibros_TextChanged" ></telerik:RadTextBox>
                          </div>
                          <div class="col-md-8 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Titulo del Libro:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbLibros" AllowCustomText="true" Skin="Simple" Filter="Contains" runat="server" Width="100%" Height="400px" DataTextField="Libro:" EmptyMessage="Buscar el Libro..."></telerik:RadDropDownList>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Fecha de Entrega:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadDatePicker RenderMode="Lightweight" runat="server" ID="RdpFechae" Width="100%" Skin="Simple"  AutoPostBack="true" EnableTyping="false" ></telerik:RadDatePicker>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel7" CssClass="text-nowrap" Text="Fecha de Devolución" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadDatePicker RenderMode="Lightweight" runat="server" ID="RdpFechad" Width="100%" Skin="Simple"  AutoPostBack="true" EnableTyping="false" ></telerik:RadDatePicker>
                          </div>
                        </div>
                   

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Observaciones:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtObserva" Width="100%" CssClass="form-control"  MaxLength="125" EmptyMessage="Domicilio"  InputType="Text" TextMode="MultiLine" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Proposito:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadComboBox RenderMode="Lightweight" ID="cmbProposito" AllowCustomText="false" Skin="Simple" Filter="Contains" runat="server" Width="100%"  DataTextField="Proposito:" ></telerik:RadComboBox>
                          </div>
                        </div>
                       
		            
                        <div class="form-row">
                              <div class="col-md-6 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" class="btn btn-pill btn-outline-light" Width="100%" OnClick="btnNuevo_Click"  />
                                </div>
                              </div>
                              <div class="col-md-6 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnsave" runat="server" Text="Guardar"  class="btn btn-pill btn-outline-primary" Width="100%"  OnClick="btnsave_Click"/>
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
<asp:RequiredFieldValidator ID="valida01" ControlToValidate="cmbPrestatario" runat="server" ValidationGroup="add" ErrorMessage="Especifique el Prestatario!" Display="None" />
<asp:RequiredFieldValidator ID="valida03" ControlToValidate="cmbLibros" runat="server" ValidationGroup="add" ErrorMessage="Especifique el Libro!" Display="None" />
    
   <telerik:RadWindowManager ID="RadWindowManager1" RenderMode="Lightweight" UseRadConfirm="True" Skin="Simple" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
        <Windows>
            <telerik:RadWindow ID="RadWindow1" runat="server" Behaviors="Close,Move,Resize" Modal="true" VisibleStatusbar="false" Width="350%" Height="380%" CenterIfModal="true"
             NavigateUrl="RetornarPrestamosLibroWebModal.aspx" Title="Retornar un Libro Prestado" Skin="Simple" MaxWidth="350px" MaxHeight="380px">
            </telerik:RadWindow>
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
                    <telerik:AjaxUpdatedControl ControlID="txtnomprest"/>
                    <telerik:AjaxUpdatedControl ControlID="txtbuscaPrest"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridPrestamos" LoadingPanelID="rAjaxLoadingPanel" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridPrestamos">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="cmbPrestatario"/> 
                    <telerik:AjaxUpdatedControl ControlID="cmbLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechae"/>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechad"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObserva"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbProposito"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="btnNuevo"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmbPrestatario"/> 
                    <telerik:AjaxUpdatedControl ControlID="cmbLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechae"/>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechad"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObserva"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbProposito"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="txtBuscaLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="txtbuscaPrest"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridPrestamos"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechae"/>
                    <telerik:AjaxUpdatedControl ControlID="RdpFechad"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObserva"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbProposito"/>
                    <telerik:AjaxUpdatedControl ControlID="txtBuscaLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="txtbuscaPrest"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridPrestamos"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmbLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbPrestatario"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="cmbPrestatario">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="radGridPrestamos"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtbuscaPrest"/> 
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            function ClearItems() {
              var $ = $telerik.$;
              var resultsDropDownList= $find("<%=cmbPrestatario.ClientID %>");
              resultsDropDownList.trackChanges();
              if (resultsDropDownList.get_selectedItem()) {
                  resultsDropDownList.get_selectedItem().set_selected(false);
              }
              resultsDropDownList.get_textElement().innerHTML = "";
              resultsDropDownList.get_items().clear();
              resultsDropDownList.set_defaultMessage(" ");
              resultsDropDownList.commitChanges();
            }

             function openRadWindow() {
                var radwindow = $find('<%=RadWindow1.ClientID %>');
                radwindow.show();
             }

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