   M S B A M L   `   `   `  ���� E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GGE_EDITOR.UtilitiesGGE_EDITOR.Utilities  %    GGE_EDITOR.Utilities.LoggerView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:GGE_EDITOR.Utilities       � 	Resources   �� 
TargetType �� Property �� Value   Editor.Window.GrayBrush4 �� 
TargetType ��Name J� SnapsToDevicePixels �� Triggers P� Property	 P� Value
 �� 
TargetName �� ElementName��%G  'd�       7   �� " d�.���  �@�FocusVisualStyle Z� ��  � ��8   ��  � ��$ 1q���  � ��$ 18����  � ��$ Center=���  � ��$ Center=�-   ��  � �� �� " d�.R��� $ outerBorder��#��z��#��z��$
 true��._��� $ innerBorder��#��z��$��1q� P�  �@J�IsMouseOver$
	 true��. ��� $
 outerBorder�� �� *
Background+$ innerBorder�� � ��P�  �@d�	IsChecked$	 FalseY�. ��� $
 innerBorder�� �@J�Opacity$	 0.5Q�P�  � {�$	 false��. ��� $
 innerBorder�� �@J�Opacity$	 0.2Q�.��� .+��� -    ��Name$ scrollViewer��$
��Auto=�$
��Auto=�  Editor.Window.GrayBrush2#��[ .���� ���� !  GGE_EDITOR.Utilities.Logger   FilteredMessages �� Source# Z ���� .R��� ���� .R�]�  � ToolTip �� *
MetaData+���� " ]�.���  � ��
 ����  �� Triggers P�  �@J�IsMouseOver$
	 True��. ���  � �� ��  # Editor.Selected.BackgroundColor �� Color# [  �� Opacity$	 0.5Q�.+��� $	��5,0q����� *Time+ �� StringFormat$ hh:mm:ss������ " ��.���  � ��
 ���� �� &   GGE_EDITOR.Utilities.MessageType   Warning �� Value# Z  �� Binding �� *MessageType+.a���  � �� �	#ffffbb22��    Error# Z  �� *MessageType+.a���  � �� �	#ffff4455�� $
��Wrap=�  LightTextBlockStyle#��[ ���� *	Message+�� $��32��$	��Top=�  Editor.Window.GrayBrush3#��[  J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.3Q�   
BlurRadius$ 10Q�   ShadowDepth$ 0Q�._���  �� Orientation$ 
Horizontal=�$��Right=�$	��4,0q�$��Center=�.+��� -   $��Clear��$	��1,0q�$|�False��d� -    d�Name$ 
toggleInfo�� d� 	IsChecked$
 TrueY�$
��info��$	��1,0q�$! Toggle information messages��  Editor.GreenBrush#��[ d� -   $ toggleWarnings��$
 TrueY�$
��warn��$	��1,0q�$ Toggle warning messages��  Editor.OrangeBrush#��[ d� -   $ toggleErrors��$
 TrueY�$��error��$	��1,0q�$ Toggle error messages��  Editor.RedBrush#��[ 