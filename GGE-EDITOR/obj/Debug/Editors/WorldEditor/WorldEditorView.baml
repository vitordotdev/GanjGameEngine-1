   M S B A M L   `   `   `  ����E  AGGE-EDITOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GGE_EDITOR.EditorsGGE_EDITOR.Editors  5      ;"clr-namespace:GGE_EDITOR.UtilitiesGGE_EDITOR.Utilities  5      M+clr-namespace:GGE_EDITOR.Utilities.ControlsGGE_EDITOR.Utilities.Controls  5      (    "GGE_EDITOR.Editors.WorldEditorView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GGE_EDITOR.Editors     5      2utl"clr-namespace:GGE_EDITOR.Utilities     5      <ctlr+clr-namespace:GGE_EDITOR.Utilities.Controls     5      $
|�True��5	        J� InputBindings  5      �� 5   
   
 �� Key$ Z��65    �� 	Modifiers$
 Ctrlf�6=    �� Command 6   �� *UndoCommand+6=   �� 5   
   $ Y��65   $
 Ctrlf�6=    6   �� *RedoCommand+6=   �� 5   
   $ S��65   $
 Ctrlf�6=    6   �� *SaveCommand+6=   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Undo��6   ��6$   �� *UndoCommand+�� 5      $
��Redo��6   $	��5,0q�6D   ��6$   �� *RedoCommand+6D   �� 5      -   5        $��
New Script��5      6*   �� 5      -   5         ��Name$ buildButton��5      $��Build��6*   $	��5,0q�6:   �� 5      -   5         ��Name$ 	runConfig��5      $��Center=�6*   $��72��5      .@�5      �� $��Debug��6   �� 5      $��Release��6   5      5      � 5    
   $��1��6    � ColumnDefinitions 5!      �� 5"      �� 5#      .+�5%      � $��0��6    5&      �� 5'      �� 5(      .+�5*      ��  #  Editor.Selected.BackgroundBrush#��[  6   ._�5+      �� $��Center=�6!   .+�5,      -  'GGE_EDITOR.Utilities.Controls.NumberBox  	   Value$	 0��6)     Editor.FontBrush#��[ 63   -  'GGE_EDITOR.Utilities.Controls.ScalarBox  5-      $	 10��6)   
   
Multiplier$
 10Q�64   -  'GGE_EDITOR.Utilities.Controls.VectorBox  5.         X$ 0��6)      Y$ 1��6/      Z$ 2��65      W$ 3��6;      
VectorType$ Vector2=�6A     5/      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector3=�6A     50      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector4=�6A     52      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector2=�6A      Orientation$ Vertical=�6V     53      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector3=�6A   $ Vertical=�6V     54      $ 0��6)   $ 1��6/   $ 2��65   $ 3��6;   $ Vector4=�6A   $ Vertical=�6V   55      56      �� 57      $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�58      
������ 63   �� 59      $��1��6     Editor.Window.GrayBrush2#��[ 6*   $��0,5,0,0q�6a   .@�5:      �� $��History��6   .��5;      '   !GGE_EDITOR.Utilities.UndoRedoView   � DataContext 6+   �� *
UndoRedo+5<      �� 5=      $	��Log��6   .��5>      %   GGE_EDITOR.Utilities.LoggerView  5?      5@      5A      �� 5C      $��1��6   $��5��6+   $
��Left=�65   $��Stretch=�6P   
������ 6l   � 5E      $��1��6   $��5,0,0,0q�6#    5F      �� 5G      �� 5H      .+�5J      �� $��1��6   $��5��6,   $��Stretch=�67   $	��Top=�5K      
������ 63   *   $GGE_EDITOR.Editors.ProjectLayoutView  5L      *   $GGE_EDITOR.Editors.ProjectLayoutView   Loaded$ ProjectLayoutView_Loaded��6a     Editor.Window.GrayBrush3#��[ 6*   6a   '   !GGE_EDITOR.Editors.GameEntityView  5M      $��1��6'   #��[ 64   $��0,5,0,0q�6k   5N      5P      5Q      5R      