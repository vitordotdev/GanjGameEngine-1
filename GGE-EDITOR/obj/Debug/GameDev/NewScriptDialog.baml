   M S B A M L   `   `   `  ����E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.GameDevGGE_EDITOR.GameDev  5   	   (    "GGE_EDITOR.GameDev.NewScriptDialog   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:GGE_EDITOR.GameDev     5   	      GanjGameEngineDialogStyle#��[  5        � 
ResizeMode$  NoResize=�5   	    � ShowInTaskbar$ False��6    � WindowStartupLocation$ CenterOwner=�65    � Title$ 
New Script��5	   	   $	��250��6   $	��400��6)   .��5
      ��  �� CornerRadius$ 3��6     Editor.Window.GrayBrush3#��[ 6   $��Stretch=�6U   $��10q�5       J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.6Q�6      
BlurRadius$ 15Q�6-      ShadowDepth$ 2Q�6=   ._�5   
   � $
��32,0q�6   .+�5      � -   5        	 �Name$	 busyAnimation��5      $
��Left=�5      $��Center=�6.   $y�Hidden=�6I   
 � 	Resources
 5        Editor.FontColor �� Color  	busyBrush��%&   &	       7  �� 5      8   6P   5      .+�5      A� $	��164��6   $	��164��6&   #��[ 63   $��Center=�6W   $��
-155,0,0,0q�5      $��1��6*    J� RenderTransformOrigin$ 0.5, 0.5&�6>   A� 5      $	��154��6   $	��154��6&   #��[ 63   $��Center=�6W   $��
-155,0,0,0q�5      $��10��6*    �� StrokeDashArray$ 	0.3, 0.22R�6?   $ 0.5, 0.5&�6[   z�5      �� 5       � Triggers 5      :� 5        :� RoutedEvent$ Loaded��6'   .[�5!      �� .��5"   "   �� .��5#   &   W�  �� TargetProperty$7 1(Ellipse.RenderTransform).(RotateTransform.Angle)�66   	 W� To -3605$   6    g� Duration$ 0:0:2D�6@    g� RepeatBehavior$ Forever��6Q   5%   #   5&      5'      5)      A� 5*      $	��174��6   $	��174��6&   #��[ 63   $��Center=�6W   $��
-155,0,0,0q�5+      $��5��6*   $ 
0.5, 1.186R�6>   $ 0.5, 0.5&�6[   z�5,      �� 5-       5/      :� 50      $ Loaded��6'   .[�51      �� .��52   "   �� .��53   &   W� $7 1(Ellipse.RenderTransform).(RotateTransform.Angle)�66    W� From 36054   6    06B   $ 0:0:10D�6I   $ Forever��6[   55   #   56      57      59      � 5:      #��[ 6    � Points 5<      8�  8� X$	 160Q�6     8� Y$ 35Q�6(   8� 5=      $	 180Q�6    $ 20Q�6(   8� 5>      $	 340Q�6    $ 20Q�6(   5@      �� 5A      $��Creating a new script..��6   
�������$	��Top=�5B      $��Right=�64   $��0,20,0,0q�6P    5C      :� 5D      $ Loaded��6'   .[�5E      �� .��5F   "   �� .��5G   &   W� $ Opacity�66    16Z    06c   $ 0:0:1D�5H   6   $ Forever��6G    g� AutoReverse$
 True��6`   5I   #   5J      5K      5M      5N      � 5P      ��5Q      �� 5R       �� 
TargetType" �6    �� Triggers 5S      P� 5T       P� Property � {� P� Value$ False��6;   . �5U   "   ��  �� Property �@J�Opacity �� Value$	 0.5Q�6<   5V      5X      .+�5Z      �� -   5         ��Name$ messageTextBlock��5[   B   $	��Top=�5Z      $��Center=�64     Editor.RedBrush#��[ 6Q   $��0,10,0,0q�5[      $
��Wrap=�6.   6B   �� 5]      $��Center=�6   .+�5^      ]� .+�5_      �� $��Script name��6$   $��72��67     LightTextBlockStyle#��[ 6B   �� 5`      -   5          ��Name$  
scriptName��5`   "   66   5a      ]� 5c      $��0,5,0,0q�6    .+�5d      �� $
��path��6$   $��72��60   #��[ 6;   �� 5e      -   5        $  
scriptPath��5e   "   66   5f      5h      �� 5i      ! �� Orientation$! 
Horizontal=�6   $��Bottom=�66   $��Right=�5j      $��0,0,0,20q�69   .+�5k      �� -   5        $��Create��5k      $��64��6.   $
��32,0q�69   " �� 	IsDefault$
" True��6G   6X   �� 5l      $��Cancel��6   $��64��6.   # �� IsCancel$
# True��69   5m      5n      5o      5p      5q      