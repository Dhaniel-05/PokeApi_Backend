using Intercom.Core;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Usuario;

namespace WebApplication1.Controllers
{
    [ApiController]
    [Route("[controller]")]

    public class UsuarioController : ControllerBase
    {
        [HttpGet]
        public List<Usuario> GetPayan()
        {
               
                    Conexion con = new Conexion();
                    string sql = "SELECT * FROM Usuarios;";
                    SqlCommand comando = new SqlCommand(sql, con.Conectar());
                    SqlDataReader dr = comando.ExecuteReader();
                    var users = new List<Usuario>();


            while (dr.Read())
            {
                Console.WriteLine("Usuario");
                Console.WriteLine(dr["correo"].ToString());
                Usuario usr= new Usuario();
                usr.IdUsuario= Int32.Parse(dr["idusuario"].ToString());
                usr.Nombre = dr["Nombre"].ToString();
                usr.Correo = dr["correo"].ToString();
                usr.Password= dr["password"].ToString();
                users.Add(usr);
            }
            con.Desconectar();


            return users;
        }

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public bool Create(Usuario user)
        {
            Console.WriteLine(user.Correo);
            Console.WriteLine(user.Nombre);
            Console.WriteLine(user.Password);
            Console.WriteLine("Pruebas ");

            try
            {
                Conexion con = new Conexion();
                string sql = "Insert into Usuarios (nombre, correo, password) values ('" + user.Nombre+"','" + user.Correo + "','" + user.Password+ "');";
                SqlCommand comando = new SqlCommand(sql, con.Conectar());
                int cantidad = comando.ExecuteNonQuery();
                if (cantidad == 1)
                {

                    con.Desconectar();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }
        }

    }
}
