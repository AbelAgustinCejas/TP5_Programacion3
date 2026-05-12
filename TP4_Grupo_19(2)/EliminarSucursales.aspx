<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP4_Grupo_19_2_.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 360px;
        }
    </style>
</head>
<body>
            <form id="form2" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
            <br />
            <br />
            <br />
            <table style="width:100%;">
                <tr>
<td style="
    font-size: 28px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style2">
    Eliminar Sucursal</td                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Ingresar ID sucursal:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
