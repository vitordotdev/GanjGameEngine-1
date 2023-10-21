using GGE_EDITOR.GameProject;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GGE_EDITOR
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Loaded += OnMainWindowLoaded;
            Closing += OnMainWindowClosing;
        }

        private void OnMainWindowLoaded(object sender, RoutedEventArgs e)
        {
            Loaded -= OnMainWindowLoaded;
            OpenProjectBrowserDialog();
        }

        private void OnMainWindowClosing(object sender, CancelEventArgs e)
        {
            Closing -= OnMainWindowClosing;
            Project.Current?.Unload();
        }

        private void OpenProjectBrowserDialog()
        {
            var projectBrowser = new ProjectBrowserDialog();
            if (projectBrowser.ShowDialog() == false || projectBrowser.DataContext == null)
            {
                Application.Current.Shutdown();
            }
            else
            {
                Project.Current?.Unload();
                DataContext = projectBrowser.DataContext;
            }
        }
    }
}

/*
    ______________a__________a
_____________aaa________aaa
____________aaaaaaaaaaaaaaaa
___________aaaaaaaaaaaaaaaaaa
__________aaaaa_aaaaaaa_aaaaaa
__________aaaaaaaaaaaaaaaaaaaa
___________aaaaaaaaaaaaaaaaaa
____________aaaaaaa__aaaaaaa
_____________*.*.*.*.*.*.*.*.*.
__a_________aaaaaaaaaaaaaaaa
_aaa_______aaaaaaaaaaaaaaaaaa
_aaa______aaaaaaaaaaaaaaaaaaaa
_aaa_____aaaaaaaaaaaaaaaaaaaaaa
_aaa____aaaaaaaaaaaaaaaaaaaaaaaa
__aaa___aaaaaaaaaaaaaaaaaaaaaaaa
__aaa___aaaaaaaaaaaaaaaaaaaaaaaa
__aaa____aaaaaaaaaaaaaaaaaaaaaa
___aaa____aaaaaaaaaaaaaaaaaaaa
____aaaaaaaaaaaaaaaaaaaaaaaaaa
_____aaaaaaaaaaaaaaaaaaaaaaaaa 

----------@VDEV - VITOR FELIPE RAMOS MELLO-------------

 */