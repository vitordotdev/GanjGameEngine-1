   M S B A M L   `   `   `  ���� E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.EditorsGGE_EDITOR.Editors  ;"clr-namespace:GGE_EDITOR.UtilitiesGGE_EDITOR.Utilities  M+clr-namespace:GGE_EDITOR.Utilities.ControlsGGE_EDITOR.Utilities.Controls  (    "GGE_EDITOR.Editors.WorldEditorView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:GGE_EDITOR.Editors     2utl"clr-namespace:GGE_EDITOR.Utilities     <ctlr+clr-namespace:GGE_EDITOR.Utilities.Controls     $
|�True��  J� InputBindings  �� 
 �� Key$ Z�� �� 	Modifiers$
 Ctrlf� �� Command �� *UndoCommand+�� $ Y��$
 Ctrlf� �� *RedoCommand+�� $ S��$
 Ctrlf� �� *SaveCommand+.���  � RowDefinitions �� $��32 ��� .+���  �� Orientation$ 
Horizontal=�.+��� $
��Undo������ *UndoCommand+�� $
��Redo��$	��5,0q����� *RedoCommand+�� -   $��
New Script��� $��1�� � ColumnDefinitions �� �� .+�� $��0�� �� �� .+���  #  Editor.Selected.BackgroundBrush#��[  ._��� $��Center=�.+�-  'GGE_EDITOR.Utilities.Controls.NumberBox     Value$ 0��  Editor.FontBrush#��[ -  'GGE_EDITOR.Utilities.Controls.ScalarBox  $ 10��   
Multiplier$ 10Q�-  'GGE_EDITOR.Utilities.Controls.VectorBox  	   X$	 0��
   Y$
 1��   Z$ 2��   W$ 3��   
VectorType$ Vector2=�  $	 0��$
 1��$ 2��$ 3��$ Vector3=�  $	 0��$
 1��$ 2��$ 3��$ Vector4=�  $	 0��$
 1��$ 2��$ 3��$ Vector2=�   Orientation$ Vertical=�  $	 0��$
 1��$ 2��$ 3��$ Vector3=�$ Vertical=�  $	 0��$
 1��$ 2��$ 3��$ Vector4=�$ Vertical=��� $��1��$��5��$��Stretch=�$	��Top=�
������ �� $��1��  Editor.Window.GrayBrush2#��[ $��0,5,0,0q�.@��� $��History��.��'   !GGE_EDITOR.Utilities.UndoRedoView   � DataContext �� *
UndoRedo+�� $	��Log��.��%   GGE_EDITOR.Utilities.LoggerView  �� $��1��$��5��$
��Left=�$��Stretch=�
������ � $��1��$��5,0,0,0q� �� �� .+��� $��1��$��5��$��Stretch=�$	��Top=�
������ *   $GGE_EDITOR.Editors.ProjectLayoutView  *   $GGE_EDITOR.Editors.ProjectLayoutView   Loaded$ ProjectLayoutView_Loaded��  Editor.Window.GrayBrush3#��[ '   !GGE_EDITOR.Editors.GameEntityView  $��1��#��[ $��0,5,0,0q�