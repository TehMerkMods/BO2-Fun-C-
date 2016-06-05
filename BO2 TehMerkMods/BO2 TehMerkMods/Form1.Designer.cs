namespace BO2_TehMerkMods
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
            this.components = new System.ComponentModel.Container();
            this.formSkin1 = new theme.FormSkin();
            this.flatCheckBox2 = new theme.FlatCheckBox();
            this.nameBox = new theme.FlatTextBox();
            this.flatCheckBox1 = new theme.FlatCheckBox();
            this.flatTextBox1 = new theme.FlatTextBox();
            this.flatButton2 = new theme.FlatButton();
            this.flatButton1 = new theme.FlatButton();
            this.radioButton2 = new theme.RadioButton();
            this.radioButton1 = new theme.RadioButton();
            this.flatStatusBar1 = new theme.FlatStatusBar();
            this.sForceHost = new System.Windows.Forms.Timer(this.components);
            this.Name = new System.Windows.Forms.Timer(this.components);
            this.flatClose1 = new theme.FlatClose();
            this.formSkin1.SuspendLayout();
            this.SuspendLayout();
            // 
            // formSkin1
            // 
            this.formSkin1.BackColor = System.Drawing.Color.White;
            this.formSkin1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(70)))), ((int)(((byte)(73)))));
            this.formSkin1.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(53)))), ((int)(((byte)(58)))), ((int)(((byte)(60)))));
            this.formSkin1.Controls.Add(this.flatClose1);
            this.formSkin1.Controls.Add(this.flatCheckBox2);
            this.formSkin1.Controls.Add(this.nameBox);
            this.formSkin1.Controls.Add(this.flatCheckBox1);
            this.formSkin1.Controls.Add(this.flatTextBox1);
            this.formSkin1.Controls.Add(this.flatButton2);
            this.formSkin1.Controls.Add(this.flatButton1);
            this.formSkin1.Controls.Add(this.radioButton2);
            this.formSkin1.Controls.Add(this.radioButton1);
            this.formSkin1.Controls.Add(this.flatStatusBar1);
            this.formSkin1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.formSkin1.FlatColor = System.Drawing.Color.Purple;
            this.formSkin1.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.formSkin1.HeaderColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.formSkin1.HeaderMaximize = false;
            this.formSkin1.Location = new System.Drawing.Point(0, 0);
            this.formSkin1.Name = "formSkin1";
            this.formSkin1.Size = new System.Drawing.Size(259, 312);
            this.formSkin1.TabIndex = 0;
            this.formSkin1.Text = "TehMerkMods BO2 Fun";
            // 
            // flatCheckBox2
            // 
            this.flatCheckBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(70)))), ((int)(((byte)(73)))));
            this.flatCheckBox2.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.flatCheckBox2.BorderColor = System.Drawing.Color.Purple;
            this.flatCheckBox2.Checked = false;
            this.flatCheckBox2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.flatCheckBox2.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.flatCheckBox2.Location = new System.Drawing.Point(152, 190);
            this.flatCheckBox2.Name = "flatCheckBox2";
            this.flatCheckBox2.Options = theme.FlatCheckBox._Options.Style1;
            this.flatCheckBox2.Size = new System.Drawing.Size(91, 22);
            this.flatCheckBox2.TabIndex = 8;
            this.flatCheckBox2.Text = "Flash Name";
            this.flatCheckBox2.CheckedChanged += new theme.FlatCheckBox.CheckedChangedEventHandler(this.flatCheckBox2_CheckedChanged);
            // 
            // nameBox
            // 
            this.nameBox.BackColor = System.Drawing.Color.Transparent;
            this.nameBox.Location = new System.Drawing.Point(12, 218);
            this.nameBox.MaxLength = 32767;
            this.nameBox.Multiline = false;
            this.nameBox.Name = "nameBox";
            this.nameBox.ReadOnly = false;
            this.nameBox.Size = new System.Drawing.Size(231, 29);
            this.nameBox.TabIndex = 7;
            this.nameBox.Text = "Custom Name";
            this.nameBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.nameBox.TextColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.nameBox.UseSystemPasswordChar = false;
            // 
            // flatCheckBox1
            // 
            this.flatCheckBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(70)))), ((int)(((byte)(73)))));
            this.flatCheckBox1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.flatCheckBox1.BorderColor = System.Drawing.Color.Purple;
            this.flatCheckBox1.Checked = false;
            this.flatCheckBox1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.flatCheckBox1.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.flatCheckBox1.Location = new System.Drawing.Point(12, 190);
            this.flatCheckBox1.Name = "flatCheckBox1";
            this.flatCheckBox1.Options = theme.FlatCheckBox._Options.Style1;
            this.flatCheckBox1.Size = new System.Drawing.Size(91, 22);
            this.flatCheckBox1.TabIndex = 6;
            this.flatCheckBox1.Text = "Force Host";
            this.flatCheckBox1.CheckedChanged += new theme.FlatCheckBox.CheckedChangedEventHandler(this.flatCheckBox1_CheckedChanged);
            // 
            // flatTextBox1
            // 
            this.flatTextBox1.BackColor = System.Drawing.Color.Transparent;
            this.flatTextBox1.Location = new System.Drawing.Point(12, 253);
            this.flatTextBox1.MaxLength = 32767;
            this.flatTextBox1.Multiline = false;
            this.flatTextBox1.Name = "flatTextBox1";
            this.flatTextBox1.ReadOnly = false;
            this.flatTextBox1.Size = new System.Drawing.Size(231, 29);
            this.flatTextBox1.TabIndex = 5;
            this.flatTextBox1.Text = "Custom Text";
            this.flatTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Left;
            this.flatTextBox1.TextColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.flatTextBox1.UseSystemPasswordChar = false;
            // 
            // flatButton2
            // 
            this.flatButton2.BackColor = System.Drawing.Color.Transparent;
            this.flatButton2.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.flatButton2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.flatButton2.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.flatButton2.Location = new System.Drawing.Point(12, 152);
            this.flatButton2.Name = "flatButton2";
            this.flatButton2.Rounded = false;
            this.flatButton2.Size = new System.Drawing.Size(231, 32);
            this.flatButton2.TabIndex = 4;
            this.flatButton2.Text = "Attach";
            this.flatButton2.TextColor = System.Drawing.Color.FromArgb(((int)(((byte)(243)))), ((int)(((byte)(243)))), ((int)(((byte)(243)))));
            this.flatButton2.Click += new System.EventHandler(this.flatButton2_Click);
            // 
            // flatButton1
            // 
            this.flatButton1.BackColor = System.Drawing.Color.Transparent;
            this.flatButton1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.flatButton1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.flatButton1.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.flatButton1.Location = new System.Drawing.Point(12, 114);
            this.flatButton1.Name = "flatButton1";
            this.flatButton1.Rounded = false;
            this.flatButton1.Size = new System.Drawing.Size(231, 32);
            this.flatButton1.TabIndex = 3;
            this.flatButton1.Text = "Connect";
            this.flatButton1.TextColor = System.Drawing.Color.FromArgb(((int)(((byte)(243)))), ((int)(((byte)(243)))), ((int)(((byte)(243)))));
            this.flatButton1.Click += new System.EventHandler(this.flatButton1_Click);
            // 
            // radioButton2
            // 
            this.radioButton2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(70)))), ((int)(((byte)(73)))));
            this.radioButton2.Checked = false;
            this.radioButton2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioButton2.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.radioButton2.Location = new System.Drawing.Point(65, 86);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Options = theme.RadioButton._Options.Style2;
            this.radioButton2.Size = new System.Drawing.Size(129, 22);
            this.radioButton2.TabIndex = 2;
            this.radioButton2.Text = "Control Console";
            this.radioButton2.CheckedChanged += new theme.RadioButton.CheckedChangedEventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(60)))), ((int)(((byte)(70)))), ((int)(((byte)(73)))));
            this.radioButton1.Checked = false;
            this.radioButton1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.radioButton1.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.radioButton1.Location = new System.Drawing.Point(65, 58);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Options = theme.RadioButton._Options.Style2;
            this.radioButton1.Size = new System.Drawing.Size(129, 22);
            this.radioButton1.TabIndex = 1;
            this.radioButton1.Text = "Target Manager";
            this.radioButton1.CheckedChanged += new theme.RadioButton.CheckedChangedEventHandler(this.radioButton1_CheckedChanged);
            // 
            // flatStatusBar1
            // 
            this.flatStatusBar1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(47)))), ((int)(((byte)(49)))));
            this.flatStatusBar1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.flatStatusBar1.Font = new System.Drawing.Font("Segoe UI", 8F);
            this.flatStatusBar1.ForeColor = System.Drawing.Color.White;
            this.flatStatusBar1.Location = new System.Drawing.Point(0, 289);
            this.flatStatusBar1.Name = "flatStatusBar1";
            this.flatStatusBar1.RectColor = System.Drawing.Color.Purple;
            this.flatStatusBar1.ShowTimeDate = false;
            this.flatStatusBar1.Size = new System.Drawing.Size(259, 23);
            this.flatStatusBar1.TabIndex = 0;
            this.flatStatusBar1.Text = "Welcome";
            this.flatStatusBar1.TextColor = System.Drawing.Color.White;
            // 
            // sForceHost
            // 
            this.sForceHost.Tick += new System.EventHandler(this.sForceHost_Tick);
            // 
            // Name
            // 
            this.Name.Tick += new System.EventHandler(this.Name_Tick);
            // 
            // flatClose1
            // 
            this.flatClose1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.flatClose1.BackColor = System.Drawing.Color.White;
            this.flatClose1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(168)))), ((int)(((byte)(35)))), ((int)(((byte)(35)))));
            this.flatClose1.Font = new System.Drawing.Font("Marlett", 10F);
            this.flatClose1.Location = new System.Drawing.Point(241, 0);
            this.flatClose1.Name = "flatClose1";
            this.flatClose1.Size = new System.Drawing.Size(18, 18);
            this.flatClose1.TabIndex = 9;
            this.flatClose1.Text = "flatClose1";
            this.flatClose1.TextColor = System.Drawing.Color.FromArgb(((int)(((byte)(243)))), ((int)(((byte)(243)))), ((int)(((byte)(243)))));
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(259, 312);
            this.Controls.Add(this.formSkin1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.TransparencyKey = System.Drawing.Color.Fuchsia;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.formSkin1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private theme.FormSkin formSkin1;
        private theme.FlatStatusBar flatStatusBar1;
        private theme.RadioButton radioButton2;
        private theme.RadioButton radioButton1;
        private theme.FlatTextBox flatTextBox1;
        private theme.FlatButton flatButton2;
        private theme.FlatButton flatButton1;
        private theme.FlatCheckBox flatCheckBox1;
        private System.Windows.Forms.Timer sForceHost;
        private theme.FlatCheckBox flatCheckBox2;
        private theme.FlatTextBox nameBox;
        private System.Windows.Forms.Timer Name;
        private theme.FlatClose flatClose1;
    }
}

