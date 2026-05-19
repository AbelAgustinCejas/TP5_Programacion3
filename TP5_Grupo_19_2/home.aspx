<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="TP4_Grupo_19_2_.WebForm1" %>

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
            width: 240px;
        }
        .auto-style4 {
            width: 240px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            width: 240px;
            height: 31px;
        }
        .auto-style7 {
            height: 26px;
            width: 370px;
        }
        .auto-style8 {
            width: 370px;
        }
        .auto-style9 {
            width: 370px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 240px;
            height: 23px;
        }
        .auto-style12 {
            width: 370px;
            height: 25px;
        }
        .auto-style13 {
            height: 25px;
        }
        .auto-style14 {
            width: 240px;
            height: 25px;
        }
        .auto-style15 {
            height: 26px;
            width: 312px;
        }
        .auto-style16 {
            width: 312px;
        }
        .auto-style17 {
            height: 31px;
            width: 312px;
        }
        .auto-style18 {
            height: 25px;
            width: 312px;
        }
        .auto-style19 {
            height: 23px;
            width: 312px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
<td style="
    font-size: 42px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style8">
    GRUPO N°
</td>                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
     ahor       </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
<td style="
    font-size: 28px;
    font-weight: bold;
    font-family: 'Times New Roman', serif;
" class="auto-style8">
    Agregar Sucursal
</td>                <td class="auto-style17"></td>
                <td class="auto-style6"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style18"></td>
                <td class="auto-style14"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8">Nombre Sucursal:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtNombreSucursal" runat="server" OnTextChanged="txtNombreSucursal_TextChanged" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="39px" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:DropDownList ID="ddlProvincias" runat="server" Width="178px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtDireccion" runat="server" OnTextChanged="txtNombreSucursal_TextChanged" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
