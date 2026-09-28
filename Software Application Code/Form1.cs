using System;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Windows.Forms;

namespace Media_Production
{
    public partial class Form1 : Form
    {
        SqlConnection con = new SqlConnection(@"Data Source=localhost;Initial Catalog=Media Production & Equipment Hub;Integrated Security=True;TrustServerCertificate=True");

        public Form1()
        {
            InitializeComponent();
        }

        // INSERT 1 — Add New Client
        private void btnAddClient_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO CLIENT (CLIENTID, NAME) VALUES (@id, @name)", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(textBox2.Text));
                cmd.Parameters.AddWithValue("@name", textBox1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Client Added Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INSERT 2 — Add New Professional
        private void btnAddProf_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO PROFESSIONAL (PRODID, PROFNAME, SUPERID) VALUES (@id, @name, @superid)", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(textBox4.Text));
                cmd.Parameters.AddWithValue("@name", textBox3.Text);
                cmd.Parameters.AddWithValue("@superid", 1);
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Professional Added Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // DELETE 1 — Delete Client
        private void btnDeleteClient_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM CLIENT WHERE CLIENTID = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(textBox2.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Client Deleted Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // DELETE 2 — Delete Professional
        private void btnDeleteProf_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM PROFESSIONAL WHERE PRODID = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(textBox4.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Professional Deleted Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // UPDATE 1 — Update Project Status
        private void btnUpdateProject_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "UPDATE PROJECT SET STATUSPROJECT = 'In Production' WHERE TITLE = @title", con);
                cmd.Parameters.AddWithValue("@title", textBox5.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Project Updated Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // UPDATE 2 — Update Studio Availability
        private void btnUpdateStudio_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "UPDATE STUDIO SET IS_AVALIABLE = 'No' WHERE STUDIOID = @id", con);
                cmd.Parameters.AddWithValue("@id", int.Parse(textBox6.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Studio Updated Successfully!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // SELECT — View All Productions
        private void btnViewProductions_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PROJECT", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // SELECT WITH JOIN — Production Schedule
        private void btnSchedule_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT S.SESSIONID, S.DATE, S.SESSION_STATUS, " +
                    "B.BOOKERNAME, B.BOOKDATE, B.BOOKSTATUS " +
                    "FROM SESSION S " +
                    "JOIN BOOKING B ON S.BOOKID = B.BOOKID", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 1 — Most Demanded Skill
        private void btnSkill_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT TOP 1 P.ROLE, COUNT(I.SESSIONID) AS TotalSessions " +
                    "FROM PROFESSIONAL P " +
                    "JOIN INVOLVE I ON P.PRODID = I.INVOLVEID " +
                    "GROUP BY P.ROLE " +
                    "ORDER BY TotalSessions DESC", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 2 — Inactive Projects
        private void btnInactive_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT P.TITLE, P.BUDGET, P.STATUSPROJECT " +
                    "FROM PROJECT P " +
                    "WHERE P.BOOKID NOT IN " +
                    "(SELECT B.BOOKID FROM BOOKING B " +
                    "JOIN SESSION S ON B.BOOKID = S.BOOKID " +
                    "WHERE S.DATE >= DATEADD(MONTH,-1,GETDATE()))", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 3 — Top Equipment Handler
        private void btnTopEquip_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT TOP 1 P.PROFNAME, P.ROLE, " +
                    "COUNT(DISTINCT A.ASSIGNID) AS EquipmentCount " +
                    "FROM PROFESSIONAL P " +
                    "JOIN ASSIGNEQUIPMENT A ON P.PRODID = A.ASSIGNID " +
                    "JOIN SESSION S ON A.SESSIONID = S.SESSIONID " +
                    "WHERE S.DATE >= DATEADD(MONTH,-1,GETDATE()) " +
                    "GROUP BY P.PROFNAME, P.ROLE " +
                    "ORDER BY EquipmentCount DESC", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 4 — Idle Studios
        private void btnIdleStudios_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT ST.STUDIOID, ST.TYPE, ST.IS_AVALIABLE " +
                    "FROM STUDIO ST " +
                    "WHERE ST.STUDIOID NOT IN " +
                    "(SELECT T.STUDIOID FROM TAKEPLACE T " +
                    "JOIN SESSION S ON T.SESSIONID = S.SESSIONID " +
                    "WHERE S.DATE >= DATEADD(MONTH,-1,GETDATE()))", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 5 — Project Equipment Report
        private void btnEquipReport_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT A.TITLE AS Project, E.SERIALNUMBER, " +
                    "E.CATEGORY, E.MODEL, E.CONDITION " +
                    "FROM ASSIGNEQUIPMENT A " +
                    "JOIN EQUIPEMENT E ON A.ASSIGNID = E.SERIALNUMBER " +
                    "JOIN SESSION S ON A.SESSIONID = S.SESSIONID " +
                    "WHERE S.DATE >= DATEADD(MONTH,-1,GETDATE())", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        // INQUIRY 6 — Professional Portfolio
        private void btnPortfolio_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT P.PRODID, P.PROFNAME, P.ROLE, P.PROFEMAIL, " +
                    "COUNT(DISTINCT E.TITLE) AS TotalProjects " +
                    "FROM PROFESSIONAL P " +
                    "LEFT JOIN EXCUTE E ON P.PRODID = E.EXCUTEID " +
                    "GROUP BY P.PRODID, P.PROFNAME, P.ROLE, P.PROFEMAIL", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
                con.Close();
            }
        }

        private void Form1_Load(object sender, EventArgs e) { }
        private void label1_Click(object sender, EventArgs e) { }
        private void label2_Click(object sender, EventArgs e) { }
        private void label3_Click(object sender, EventArgs e) { }
        private void label5_Click(object sender, EventArgs e) { }
        private void button1_Click(object sender, EventArgs e) { }
        private void button2_Click(object sender, EventArgs e) { }
        private void button3_Click(object sender, EventArgs e) { }
        private void button8_Click(object sender, EventArgs e) { }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e) { }
    }
}