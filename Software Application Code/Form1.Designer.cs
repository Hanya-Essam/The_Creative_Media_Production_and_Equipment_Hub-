namespace Media_Production
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            txtClientID = new Label();
            txtClientName = new Label();
            textBox1 = new TextBox();
            textBox2 = new TextBox();
            txtProfName = new Label();
            txtProfID = new Label();
            textBox3 = new TextBox();
            textBox4 = new TextBox();
            txtProjectTitle = new Label();
            txtStudioID = new Label();
            textBox5 = new TextBox();
            textBox6 = new TextBox();
            btnAddClient = new Button();
            btnAddProf = new Button();
            btnDeleteClient = new Button();
            btnDeleteProf = new Button();
            btnUpdateProject = new Button();
            btnUpdateStudio = new Button();
            btnViewProductions = new Button();
            btnSchedule = new Button();
            btnSkill = new Button();
            btnInactive = new Button();
            btnTopEquip = new Button();
            btnIdleStudios = new Button();
            btnEquipReport = new Button();
            btnPortfolio = new Button();
            dataGridView1 = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // txtClientID
            // 
            txtClientID.AutoSize = true;
            txtClientID.BackColor = SystemColors.GradientActiveCaption;
            txtClientID.BorderStyle = BorderStyle.Fixed3D;
            txtClientID.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtClientID.ForeColor = SystemColors.Desktop;
            txtClientID.Location = new Point(29, 74);
            txtClientID.Name = "txtClientID";
            txtClientID.Size = new Size(82, 25);
            txtClientID.TabIndex = 0;
            txtClientID.Text = "Client ID";
            txtClientID.Click += label1_Click;
            // 
            // txtClientName
            // 
            txtClientName.AutoSize = true;
            txtClientName.BackColor = SystemColors.GradientActiveCaption;
            txtClientName.BorderStyle = BorderStyle.Fixed3D;
            txtClientName.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtClientName.ForeColor = SystemColors.ActiveCaptionText;
            txtClientName.Location = new Point(29, 36);
            txtClientName.Name = "txtClientName";
            txtClientName.Size = new Size(111, 25);
            txtClientName.TabIndex = 1;
            txtClientName.Text = "Client Name";
            txtClientName.Click += label2_Click;
            // 
            // textBox1
            // 
            textBox1.Location = new Point(166, 33);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(200, 27);
            textBox1.TabIndex = 2;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(166, 73);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(200, 27);
            textBox2.TabIndex = 3;
            // 
            // txtProfName
            // 
            txtProfName.AutoSize = true;
            txtProfName.BackColor = SystemColors.GradientActiveCaption;
            txtProfName.BorderStyle = BorderStyle.Fixed3D;
            txtProfName.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtProfName.ForeColor = SystemColors.ActiveCaptionText;
            txtProfName.Location = new Point(407, 33);
            txtProfName.Name = "txtProfName";
            txtProfName.Size = new Size(160, 25);
            txtProfName.TabIndex = 4;
            txtProfName.Text = "Professional Name";
            txtProfName.Click += label3_Click;
            // 
            // txtProfID
            // 
            txtProfID.AutoSize = true;
            txtProfID.BackColor = SystemColors.GradientActiveCaption;
            txtProfID.BorderStyle = BorderStyle.Fixed3D;
            txtProfID.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtProfID.ForeColor = SystemColors.Desktop;
            txtProfID.Location = new Point(407, 73);
            txtProfID.Name = "txtProfID";
            txtProfID.Size = new Size(131, 25);
            txtProfID.TabIndex = 5;
            txtProfID.Text = "Professional ID";
            // 
            // textBox3
            // 
            textBox3.Location = new Point(573, 34);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(200, 27);
            textBox3.TabIndex = 6;
            // 
            // textBox4
            // 
            textBox4.Location = new Point(573, 72);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(200, 27);
            textBox4.TabIndex = 7;
            // 
            // txtProjectTitle
            // 
            txtProjectTitle.AutoSize = true;
            txtProjectTitle.BackColor = SystemColors.GradientActiveCaption;
            txtProjectTitle.BorderStyle = BorderStyle.Fixed3D;
            txtProjectTitle.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtProjectTitle.ForeColor = SystemColors.ActiveCaptionText;
            txtProjectTitle.Location = new Point(29, 115);
            txtProjectTitle.Name = "txtProjectTitle";
            txtProjectTitle.Size = new Size(109, 25);
            txtProjectTitle.TabIndex = 8;
            txtProjectTitle.Text = "Project Title";
            txtProjectTitle.Click += label5_Click;
            // 
            // txtStudioID
            // 
            txtStudioID.AutoSize = true;
            txtStudioID.BackColor = SystemColors.GradientActiveCaption;
            txtStudioID.BorderStyle = BorderStyle.Fixed3D;
            txtStudioID.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            txtStudioID.ForeColor = SystemColors.ActiveCaptionText;
            txtStudioID.Location = new Point(407, 115);
            txtStudioID.Name = "txtStudioID";
            txtStudioID.Size = new Size(88, 25);
            txtStudioID.TabIndex = 9;
            txtStudioID.Text = "Studio ID";
            // 
            // textBox5
            // 
            textBox5.Location = new Point(166, 115);
            textBox5.Name = "textBox5";
            textBox5.Size = new Size(200, 27);
            textBox5.TabIndex = 10;
            // 
            // textBox6
            // 
            textBox6.Location = new Point(573, 115);
            textBox6.Name = "textBox6";
            textBox6.Size = new Size(200, 27);
            textBox6.TabIndex = 11;
            // 
            // btnAddClient
            // 
            btnAddClient.BackColor = Color.Gainsboro;
            btnAddClient.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnAddClient.Location = new Point(29, 165);
            btnAddClient.Name = "btnAddClient";
            btnAddClient.Size = new Size(133, 29);
            btnAddClient.TabIndex = 12;
            btnAddClient.Text = "Add New Client ";
            btnAddClient.UseVisualStyleBackColor = false;
            btnAddClient.Click += btnAddClient_Click;
            // 
            // btnAddProf
            // 
            btnAddProf.BackColor = Color.Gainsboro;
            btnAddProf.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnAddProf.Location = new Point(407, 165);
            btnAddProf.Name = "btnAddProf";
            btnAddProf.Size = new Size(186, 29);
            btnAddProf.TabIndex = 13;
            btnAddProf.Text = "Add New Professional";
            btnAddProf.UseVisualStyleBackColor = false;
            btnAddProf.Click += btnAddProf_Click;
            // 
            // btnDeleteClient
            // 
            btnDeleteClient.BackColor = Color.Gainsboro;
            btnDeleteClient.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnDeleteClient.Location = new Point(29, 200);
            btnDeleteClient.Name = "btnDeleteClient";
            btnDeleteClient.Size = new Size(133, 29);
            btnDeleteClient.TabIndex = 14;
            btnDeleteClient.Text = "Delete Client ";
            btnDeleteClient.UseVisualStyleBackColor = false;
            btnDeleteClient.Click += btnDeleteClient_Click;
            // 
            // btnDeleteProf
            // 
            btnDeleteProf.BackColor = Color.Gainsboro;
            btnDeleteProf.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnDeleteProf.Location = new Point(407, 200);
            btnDeleteProf.Name = "btnDeleteProf";
            btnDeleteProf.Size = new Size(173, 29);
            btnDeleteProf.TabIndex = 15;
            btnDeleteProf.Text = "Delete Professional";
            btnDeleteProf.UseVisualStyleBackColor = false;
            btnDeleteProf.Click += btnDeleteProf_Click;
            // 
            // btnUpdateProject
            // 
            btnUpdateProject.BackColor = Color.Gainsboro;
            btnUpdateProject.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnUpdateProject.Location = new Point(29, 235);
            btnUpdateProject.Name = "btnUpdateProject";
            btnUpdateProject.Size = new Size(133, 29);
            btnUpdateProject.TabIndex = 16;
            btnUpdateProject.Text = "Update Project";
            btnUpdateProject.UseVisualStyleBackColor = false;
            btnUpdateProject.Click += btnUpdateProject_Click;
            // 
            // btnUpdateStudio
            // 
            btnUpdateStudio.BackColor = Color.Gainsboro;
            btnUpdateStudio.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnUpdateStudio.Location = new Point(407, 235);
            btnUpdateStudio.Name = "btnUpdateStudio";
            btnUpdateStudio.Size = new Size(133, 29);
            btnUpdateStudio.TabIndex = 17;
            btnUpdateStudio.Text = "Update Studio";
            btnUpdateStudio.UseVisualStyleBackColor = false;
            btnUpdateStudio.Click += btnUpdateStudio_Click;
            // 
            // btnViewProductions
            // 
            btnViewProductions.BackColor = Color.Gainsboro;
            btnViewProductions.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnViewProductions.Location = new Point(29, 270);
            btnViewProductions.Name = "btnViewProductions";
            btnViewProductions.Size = new Size(171, 29);
            btnViewProductions.TabIndex = 18;
            btnViewProductions.Text = "View Productions";
            btnViewProductions.UseVisualStyleBackColor = false;
            btnViewProductions.Click += btnViewProductions_Click;
            // 
            // btnSchedule
            // 
            btnSchedule.BackColor = Color.Gainsboro;
            btnSchedule.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnSchedule.Location = new Point(407, 270);
            btnSchedule.Name = "btnSchedule";
            btnSchedule.Size = new Size(171, 29);
            btnSchedule.TabIndex = 19;
            btnSchedule.Text = "Production Schedule";
            btnSchedule.UseVisualStyleBackColor = false;
            btnSchedule.Click += btnSchedule_Click;
            // 
            // btnSkill
            // 
            btnSkill.BackColor = Color.Gainsboro;
            btnSkill.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnSkill.Location = new Point(29, 332);
            btnSkill.Name = "btnSkill";
            btnSkill.Size = new Size(171, 29);
            btnSkill.TabIndex = 20;
            btnSkill.Text = "Most Demanded Skill";
            btnSkill.UseVisualStyleBackColor = false;
            btnSkill.Click += btnSkill_Click;
            // 
            // btnInactive
            // 
            btnInactive.BackColor = Color.Gainsboro;
            btnInactive.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnInactive.Location = new Point(409, 332);
            btnInactive.Name = "btnInactive";
            btnInactive.Size = new Size(171, 29);
            btnInactive.TabIndex = 21;
            btnInactive.Text = "Inactive Projects ";
            btnInactive.UseVisualStyleBackColor = false;
            btnInactive.Click += btnInactive_Click;
            // 
            // btnTopEquip
            // 
            btnTopEquip.BackColor = Color.Gainsboro;
            btnTopEquip.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnTopEquip.Location = new Point(29, 367);
            btnTopEquip.Name = "btnTopEquip";
            btnTopEquip.Size = new Size(182, 29);
            btnTopEquip.TabIndex = 22;
            btnTopEquip.Text = "Top Equipment Handler";
            btnTopEquip.UseVisualStyleBackColor = false;
            btnTopEquip.Click += btnTopEquip_Click;
            // 
            // btnIdleStudios
            // 
            btnIdleStudios.BackColor = Color.Gainsboro;
            btnIdleStudios.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnIdleStudios.Location = new Point(407, 367);
            btnIdleStudios.Name = "btnIdleStudios";
            btnIdleStudios.Size = new Size(171, 29);
            btnIdleStudios.TabIndex = 23;
            btnIdleStudios.Text = "Idle Studios";
            btnIdleStudios.UseVisualStyleBackColor = false;
            btnIdleStudios.Click += btnIdleStudios_Click;
            // 
            // btnEquipReport
            // 
            btnEquipReport.BackColor = Color.Gainsboro;
            btnEquipReport.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnEquipReport.Location = new Point(29, 402);
            btnEquipReport.Name = "btnEquipReport";
            btnEquipReport.Size = new Size(208, 29);
            btnEquipReport.TabIndex = 24;
            btnEquipReport.Text = "Project Equipment Report";
            btnEquipReport.UseVisualStyleBackColor = false;
            btnEquipReport.Click += btnEquipReport_Click;
            // 
            // btnPortfolio
            // 
            btnPortfolio.BackColor = Color.Gainsboro;
            btnPortfolio.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnPortfolio.Location = new Point(409, 402);
            btnPortfolio.Name = "btnPortfolio";
            btnPortfolio.Size = new Size(191, 29);
            btnPortfolio.TabIndex = 25;
            btnPortfolio.Text = "Professional Portfolio";
            btnPortfolio.UseVisualStyleBackColor = false;
            btnPortfolio.Click += btnPortfolio_Click;
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(4, 437);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 51;
            dataGridView1.Size = new Size(803, 236);
            dataGridView1.TabIndex = 26;
            dataGridView1.CellContentClick += dataGridView1_CellContentClick;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(810, 675);
            Controls.Add(dataGridView1);
            Controls.Add(btnPortfolio);
            Controls.Add(btnEquipReport);
            Controls.Add(btnIdleStudios);
            Controls.Add(btnTopEquip);
            Controls.Add(btnInactive);
            Controls.Add(btnSkill);
            Controls.Add(btnSchedule);
            Controls.Add(btnViewProductions);
            Controls.Add(btnUpdateStudio);
            Controls.Add(btnUpdateProject);
            Controls.Add(btnDeleteProf);
            Controls.Add(btnDeleteClient);
            Controls.Add(btnAddProf);
            Controls.Add(btnAddClient);
            Controls.Add(textBox6);
            Controls.Add(textBox5);
            Controls.Add(txtStudioID);
            Controls.Add(txtProjectTitle);
            Controls.Add(textBox4);
            Controls.Add(textBox3);
            Controls.Add(txtProfID);
            Controls.Add(txtProfName);
            Controls.Add(textBox2);
            Controls.Add(textBox1);
            Controls.Add(txtClientName);
            Controls.Add(txtClientID);
            Name = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label txtClientID;
        private Label txtClientName;
        private TextBox textBox1;
        private TextBox textBox2;
        private Label txtProfName;
        private Label txtProfID;
        private TextBox textBox3;
        private TextBox textBox4;
        private Label txtProjectTitle;
        private Label txtStudioID;
        private TextBox textBox5;
        private TextBox textBox6;
        private Button btnAddClient;
        private Button btnAddProf;
        private Button btnDeleteClient;
        private Button btnDeleteProf;
        private Button btnUpdateProject;
        private Button btnUpdateStudio;
        private Button btnViewProductions;
        private Button btnSchedule;
        private Button btnSkill;
        private Button btnInactive;
        private Button btnTopEquip;
        private Button btnIdleStudios;
        private Button btnEquipReport;
        private Button btnPortfolio;
        private DataGridView dataGridView1;
    }
}
