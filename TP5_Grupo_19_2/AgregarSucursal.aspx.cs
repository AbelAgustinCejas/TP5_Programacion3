using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Grupo_19_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            CargarProvincias();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            string consultaSQL = "INSERT INTO Sucursal " + 
                                "(NombreSucursal, DescripcionSucursal, " + 
                                "Id_ProvinciaSucursal, DireccionSucursal) " + 
                                "VALUES ('" + txtNombreSucursal.Text + "', '" + 
                                txtDescripcion.Text + "', " + ddlProvincia.SelectedValue + 
                                ", '" + txtDireccion.Text + "')";

            int filas = conexion.ejecutarTransaccion(consultaSQL);

            if (filas > 0)
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";

                txtNombreSucursal.Text = "";
                txtDescripcion.Text = "";
                txtDireccion.Text = "";

                ddlProvincia.SelectedIndex = -1;
            }
        }

        private void CargarProvincias()
        {

            string consultaSQL = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

            Conexion conexion = new Conexion();

            SqlDataReader reader = conexion.ejecutarSelect(consultaSQL);

            ddlProvincia.DataSource = reader;
            ddlProvincia.DataTextField = "DescripcionProvincia";
            ddlProvincia.DataValueField = "Id_Provincia";
            ddlProvincia.DataBind();

            ddlProvincia.Items.Insert(0, new ListItem("Seleccione una provincia", "-1"));

            reader.Close();
        }
    }
}