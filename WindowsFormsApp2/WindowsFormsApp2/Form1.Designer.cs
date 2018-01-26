namespace WindowsFormsApp2
{
	partial class Form1
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
			this.inputBox = new System.Windows.Forms.TextBox();
			this.outputBox = new System.Windows.Forms.TextBox();
			this.panel1 = new System.Windows.Forms.Panel();
			this.GObutton = new System.Windows.Forms.Button();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.panel1.SuspendLayout();
			this.SuspendLayout();
			// 
			// inputBox
			// 
			this.inputBox.Location = new System.Drawing.Point(6, 23);
			this.inputBox.Name = "inputBox";
			this.inputBox.Size = new System.Drawing.Size(285, 20);
			this.inputBox.TabIndex = 0;
			this.inputBox.Text = "C:\\Users\\Juan\\Desktop\\ExcelChingon\\ElmoToilet.jpg";
			// 
			// outputBox
			// 
			this.outputBox.Location = new System.Drawing.Point(6, 76);
			this.outputBox.Name = "outputBox";
			this.outputBox.Size = new System.Drawing.Size(285, 20);
			this.outputBox.TabIndex = 1;
			this.outputBox.Text = "C:\\Users\\Juan\\Desktop\\ExcelChingon\\ElmoToilet.csv";
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.GObutton);
			this.panel1.Controls.Add(this.label2);
			this.panel1.Controls.Add(this.label1);
			this.panel1.Controls.Add(this.inputBox);
			this.panel1.Controls.Add(this.outputBox);
			this.panel1.Location = new System.Drawing.Point(12, 12);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(294, 162);
			this.panel1.TabIndex = 2;
			// 
			// GObutton
			// 
			this.GObutton.Font = new System.Drawing.Font("Calibri", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.GObutton.Location = new System.Drawing.Point(88, 107);
			this.GObutton.Name = "GObutton";
			this.GObutton.Size = new System.Drawing.Size(75, 42);
			this.GObutton.TabIndex = 4;
			this.GObutton.Text = "GO";
			this.GObutton.UseVisualStyleBackColor = true;
			this.GObutton.Click += new System.EventHandler(this.GObutton_Click);
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(3, 60);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(58, 13);
			this.label2.TabIndex = 3;
			this.label2.Text = "Output File";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(3, 7);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(50, 13);
			this.label1.TabIndex = 2;
			this.label1.Text = "Input File";
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(318, 187);
			this.Controls.Add(this.panel1);
			this.Name = "Form1";
			this.Text = "Form1";
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.TextBox inputBox;
		private System.Windows.Forms.TextBox outputBox;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button GObutton;
		private System.Windows.Forms.Label label2;
	}
}

