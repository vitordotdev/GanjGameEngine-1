using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace GGE_EDITOR
{
    /// <summary>
    /// Lógica interna para GanjGameEnginePathDialog.xaml
    /// </summary>
    public partial class GanjGameEnginePathDialog : Window
    {
        public string GGEPath { get; private set; }

        public GanjGameEnginePathDialog()
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;
        }

        private void OnOk_Button_Click(object sender, RoutedEventArgs e)
        {
            var path = pathTextBox.Text.Trim();
            messageTextBlock.Text = string.Empty;

            if (string.IsNullOrEmpty(path))
            {
                messageTextBlock.Text = "Invalid path!";
            }
            else if (path.IndexOfAny(Path.GetInvalidPathChars()) != -1)
            {
                messageTextBlock.Text = "Invalid character(s) used in path.";
            }
            else if (!Directory.Exists(Path.Combine(path, @"GanjGameEngine\EngineAPI\")))
            {
                messageTextBlock.Text = "Unable to find the engine at the specified location!";
            }

            if (string.IsNullOrEmpty(messageTextBlock.Text))
            {
                if (!Path.EndsInDirectorySeparator(path)) path += @"\";
                GGEPath = path;
                DialogResult = true;
                Close();
            }
        }
    }
}
