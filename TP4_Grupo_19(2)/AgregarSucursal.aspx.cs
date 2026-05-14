using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_Grupo_19_2_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            string consultaSQL = "INSERT INTO Sucursal " + "(NombreSucursal, DescripcionSucursal, " + "Id_ProvinciaSucursal, DireccionSucursal) " + "VALUES ('" + txtNombreSucursal.Text + "', '" + txtDescripcion.Text + "', " + ddlProvincia.SelectedValue + ", '" + txtDireccion.Text + "')";

            int filas = conexion.ejecutarTransaccion(consultaSQL);

            if (filas > 0)
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";

                txtNombreSucursal.Text = "";
                txtDescripcion.Text = "";
                txtDireccion.Text = "";

                ddlProvincia.SelectedIndex = 0;
            }
        }
    }
}