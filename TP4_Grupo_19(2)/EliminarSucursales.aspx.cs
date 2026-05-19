using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_Grupo_19_2_
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = @ID";

            int filas = conexion.ejecutarTransaccion(consultaSQL, txtIDsucursal.Text);

            if (filas > 0)
            {
                lblMensaje.Text = "La sucursal se ha eliminado con exito";
            }
            else
            {
                lblMensaje.Text = "Sucursal inexistente";
            }

            txtIDsucursal.Text = "";
        }
    }
}