   M S B A M L   `   `   `  ����q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  5      D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting 5      A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 5      2   ,_3DPrinter.setting.view.MaterialSettingsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4setting clr-namespace:_3DPrinter.setting     5      6view%clr-namespace:_3DPrinter.setting.view     5        � 	Resources  5      2  ,_3DPrinter.setting.view.DoubleToIntConverter   DoubleToIntConverter �� 
TargetType �� Property �� Value��%{   &	        '��        5   
   6$   �� 5   
   " ��6   .�5      ��  � ��$ Segoe UI Light)�6+   5      5      .��5      � $��Stretch=�6   $��Stretch=�6)   $��
20,0,20,20q�6F    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5!   
   �� $��	0,21,0,20q�6{   $��1��6�   $
��Left=�6�     HeaderTextBlockStyle#��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$% CurrentLanguage.MaterialProfile�6�   �� 5#   
   	 �� Orientation$	 
Horizontal=�6   $��1��6/   $��1��6<   $��Right=�6L   .+�5$      �� -   5        
 ��Name$
 materialsComboBox��5$      $	��250��62   $��Right=�6>   $��	0,15,0,15q�6Z    �� 
IsEditable .  �� DisplayMemberPath$
 Name��6  ��6�   �� )  #_3DPrinter.setting.SettingsProvider   Instance# Z  �� Mode$ OneWay=�$  MaterialSettingsCollection� �� SelectedIndex 65  �� # Z $ TwoWay=�$# SelectedMaterialSettingsIndex��� 5%      -   5        $��	0,15,0,15q�5%      $��Right=�6(    � ToolTip 6_   �� # Z $ CurrentLanguage.Delete�.��5&      �� $��Center=�6   $��Center=�65   $"��../../images/del_printer.png��6P   $��20��6v   $��20��6�   $
��Fill=�6�   5'      5(      �� 5*   
   $��0 0 0 20q�6|   $
��Left=�6�   #��[ 6�   ��6   �� # Z $&  CurrentLanguage.MaterialSettings�6�   �� 5,   
   $��2��6   $��2��6%   ���	#FF181818$��1q�6I   ���	#FF454545._�5-   
   � $��Stretch=�6   $
��15,7q�6-    5.      �� 5/      $
��Auto �6    �� 50      $
��Auto �6    �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      $
��Auto �6    �� 54      $
��Auto �6    �� 55      $
��Auto �6    �� 56      $
��Auto �6    �� 57      $
��Auto �6    �� 58      $��* �6     5:      �� 5;      $
��Auto �6#   �� 5<      $��* �6#   .+�5@      �� $��0 0 20 0q�6�   $��0��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $&  CurrentLanguage.FilamentDiameter�6�   �� 5A      $��0 10 0 0q�6x   $��1��6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6   �� # Z $ CurrentLanguage.Flow�6  �� 5C      $��0 10 0 0q�6�   $��3��6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6  $��Center=�6  ��6   �� # Z $&  CurrentLanguage.PrintTemperature�6  �� 5D      $��0 0 0 0q�6�   $��4��6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6   �� # Z $$ CurrentLanguage.BedTemperature�6  �� 5F      $��0 0 0 0q�6   $��6��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $! CurrentLanguage.MaxFanSpeed�6�   �� 5G      $��0 0 0 0q�6   $��7��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $! CurrentLanguage.MinFanSpeed�6�   �� 5H      $��0 0 0 0q�6�   $��8��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� # Z $" CurrentLanguage.MinLayerTime�6�   �� 5K      $��0��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,15,0,5q�6a   ��6s   �� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.filamentDiameter� �� 	Converter# [  �� 5L      $��1��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,5,0,5q�6a   ��6r   �� # Z $ TwoWay=�$0 *SelectedMaterialSettingsModel.filamentFlow��� 5N      $��3��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,15,0,5q�6a   ��6s   �� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.PrintTemperature��� 5O      $��4��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,5,0,5q�6a   ��6r   �� # Z $ TwoWay=�$2 ,SelectedMaterialSettingsModel.BedTemperature��� 5Q      $��6��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,5,0,5q�6a   ��6r   �� # Z $ TwoWay=�$/ )SelectedMaterialSettingsModel.fanSpeedMin��� 5R      $��7��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,15,0,5q�6a   ��6s   �� # Z $ TwoWay=�$/ )SelectedMaterialSettingsModel.fanSpeedMax��� 5S      $��8��6   $��1��6'   $��Right=�68   $	��250��6U   $��0,5,0,5q�6a   ��6r   �� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.minimalLayerTime�5V      5W      5Y      5Z      