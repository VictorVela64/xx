<%@ Page  Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="RegistroLibroswebpag.aspx.cs" Inherits="BibliotkApp.RegistroLibroswebpag" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel" runat="server">

        <div class="ms-content-wrapper">
      <div class="row">

            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a href="Default.aspx"><i class="material-icons">home</i> Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Registro</a></li>
                  <li class="breadcrumb-item active" >Nuevo Libro</li>
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
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="btn1"
                                              Position="TopLeft" RelativeTo="Element">
                                              Hacer Clic para Abrir Panel de Búsqueda
                                          </telerik:RadToolTip>
                            </div>

                             <div class="col-md-12 mb-3">
                                    <div class="card-body collapse" id="collapseOne">
                                               <div class="form-row">
                                                  <div class="col-md-6 mb-3">
                                                      <ul class="ms-list d-flex">
                                                        <li class="ms-list-item pl-0">
                                                          <label class="ms-checkbox-wrap">
                                                            <input type="radio" id="chkbust" runat="server" name="radioExample" value="" checked="">
                                                            <i class="ms-checkbox-check"></i>
                                                          </label>
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Titulo</span>
                                                        </li>
                                                        <li class="ms-list-item">
                                                          <label class="ms-checkbox-wrap">
                                                            <input type="radio" id="chkbusa" runat="server" name="radioExample" value="" >
                                                            <i class="ms-checkbox-check"></i>
                                                          </label>
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Autor</span>
                                                        </li>
                                                      </ul>
                                                    </div>
                                                   <div class="col-md-6 mb-3">
                                                       <telerik:RadTextBox runat="server"  ID="txtfindbook"  Width="100%" Skin="Sunset" ButtonsPosition="right" ShowButton="true"   MaxLength="150"  EmptyMessage="Titulo o Nombre de Autor a Buscar" HoveredStyle-HorizontalAlign="Center" EnabledStyle-HorizontalAlign="Center" ClientIDMode="Static" ><ClientEvents OnButtonClick="Buscarbook"/></telerik:RadTextBox>
                                                   </div>
                                              </div>
                                    </div>
                               </div>



                                            <%--<div class="col-md-12 mb-0">
                                           <div class="form-row">
                                              <div class="col-md-6 mb-3">

                                                   <telerik:RadButton RenderMode="Lightweight" ID="chkbusca" runat="server" ToggleType="CheckBox" ButtonType="StandardButton" AutoPostBack="false" Width="100%" Skin="Sunset" > 
                                                        <ToggleStates>
                                                            <telerik:RadButtonToggleState Text="Buscar por Titulo" PrimaryIconCssClass="p-i-checkbox-checked"></telerik:RadButtonToggleState>
                                                            <telerik:RadButtonToggleState Text="Buscar por Autor" PrimaryIconCssClass="p-i-checkbox"></telerik:RadButtonToggleState>
                                                        </ToggleStates>
                                                    </telerik:RadButton>
                                                 
                                                </div>
                                               <div class="col-md-6 mb-3">
                                                   <telerik:RadTextBox RenderMode="Lightweight" ID="txtfindbook" runat="server" ShowButton="True">
                                                        <ClientEvents OnButtonClick="Buscarbook" />
                                                    </telerik:RadTextBox>
                                               </div>
                                          </div>
                                            </div>--%>
                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridLibros" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small"
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridLibros_ItemCommand" OnNeedDataSource="radGridLibros_NeedDataSource"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridLibros_SelectedIndexChanged">
                                <PagerStyle Mode="NextPrevAndNumeric"></PagerStyle>
                                <MasterTableView Width="100%" GridLines="None" CommandItemDisplay="None" DataKeyNames="IdLibros,IdBibliotek" ClientDataKeyNames="IdLibros,IdBibliotek"
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
                                         <telerik:GridTemplateColumn HeaderText="Info" UniqueName="ADD" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imginf" ImageUrl="~/Image/Info32.png" Width="30px" Height="30px" runat="server" CommandName="inf" ToolTip="Información" />
                                              </ItemTemplate>
                                          </telerik:GridTemplateColumn>
                                          <telerik:GridBoundColumn DataField="IdLibros" UniqueName="IdLibros" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="IdBibliotek" UniqueName="IdBibliotek" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="Adquisicion" UniqueName="Adquisicion" HeaderText="Adquisicion" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Decimal" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="NTarjeta" UniqueName="NTarjeta" HeaderText="# Tarjeta" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Decimal" HeaderStyle-HorizontalAlign="Center" />
                                         <telerik:GridBoundColumn DataField="Ubicacion" UniqueName="Ubicacion" HeaderText="Ubicacion" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridTemplateColumn HeaderText="Agregar" UniqueName="ADD" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imgadd" ImageUrl="~/Image/AddBook.png" Width="30px" Height="30px" runat="server" CommandName="add" ToolTip="Selecciona para agregar un Libro" />
                                              </ItemTemplate>
                                          </telerik:GridTemplateColumn>
                                          <telerik:GridTemplateColumn HeaderText="Eliminar" UniqueName="DEL" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imgdel" ImageUrl="~/Image/DelBook.png" Width="30px" Height="30px" runat="server" CommandName="delete" ToolTip="Selecciona para elimiar un Libro"/>
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
                <i class="flaticon-archive" style="resize:horizontal"></i>
                </div>

               </div>
            </div>

            <div class="col-xl-6 col-md-12">
              <div class="ms-panel ms-panel-fh">
                 
                <div class="ms-card card-gradient-widget ms-widget ms-infographics-widget">
                 <div class="ms-card-body media">
                   <div class="media-body">

                <div class="ms-panel-header">
                  <h6 style="color:brown">Registro de Libros</h6>
                </div>

                <div class="ms-panel-body">

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel3" CssClass="text-nowrap" Text="Titulo:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtitulo" Width="100%" CssClass="form-control" MaxLength="125" EmptyMessage="Titulo del Libro"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel1" CssClass="text-nowrap" Text="Descripción:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtdesc" Width="100%" CssClass="form-control" MaxLength="255" EmptyMessage="Descripción del titulo"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                        </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel2" CssClass="text-nowrap" Text="Autor:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtAutor" Width="100%" CssClass="form-control" MaxLength="125" EmptyMessage="Autor del Libro"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-6 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel4" CssClass="text-nowrap" Text="Editorial:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtEditorial" Width="100%" CssClass="form-control" MaxLength="125" EmptyMessage="Editorial"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                             <div class="input-group">
                                  <telerik:RadLabel runat="server" ID="RadLabel9" CssClass="text-nowrap" Text="Colección:" Font-Italic="true"></telerik:RadLabel>
                                  <telerik:RadDropDownList RenderMode="Lightweight" ID="rddColeccion"  AllowCustomText="true"  Skin="Simple" runat="server" Width="100%" DataTextField="Coleccion" OnSelectedIndexChanged="rddColeccion_SelectedIndexChanged" AutoPostBack="true" ></telerik:RadDropDownList>
                                 </div>
                          </div>
                          <div class="col-md-6 mb-3">
                              <div class="input-group">
                                  <telerik:RadLabel runat="server" ID="RadLabel8" CssClass="text-nowrap" Text="Materiales:" Font-Italic="true"></telerik:RadLabel>
                                  <telerik:RadDropDownList RenderMode="Lightweight" ID="rddMaterial"  AllowCustomText="true"  Skin="Simple" AutoPostBack="true" runat="server" Width="100%" DataTextField="Material" OnSelectedIndexChanged="rddMaterial_SelectedIndexChanged" ></telerik:RadDropDownList>
                              </div>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel5" CssClass="text-nowrap" Text="Signatura Topografica:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadComboBox runat="server" ID="cmbDewey" DropDownCssClass="material-icons" Width="100%" MarkFirstMatch="true"  skin="Material" OnTextChanged="cmbDewey_TextChanged" OnSelectedIndexChanged="cmbDewey_SelectedIndexChanged"  AutoPostBack="true" ></telerik:RadComboBox>
                          </div>
                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel10" CssClass="text-nowrap" Text="Ubicacion:" Font-Italic="true" ></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtUbicacion" Width="100%" CssClass="form-control" MaxLength="30" SelectionOnFocus="CaretToEnd" InputType="Text"   HoveredStyle-HorizontalAlign="left" Skin="Simple"   EnabledStyle-HorizontalAlign="left" AutoPostBack="true" style="text-transform:uppercase" ></telerik:RadTextBox>
                          </div>

                          <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel6" CssClass="text-nowrap" Text="# Adquisición:" Font-Italic="true"></telerik:RadLabel>
                               <telerik:RadMaskedTextBox RenderMode="Lightweight" ID="txtAdquis"  runat="server" Mask="######" Width="100%" CssClass="material-icons" Skin="Simple" >
                            </telerik:RadMaskedTextBox>
                          </div>
                        </div>

                         <div class="form-row">
                            <div class="col-md-4 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel12" CssClass="text-nowrap" Text="Num. de Tarjeta:" Font-Italic="true" ></telerik:RadLabel>
                               <telerik:RadMaskedTextBox RenderMode="Lightweight" ID="txtNumTar"  runat="server" Mask="##########" Width="100%" CssClass="material-icons" Skin="Simple" ></telerik:RadMaskedTextBox>
                            </div>
                            <div class="col-md-2 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel13" CssClass="text-nowrap" Text="# Ejemplar:" Font-Italic="true" ></telerik:RadLabel>
                               <telerik:RadMaskedTextBox RenderMode="Lightweight" ID="txtEjemplar"  runat="server" Mask="##" Width="100%" CssClass="material-icons" Skin="Simple" ></telerik:RadMaskedTextBox>
                            </div>
                            <div class="col-md-2 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel14" CssClass="text-nowrap" Text="# Volumen:" Font-Italic="true" ></telerik:RadLabel>
                               <telerik:RadMaskedTextBox RenderMode="Lightweight" ID="txtVolumen"  runat="server" Mask="#" Width="100%" CssClass="material-icons" Skin="Simple" ></telerik:RadMaskedTextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                  <telerik:RadLabel runat="server" ID="RadLabel11" CssClass="text-nowrap" Text="# ISBN:" Font-Italic="true"></telerik:RadLabel>
                                  <telerik:RadTextBox runat="server" ID="txtisbn" Width="100%" CssClass="form-control" MaxLength="30" EmptyMessage="# ISBN"  InputType="Text" HoveredStyle-HorizontalAlign="left" Skin="Simple"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                            </div>
                         </div>

                        <div class="form-row">
                          <div class="col-md-3 mb-3">
                              <telerik:RadLabel runat="server" ID="RadLabel7" CssClass="text-nowrap" Text="Publicación:" Font-Italic="true"></telerik:RadLabel>
                              <telerik:RadTextBox runat="server" ID="txtPublicacion" Width="100%" CssClass="form-control" MaxLength="50" EmptyMessage="Fecha de Publicación" Skin="Simple" InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                          </div>
                          <div class="col-md-3 mb-3">
                            <div class="input-group">
                                 <telerik:RadRadioButtonList runat="server" ID="chkDonado" AutoPostBack="true" Direction="Horizontal" Width="100%" Skin="Simple" OnSelectedIndexChanged="chkDonado_SelectedIndexChanged" >
                                    <Items>
                                        <telerik:ButtonListItem Text="Donado" Value="0"  Selected="true" />
                                        <telerik:ButtonListItem Text="Comprado" Value="1"/>
                                    </Items>
                                 </telerik:RadRadioButtonList>
                            </div>
                          </div>
                          <div class="col-md-3 mb-3">
                            <div class="input-group">
                               <telerik:RadDropDownList RenderMode="Lightweight" ID="cmbentidad"  AllowCustomText="true"  Skin="Simple" runat="server" Width="100%" DataTextField="Estatal" ></telerik:RadDropDownList>
                               <telerik:RadNumericTextBox RenderMode="Lightweight" runat="server" ID="txtcosto" Width="190px" Value="0.00" EmptyMessage="Coston" MinValue="0.00" Type="Number" Skin="Simple" ShowSpinButtons="false" NumberFormat-DecimalDigits="2"></telerik:RadNumericTextBox><br />
                            </div>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-6 mb-3">
                              <div class="input-group">
                                  <telerik:RadTextBox runat="server" ID="txtObs" TextMode="MultiLine" Width="180%"  CssClass="form-control" MaxLength="100" EmptyMessage="Obervaciones"  InputType="Text" HoveredStyle-HorizontalAlign="left"   EnabledStyle-HorizontalAlign="left"></telerik:RadTextBox>
                              </div>
                          </div>
                          <div class="col-md-6 mb-3">
                          </div>
                        </div>



                        <div class="form-row">
                              <div class="col-md-4 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" class="btn btn-pill btn-warning" Width="100%" OnClick="btnNuevo_Click" />
                                </div>
                              </div>
                              <div class="col-md-4 mb-3">
                                <div class="input-group">
                                  <asp:Button ID="btnsave" runat="server" Text="Guardar"  class="btn btn-pill btn-secondary" Width="100%" OnClick="btnsave_Click" />
                                </div>
                              </div>

                        </div>
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <div class="input-group">
                                 <asp:ValidationSummary ID="valResumen" CssClass="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix alert-success" runat="server" ShowMessageBox="false" HeaderText="Datos no validos,favor de corregir..." />
                             </div>
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


<asp:RequiredFieldValidator ID="valida01" ControlToValidate="txtitulo" runat="server" ValidationGroup="add" ErrorMessage="Titulo!" Display="None" />
<asp:RequiredFieldValidator ID="valida02" ControlToValidate="txtAutor" runat="server" ValidationGroup="add" ErrorMessage="Autor!" Display="None" />
<asp:RequiredFieldValidator ID="valida03" ControlToValidate="txtdesc" runat="server" ValidationGroup="add" ErrorMessage="Descripción!" Display="None" ></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="valida04" ControlToValidate="txtUbicacion" runat="server" ValidationGroup="add" ErrorMessage="Ubicacion!" Display="None" ></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="valida05" ControlToValidate="txtAdquis" runat="server" ValidationGroup="add" ErrorMessage="Adquisición!" Display="None" ></asp:RequiredFieldValidator>

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
                    <telerik:AjaxUpdatedControl ControlID="chkDonado"/>  
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxPanel1" LoadingPanelID="rAjaxLoadingPanelCat" />                   
                </UpdatedControls>
            </telerik:AjaxSetting>

             <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtfindbook"/>  
                    <telerik:AjaxUpdatedControl ControlID="radGridLibros" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridLibros">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="txtitulo"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdesc"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtAutor"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEditorial"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbCategoria"/>
                    <telerik:AjaxUpdatedControl ControlID="txtisbn"/>
                    <telerik:AjaxUpdatedControl ControlID="txtPublicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="chkDonado"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="btnNuevo"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObs"/>
                    <telerik:AjaxUpdatedControl ControlID="txtAdquis"/>
                    <telerik:AjaxUpdatedControl ControlID="txtUbicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNumTar"/>
                    <telerik:AjaxUpdatedControl ControlID="txtVolumen"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEjemplar"/>
                    <telerik:AjaxUpdatedControl ControlID="rddColeccion"/>
                    <telerik:AjaxUpdatedControl ControlID="rddMaterial"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnNuevo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="txtitulo"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdesc"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtAutor"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEditorial"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbCategoria"/>
                    <telerik:AjaxUpdatedControl ControlID="txtisbn"/>
                    <telerik:AjaxUpdatedControl ControlID="txtPublicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="chkDonado"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObs"/>
                    <telerik:AjaxUpdatedControl ControlID="txtAdquis"/>
                    <telerik:AjaxUpdatedControl ControlID="txtUbicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNumTar"/>
                    <telerik:AjaxUpdatedControl ControlID="txtVolumen"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEjemplar"/>
                    <telerik:AjaxUpdatedControl ControlID="rddColeccion"/>
                    <telerik:AjaxUpdatedControl ControlID="rddMaterial"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="btnsave">
                <UpdatedControls>  
                   <telerik:AjaxUpdatedControl ControlID="txtitulo"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtdesc"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtAutor"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEditorial"/>
                    <telerik:AjaxUpdatedControl ControlID="cmbCategoria"/>
                    <telerik:AjaxUpdatedControl ControlID="txtisbn"/>
                    <telerik:AjaxUpdatedControl ControlID="txtPublicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="txtcosto"/>
                    <telerik:AjaxUpdatedControl ControlID="chkDonado"/>
                    <telerik:AjaxUpdatedControl ControlID="btnsave"/>
                    <telerik:AjaxUpdatedControl ControlID="radGridLibros"/>
                    <telerik:AjaxUpdatedControl ControlID="txtObs"/>
                    <telerik:AjaxUpdatedControl ControlID="txtAdquis"/>
                    <telerik:AjaxUpdatedControl ControlID="txtUbicacion"/>
                    <telerik:AjaxUpdatedControl ControlID="txtNumTar"/>
                    <telerik:AjaxUpdatedControl ControlID="txtVolumen"/>
                    <telerik:AjaxUpdatedControl ControlID="txtEjemplar"/>
                    <telerik:AjaxUpdatedControl ControlID="rddColeccion"/>
                    <telerik:AjaxUpdatedControl ControlID="rddMaterial"/>
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="chkDonado">
                <UpdatedControls>  
                   <telerik:AjaxUpdatedControl ControlID="cmbentidad"/> 
                    <telerik:AjaxUpdatedControl ControlID="txtcosto"/> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="rddColeccion">
                <UpdatedControls>  
                    <telerik:AjaxUpdatedControl ControlID="rddMaterial"/> 
                    <telerik:AjaxUpdatedControl ControlID="RadAjaxManager1" LoadingPanelID="rAjaxLoadingPanel"/> 
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManager>

   
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">

            function Buscarbook(sender, eventArgs) {
                        var txtBuscar = $find("txtfindbook");
                        var value = txtBuscar.get_value();
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