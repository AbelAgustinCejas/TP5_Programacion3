using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace TP4_Grupo_19_2_
{
    public class Conexion
    {
        private const string cadenaConexion = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        public int ejecutarTransaccion(string consultaSQL)
        {
            SqlConnection connection = new SqlConnection(cadenaConexion);
            connection.Open();

            SqlCommand command = new SqlCommand(consultaSQL, connection);

            int filasAfectadas = command.ExecuteNonQuery();

            connection.Close();

            return filasAfectadas;
        }
    }
}