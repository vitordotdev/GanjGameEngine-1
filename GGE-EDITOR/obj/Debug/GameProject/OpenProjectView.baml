   M S B A M L   `   `   `  ����E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:GGE_EDITOR.GameProjectGGE_EDITOR.GameProject  5      ,    &GGE_EDITOR.GameProject.OpenProjectView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:GGE_EDITOR.GameProject     5      $	��800��5        � DataContext  5	      (  "GGE_EDITOR.GameProject.OpenProject  5
   
   .��5      ��  �� CornerRadius$ 3��6      Editor.Window.GrayBrush3#��[  6   $	��700��6U   $��Center=�5      $
��0,20q�6*   ._�5   
   �� .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $��0,20,0,0q�6O   .+�5      �� -   5         ��Name$ projectsListBox��5   T   $	��200��6   $	��250��6&    �� SelectedIndex$ 0��5      ��5   3   �� *
Projects+��5      �� 5       �� 
TargetType" ��6      ListBoxItemStyle �� BasedOn# [ 69   .�5      -   5        5      ��5      �� 5      .R�5      �� $	��190��6)   .+�5   "   �� $ 
Horizontal=�6-   .+�5   &   �� $��0,0,5,0q�6D   ��6,   �� *Icon+6D   �� 5   &   $��18(�6M   $��Bahnschrift condensed)�6[   $��Center=�5   0   ��5   0   �� *ProjectName+5   0   5   #   �� 5    "   $��8(�6I   $��WordEllipsis=�6V   ��6,   �� *ProjectPath+6V   �� 5!   "   $��8(�6B   ��6,   �� *Date+6B   5"      5#      5%      �� 5&      $	��400��6   $	��250��6%   $��5,0,0,0q�62   ��5'      �� 5(       �� ImageSource 6%   ��  �� Path$ SelectedItem.Screenshot�	 �� ElementName$	 projectsListBox��5*      5+      �� 5,      $ 
Horizontal=�6   $��Center=�62   $��0,30,0,0q�6O   .+�5-      �� -   5        $
��Open��5-      $��96��6(   
 �� 	IsDefault$

 True��63   6D   �� 5.      $
��Exit��6   $��96��6(   $��30,0,0,0q�63    �� IsCancel$
 True��6E   5/      50      51      52      