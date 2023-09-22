<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="PrestatariosPag.aspx.cs" Inherits="BibliotkApp.PrestatariosPag" %>
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
                  <li class="breadcrumb-item"><a href="#">Prestatarios</a></li>
                  <li class="breadcrumb-item active" >Registro de Prestatario</li>
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
                               <h6>Consulta de Prestatarios</h6>
                            </div>
                            <div class="col-md-6 mb-3">
                                <button class="btn btn-link" type="button" id="btn1" runat="server"  data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                          <img src="../image/Search-32.png" />
                                          </button>
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="btn1"
                                              Position="TopLeft" RelativeTo="Element">
                                              Hacer Clic para Abrir Panel de Búsqueda
                                          </telerik:RadToolTip>
                            </div>

                       <div class="col-md-12 mb-0">
                                <div class="card-body collapse" id="collapseOne">
                                           <div class="form-row">
                                               <div class="col-md-9 mb-2">
                                                   <telerik:RadTextBox runat="server"  ID="txtnomprest"  Width="100%" Skin="Simple" ButtonsPosition="right" ShowButton="true"   MaxLength="150"  EmptyMessage="Nombre del prestatario a Buscar" HoveredStyle-HorizontalAlign="Center" EnabledStyle-HorizontalAlign="Center" ClientIDMode="Static" ><ClientEvents OnButtonClick="Buscarpres"/></telerik:RadTextBox>
                                               </div>
                                          </div>
                                </div>
                           </div>
            

                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridPrest" runat="server" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                        Width="99%" AllowSorting="False" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small"
                                        AllowPaging="True" ShowFooter="False" AllowMultiRowSelection="false" OnItemCommand="radGridPrest_ItemCommand" OnNeedDataSource="radGridPrest_NeedDataSource"
                                        AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridPrest_SelectedIndexChanged">
                                        <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                        <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdPrestatario" ClientDataKeyNames="IdPrestatario"
                                            Caption="" NoMasterRecordsText="Ups!!!, No existen">
                                     <Columns>
                                          <telerik:GridBoundColumn DataField="IdPrestatario" UniqueName="IdPrestatario"  HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="Nombre" UniqueName="Nombre" HeaderText="Nombre" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="Domicilio" UniqueName="Domicilio" HeaderText="Domicilio" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="Telcontacto" UniqueName="Telcontacto" HeaderText="Telefono" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridTemplateColumn HeaderText="Eliminar" UniqueName="DEL" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imgdel" ImageUrl="~/Image/User-delete-32.png" Width="30px" Height="30px" runat="server" CommandName="delete" ToolTip="Selecciona para elimiar un Prestatario"/>
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
                  <i class="flaticon-user" style="resize:horizontal"></i>
                 </div>

               </div>
            </div>
                          


            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">

                <div class="ms-panel-header">
                  <h6>Registro de Prestatarios</h6>
                </div>

                <div class="ms-panel-body">

                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Nombre:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtnombre" Width="100%" CssClass="form-control" MaxLength="250" EmptyMessage="Nombre"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Domicilio:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtdomicilio" Width="100%" CssClass="form-control" MaxLength="125" EmptyMessage="Domicilio"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Telefono:" Font-Italic="true"></telerik:RadLabel>
                              <i class="flaticon-phone"></i>
                              <telerik:RadTextBox runat="server" ID="txtelefono" Width="100%" CssClass="form-control" MaxLength="125" EmptyMessage="Telefono de Contacto"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Sexo:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadComboBox RenderMode="Lightweight" ID="cmbsexo" runat="server" Width="100%" Filter="Contains" MarkFirstMatch="true" ChangeTextOnKeyBoardNavigation="false" DataTextField="Sexo:" DataValueField="sexo" AutoPostBack="true" Skin="Simple"></telerik:RadComboBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Tipo de Prestatario" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadComboBox RenderMode="Lightweight" ID="cmbtipo" runat="server" Width="100%" Filter="Contains" MarkFirstMatch="true" ChangeTextOnKeyBoardNavigation="false" DataTextField="Tipo:" DataValueField="tipo" AutoPostBack="true" Skin="Simple"></telerik:RadComboBox>
                          </div>
                        </div>
		            
                        <div class="form-row">
                              <div class="col-md-6 mb-3">
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
<asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtnombre" runat="server" ValidationGroup="add" ErrorMessage="Nombre Completo!" Display="None" />
<asp:RequiredFieldValidator ID="valida03" ControlToValidate="txtdomicilio" runat="server" ValidationGroup="add" ErrorMessage="Domicilio!" Display="None" />
<asp:RequiredFieldValidator ID="valida04" ControlToValidate="txtelefono" runat="server" ValidationGroup="add" ErrorMessage="Telefono!" Display="None" />

   <telerik:RadWindowManager ID="RadWindowManager1" Skin="Simple" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
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
                    <telerik:AjaxUpdatedControl ControlID="txtnomprest"/>  
                    <telerik:AjaxUpdatedControl ControlID="radGridPrest" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridPrest">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdomicilio"/>
                    <telerik:AjaxUpdatedControl ControlID="txtelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbsexo"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbtipo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="btnNuevo"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdomicilio"/>
                    <telerik:AjaxUpdatedControl ControlID="txtelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbsexo"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbtipo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtnombre"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdomicilio"/>
                    <telerik:AjaxUpdatedControl ControlID="txtelefono"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbsexo"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbtipo"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridPrest"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            function Buscarpres() {
                        var txtBuscar = $find("txtnomprest");
                        var value = txtBuscar.get_value();
                        //alert(value);
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("getFindPres");
                    }
             function Clear()
            {
                 document.getElementById('txtnomprest').value = '';
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

           
		              var player = document.getElementById('player');
		              var snapshotCanvas = document.getElementById('snapshot');
		              var captureButton = document.getElementById('capture');
 
		              var handleSuccess = function(stream) {
			            // Attach the video stream to the video element and autoplay.
			            player.srcObject = stream;
		              };
 
		              captureButton.addEventListener('click', function() {
			            var context = snapshot.getContext('2d');
			            // Draw the video frame to the canvas.
			            context.drawImage(player, 0, 0, snapshotCanvas.width,
				            snapshotCanvas.height);
		              });
 
		              navigator.mediaDevices.getUserMedia({video: true})
			              .then(handleSuccess);
		   

        </script>
    </telerik:RadCodeBlock>
    
</asp:Content>