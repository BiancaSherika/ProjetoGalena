using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoGalena
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                LMsg.Text = "Erro: Inserinddo registro duplicado ou com campos vazios";
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                LMsg.Text = "Erro: Alterando registro com campos vazios";
                e.ExceptionHandled = true;
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["BancodeDados"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into Aluno (Nome,Email,Grupo,NomeGrupo,CPF,Telefone,DataNascimento,Endereco) values (@Nome,@Email,@Grupo,@NomeGrupo,@CPF,@Telefone,@Nascimento,@Endereco)";
            cmd.Parameters.AddWithValue("Nome", txtnome.Text);
            cmd.Parameters.AddWithValue("Email", txtemail.Text);
            cmd.Parameters.AddWithValue("Grupo", txtgrupo.Text);
            cmd.Parameters.AddWithValue("NomeGrupo", txtnomegrupo.Text);
            cmd.Parameters.AddWithValue("CPF", txtcpf.Text);
            cmd.Parameters.AddWithValue("Telefone", txttelefone.Text);
            cmd.Parameters.AddWithValue("Nascimento", txtnascimento.Text);
            cmd.Parameters.AddWithValue("Endereco", txtendereco.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("Aluno.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}