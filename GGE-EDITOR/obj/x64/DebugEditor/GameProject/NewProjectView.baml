   M S B A M L   `   `   `  ���� E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:GGE_EDITOR.GameProjectGGE_EDITOR.GameProject  +    %GGE_EDITOR.GameProject.NewProjectView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:GGE_EDITOR.GameProject     $	��800��  � DataContext  '  !GGE_EDITOR.GameProject.NewProject  .����  �� CornerRadius$ 3��   Editor.Window.GrayBrush3#��[  $	��700��$��Center=�$
��0,30q�._��� .+���  �� Orientation$ 
Horizontal=�$��Center=�$��0,20,0,0q�.+��� -    ��Name$ templateListBox��$	��195��$	��250�� �� SelectedIndex$ 0������ *ProjectTemplates+���� .R��� $ 
Horizontal=�.+��� $��0,0,5,0q����� *Icon+�� $��18(�$��Bahnschrift condensed)�$��Center=����� *ProjectType+�� $	��400��$	��250��$��5,0,0,0q�����  �� ImageSource ��  �� Path$ SelectedItem.Screenshot� �� ElementName$ templateListBox���� $ 
Horizontal=�$��Center=�$��0,30,0,0q�.+��� $
��Name��$��50��  LightTextBlockStyle#��[ �� $	��550������ *ProjectName+ �� UpdateSourceTrigger$ PropertyChanged=��� $ 
Horizontal=�$��Center=�$��0,5,0,0q�.+��� $
��Path��$��50��#��[ �� $	��500������ *ProjectPath+$ PropertyChanged=��� $��Browse��$��50��$��5,0,0,0q��� $ 
Horizontal=�$��Center=�$��0,30,0,0q�.+��� -   $��Create��$��96��	 �� 	IsDefault$
	 True��{��� *	IsValid+�� $
��Exit��$��96��$��30,0,0,0q�
 �� IsCancel$

 True����   Editor.RedBrush#��[ $��0,10,0,0q�$��Center=����� *
ErrorMSG+