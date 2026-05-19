<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP4_Grupo_19_2_.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 34px;
            width: 281px;
        }
        .auto-style3 {
            width: 281px;
        }
        .auto-style4 {
            height: 34px;
            width: 372px;
        }
        .auto-style5 {
            width: 372px;
        }
        .auto-style6 {
            height: 34px;
            width: 125px;
        }
        .auto-style7 {
            width: 125px;
        }
        .auto-style8 {
            width: 281px;
            height: 39px;
        }
        .auto-style9 {
            width: 372px;
            height: 39px;
        }
        .auto-style10 {
            width: 125px;
            height: 39px;
        }
        .auto-style11 {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

<asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
                            <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
            <br />
            <br />
</div>
    <table style="width: 100%; height: 44px;">
        <tr>
<td style="
    font-size: 28px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style2">
    Listado de Sucursales
</td>             <td class="auto-style4"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Busqueda ingrese Id sucursal: </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtSucursal" runat="server" Width="348px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            </td>
                 <td class="auto-style11">
                     <asp:Button ID="btnMostrar" runat="server" Text="Mostrar todos" OnClick="btnMostrar_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                <asp:RegularExpressionValidator ID="revSucursal" runat="server" ControlToValidate="txtSucursal" ValidationExpression="^\d+$" ErrorMessage="Ingrese solo números"> </asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
                 <td class="auto-style11">
                     &nbsp;</td>
        </tr>
    </table>
        <asp:GridView ID="gridSucursal" runat="server" Height="254px" Width="1343px">
        </asp:GridView>
    </form>
    </body>
</html>
