   M S B A M L   `   `   `  ���� q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 2   ,_3DPrinter.setting.view.MaterialSettingsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     @d2http://schemas.microsoft.com/expression/blend/2008     4setting clr-namespace:_3DPrinter.setting     6view%clr-namespace:_3DPrinter.setting.view       � 	Resources  2  ,_3DPrinter.setting.view.DoubleToIntConverter   DoubleToIntConverter �� 
TargetType �� Property �� Value��%H   &	        '��        �� " ��.���  � ��$ Segoe UI Light)�.��� $��Stretch=�$��Stretch=�$��
20,0,20,20q� � ColumnDefinitions �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* �.+��� $��	0,21,0,20q�$��1��$
��Left=�  HeaderTextBlockStyle#��[ $��14(�$��Center=����� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$% CurrentLanguage.MaterialProfile��� 	 �� Orientation$	 
Horizontal=�$��1��$��1��$��Right=�.+��� -   
 ��Name$
 materialsComboBox��$	��250��$��Right=�$��	0,15,0,15q� �� 
IsEditable .  �� DisplayMemberPath$
 Name������ )  #_3DPrinter.setting.SettingsProvider   Instance# Z  �� Mode$ OneWay=�$  MaterialSettingsCollection� �� SelectedIndex �� # Z $ TwoWay=�$# SelectedMaterialSettingsIndex��� -   $��	0,15,0,15q�$��Right=� � ToolTip �� # Z $ CurrentLanguage.Delete�.���� $��Center=�$��Center=�$"��../../images/del_printer.png��$��20��$��20��$
��Fill=��� $��0 0 0 20q�$
��Left=�#��[ ���� # Z $&  CurrentLanguage.MaterialSettings��� $��2��$��2�����	#FF181818$��1q����	#FF454545._�� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.FilamentDiameter��� $��0 10 0 0q�$��1��$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Flow��� $��0 10 0 0q�$��3��$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.PrintTemperature��� $��0 0 0 0q�$��4��$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.BedTemperature��� $��0 0 0 0q�$��6��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.MaxFanSpeed��� $��0 0 0 0q�$��7��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.MinFanSpeed��� $��0 0 0 0q�$��8��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.MinLayerTime��� $��0��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.filamentDiameter� �� 	Converter# [  �� $��1��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$0 *SelectedMaterialSettingsModel.filamentFlow��� $��3��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.PrintTemperature��� $��4��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$2 ,SelectedMaterialSettingsModel.BedTemperature��� $��6��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$/ )SelectedMaterialSettingsModel.fanSpeedMin��� $��7��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$/ )SelectedMaterialSettingsModel.fanSpeedMax��� $��8��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$4 .SelectedMaterialSettingsModel.minimalLayerTime�