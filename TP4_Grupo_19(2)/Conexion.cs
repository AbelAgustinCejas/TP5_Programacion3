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

        public int ejecutarTransaccion(string consultaSQL, string id = null) /// LA FUNCION EN CASO DE NO TENER ID SOLO EJECUTA, CASO CONTRARIO SIRVE PARA ELIMINAR POR ID
        {
            SqlConnection connection = new SqlConnection(cadenaConexion);
            connection.Open();

            SqlCommand command = new SqlCommand(consultaSQL, connection);

            if (id != null)
            {
                command.Parameters.AddWithValue("@ID", id); /// SI ID EXISTE ENTRA POR ESTE IF Y LO AÑADE A LA NUEVA CONSULTA
            }

            int filasAfectadas = command.ExecuteNonQuery();

            connection.Close();

            return filasAfectadas;
        }

        public SqlDataReader ejecutarSelect(string consultaSQL)
        {
            SqlConnection connection = new SqlConnection(cadenaConexion);
            connection.Open();

            SqlCommand command = new SqlCommand(consultaSQL, connection); /// SE CREA EL COMANDO

            SqlDataReader reader = command.ExecuteReader(); /// SE EJECUTA METODO QUE DEVUELVE LECTURA

            return reader;
        }


        public SqlConnection obtenerConexion()
        {
            return new SqlConnection(cadenaConexion);
        }
    }
}