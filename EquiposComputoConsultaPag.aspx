<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="EquiposComputoConsultaPag.aspx.cs" Inherits="BibliotkApp.EquiposComputoConsultaPag" %>
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
                  <li class="breadcrumb-item active" >Prestamos de Equipos de Computo</li>
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
                                <button class="btn btn-link" type="button" id="btn1" runat="server"  data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                          <img src="../image/Search-32.png" />
                                          </button>
                                          <telerik:RadButton RenderMode="Lightweight" ID="btnlist" runat="server" OnClick="btnlist_Click" ><Icon PrimaryIconCssClass="rbPrint"></Icon></telerik:RadButton>
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="btn1"
                                              Position="TopLeft" RelativeTo="Element">
                                              Hacer Clic para Abrir Panel de Búsqueda
                                          </telerik:RadToolTip>
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip2" runat="server" TargetControlID="btnlist"
                                              Position="TopLeft" RelativeTo="Element">
                                              Imprimir lista de Prestamos
                                          </telerik:RadToolTip>
                            </div>

                            <div class="col-md-12 mb-0">
                                <div class="card-body collapse" id="collapseOne">
                                           <div class="form-row">
                                               <div class="col-md-4 mb-2">
                                                   <telerik:RadDateTimePicker RenderMode="Lightweight" runat="server" ID="RadDateTimePicker1" Width="100%" Skin="Simple" EnableTyping="false" ></telerik:RadDateTimePicker>
                                               </div>
                                               <div class="col-md-4 mb-2">
                                                   <asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-pill btn-outline-light" Width="50%" OnClick="Button1_Click"   />
                                               </div>
                                               <div class="col-md-4 mb-4">
                                                   <div class="ms-form-group">
                                                        <span class="ms-option-name fs-12">Filtrar x Hora</span>
                                                        <label class="ms-switch float-right">
                                                        <telerik:RadButton RenderMode="Lightweight" ID="rbhora" runat="server" Skin="Simple" ToggleType="CheckBox" ButtonType="StandardButton" 
                                                            AutoPostBack="false">
                                                            <ToggleStates>
                                                                <telerik:RadButtonToggleState Text="Hora" PrimaryIconCssClass="p-i-checkbox-checked"></telerik:RadButtonToggleState>
                                                                <telerik:RadButtonToggleState Text="Fecha" PrimaryIconCssClass="p-i-checkbox"></telerik:RadButtonToggleState>
                                                            </ToggleStates>
                                                        </telerik:RadButton>
                                                        </label>
                                                   </div>
                                               </div>
                                          </div>
                                </div>
                           </div>

                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridEquipos" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small" 
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridEquipos_ItemCommand" OnNeedDataSource="radGridEquipos_NeedDataSource"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridEquipos_SelectedIndexChanged">
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdPrestamo" ClientDataKeyNames="IdPrestamo"
                                 Caption="" NoMasterRecordsText="Ups!!!, No hay Equipos reservados">
                                     <Columns>
                                       <telerik:GridBoundColumn DataField="IdPrestamo" UniqueName="IdPrestamo" Visible="False" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                       <telerik:GridBoundColumn DataField="Pc" UniqueName="Pc" HeaderText="Equipo" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Char" HeaderStyle-HorizontalAlign="Center" />
                                       <telerik:GridBoundColumn DataField="Nombre" UniqueName="Nombre" HeaderText="Usuario" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Char" HeaderStyle-HorizontalAlign="Center" />
                                       <telerik:GridTemplateColumn HeaderText="Telefono" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Char"  HeaderStyle-HorizontalAlign="Center">
                                           <ItemTemplate>
                                                <%# string.Format("{0:(###)###-####}", Convert.ToInt64(Eval("Telefono"))) %>
                                           </ItemTemplate>
                                        </telerik:GridTemplateColumn>

                                        <telerik:GridDateTimeColumn FilterControlWidth="100%" DataField="Hora" HeaderStyle-Width="100px" DataFormatString="{0:dd MMMMMMMMMMMM yyyy HH:mm}" 
                                            DataType="System.DateTime" Display="True" HeaderText="Hora" PickerType="DateTimePicker"  
                                            SortExpression="SubmissionDate" UniqueName="SubmissionDate"></telerik:GridDateTimeColumn> 

                                       <%--<telerik:GridBoundColumn DataField="Hora" UniqueName="Hora" HeaderText="Hora" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.TimeSpan" HeaderStyle-HorizontalAlign="Center" />--%>
                                       <telerik:GridTemplateColumn HeaderText="Eliminar" UniqueName="DEL" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imgdel" ImageUrl="~/Image/User-delete-32.png" Width="30px" Height="30px" runat="server" CommandName="delete" ToolTip="Selecciona para elimiar un Usuario"/>
                                              </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                     </Columns>
                                 </MasterTableView>
                              <ClientSettings ReorderColumnsOnClient="True" AllowDragToGroup="True" AllowColumnsReorder="True">
				                    <Selecting AllowRowSelect="True"></Selecting>
				                    <Resizing AllowRowResize="True" AllowColumnResize="True" EnableRealTimeResize="True"
					                    ResizeGridOnColumnResize="False"></Resizing>
			                    </ClientSettings>
                           </telerik:RadGrid>
                        </div>
                     </div>

                  </div>
                </div>
                <i class="flaticon-computer" style="resize:vertical"></i>
               </div>
    
               </div>
            </div>
                          


            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">

                <div class="ms-panel-header">
                  <h6>Nuevo Prestamo</h6>
                </div>

                <div class="ms-panel-body">

                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Equipo:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadComboBox RenderMode="Lightweight" ID="cmbEquipos" runat="server" Width="100%" Filter="Contains" MarkFirstMatch="true" ChangeTextOnKeyBoardNavigation="false" DataTextField="Equipos:" DataValueField="idEquipo" AutoPostBack="false" Skin="Simple"></telerik:RadComboBox>
                          </div>
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Fecha:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadDateTimePicker RenderMode="Lightweight" runat="server" ID="RdpFecha" Width="100%" Skin="Simple"   AutoPostBack="true" EnableTyping="false" ><TimeView TimeFormat="HH:mm:ss.fff" runat="server"></TimeView></telerik:RadDateTimePicker>
                          </div>
                          <div class="col-md-4 mb-3">
                              <asp:Button ID="btnsearch" runat="server" Text="verificar" class="btn btn-pill btn-outline-success" Width="50%" OnClick="btnsearch_Click" />
                              <%--<telerik:RadTimePicker RenderMode="Lightweight" ID="RdpHora" ShowPopupOnFocus="true" EnableTyping="false" CausesValidation="false" Skin="Simple" Width="100%" AutoPostBack="true" runat="server" style="display:inline-block;width:110px;" OnSelectedDateChanged="RdpHora_SelectedDateChanged">
                                <DateInput CausesValidation="false" runat="server"></DateInput>
                                <DatePopupButton Enabled="true" runat="server" />
                                <TimeView runat="server" BorderStyle="None" BackColor="Wheat">
                                    <HeaderTemplate>
                                        <div class="headerTemplate">
                                            Seleccion la Hora
                                        </div>
                                    </HeaderTemplate>
                                    <TimeTemplate>
                                        <div class="itemt">
                                            <%# DataBinder.Eval(Container, "DataItem.Time", "{0:hh:mm tt}") %>
                                        </div>
                                    </TimeTemplate>
                                    <AlternatingTimeTemplate>
                                        <div class="itemt">
                                            <%# DataBinder.Eval(Container, "DataItem.Time", "{0:hh:mm tt}") %>
                                        </div>
                                    </AlternatingTimeTemplate>
                                    <FooterTemplate>
                                        <div class="footerTemplate">
                                            <button onclick="javascript:ClosePopup();return false;">
                                                Close</button>
                                        </div>
                                    </FooterTemplate>
                                </TimeView>
                                <TimePopupButton HoverImageUrl="image/Clock-16.png" ImageUrl="image/Clock_16.png"></TimePopupButton>
                            </telerik:RadTimePicker>--%>
                          </div>
                        </div>
                        
                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Nombre:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtNombre" Width="100%" CssClass="form-control" MaxLength="200" EmptyMessage="Nombre Completo"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Correo:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtCorreo" Width="100%" CssClass="form-control" MaxLength="200" EmptyMessage="Correo"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Telefono:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadMaskedTextBox ID="txtTelefono" runat="server" Mask="(###)###-####" Text='<%# DataBinder.Eval( Container, "DataItem.Phone" ) %>'
                               EmptyMessage="-- # de Telefono --" HideOnBlur="true" ZeroPadNumericRanges="true" DisplayMask="(###)###-####">
                              </telerik:RadMaskedTextBox>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Motivo:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtMotivo" Width="100%" CssClass="form-control" MaxLength="200" EmptyMessage="Motivo"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>
                       
                        <div class="form-row">
                              <div class="col-md-6 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" class="btn btn-pill btn-outline-warning" Width="100%" OnClick="btnNuevo_Click"  />
                                </div>
                              </div>
                              <div class="col-md-6 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnsave" runat="server" Text="Guardar"  class="btn btn-pill btn-outline-primary" Width="100%" OnClick="btnsave_Click"  />
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
<asp:RequiredFieldValidator ID="valida01" ControlToValidate="cmbEquipos" runat="server" ValidationGroup="add" ErrorMessage="Seleccione el Equipo!" Display="None" />
<asp:RequiredFieldValidator ID="Valida02" ControlToValidate="RadDateTimePicker1" runat="server" ValidationGroup="find" ErrorMessage="Seleccione una Fecha!" Display="None" />
<asp:RequiredFieldValidator ID="Valida03" ControlToValidate="RdpFecha" runat="server" ValidationGroup="add" ErrorMessage="Seleccione la Fecha y Hora!" Display="None" />
<asp:RequiredFieldValidator ID="Valida04" ControlToValidate="txtNombre" runat="server" ValidationGroup="add" ErrorMessage="Escriba el Nombre!" Display="None" />
<asp:RequiredFieldValidator ID="Valida05" ControlToValidate="txtTelefono" runat="server" ValidationGroup="add" ErrorMessage="Escriba un Telefono!" Display="None" />
   <telerik:RadWindowManager ID="RadWindowManager1" Skin="Sunset" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
        <Windows>
            <telerik:RadWindow ID="RadWindow1" runat="server" Behaviors="Close,Move,Resize" Modal="true" VisibleStatusbar="false" Width="900%" Height="600%"
               NavigateUrl="ListadoPrestamosModalPag.aspx" Title="Listado de Prestamos" Skin="Simple" MaxWidth="500px" MaxHeight="500px"  >
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
                    <telerik:AjaxUpdatedControl ControlID="txtfindbook"/>  
                    <telerik:AjaxUpdatedControl ControlID="radGridEquipos" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridEquipos">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="cmbEquipos"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpFecha"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpHora"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNombre"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="txtTelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="txtMotivo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="btnNuevo"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="cmbEquipos"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpFecha"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpHora"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNombre"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="txtTelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="txtMotivo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="cmbEquipos"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpFecha"/> 
                    <telerik:AjaxUpdatedControl ControlID="RdpHora"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNombre"/>
                    <telerik:AjaxUpdatedControl ControlID="txtCorreo"/>
                    <telerik:AjaxUpdatedControl ControlID="txtTelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="txtMotivo"/>
                    <telerik:AjaxUpdatedControl ControlID="txtMotivo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridEquipos"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsearch">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
             function openRadWindow() {
                var radwindow = $find('<%=RadWindow1.ClientID %>');
                radwindow.show();
            }

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