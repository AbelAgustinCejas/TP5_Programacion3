<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP4_Grupo_19_2_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>

<style type="text/css">
    .auto-style1 { width: 100%; }
    .auto-style2 { height: 26px; }
    .auto-style3 { height: 26px; width: 132px; }
    .auto-style7 { height: 26px; width: 210px; }
    .auto-style9 { width: 210px; height: 23px; }
    .auto-style10 { height: 23px; }
    .auto-style11 { width: 132px; height: 23px; }
    .auto-style12 { width: 210px; height: 27px; }
    .auto-style13 { height: 27px; }
    .auto-style14 { width: 132px; height: 27px; }
    .auto-style15 { height: 26px; width: 178px; }
    .auto-style22 { width: 210px; }
    .auto-style24 { width: 178px; }
    .auto-style26 { width: 132px; }
    .auto-style28 { height: 26px; width: 174px; }
    .auto-style29 { width: 174px; }
    .auto-style31 { height: 27px; width: 174px; }
    .auto-style32 { height: 23px; width: 174px; }
    .auto-style33 { height: 27px; width: 178px; }
</style>

</head>

<body>
<form id="form1" runat="server">

<table class="auto-style1">

    <!-- NAV -->
    <tr>
        <td class="auto-style7">
            <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
        </td>
        <td class="auto-style15"></td>
        <td class="auto-style3">
            <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
        </td>
        <td class="auto-style28"></td>
        <td class="auto-style2">
            <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
        </td>
        <td class="auto-style2"></td>
    </tr>

    <!-- ESPACIO -->
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- TITULO GRUPO -->
    <tr>
        <td style="font-size:42px;font-weight:bold;font-family:'Times New Roman', serif;" class="auto-style22">
            GRUPO N°
            19(2)
        </td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- ESPACIO -->
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- TITULO FORM -->
    <tr>
        <td style="font-size:28px;font-weight:bold;font-family:'Times New Roman', serif;" class="auto-style22">
            Agregar Sucursal
        </td>
        <td class="auto-style24"></td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- SPACER -->
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style33"></td>
        <td class="auto-style14"></td>
        <td class="auto-style31"></td>
        <td class="auto-style13"></td>
        <td class="auto-style13"></td>
    </tr>

    <!-- NOMBRE -->
    <tr>
        <td class="auto-style7" style="vertical-align:top;">
            Nombre Sucursal:
        </td>

        <td class="auto-style15">
            <asp:TextBox ID="txtNombreSucursal" runat="server" Width="170px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server"
                ErrorMessage="Campo Requerido"
                ControlToValidate="txtNombreSucursal" />
        </td>

        <td class="auto-style3"></td>
        <td class="auto-style28"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>

    <!-- DESCRIPCION -->
    <tr>
        <td class="auto-style9" style="vertical-align:top;">
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
        </td>

        <td class="auto-style15">
            <asp:TextBox ID="txtDescripcion" runat="server" Height="39px" Width="170px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server"
                ErrorMessage="Campo Requerido"
                ControlToValidate="txtDescripcion" />
        </td>

        <td class="auto-style11"></td>
        <td class="auto-style32"></td>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
    </tr>

    <!-- PROVINCIA -->
    <tr>
        <td class="auto-style22" style="vertical-align:top;">
            <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
        </td>

        <td class="auto-style24">
            <asp:DropDownList ID="ddlProvincia" runat="server" Width="178px"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvProvincia" runat="server"
                ControlToValidate="ddlProvincia"
                InitialValue=""
                ErrorMessage="Campo Requerido" />
        </td>

        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- DIRECCION -->
    <tr>
        <td class="auto-style22" style="vertical-align:top;">
            <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label>
        </td>

        <td class="auto-style24">
            <asp:TextBox ID="txtDireccion" runat="server" Width="170px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server"
                ErrorMessage="Campo Requerido"
                ControlToValidate="txtDireccion" />
        </td>

        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- BOTON -->
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style24">
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
        </td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

    <!-- MENSAJE -->
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style24">
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </td>
        <td class="auto-style26"></td>
        <td class="auto-style29"></td>
        <td></td>
        <td></td>
    </tr>

</table>

</form>
</body>
</html>