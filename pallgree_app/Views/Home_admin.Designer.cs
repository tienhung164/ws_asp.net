﻿namespace pallgree_app.Views
{
    partial class Home_admin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(44, 28);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(213, 46);
            this.button1.TabIndex = 0;
            this.button1.Text = "Employee";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(44, 117);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(213, 46);
            this.button2.TabIndex = 1;
            this.button2.Text = "Food Category";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(44, 206);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(213, 46);
            this.button3.TabIndex = 2;
            this.button3.Text = "Food";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(44, 298);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(213, 46);
            this.button4.TabIndex = 3;
            this.button4.Text = "Table";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(44, 387);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(213, 46);
            this.button5.TabIndex = 4;
            this.button5.Text = "Discount";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(44, 478);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(213, 46);
            this.button6.TabIndex = 5;
            this.button6.Text = "Bill";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(301, 28);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 82;
            this.dataGridView1.RowTemplate.Height = 41;
            this.dataGridView1.Size = new System.Drawing.Size(933, 719);
            this.dataGridView1.TabIndex = 6;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(44, 568);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(213, 46);
            this.button7.TabIndex = 7;
            this.button7.Text = "Shop Infor";
            this.button7.UseVisualStyleBackColor = true;
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(44, 654);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(213, 46);
            this.button8.TabIndex = 8;
            this.button8.Text = "Customer";
            this.button8.UseVisualStyleBackColor = true;
            // 
            // Home_admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 32F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1246, 769);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Home_admin";
            this.Text = "Home_admin";
            this.Load += new System.EventHandler(this.Home_admin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
    }
}