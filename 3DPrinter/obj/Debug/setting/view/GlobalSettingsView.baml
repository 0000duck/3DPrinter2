   M S B A M L   `   `   `  ����D  @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting  5      'clr-namespace:_3DPrinter
_3DPrinter  5      0    *_3DPrinter.setting.view.GlobalSettingsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4setting clr-namespace:_3DPrinter.setting     5      /
_3DPrinterclr-namespace:_3DPrinter     5      .��5      �� $��	20,0,20,0q�6     �� Orientation$  Vertical=�6$   $��Stretch=�6;   .+�5   
   ��    HeaderTextBlockStyle#��[  6z   $��0 0 0 20q�6�   $
��Left=�6�   ��6   �� %   _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$$ CurrentLanguage.CommonSettings�6�   �� 5   
   -   5         ��Name$ TextBoxGrid��5      $  
Horizontal=�6+   $��Stretch=�6D   .+�5      �� $��0 0 20 0q�6}   $
��Left=�6�   #��[  6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $# CurrentLanguage.WorkDirectory�6�   �� 5      -   5         ��Name$ WorkDirTextBox��5      $��Stretch=�6/    �� AcceptsReturn . $	��400��6c   $ �� HorizontalScrollBarVisibility$ Disabled=�6o   " �� VerticalScrollBarVisibility$
 Auto=�6�   ��6�   �� )   #_3DPrinter.setting.SettingsProvider	   Instance# Z	 
 �� Mode$
 TwoWay=�$ Global_Settings.Workdir��� 5      -   5        $��	20,0,20,0q�5      $��Right=�6*   ��6F   �� # Z $ CurrentLanguage.Overview�6�   5      �� 5   
   $  
Horizontal=�6   $��Stretch=�6/   $��0,10,0,0q�6M   .+�5      �� $��0 0 20 0q�6   $
��Left=�6�   #��[  6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $% CurrentLanguage.CurrentLanguage�6�   �� 5      -   5         ��Name$ selectedLanguage��5      $	��480��61    �� DisplayMemberPath$
 Name��68  ��6=   �� # Z $ 	Languages� �� SelectedItem 6�   �� # Z $ CurrentLanguage�$
 TwoWay=�6S  5      � 5   
   $��0,20,0,0q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5!      �� 5"      $��1* �6#   �� 5#      $��1* �6#   �� 5$      $��1* �6#   .+�5'      �� $��0 0 20 0q�6�   $��3��6�   $
��Left=�6�   #��[  6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $&  CurrentLanguage.FileAssociations�6�   �� 5)      -   5         ��Name$	 cb1��5)      $��0��6$   $��1��64   $��*.stl��6A   $��5q�6Q    d� 	IsChecked 6\   �� # Z	 $
 OneWay=�$ Global_Settings.StlFile��� 5*      -   5        $	 cb2��5*      $��1��6$   $��1��64   $��*.obj��6A   $��5q�6Q    6\   �� # Z	 $
 OneWay=�$ Global_Settings.ObjFile��� 5+      -   5        $	 cb3��5+      $��2��6$   $��1��64   $
��*.nc��6A   $��5q�6P    6[   �� # Z	 $
 OneWay=�$ Global_Settings.NcFile��� 5,      -   5        $	 cb4��5,      $��0��6$   $��2��64   $	��*.g��6A   $��5q�6O    6Z   �� # Z	 $
 OneWay=�$ Global_Settings.GFile��� 5-      -	   5        $	 cb5��5-      $��1��6$   $��2��64   $��*.gco��6A   $��5q�6Q    6\   �� # Z	 $
 OneWay=�$ Global_Settings.GcoFile��� 5.      -
   5        $	 cb6��5.      $��2��6$   $��2��64   $��*.gcode��6A   $��5q�6S    6^   �� # Z	 $
 OneWay=�$ Global_Settings.GcodeFile��� 50      -   5        $��20,0,0,0q�50      $��3��6(   $��3��65   $��Right=�6J   ��6f   �� # Z $ CurrentLanguage.Associate�6�   51      54      55      