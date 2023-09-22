<%@ Page Title="" Language="C#" MasterPageFile="~/Bibliotk.Master" AutoEventWireup="true" CodeBehind="ConsultaGeneraLibrosPag.aspx.cs" Inherits="BibliotkApp.ConsultaGeneraLibrosPag" %>
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
                  <li class="breadcrumb-item"><a href="#">General</a></li>
                  <li class="breadcrumb-item active" >Consulta de Libro</li>
                </ol>
              </nav>
            </div>
      
        <div class="ms-content-wrapper">
        <div class="row">

          <div class="col-xl-6 col-md-6">
          <div class="ms-panel">

               <div class="ms-card card-gradient-warning ms-widget ms-infographics-widget">
                <div class="ms-card-body media">
                <div class="media-body">

                
              <div class="ms-panel-header">
                     <div class="form-row">
                            <div class="col-md-2 mb-3">
                                <button class="btn btn-link" type="button" id="btn1" runat="server"  data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                          <img src="../image/Search-32.png" />
                                          </button>
                                          <telerik:RadToolTip RenderMode="Lightweight" ID="RadToolTip1" runat="server" TargetControlID="btn1"
                                              Position="TopLeft" RelativeTo="Element">
                                              Hacer Clic para Abrir Panel de Búsqueda
                                          </telerik:RadToolTip>
                            </div>

                           <div class="col-md-6 mb-3">
                                <div class="card-body collapse" id="collapseOne">
                                           <div class="form-row">
                                              <div class="col-md-6 mb-6">
                                                  <ul class="ms-list d-flex">
                                                    <li class="ms-list-item pl-0">
                                                      <label class="ms-checkbox-wrap">
                                                        <input type="radio" id="chkbust" runat="server" name="radioExample" value="" checked="">
                                                        <i class="ms-checkbox-check"></i>
                                                      </label>
                                                      <span>Titulo</span>
                                                    </li>
                                                    <li class="ms-list-item">
                                                      <label class="ms-checkbox-wrap">
                                                        <input type="radio" id="chkbusa" runat="server" name="radioExample" value="" >
                                                        <i class="ms-checkbox-check"></i>
                                                      </label>
                                                      <span>Autor</span>
                                                    </li>
                                                  </ul>
                                                </div>
                                               <div class="col-md-9 mb-2">
                                                   <telerik:RadTextBox runat="server"  ID="txtfindbook"  Width="100%" Skin="Sunset" ButtonsPosition="right" ShowButton="true"   MaxLength="150"  EmptyMessage="Titulo o Nombre de Autor a Buscar" HoveredStyle-HorizontalAlign="Center" EnabledStyle-HorizontalAlign="Center" ClientIDMode="Static" ><ClientEvents OnButtonClick="Buscarbook"/></telerik:RadTextBox>
                                               </div>
                                          </div>
                                </div>
                           </div>
            

                     </div>
                </div>
             
                   <div class="form-row">
                          <div class="col-md-12 mb-3">
                              <telerik:RadGrid ID="radGridLibros" runat="server" RenderMode="Lightweight" AllowAutomaticUpdates="False" AllowAutomaticDeletes="False" PageSize="7" 
                                Width="99%" AllowSorting="false" AutoGenerateColumns="false" Skin="Simple" Font-Size="X-Small"
                                AllowPaging="True" ShowFooter="False" ShowGroupPanel="false" AllowMultiRowSelection="false" OnItemCommand="radGridLibros_ItemCommand" OnNeedDataSource="radGridLibros_NeedDataSource"
                                AllowMultiRowEdit="False" HorizontalAlign="NotSet" OnSelectedIndexChanged="radGridLibros_SelectedIndexChanged" OnItemDataBound="radGridLibros_ItemDataBound" >
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
                                         <telerik:GridTemplateColumn HeaderText="Info" UniqueName="Info" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imginf" ImageUrl="~/Image/Info32.png" Width="20px" Height="20px" runat="server" CommandName="Info" ToolTip="Información" />
                                              </ItemTemplate>
                                          </telerik:GridTemplateColumn>
                                          <telerik:GridTemplateColumn HeaderText="Prestamo" UniqueName="Pres" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="30px">
                                              <ItemTemplate>
                                                <asp:ImageButton ID="imgpres" ImageUrl="~/Image/book-32.png" Width="20px" Height="20px" runat="server" CommandName="Prestamo" ToolTip="Realizar el Prestamo" />
                                              </ItemTemplate>
                                          </telerik:GridTemplateColumn>
                                          <telerik:GridBoundColumn DataField="IdLibros" UniqueName="IdLibros" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="IdBibliotek" UniqueName="IdBibliotek" Visible="false" HeaderText="ID" HeaderStyle-Width="40px" DataType="System.Int32" />
                                          <telerik:GridBoundColumn DataField="Ubicacion" UniqueName="Ubicacion" HeaderText="Ubicacion" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="NTarjeta" UniqueName="NTarjeta" HeaderText="# Tarjeta" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Decimal" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="Adquisicion" UniqueName="Adquisicion" HeaderText="# Adquisicion" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.String" HeaderStyle-HorizontalAlign="Center" />
                                          <telerik:GridBoundColumn DataField="EdoLibro" UniqueName="EdoLibro" HeaderText="Estatus" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataType="System.Boolean" HeaderStyle-HorizontalAlign="Center" />
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
                   <i class="flaticon-search" style="resize:horizontal"></i>
              </div>
              
            </div>

            </div>
            
        </div> <%--Row--%>
    
     </div> <%--Content--%>
   </div> <%--Row--%>

 </div> 


</telerik:RadAjaxPanel>
   <telerik:RadWindowManager ID="RadWindowManager1" Skin="Sunset" ShowContentDuringLoad="false" VisibleStatusbar="false" ReloadOnShow="true" runat="server" EnableShadow="true">
        <Windows>
            <telerik:RadWindow ID="RadWindow1" runat="server" Behaviors="Close,Move,Resize" Modal="true" VisibleStatusbar="false" Width="500%" Height="380%" CenterIfModal="true"
             NavigateUrl="ConsultaPrestamosLibrosWebModal.aspx" Title="Consulta de Libros" Skin="Bootstrap" MaxWidth="500px" MaxHeight="380px">
            </telerik:RadWindow>
        </Windows>
       <Windows>
            <telerik:RadWindow ID="RadWindow2" runat="server" Behaviors="Close,Move,Resize" Modal="true" VisibleStatusbar="false" Width="700%" Height="300%" CenterIfModal="true"
             NavigateUrl="PrestamosLibrosWebModal.aspx" Title="Prestamo de Libros" Skin="Bootstrap" MaxWidth="700%" MaxHeight="300%">
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
                    <telerik:AjaxUpdatedControl ControlID="radGridLibros" LoadingPanelID="rAjaxLoadingPanelCat" />    
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="radGridLibros">
                <UpdatedControls>  
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

            function openRadWindow2() {
                var radwindow = $find('<%=RadWindow2.ClientID %>');
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