using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Windows.Forms.DataVisualization.Charting;



namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            chart1.Titles.Add("pie chart");


        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        static long folderSize(DirectoryInfo folder)
        {
            long totalSizeOfDir = 0;

            // Get all files into the directory
            FileInfo[] allFiles = folder.GetFiles();

            // Loop through every file and get size of it
            foreach (FileInfo file in allFiles)
            {
                totalSizeOfDir += file.Length;
            }

            // Find all subdirectories
            DirectoryInfo[] subFolders = folder.GetDirectories();

            // Loop through every subdirectory and get size of each
            foreach (DirectoryInfo dir in subFolders)
            {
                totalSizeOfDir += folderSize(dir);
            }

            // Return the total size of folder
            return totalSizeOfDir;

        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }



        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }


        private void BrowseFolderButton_Click_1(object sender, EventArgs e)
        {



            FolderBrowserDialog folderDlg = new FolderBrowserDialog();
            folderDlg.ShowNewFolderButton = true;
            // Show the FolderBrowserDialog.  
            DialogResult result = folderDlg.ShowDialog();
            if (result == DialogResult.OK)
            {
                textBox1.Text = folderDlg.SelectedPath;
                Environment.SpecialFolder root = folderDlg.RootFolder;
            }
            long totalsize = 0;
            System.IO.DirectoryInfo dir = new DirectoryInfo(textBox1.Text);
            long totalFolderSize = folderSize(dir);

            FileSystemInfo[] filelist = dir.GetFileSystemInfos();
            FileInfo[] fileInfo;
            fileInfo = dir.GetFiles("*", SearchOption.AllDirectories);
            for (int i = 0; i < fileInfo.Length; i++)
            {
                totalsize += fileInfo[i].Length;
            }
            MessageBox.Show("dirictory size=" + totalFolderSize + "BYTES");

            string rootPath = textBox1.Text;
            string[] dirs = Directory.GetDirectories(rootPath, "*", SearchOption.TopDirectoryOnly);
            for (int i = 0; i < dirs.Length; i++)
            {
                string file = rootPath;

                chart1.Series["Series"].Points.AddXY(rootPath, i);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {


            FolderBrowserDialog folderDlg = new FolderBrowserDialog();
            folderDlg.ShowNewFolderButton = true;
            // Show the FolderBrowserDialog.  
            DialogResult result = folderDlg.ShowDialog();
            if (result == DialogResult.OK)
            {
                textBox2.Text = folderDlg.SelectedPath;
                Environment.SpecialFolder root = folderDlg.RootFolder;
            }
            long totalsize = 0;
            System.IO.DirectoryInfo dir = new DirectoryInfo(textBox2.Text);
            long totalFolderSize = folderSize(dir);

            FileSystemInfo[] filelist = dir.GetFileSystemInfos();
            FileInfo[] fileInfo;
            fileInfo = dir.GetFiles("*", SearchOption.AllDirectories);
            for (int i = 0; i < fileInfo.Length; i++)
            {
                totalFolderSize += fileInfo[i].Length;
            }
            MessageBox.Show("folder size=" + totalFolderSize + "BYTES");

            string rootPath = textBox2.Text;
            string[] dirs = Directory.GetDirectories(rootPath, "*", SearchOption.TopDirectoryOnly);

            for (int i = 0; i < dirs.Length; i++)
            {
                string fileName = Path.GetFileName(dirs[i]);
                chart1.Series["Series"].Points.AddXY(fileName, i);

            }

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            string rootPath = textBox2.Text;
            string[] dirs = Directory.GetDirectories(rootPath, "*", SearchOption.TopDirectoryOnly);

            long totalsize;
            System.IO.DirectoryInfo dir = new DirectoryInfo(textBox2.Text);
            long totalFolderSize = folderSize(dir);

            FileSystemInfo[] filelist = dir.GetFileSystemInfos();
            FileInfo[] fileInfo;
            fileInfo = dir.GetFiles("*", SearchOption.AllDirectories);
            for (int i = 0; i < fileInfo.Length; i++)
            {
                totalFolderSize += fileInfo[i].Length;
            }

            for (int i = 0; i < dirs.Length; i++)
            {
                string fileName = Path.GetFileName(dirs[i]);
                long percentage = dirs[i].Length / totalFolderSize;
                string percentagestring = percentage.ToString();
                richTextBox1.AppendText(fileName + "\n");
                richTextBox1.AppendText(percentage.ToString());
            }
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void chart1_Click_1(object sender, EventArgs e)
        {

        }
    }
}