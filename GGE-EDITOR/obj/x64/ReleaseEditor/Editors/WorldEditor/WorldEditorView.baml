   M S B A M L   `   `   `  ���� E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.EditorsGGE_EDITOR.Editors  ;"clr-namespace:GGE_EDITOR.UtilitiesGGE_EDITOR.Utilities  M+clr-namespace:GGE_EDITOR.Utilities.ControlsGGE_EDITOR.Utilities.Controls  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem (    "GGE_EDITOR.Editors.WorldEditorView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:GGE_EDITOR.Editors     2utl"clr-namespace:GGE_EDITOR.Utilities     <ctlr+clr-namespace:GGE_EDITOR.Utilities.Controls     6sys&clr-namespace:System;assembly=mscorlib     $
|�True��  � 	Resources     True 	 False��%1   &	        &	      ��True����	False�� J� InputBindings �� 
 �� Key$ Z�� �� 	Modifiers$
 Ctrlf� �� Command �� *UndoCommand+�� $ Y��$
 Ctrlf� �� *RedoCommand+�� $ S��$
 Ctrlf� �� *SaveCommand+�� $ F7�� �� *BuildCommand+.���  � RowDefinitions �� $��32 ��� .+���  �� Orientation$ 
Horizontal=�.+��� $
��Undo������ *UndoCommand+�� $
��Redo��$	��5,0q����� *RedoCommand+�� -   $��
New Script��{���  �� Path$ 	IsEnabled� �� ElementName$ buildButton���� -   	 ��Name$	 buildButton��$��Build��$	��5,0q�#��[  ���� *BuildCommand+�� -   
 ��Name$
 	runConfig��$��Center=�$��72�� �� SelectedIndex �� *BuildConfig+.@��� $��Debug���� $��Release��� $��1�� � ColumnDefinitions �� �� .+�� $��0�� �� �� .+���  # Editor.Selected.BackgroundBrush#��[ ._��� $��Center=�.+�-  'GGE_EDITOR.Utilities.Controls.NumberBox     Value$ 0��  Editor.FontBrush#��[ -  'GGE_EDITOR.Utilities.Controls.ScalarBox  $ 10��   
Multiplier$ 10Q��� $��1��$��5��$��Stretch=�$	��Top=�
������ � $��1��$��0,5,0,0q� �� �� .+�'   !GGE_EDITOR.Utilities.UndoRedoView  $��0��  Editor.Window.GrayBrush2#��[  � DataContext �� *
UndoRedo+�� $��1��$��5��$��Stretch=�$
��Left=�
������ %   GGE_EDITOR.Utilities.LoggerView  $��1��$��5,0,0,0q��� $��1��$��5��$
��Left=�$��Stretch=�
������ � $��1��$��5,0,0,0q� �� �� .+��� $��1��$��5��$��Stretch=�$	��Top=�
������ *   $GGE_EDITOR.Editors.ProjectLayoutView  *   $GGE_EDITOR.Editors.ProjectLayoutView   Loaded$ ProjectLayoutView_Loaded��  Editor.Window.GrayBrush3#��[ '   !GGE_EDITOR.Editors.GameEntityView  $��1��#��[ $��0,5,0,0q�