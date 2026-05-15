using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace TP4_Grupo_19_2_
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // código inicial
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            SqlConnection cn = conexion.obtenerConexion();

            string consulta =
                "SELECT * FROM Sucursal WHERE ID_SUCURSAL = @ID";

            SqlCommand cmd = new SqlCommand(consulta, cn);

            cmd.Parameters.AddWithValue("@ID", txtSucursal.Text);

            cn.Open();

            gridSucursal.DataSource = cmd.ExecuteReader();
            gridSucursal.DataBind();

            cn.Close();
        }
    }
}