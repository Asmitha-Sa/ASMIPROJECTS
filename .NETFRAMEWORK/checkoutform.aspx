using System;
using System.Data.SqlClient;

namespace Empty
{
    public partial class checkoutform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source=.; database=Cakeshop; integrated security=SSPI");
                // Writing insert query  
                string query = "insert into totalpay(name,email,address,city,state,pincode)values('" + name.Text + "','" + email.Text + "','" + address.Text + "','"+city.Text+"','"+state.Text+"','"+pin.Text+"')";
                SqlCommand sc = new SqlCommand(query, con);
                // Opening connection  
                con.Open();
                // Executing query  
                int status = sc.ExecuteNonQuery();
                Label1.Text = "Your order is successfully saved !";
                // ----------------------- Retrieving Data ------------------ //  
            }
            catch (Exception ex)
            {
                Console.WriteLine("OOPs, something went wrong." + ex);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }
    }
    
}