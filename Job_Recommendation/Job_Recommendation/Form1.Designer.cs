namespace Job_Recommendation
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
            this.btn_karjo = new System.Windows.Forms.Button();
            this.btn_karfarma = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_karjo
            // 
            this.btn_karjo.Location = new System.Drawing.Point(307, 153);
            this.btn_karjo.Name = "btn_karjo";
            this.btn_karjo.Size = new System.Drawing.Size(181, 29);
            this.btn_karjo.TabIndex = 0;
            this.btn_karjo.Text = "ورود کارجویان";
            this.btn_karjo.UseVisualStyleBackColor = true;
            this.btn_karjo.Click += new System.EventHandler(this.button1_Click);
            // 
            // btn_karfarma
            // 
            this.btn_karfarma.Location = new System.Drawing.Point(307, 204);
            this.btn_karfarma.Name = "btn_karfarma";
            this.btn_karfarma.Size = new System.Drawing.Size(181, 29);
            this.btn_karfarma.TabIndex = 1;
            this.btn_karfarma.Text = "ورود کارفرمایان";
            this.btn_karfarma.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btn_karfarma);
            this.Controls.Add(this.btn_karjo);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private Button btn_karjo;
        private Button btn_karfarma;
    }
}