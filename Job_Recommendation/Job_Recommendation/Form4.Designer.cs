namespace Job_Recommendation
{
    partial class Form4
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
            this.btn_forsatshoghli = new System.Windows.Forms.Button();
            this.btnalaghemandi = new System.Windows.Forms.Button();
            this.btnpishnahadat = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_forsatshoghli
            // 
            this.btn_forsatshoghli.Location = new System.Drawing.Point(331, 140);
            this.btn_forsatshoghli.Name = "btn_forsatshoghli";
            this.btn_forsatshoghli.Size = new System.Drawing.Size(158, 29);
            this.btn_forsatshoghli.TabIndex = 0;
            this.btn_forsatshoghli.Text = "فرصت‌های شغلی";
            this.btn_forsatshoghli.UseVisualStyleBackColor = true;
            // 
            // btnalaghemandi
            // 
            this.btnalaghemandi.Location = new System.Drawing.Point(331, 188);
            this.btnalaghemandi.Name = "btnalaghemandi";
            this.btnalaghemandi.Size = new System.Drawing.Size(158, 29);
            this.btnalaghemandi.TabIndex = 1;
            this.btnalaghemandi.Text = "علاقه‌مندی‌ها";
            this.btnalaghemandi.UseVisualStyleBackColor = true;
            // 
            // btnpishnahadat
            // 
            this.btnpishnahadat.Location = new System.Drawing.Point(331, 236);
            this.btnpishnahadat.Name = "btnpishnahadat";
            this.btnpishnahadat.Size = new System.Drawing.Size(158, 29);
            this.btnpishnahadat.TabIndex = 2;
            this.btnpishnahadat.Text = "پیشنهادات شغلی ما برای شما";
            this.btnpishnahadat.UseVisualStyleBackColor = true;
            // 
            // Form4
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnpishnahadat);
            this.Controls.Add(this.btnalaghemandi);
            this.Controls.Add(this.btn_forsatshoghli);
            this.Name = "Form4";
            this.Text = "Form4";
            this.ResumeLayout(false);

        }

        #endregion

        private Button btn_forsatshoghli;
        private Button btnalaghemandi;
        private Button btnpishnahadat;
    }
}