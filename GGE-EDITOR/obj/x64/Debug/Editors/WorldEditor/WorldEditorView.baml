   M S B A M L   `   `   `  ����E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.EditorsGGE_EDITOR.Editors  5      ;"clr-namespace:GGE_EDITOR.UtilitiesGGE_EDITOR.Utilities  5      M+clr-namespace:GGE_EDITOR.Utilities.ControlsGGE_EDITOR.Utilities.Controls  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	      (    "GGE_EDITOR.Editors.WorldEditorView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GGE_EDITOR.Editors     5      2utl"clr-namespace:GGE_EDITOR.Utilities     5      <ctlr+clr-namespace:GGE_EDITOR.Utilities.Controls     5      6sys&clr-namespace:System;assembly=mscorlib     5	      $
|�True��5
        � 	Resources  5         True 	 False��%M   &	        &	      ��5   
   True��6)   ��5   
   	False��6+   5       J� InputBindings 5      �� 5   
   
 �� Key$ Z��65    �� 	Modifiers$
 Ctrlf�6=    �� Command 6   �� *UndoCommand+6=   �� 5   
   $ Y��65   $
 Ctrlf�6=    6   �� *RedoCommand+6=   �� 5   
   $ S��65   $
 Ctrlf�6=    6   �� *SaveCommand+6=   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Undo��6   ��6$   �� *UndoCommand+�� 5      $
��Redo��6   $	��5,0q�6D   ��6$   �� *RedoCommand+6D   �� 5      -   5        $��
New Script��5      6*   �� 5      -   5         ��Name$ buildButton��5      $��Build��6*   $	��5,0q�6;   #��[  5   6   ��6   �� *BuildCommand+66   �� 5       -   5         ��Name$ 	runConfig��5       $��Center=�6*   $��72��5!      	 �� SelectedIndex	 6"   �� *BuildConfig+�� 5"      $��Debug��6   �� 5#      $��Release��6   5%      � 5&   
   $��1��6   
 � ColumnDefinitions
 5'      �� 5(      �� 5)      .+�5+      � $��0��6    5,      �� 5-      �� 5.      .+�50      ��  # Editor.Selected.BackgroundBrush#��[ 6   ._�51      �� $��Center=�6!   .+�52      -  'GGE_EDITOR.Utilities.Controls.NumberBox     Value$ 0��6)     Editor.FontBrush#��[ 63   -  'GGE_EDITOR.Utilities.Controls.ScalarBox  53      $ 10��6)      
Multiplier$ 10Q�64   -  'GGE_EDITOR.Utilities.Controls.VectorBox  54         X$ 0��6)      Y$ 1��6/      Z$ 2��65      W$ 3��6;      
VectorType$ Vector2=�6A     55      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector3=�6A     56      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector4=�6A     58      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector2=�6A      Orientation$ Vertical=�6V     59      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector3=�6A   $ Vertical=�6V     5:      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector4=�6A   $ Vertical=�6V   5;      5<      �� 5=      $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�5>      
������ 63   �� 5?      $��1��6     Editor.Window.GrayBrush2#��[ 6*   $��0,5,0,0q�6a   .@�5@      �� $��History��6   .��5A      '   !GGE_EDITOR.Utilities.UndoRedoView   � DataContext 6+   �� *
UndoRedo+5B      �� 5C      $	��Log��6   .��5D      %   GGE_EDITOR.Utilities.LoggerView  5E      5F      5G      �� 5I      $��1��6   $��5��6+   $
��Left=�65   $��Stretch=�6P   
������ 6l   � 5K      $��1��6   $��5,0,0,0q�6#    5L      �� 5M      �� 5N      .+�5P      �� $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�5Q      
������ 63   *   $GGE_EDITOR.Editors.ProjectLayoutView  5R      *   $GGE_EDITOR.Editors.ProjectLayoutView   Loaded$ ProjectLayoutView_Loaded��6a     Editor.Window.GrayBrush3#��[ 6*   6a   '   !GGE_EDITOR.Editors.GameEntityView  5S      $��1��6'   #��[ 64   $��0,5,0,0q�6k   5T      5V      5W      5X      