namespace Job_Recommendation
{
    partial class Form5
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
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnsignupkarfarma = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnsigninkarfarma = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(319, 160);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(125, 27);
            this.textBox2.TabIndex = 11;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(494, 163);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 20);
            this.label2.TabIndex = 10;
            this.label2.Text = "رمز عبور";
            // 
            // btnsignupkarfarma
            // 
            this.btnsignupkarfarma.Location = new System.Drawing.Point(235, 250);
            this.btnsignupkarfarma.Name = "btnsignupkarfarma";
            this.btnsignupkarfarma.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.btnsignupkarfarma.Size = new System.Drawing.Size(240, 29);
            this.btnsignupkarfarma.TabIndex = 9;
            this.btnsignupkarfarma.Text = "اکانت نداری؟ ثبت‌نام کن!";
            this.btnsignupkarfarma.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(319, 114);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(125, 27);
            this.textBox1.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(485, 114);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 20);
            this.label1.TabIndex = 7;
            this.label1.Text = "شماره تلفن";
            // 
            // btnsigninkarfarma
            // 
            this.btnsigninkarfarma.Location = new System.Drawing.Point(381, 215);
            this.btnsigninkarfarma.Name = "btnsigninkarfarma";
            this.btnsigninkarfarma.Size = new System.Drawing.Size(94, 29);
            this.btnsigninkarfarma.TabIndex = 6;
            this.btnsigninkarfarma.Text = "ورود";
            this.btnsigninkarfarma.UseVisualStyleBackColor = true;
            this.btnsigninkarfarma.Click += new System.EventHandler(this.btnsigninkarfarma_Click);
            // 
            // Form5
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnsignupkarfarma);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnsigninkarfarma);
            this.Name = "Form5";
            this.Text = "Form5";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox textBox2;
        private Label label2;
        private Button btnsignupkarfarma;
        private TextBox textBox1;
        private Label label1;
        private Button btnsigninkarfarma;
    }
}