using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace TP5_Grupo_19_2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGridSucursales();
            }
        }

        private void cargarGridSucursales()
        {
            string consultaSQL = @"SELECT
                                Id_Sucursal AS ID,
                                NombreSucursal AS Nombre,
                                DescripcionSucursal AS Descripcion,
                                DescripcionProvincia AS Provincia,
                                DireccionSucursal AS Direccion
                                FROM Sucursal
                                INNER JOIN Provincia
                                ON Id_ProvinciaSucursal = Id_Provincia";

            Conexion conexion = new Conexion();

            SqlDataReader reader = conexion.ejecutarSelect(consultaSQL);

            gridSucursal.DataSource = reader;
            gridSucursal.DataBind();

            reader.Close();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = conexion.obtenerConexion();

            string consulta = @"SELECT
                                Id_Sucursal AS ID,
                                NombreSucursal AS Nombre,
                                DescripcionSucursal AS Descripcion,
                                DescripcionProvincia AS Provincia,
                                DireccionSucursal AS Direccion
                                FROM Sucursal
                                INNER JOIN Provincia
                                ON Id_ProvinciaSucursal = Id_Provincia
                                WHERE Id_Sucursal = @ID";

            SqlCommand command = new SqlCommand(consulta, connection);

            command.Parameters.AddWithValue("@ID", txtSucursal.Text);

            connection.Open();

            gridSucursal.DataSource = command.ExecuteReader();
            gridSucursal.DataBind();

            connection.Close();

            txtSucursal.Text = "";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            cargarGridSucursales();

            txtSucursal.Text = "";
        }
    }
}