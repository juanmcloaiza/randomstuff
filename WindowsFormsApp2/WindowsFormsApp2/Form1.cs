using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();
		}

		private void GObutton_Click(object sender, EventArgs e)
		{
			Bitmap image = null;
			double[,] IntArr = null;
			try
			{
				image = loadImage(inputBox.Text);
			}
			catch
			{
				MessageBox.Show("Error loading image from input file", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return;
			}

			try
			{
				IntArr = ImageToArray(image);
			}
			catch
			{
				MessageBox.Show("Error converting image to array", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return;
			}

			try
			{
				writeArrayToCsv(IntArr);
			}
			catch
			{
				MessageBox.Show("Error writing output file", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
				return;
			}

			DialogResult result = MessageBox.Show("Go to Output Folder?", "Finished", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
			if (result == DialogResult.Yes)
				OpenExplorer(outputBox.Text);
		}

		private void OpenExplorer(string path)
		{
			if (File.Exists(path))
			{
				var argument = "/select, \"" + path + "\"";
				Process.Start("explorer.exe", argument);
			}
			else
			{
				MessageBox.Show("File " + path + " not found.", "File not found", MessageBoxButtons.OK, MessageBoxIcon.Warning);
			}
		}

		private void writeArrayToCsv(double [,] arr)
		{
			using (StreamWriter sW = new StreamWriter(outputBox.Text))
			{
				List<string> line = new List<string>();
				for (int i = 0; i < arr.GetLength(0); i++)
				{
					for (int j = 0; j < arr.GetLength(1); j++)
					{
						line.Add(arr[i, j].ToString());
					}
					sW.WriteLine(string.Join(";",line));
					line.Clear();
				}
			}
		}

		private Bitmap loadImage(string path)
		{
			if (path == null || path.Equals("") || !File.Exists(path))
			{
				return null;
			}
			else
			{
				byte[] fileBytes = File.ReadAllBytes(path);
				MemoryStream imageStream = new MemoryStream(fileBytes);
				Image imageImage = Image.FromStream(imageStream);
				int heigth = imageImage.Height;
				int width = imageImage.Width;
				Bitmap b = new Bitmap(imageImage);
				return b;
			}
		}

		private double[,] ImageToArray(Bitmap image)
		{

			Bitmap bitmap_data = image; //.LockBits(new Rectangle(0, 0, _foto_franjas_original.Width, _foto_franjas_original.Height),
												//ImageLockMode.ReadOnly, _foto_franjas_original.PixelFormat);

			int nbytes = bitmap_data.Height * bitmap_data.Width;
			byte[] imageBytes = new byte[nbytes];

			using (MemoryStream imageStream = new MemoryStream())
			{
				// Save bitmap in some format.
				image.Save(imageStream, System.Drawing.Imaging.ImageFormat.Bmp);
				imageStream.Position = 0;

				// Do something with the memory stream. For example:
				imageBytes = imageStream.ToArray();
				// Save bytes to the database.
			}


			double red;
			double green;
			double blue;
			double gray;

			var grayscale_array = new Double[bitmap_data.Height, bitmap_data.Width];
			int pixelsize = Image.GetPixelFormatSize(bitmap_data.PixelFormat) / 8;



			for (int I = 0; I < bitmap_data.Height; I++)
				{
					for (int J = 0; J < bitmap_data.Width; J++)
					{
						int position = pixelsize * 13 + (I * bitmap_data.Width * pixelsize) + (J * pixelsize);
						blue = imageBytes[position+1];
					    green = imageBytes[position + 2];
					    red = imageBytes[position + 3];
						gray = 0.299 * red + 0.587 * green + 0.114 * blue;
						int Ireversed = bitmap_data.Height - I - 1;
						grayscale_array[Ireversed, J] = gray;
					}
				}

			return grayscale_array;
		}

	}
}
