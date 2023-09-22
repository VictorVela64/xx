<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrestamoEquiposWebPag.aspx.cs" Inherits="BibliotkApp.PrestamoEquiposWebPag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<!DOCTYPE html>
<head runat="server">
	<title>Agenda de Equipos de Computo en las Bibliotecas</title>
	<link href="assets\css\bootstrap.min.css" rel="stylesheet">
    <link href="Files/style.css" rel="stylesheet" />
    <script src="Files/scripts.js"></script>
    <script src="scripts.js"></script>
    <script src="jquery/jquery-1.8.3.js"></script>
    <link href="jquery/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" />
    <script src="jquery/jquery-ui-1.9.2.custom.min.js"></script>
</head>
<html>
<body>

<form id="form1" runat="server">
<meta charset="utf-8">
<div class="wrapper">
    <!-- Header Starts -->
    <header>
        <div class="header_top_main">
            <div class="container">
                <div class="row">
                    <div class="header_top">
                        <div class="logo">
                            <a title="Ir al Portal Ciudadano de Coatzacoalcos" href="https://www.coatzacoalcos.gob.mx/"><img src="https://transparencia.coatzacoalcos.gob.mx/wp-content/themes/transparencia-v1/images/logo.png" alt="logo"></a> 
                        </div>	
                    </div>

                </div>
            </div>	
        </div> 
    </header>
    
    <telerik:RadAjaxPanel ID="RadAjaxPanel" runat="server">
    

    <div class="ms-content-wrapper">
        <div class="row">

            <div class="col-xl-6 col-md-12">
          <div class="ms-panel">
                   <div class="form-row">
                          <div class="col-md-12 mb-3">

                               <div class="box">
                                <h3 class="blueTitle">Reserva un Equipo de Computo</h3>


                                    
                                    <telerik:RadWizard RenderMode="Auto" CssClass="bg-transparent" Skin="MetroTouch" ID="RadWizard1" runat="server" Width="100%" Localization-Next="Siguiente" Localization-Previous="Atras" Localization-Finish="Enviar Solicitud" OnFinishButtonClick="RadWizard1_FinishButtonClick" OnClientLoad="OnClientLoad" OnClientButtonClicking="OnClientButtonClicking">
                                            <WizardSteps>
                                                <telerik:RadWizardStep ID="RadWizardStep1" Title="Seleccione la Biblioteca" runat="server" StepType="Start" ValidationGroup="bibliotek" CausesValidation="true" SpriteCssClass="bibliotek">
                                                   <div class="inputWapper first">
                                                        <div class="form-row">
                                                            <div class="col-md-1 mb-2">
                                                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Biblioteca:" Font-Italic="true"></telerik:RadLabel>
                                                            </div>
                                                            <div class="col-md-4 mb-5">
                                                              <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbiblio"  AllowCustomText="true"  Skin="Simple" Filter="Contains" runat="server" Width="150%"  DataTextField="Biblioteca:" OnSelectedIndexChanged="cmbiblio_SelectedIndexChanged"  AutoPostBack="true" ></telerik:RadDropDownList>
                                                            </div>
                                                        </div>
                                                     </div>

                                                    <div class="inputWapper">
                                                    <div class="form-row">
                                                        <div class="col-md-1 mb-2">
                                                          <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Equipo:" Font-Italic="true" ></telerik:RadLabel>
                                                        </div>
                                                        <div class="col-md-4 mb-2">
                                                              <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbequipo"  AllowCustomText="true"  Skin="Simple"  runat="server" Width="100%"  DataTextField="Equipos" AutoPostBack="True" OnItemSelected="cmbequipo_ItemSelected" ></telerik:RadDropDownList>
<%--                                                              <asp:CustomValidator ID="PasswordLengthValidatior" ValidationGroup="accountInfo" runat="server" ControlToValidate="cmbequipo" EnableClientScript="true" ClientValidationFunction="PasswordLenghthValidation"></asp:CustomValidator>--%>
                                                        </div>
                                                        <div class="col-md-3 mb-2">
                                                            <table>
                                                                <tr>
                                                                <td style="vertical-align: top">
                                                                        <telerik:RadDockZone ID="RadDockZone2" runat="server" Orientation="Horizontal"  Width="450px" MinHeight="160px" BorderStyle="None">
                                                                            <telerik:RadDock RenderMode="Lightweight" ID="RadDock1" runat="server" Font-Size="Smaller" BackColor="WhiteSmoke"  Width="450px" EnableAnimation="true"
                                                                                             EnableRoundedCorners="true" Resizable="true" CssClass="higherZIndex" Skin="Simple"   >
                                                                                <Commands>
                                                                                <telerik:DockExpandCollapseCommand />
                                                                                </Commands>
                                                                                <ContentTemplate>
                                                                                     <div class="form-row">
                                                                                        <div class="col-lg-offset-2 col-lg-2">
                                                                                            <telerik:RadImageButton runat="server"  Image-Url="Image/Maps-32.png" ID="RadImageButton2" Height="30px" Width="30px" ></telerik:RadImageButton>
                                                                                        </div>
                                                                                        <div class="col-lg-offset-6 col-lg-6">
                                                                                            <telerik:RadLabel runat="server" ID="lbldomi"   Font-Italic="true" Height="50px" ></telerik:RadLabel>
                                                                                        </div>
                                                                                        <div class="col-md-4 mb-4">
                                                                                            <telerik:RadLabel runat="server" ID="lbltelbi"   Font-Italic="true" Height="50px" ></telerik:RadLabel>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-row">
                                                                                        <div class="col-lg-offset-2 col-lg-2">
                                                                                            <telerik:RadImageButton runat="server"  Image-Url="Image/Clock_16.png" ID="img" Height="30px" Width="30" ></telerik:RadImageButton>
                                                                                        </div>
                                                                                        <div class="col-lg-offset-4 col-lg-4">
                                                                                            <telerik:RadLabel runat="server" ID="RadLabel2"  Text="1 Hora" Font-Italic="true" Height="50px" ></telerik:RadLabel>
                                                                                        </div>
                                                                                        <div class="col-lg-offset-2 col-lg-2">
                                                                                            <telerik:RadImageButton runat="server"  Image-Url="Image/computer-32.png" ID="RadImageButton1" Height="30px" Width="30px" ></telerik:RadImageButton>
                                                                                        </div>
                                                                                        <div class="col-lg-offset-4 col-lg-4">
                                                                                            <telerik:RadLabel runat="server" ID="lblpc"   Font-Italic="true" Height="50" ></telerik:RadLabel>
                                                                                        </div>
                                                                                    </div>

                                                                                </ContentTemplate>
                                                                            </telerik:RadDock>
                                                                        </telerik:RadDockZone>
                                                                    </td>
                                                                    </tr>
                                                                </table>
                                                        </div>

                                                    </div>
                                                    </div>
                                                  
                                                  
                                                </telerik:RadWizardStep>

                                                <telerik:RadWizardStep Title="Asignar Equipo" runat="server" StepType="Step" ValidationGroup="Horario" SpriteCssClass="Horario">
                                                     
                                                    <div class="inputWapper date">
                                                        <div class="form-row">
                                                             <div class="col-md-4 mb-3">
                                                                 <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Fecha:" AssociatedControlID="RdpFecha" Font-Italic="true"></telerik:RadLabel>
                                                                  <telerik:RadDatePicker RenderMode="Lightweight" runat="server" ID="RdpFecha" Width="100%" Skin="Simple"  AutoPostBack="true" EnableTyping="false" OnSelectedDateChanged="RdpFecha_SelectedDateChanged" ></telerik:RadDatePicker>
                                                              </div>
                                                        </div>

                                                        <div class="inputWapper">
                                                        <div class="form-row">
                                                             <div class="col-md-4 mb-3">
                                                                <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Hora:" AssociatedControlID="cmbhorasValidation" Font-Italic="true"></telerik:RadLabel>
                                                                <telerik:RadComboBox RenderMode="Lightweight" ID="cmbhoras" runat="server" Height="200" Width="315" ValidationGroup="Horario"
                                                                MarkFirstMatch="true" EnableLoadOnDemand="true"  OnSelectedIndexChanged="RadComboBoxRegion_SelectedIndexChanged"
                                                                Skin="Simple">
                                                                 </telerik:RadComboBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="cmbhoras" EnableClientScript="true" ValidationGroup="Horario" ErrorMessage="*" CssClass="font-weight-bold text-danger"></asp:RequiredFieldValidator>
                                                                    <asp:CustomValidator ID="cmbhorasLenghthValidator" ValidationGroup="Horario" runat="server" ControlToValidate="cmbhoras" EnableClientScript="true" ClientValidationFunction="cmbhorasValidation"></asp:CustomValidator>
                                                             </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </telerik:RadWizardStep>

                                                <telerik:RadWizardStep Title="Informacion Personal" runat="server" StepType="Step" ValidationGroup="personalInfo" SpriteCssClass="personalinfo">
                                                   <div class="form-row">
                                                       <div class="col-md-4 mb-3">
                                                              <div class="inputWapper first">
                                                                <asp:Label Text="User Name: *" runat="server" AssociatedControlID="UserNameTextBox" />
                                                                <telerik:RadTextBox RenderMode="Lightweight" ID="UserNameTextBox" runat="server"  ValidationGroup="accountInfo" Width="320px"></telerik:RadTextBox>
                                                                <asp:CustomValidator ID="UserNameLenghthValidator" ValidationGroup="accountInfo" runat="server" ControlToValidate="UserNameTextBox" EnableClientScript="true" ClientValidationFunction="UserNameLenghthValidation"></asp:CustomValidator>
                                                                <asp:RequiredFieldValidator ID="UserNameTextBoxRequiredFieldValidator" runat="server" ControlToValidate="UserNameTextBox" EnableClientScript="true" ValidationGroup="accountInfo" ForeColor="red" ErrorMessage="required field" CssClass="validator"></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                       </div>

                                                    <div class="form-row">
                                                       <div class="col-md-4 mb-3">
                                                            <telerik:RadTextBox RenderMode="Lightweight" ID="txtmail" runat="server"  ValidationGroup="accountInfo" Width="300px"></telerik:RadTextBox> 
                                                                <asp:RegularExpressionValidator 
                                                                    id="emailValidator" 
                                                                    runat="server" 
                                                                    Display="Dynamic" 
                                                                    ErrorMessage="Favor de escribir un correo valido" 
                                                                    ValidationExpression="^[\w\.\-]+@[a-zA-Z0-9\-]+(\.[a-zA-Z0-9\-]{1,})*(\.[a-zA-Z]{2,3}){1,2}$" 
                                                                    ControlToValidate="txtmail"> 
                                                                </asp:RegularExpressionValidator> 
                                                                <br/> 
                                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verificar correo..." />  
                                                        </div>
                                                    </div>

                                                    <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="Telefono:" Font-Italic="true"></telerik:RadLabel>
                                                      <telerik:RadMaskedTextBox ID="txtTelefono" ValidationGroup="accountInfo" runat="server" Mask="(###)###-####" Text='<%# DataBinder.Eval( Container, "DataItem.Phone" ) %>'
                                                       EmptyMessage="-- # de Telefono --" HideOnBlur="true" ZeroPadNumericRanges="true" DisplayMask="(###)###-####">
                                                      </telerik:RadMaskedTextBox>

                                                    <div class="form-row">
                                                       <div class="col-md-4 mb-3">
                                                        <div class="form-row">
                                                           <div class="col-md-4 mb-3">
                                                              <asp:Label ID="Label3" runat="server" Text="Motivo del Prestamo:" Width="150px"></asp:Label>
                                                              <telerik:RadTextBox RenderMode="Lightweight" runat="server" ValidationGroup="accountInfo" ID="txtMotivo" Width="300px" EmptyMessage="Enter comment" TextMode="MultiLine" Height="100px" Resize="None"></telerik:RadTextBox>
                                                           </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                   
                                                </telerik:RadWizardStep>

                                                <telerik:RadWizardStep StepType="Finish" Title="Confirmation" ValidationGroup="Confirmation" SpriteCssClass="confirmation">
                                                    
                                                    <p class="anti-spam-policy">
                                                        <asp:CheckBox ID="AcceptTermsCheckBox" runat="server" Text="Estoy de Acuerdo en acudir a la cita para ocupar el Equipo de Computo..." CausesValidation="true" ValidationGroup="Confirmation" />
                                                        <asp:CustomValidator ID="AcceptTermsCheckBoxCustomValidator" runat="server"
                                                            EnableClientScript="true" ClientValidationFunction="AcceptTermsCheckBoxValidation" ValidationGroup="Confirmation"
                                                            ErrorMessage="Por favor llene todos los campos solicitados..." Display="Dynamic"
                                                            CssClass="checkbox-validator" ForeColor="Red" />
                                                    </p>

                                                    <div class="form-group">
                                                         <div class="col-xs-6">
                                                             <asp:ValidationSummary ID="valResumen" CssClass="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix alert-success" runat="server" ShowMessageBox="false" HeaderText="Datos no validos,favor de corregir..." />
                                                         </div>
                                                    </div>

                                                </telerik:RadWizardStep>

                                               

                                                </WizardSteps>
                                        </telerik:RadWizard>
                             </div>

                        </div>
                     </div>
               </div>
            </div>

          <div class="col-xl-6 col-md-10">
          <div class="ms-panel">
                   <div class="form-row">
                          <div class="col-md-10 mb-6">

                               <div class="box">
                                <h3 class="blueTitle">Consulta un Libro</h3>

                                   <div class="col-md-10 mb-6">

                                        <div class="form-row">
                                                <div class="col-md-2 mb-3">
                                                   <asp:Label ID="Label22" runat="server" Text="Busqueda por :" CssClass="text-nowrap" Font-Italic="true" ></asp:Label>
                                                </div>
                                                <div class="col-md-4 mb-3">
                                                   <telerik:RadRadioButtonList runat="server" Layout="Flow" ID="rbtsearch" AutoPostBack="false" Direction="Horizontal" Width="100%" CssClass="ms-checkbox-wrap" >
                                                      <Items>
                                                         <telerik:ButtonListItem Text="Titulo" Value="0"  Selected="true" />
                                                         <telerik:ButtonListItem Text="Autor" Value="1"/>
                                                      </Items>
                                                    </telerik:RadRadioButtonList>
                                               </div>
                                               <div class="col-md-6 mb-3">
                                                     <telerik:RadTextBox runat="server"  ID="txtfindbook"  Width="100%" Skin="Sunset" ButtonsPosition="right" ShowButton="true"   MaxLength="150"  EmptyMessage="Titulo o Nombre de Autor a Buscar" HoveredStyle-HorizontalAlign="Center" EnabledStyle-HorizontalAlign="Center" ClientIDMode="Static" ><ClientEvents OnButtonClick="Buscarbook"/></telerik:RadTextBox>
                                                </div>
                                                <div class="form-row">
                                                  <div class="col-md-12 mb-10">
                                                      <telerik:RadGrid ID="radGridLibros" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                                        Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small"
                                                        AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridLibros_ItemCommand1" OnNeedDataSource="radGridLibros_NeedDataSource1"
                                                        AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridLibros_SelectedIndexChanged1" OnItemDataBound="radGridLibros_ItemDataBound" >
                                                        <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                                        <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdLibros" ClientDataKeyNames="IdLibros"
                                                         Caption="" NoMasterRecordsText="Ups!!!, No hay Libros">
                                                            <GroupByExpressions>
					                                            <telerik:GridGroupByExpression>
						                                            <SelectFields>
							                                            <telerik:GridGroupByField FieldAlias="Titulo" FieldName="Titulo" 
								                                            HeaderValueSeparator=" - "></telerik:GridGroupByField>
						                                            </SelectFields>
						                                            <GroupByFields>
							                                            <telerik:GridGroupByField FieldName="Titulo" SortOrder="Descending"></telerik:GridGroupByField>
						                                            </GroupByFields>
					                                            </telerik:GridGroupByExpression>
					                                            <telerik:GridGroupByExpression>
						                                            <SelectFields>
							                                            <telerik:GridGroupByField FieldAlias="Autor" FieldName="Autor"></telerik:GridGroupByField>
						                                            </SelectFields>
						                                            <GroupByFields>
							                                            <telerik:GridGroupByField FieldName="Autor"></telerik:GridGroupByField>
						                                            </GroupByFields>
					                                            </telerik:GridGroupByExpression>
				                                            </GroupByExpressions>
                                                             <Columns>
                                                                  <telerik:GridBoundColumn DataField="IdLibros" UniqueName="IdLibros" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                                                  <telerik:GridBoundColumn DataField="Biblioteca" UniqueName="Biblioteca" HeaderText="Biblioteca" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                                                  <telerik:GridBoundColumn DataField="EdoLibro" UniqueName="EdoLibro" HeaderText="Estatus" ColumnValidationSettings-RequiredFieldValidator-Font-Bold="true" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Boolean" HeaderStyle-HorizontalAlign="Center" ColumnValidationSettings-ModelErrorMessage-Font-Bold="true" ItemStyle-Font-Bold="true" />
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
                                    
                                </div>
                              
                          </div>

                   </div>
          </div>
          </div>

        </div>
        </div>

 </telerik:RadAjaxPanel>
    
    <asp:RequiredFieldValidator ID="valida01" ControlToValidate="cmbhoras" runat="server" ValidationGroup="add" ErrorMessage="La Hora!" Display="None" />
    <asp:RequiredFieldValidator ID="valida02" ControlToValidate="UserNameTextBox" runat="server" ValidationGroup="add" ErrorMessage="El Nombre del Prestatario!" Display="None" />
    <asp:RequiredFieldValidator ID="valida03" ControlToValidate="txtmail" runat="server" ValidationGroup="add" ErrorMessage="Un Correo para notificarlo!" Display="None" />
    <asp:RequiredFieldValidator ID="valida05" ControlToValidate="txtTelefono" runat="server" ValidationGroup="add" ErrorMessage="Un Telefono!" Display="None" />

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

             <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadWizard1" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="cmbiblio">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="cmbequipo"/> 
                  <telerik:AjaxUpdatedControl ControlID="RadWizard1" LoadingPanelID="rAjaxLoadingPanelCat"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
                        
            <telerik:AjaxSetting AjaxControlID="cmbequipo">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="RadDockZone2"/> 
                  <telerik:AjaxUpdatedControl ControlID="RadWizard1" LoadingPanelID="rAjaxLoadingPanelCat"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="RdpFecha">
                <UpdatedControls>
                  <telerik:AjaxUpdatedControl ControlID="cmbhoras"/> 
                  <telerik:AjaxUpdatedControl ControlID="RadWizard1" LoadingPanelID="rAjaxLoadingPanelCat"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

             <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtfindbook"/>  
                    <telerik:AjaxUpdatedControl ControlID="radGridLibros" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>


        </AjaxSettings>
    </telerik:RadAjaxManager>



<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            (function () {
                window.pageLoad = function () {
                    var $ = $telerik.$;
                    var cssSelectors = ["bibliotek", "Horario", "personalInfo","PagConfirmation"];
                }

                window.OnClientLoad = function (sender, args) {
                    for (var i = 1; i < sender.get_wizardSteps().get_count(); i++) {
                        sender.get_wizardSteps().getWizardStep(i).set_enabled(false);
                    }
                }

                window.OnClientButtonClicking = function(sender, args) {
                    if (!args.get_nextActiveStep().get_enabled()) {
                        args.get_nextActiveStep().set_enabled(true);
                    }
                }

                window.AcceptTermsCheckBoxValidation = function(source, args) {
                    var termsChecked = $telerik.$("input[id*='AcceptTermsCheckBox']")[0].checked;
                    args.IsValid = termsChecked;
                }

                window.cmbhorasValidation = function (source, args) {
                    var hrConditions = $telerik.$(".conditions")[0];
                    var isValid = (args.Value.length === 0);
                    args.IsValid = !isValid;
                }

                window.UserNameLenghthValidation = function(source, args) {
                    var userNameConditions = $telerik.$(".conditions")[1];
                    var isValid = (args.Value!=="");
                    args.IsValid = isValid;
                    $telerik.$(userNameConditions).toggleClass("redColor", !isValid);
                }
            })();

            function Buscarbook() {
                        var txtBuscar = $find("txtfindbook");
                        var value = txtBuscar.get_value();
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("getFindBook");
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