   M S B A M L   `   `   `  ���� E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.GameDevGGE_EDITOR.GameDev  (    "GGE_EDITOR.GameDev.NewScriptDialog   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:GGE_EDITOR.GameDev        GanjGameEngineDialogStyle#��[    � 
ResizeMode$  NoResize=� � ShowInTaskbar$ False�� � WindowStartupLocation$ CenterOwner=� � Title$ 
New Script��$	��250��$	��400��.����  �� CornerRadius$ 3��  Editor.Window.GrayBrush3#��[ $��Stretch=�$��10q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.6Q�   
BlurRadius$ 15Q�   ShadowDepth$ 2Q�._�� $
��32,0q�.+�� -   	 �Name$	 busyAnimation��$
��Left=�$��Center=�$y�Hidden=�
 � 	Resources
   Editor.FontColor �� Color  	busyBrush��%   &	       7  �� 8   .+�A� $	��164��$	��164��#��[ $��Center=�$��
-155,0,0,0q�$��1�� J� RenderTransformOrigin$ 0.5, 0.5&�A� $	��154��$	��154��#��[ $��Center=�$��
-155,0,0,0q�$��10�� �� StrokeDashArray$ 	0.3, 0.22R�$ 0.5, 0.5&�z���  � Triggers :�  :� RoutedEvent$ Loaded��.[��� .���� .��W�  �� TargetProperty$7 1(Ellipse.RenderTransform).(RotateTransform.Angle)�	 W� To -360 g� Duration$ 0:0:2D� g� RepeatBehavior$ Forever��A� $	��174��$	��174��#��[ $��Center=�$��
-155,0,0,0q�$��5��$ 
0.5, 1.186R�$ 0.5, 0.5&�z���  :� $ Loaded��.[��� .���� .��W� $7 1(Ellipse.RenderTransform).(RotateTransform.Angle)� W� From 360 0$ 0:0:10D�$ Forever��� #��[  � Points 8�  8� X$	 160Q� 8� Y$ 35Q�8� $	 180Q�$ 20Q�8� $	 340Q�$ 20Q��� $��Creating a new script..��
�������$	��Top=�$��Right=�$��0,20,0,0q� :� $ Loaded��.[��� .���� .��W� $ Opacity� 1 0$ 0:0:1D�$ Forever�� g� AutoReverse$
 True��� ����  �� 
TargetType" � �� Triggers P�  P� Property � {� P� Value$ False��. ���  �� Property �@J�Opacity �� Value$	 0.5Q�.+��� -    ��Name$ messageTextBlock��$	��Top=�$��Center=�  Editor.RedBrush#��[ $��0,10,0,0q�$
��Wrap=��� $��Center=�.+�]� .+��� $��Script name��$��72��  LightTextBlockStyle#��[ �� -     ��Name$  
scriptName��]� $��0,5,0,0q�.+��� $
��path��$��72��#��[ �� -   $  
scriptPath���� ! �� Orientation$! 
Horizontal=�$��Bottom=�$��Right=�$��0,0,0,20q�.+��� -   $��Create��$��64��$
��32,0q�" �� 	IsDefault$
" True���� $��Cancel��$��64��# �� IsCancel$
# True��