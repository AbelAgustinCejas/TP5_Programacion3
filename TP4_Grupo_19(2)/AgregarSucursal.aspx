<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP4_Grupo_19_2_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 132px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 132px;
            height: 31px;
        }
        .auto-style7 {
            height: 26px;
            width: 210px;
        }
        .auto-style9 {
            width: 210px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 132px;
            height: 23px;
        }
        .auto-style12 {
            width: 210px;
            height: 25px;
        }
        .auto-style13 {
            height: 25px;
        }
        .auto-style14 {
            width: 132px;
            height: 25px;
        }
        .auto-style15 {
            height: 26px;
            width: 178px;
        }
        .auto-style22 {
            width: 210px;
        }
        .auto-style24 {
            width: 178px;
        }
        .auto-style26 {
            width: 132px;
        }
        .auto-style27 {
            width: 178px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style3">
                    <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
<td style="
    font-size: 42px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style22">
    GRUPO N°
</td>                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
     ahor       </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
<td style="
    font-size: 28px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style22">
    Agregar Sucursal
</td>                <td class="auto-style17"></td>
                <td class="auto-style6"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style15"></td>
                <td class="auto-style14"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style7">Nombre Sucursal:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtNombreSucursal" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtNombreSucursal"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="39px" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtDescripcion"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="178px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="txtDireccion"> </asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style27">
                    </td>
                <td class="auto-style11"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
