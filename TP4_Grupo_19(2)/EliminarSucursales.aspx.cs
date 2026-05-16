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

            string consulta = "DELETE FROM Sucursal WHERE Id_Sucursal = " + txtIDsucursal.Text;

            int filas = conexion.ejecutarTransaccion(consulta);

            if (filas > 0)
            {
                lblMensaje.Text = "SE ELIMINO CORRECTRAMENTE";
            }
            else
            {
                lblMensaje.Text = "NO SE PUDO ELIMINAR";
            }

            txtIDsucursal.Text = "";
        }
    }
}