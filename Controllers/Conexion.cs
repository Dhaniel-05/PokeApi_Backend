using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace WebApplication1.Controllers
{
    public class Conexion
    {
        SqlConnection con;
        public Conexion()
        {
            con = new SqlConnection("Server=(Local)\\Sqlexpress;Database=MaestroPokemon; integrated security=true");
        }

        public SqlConnection Conectar()
        {
            try
            {
                con.Open();
                return con;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public bool Desconectar()
        {
            try
            {
                con.Close();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
