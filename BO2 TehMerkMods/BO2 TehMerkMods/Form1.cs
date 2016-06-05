using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PS3Lib;
using System.Windows.Forms;

namespace BO2_TehMerkMods
{
    public partial class Form1 : Form
    {
        private PS3API PS3 = new PS3API();
        private string BO2;
        private byte[] Merk;
        private string storedName = "";
        public Form1()
        {
            InitializeComponent();
        }

        private void flatButton2_Click(object sender, EventArgs e)
        {
            string API = PS3.GetCurrentAPIName();
            string Check = flatTextBox1.Text;
            if (PS3.AttachProcess())
            {
                int MsgC = (int)MessageBox.Show("Black Ops 2 Has been attached", "Success", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                if (API == "Control Console")
                {
                    PS3.CCAPI.RingBuzzer(CCAPI.BuzzerMode.Double);
                    PS3.CCAPI.Notify(CCAPI.NotifyIcon.INFO, "Thanks For Using My Tool <3");
                }
                flatStatusBar1.Text = "Welcome To The Tool - " + PS3.Extension.ReadString(0x26c067f);
                nameBox.Text = PS3.Extension.ReadString(0x26c067f);
                storedName = nameBox.Text;
                PS3.SetMemory(0x8E3590, new byte[] { 0x94, 50, 0, 0, 0, 0, 0, 32, 32, 32, 32, 32, 32 });
                PS3.SetMemory(0x37FEC, new byte[] { 0x60, 0x00, 0x00, 0x00 });
                if (Check == "Custom Text")
                {
                    WriteFPS("TehMerkMods Menu");
                }
                else
                {
                    WriteFPS(Check);
                }
                CallInjector();
            }
            else
            {
                int MsgE = (int)MessageBox.Show("No Game Process Found", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
        }

        private void WriteFPS(string text)
        {
            PS3.Extension.WriteString(0x8E3290, text);
        }

        private void flatButton1_Click(object sender, EventArgs e)
        {
            try
            {
                if (PS3.ConnectTarget(0))
                {
                    int MsgC = (int)MessageBox.Show("PS3 Has Been Connected", "Success", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                }
                else
                {
                    int MsgE = (int)MessageBox.Show("No Ps3 Can Be Connected Try Again...", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                }
            }
            catch (Exception ex)
            {
                int MsgE = (int)MessageBox.Show("No Ps3 Can Be Connected Try Again...", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            flatStatusBar1.Text = "Welcome To The Tool - " + System.Environment.UserName;
        }

        private void radioButton1_CheckedChanged(object sender)
        {
            PS3.ChangeAPI(SelectAPI.TargetManager);
        }

        private void radioButton2_CheckedChanged(object sender)
        {
            PS3.ChangeAPI(SelectAPI.ControlConsole);
        }

        private void flatCheckBox1_CheckedChanged(object sender)
        {
            if (flatCheckBox1.Checked)
            {
                sForceHost.Start();
            }
            else
            {
                sForceHost.Stop();
                PS3.SetMemory(0x01cd649b, new byte[] { 0x2d });
                PS3.SetMemory(0x01cd6018, new byte[] { 0x01 });
                PS3.SetMemory(0x01cd5b3b, new byte[] { 0x0a });
                PS3.SetMemory(0x01cd5a1b, new byte[] { 0x06 });
            }
        }

        private void sForceHost_Tick(object sender, EventArgs e)
        {
            PS3.SetMemory(0x01cd649b, new byte[] { 0x01 });
            PS3.SetMemory(0x01cd6018, new byte[] { 0x00 });
            PS3.SetMemory(0x01cd5b3b, new byte[] { 0x01 });
            PS3.SetMemory(0x01cd5a1b, new byte[] { 0x01 });
            sForceHost.Start();
        }
        private void SetName(string Text)
        {
            byte[] name = Encoding.ASCII.GetBytes(Text);
            Array.Resize(ref name, name.Length + 1);
            PS3.SetMemory(0x026C0658, name);
        }

        private void flatCheckBox2_CheckedChanged(object sender)
        {
            if (flatCheckBox2.Checked)
            {
                Name.Start();
            }
            else
            {
                Name.Stop();
                SetName(storedName);
                nameBox.Text = storedName;
            }
        }

        private void Name_Tick(object sender, EventArgs e)
        {
            BO2 = this.nameBox.Text;
            PS3.SetMemory(0x026C0658, Encoding.ASCII.GetBytes("^" + (object)new Random().Next(0, 9).ToString() + (string)(object)Merk + nameBox.Text + "\0"));
            BO2 = this.nameBox.Text;
            PS3.SetMemory(0x026C0658, Encoding.ASCII.GetBytes("^" + (object)new Random().Next(0, 9).ToString() + (string)(object)Merk + nameBox.Text + "\0"));
            BO2 = this.nameBox.Text;
            PS3.SetMemory(0x026C0658, Encoding.ASCII.GetBytes("^" + (object)new Random().Next(0, 9).ToString() + (string)(object)Merk + nameBox.Text + "\0"));
            BO2 = this.nameBox.Text;
            PS3.SetMemory(0x026C0658, Encoding.ASCII.GetBytes("^" + (object)new Random().Next(0, 9).ToString() + (string)(object)Merk + nameBox.Text + "\0"));
            BO2 = this.nameBox.Text;
            PS3.SetMemory(0x026C0658, Encoding.ASCII.GetBytes("^" + (object)new Random().Next(0, 9).ToString() + (string)(object)Merk + nameBox.Text + "\0"));
        }
        private void CallInjector()
        {
            PS3.SetMemory(0x140C2D0, new byte[] { 0x10, 0x04, 0x00, 0x00 });
            PS3.SetMemory(0x10040000, Properties.Resources._development_dvars);
        }
    }
}
