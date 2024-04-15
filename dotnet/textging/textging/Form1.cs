using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace textging
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string confi = System.Configuration.ConfigurationManager.ConnectionStrings["myconstring"].ToString();
            string querry = "INSERT INTO textingtable VALUES('"+txt_name.Text+"','"+txt_fathername.Text+"',':"+txt_contact.Text+"','"+txt_address.Text+"')";
            SqlConnection con = new SqlConnection(confi);
            con.Open();
            SqlCommand cmd = new SqlCommand(querry , con );
            cmd.ExecuteNonQuery();
            MessageBox.Show("record save successfully ");
        }
    }
}
