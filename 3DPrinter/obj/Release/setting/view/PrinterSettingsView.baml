   M S B A M L   `   `   `  ���� q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 1   +_3DPrinter.setting.view.PrinterSettingsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     4setting clr-namespace:_3DPrinter.setting     X TXceed.Wpf.Toolkit, Version=3.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  0view%clr-namespace:_3DPrinter.setting.view  -     >�Name$  PrinterSettingsControl�� � 	Resources 5  /_3DPrinter.setting.view.MColorToDColorConverter   MColor_To_DColor2  ,_3DPrinter.setting.view.IntToStringConverter  Int_To_String��%   &	        &	          .��� $��Stretch=�$��Stretch=�$��
20,0,20,20q� � ColumnDefinitions �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* �.+��� $��	0,21,0,20q�$��1��$
��Left=�  HeaderTextBlockStyle#��[ $��14(�$��Center=����� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$$ CurrentLanguage.PrinterProfile���  �� Orientation$ 
Horizontal=�$��1��$��1��$��Right=�.+��� -    ��Name$ printerComboBox��$	��250��$��Right=�$��	0,15,0,15q�	 �� 
IsEditable	 . 
 �� SelectedIndex
 �� )  #_3DPrinter.setting.SettingsProvider   Instance# Z  �� Mode$ TwoWay=�$" SelectedPrinterSettingsIndex����� # Z $ OneWay=�$ PrinterNameList��� -   $��	0,15,0,15q�$��Right=� � ToolTip �� # Z $ CurrentLanguage.Delete�.���� $��Center=�$��Center=�$"��../../images/del_printer.png��$��20��$��20��$
��Fill=��� $��0 0 0 20q�$
��Left=�#��[ ���� # Z $% CurrentLanguage.PrinterSettings�'   !System.Windows.Controls.Accordion  $��Stretch=�$��Stretch=�$��2��$��0q�$��2��.@�+   %System.Windows.Controls.AccordionItem  ���� # Z $  CurrentLanguage.Connection�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Connector��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Port��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.BaudRate��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.TransferProtocol��� $��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.ResetOnEmergency��� $��0 0 20 0q�$��5��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.ReceiveCacheSize��� $	��250��$��Right=�$��0��$��1��$��0,5,0,5q�
 �� # Z $ TwoWay=�$) #SelectedPrinterSettings.printerType�.@��� ���� # Z $&  CurrentLanguage.SerialConnection��� -   $ comboBoxListCOMPorts��$	��250��$��Right=�$��1��$��1��$��0,5,0,5q� �� SelectedItem �� # Z $) #SelectedPrinterSettings.ComPortName�$ TwoWay=��� $	��250��$��Right=�$��2��$��1��$��0,5,0,5q� �� # Z $&  SelectedPrinterSettings.BaudRate�$ TwoWay=�����  �� ElementName$ PrinterSettingsControl��$ Rates��� $	��250��$��Right=�$��3��$��1��$��0,5,0,5q�
 �� # Z $. (SelectedPrinterSettings.TransferProtocol�$ TwoWay=�.@��� ���� # Z $  CurrentLanguage.AutoDetect��� ���� # Z $ CurrentLanguage.Ascii��� ���� # Z $&  CurrentLanguage.ProtocolRepetier��� $	��250��$��Right=�$��4��$��1��$��0,5,0,5q�
 �� # Z $, &SelectedPrinterSettings.ResetEmergency�$ TwoWay=�.@��� ���� # Z $# CurrentLanguage.SendEmCommand��� ���� # Z $" CurrentLanguage.SendEmComDTR��� ���� # Z $ CurrentLanguage.SendReset��� $��5��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $. (SelectedPrinterSettings.ReceiveCacheSize�$ TwoWay=��� $��0��$��6��$��2��$��0,5,0,5q����� # Z $! CurrentLanguage.UsePingPong� d� 	IsChecked �� # Z $&  SelectedPrinterSettings.PingPong�$ TwoWay=�  $��0q����� # Z $ CurrentLanguage.Printer�.���� $
��Auto=�$��Hidden=�$��0q�.���� $��0q�.+�� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.TravelFeedRate��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.ZAxisFeedRate��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $0 *CurrentLanguage.DefaultExtruderTemperature��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $1 +CurrentLanguage.DefaultHeatingBedTemerature��� $��0 0 20 0q�$��5��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.CheckInterval��� $��0 0 20 0q�$��6��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.ParkPosition��� $��0��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$, &SelectedPrinterSettings.travelFeedrate��� $��1��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.zAxisFeedrate��� $��2��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$1 +SelectedPrinterSettings.defaultExtruderTemp��� $��3��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$2 ,SelectedPrinterSettings.defaultHeatedBedTemp��� $��5��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$/ )SelectedPrinterSettings.checkTempInterval��� $��6��$��1��$ 
Horizontal=�.+��� $��X��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$&  SelectedPrinterSettings.disposeX��� $��Y��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$&  SelectedPrinterSettings.disposeY��� $��Z��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$&  SelectedPrinterSettings.disposeZ��� $��0��$��7��$��2��$��0,5,0,5q����� # Z $) #CurrentLanguage.CheckExtruderAndBed� �� # Z $ TwoWay=�$' !SelectedPrinterSettings.checkTemp��� $��0��$��8��$��2��$��0,5,0,5q����� # Z $/ )CurrentLanguage.RemoveTemperatureRequests� �� # Z $ TwoWay=�$% SelectedPrinterSettings.logM105��� $��0��$��9��$��2��$��0,5,0,5q����� # Z $" CurrentLanguage.ParkAfterJob� �� # Z $ TwoWay=�$/ )SelectedPrinterSettings.goDisposeAfterJob��� $��0��$��10��$��2��$��0,5,0,5q����� # Z $&  CurrentLanguage.DisableHeatedBed� �� # Z $ TwoWay=�$6 0SelectedPrinterSettings.disableHeatedBetAfterJob��� $��0��$��11��$��2��$��0,5,0,5q����� # Z $- 'CurrentLanguage.DisableExtruderAfterJob� �� # Z $ TwoWay=�$5 /SelectedPrinterSettings.disableExtruderAfterJob��� $��0��$��12��$��2��$��0,5,0,5q����� # Z $# CurrentLanguage.DisableMotors� �� # Z $ TwoWay=�$3 -SelectedPrinterSettings.disableMotorsAfterJob�  $��Stretch=����� # Z $  CurrentLanguage.Dimensions�.���� $
��Auto=�$��Hidden=�$��0q�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.PrinterType��� $��0 10 0 0q�$��1��$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.HomeCoordinate��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��3��$��2���� $��0 0 0 0q�$��4��$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.ExtruderRange��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��6��$��2���� $��0 0 0 0q�$��7��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Position0��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��9��$��2���� $��0 0 0 0q�$��10��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.PrintAreaWidth��� $��0 0 20 0q�$��11��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.PrintAreaDepth��� $��0 0 20 0q�$��12��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.PrintAreaHeight��� $��0 0 0 0q�$��13��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.DumpAreaLeft��� $��0 0 20 0q�$��14��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.DumpAreaFront��� $��0 0 0 0q�$��15��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.DumpAreaWidth��� $��0 0 20 0q�$��16��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.DumpAreaDepth��� $��0 0 0 0q�$��17��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.PrintableRadius��� $��0 0 20 0q�$��18��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.PrintableHeight��� $��0 0 20 0q�$��19��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.CNCTop��� $	��300��$��Right=�$��0��$��1��$��0,5,0,5q�
 �� # Z $ TwoWay=�$) #SelectedPrinterSettings.printerType�.@��� ���� # Z $$ CurrentLanguage.CalssicPrinter��� ���� # Z $, &CurrentLanguage.ClassicPrinterWithDump��� ���� # Z $$ CurrentLanguage.CicularPrinter��� ���� # Z $ CurrentLanguage.CNCRouter��� $ 
Horizontal=�$��2��$��2��.+��� $��X��$��0 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $	��120��$��Right=�$��0,5,0,5q�
 �� # Z $ TwoWay=�$' !SelectedPrinterSettings.xhomeMode�.@��� $	��Min���� $	��Max���� $��0���� $��Y��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $	��160��$��Right=�$��0,5,0,5q�
 �� # Z $ TwoWay=�$' !SelectedPrinterSettings.yhomeMode�.@��� $	��Min���� $	��Max���� $��0���� $��Z��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $	��160��$��Right=�$��0,5,0,5q�
 �� # Z $ TwoWay=�$' !SelectedPrinterSettings.zhomemode�.@��� $	��Min���� $	��Max���� $��0���� $��5��$��2��$ 
Horizontal=�.+��� $��X min��$��0 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$" SelectedPrinterSettings.XMin��� $��-  X max��$��	15 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$" SelectedPrinterSettings.XMax��� $��Y min��$��	60 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$" SelectedPrinterSettings.YMin��� $��-  Y max��$��	15 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $ TwoWay=�$" SelectedPrinterSettings.YMax��� $��7��$��1��$ 
Horizontal=�$��0,0,0,0q�.+��� $��	20 0 10 0q�$��Right=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Left��� $��0,5,0,0q�$��80��$��Right=����� # Z $ TwoWay=�$% SelectedPrinterSettings.BedLeft��� $��	40 0 10 0q�$��Right=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Front��� $��0,5,0,0q�$��80��$��Right=����� # Z $ TwoWay=�$&  SelectedPrinterSettings.BedFront��� $��10��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$, &SelectedPrinterSettings.PrintAreaWidth��� $��11��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$, &SelectedPrinterSettings.PrintAreaDepth��� $��12��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$- 'SelectedPrinterSettings.PrintAreaHeight��� $��13��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$* $SelectedPrinterSettings.DumpAreaLeft��� $��14��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.DumpAreaFront��� $��15��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.DumpAreaWidth��� $��16��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.DumpAreaDepth��� $��17��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.rostockRadius��� $��18��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$+ %SelectedPrinterSettings.rostockHeight��� $��19��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z $ TwoWay=�$% SelectedPrinterSettings.cncZTop�  $��Stretch=����� # Z $ CurrentLanguage.Extruders�.���� $
��Auto=�$��Hidden=�$��0q�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 0 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.ExtruderNumber��� $��0��$��1��$��Right=�$	��250��$��0,15,0,5q����� # Z $ TwoWay=�$) #SelectedPrinterSettings.numExtruder��� $��1��$��2��
������ $��0q����� # Z $' !SelectedPrinterSettings.Extruders�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 ���� ��  � |� .  ��  � �� ��  �� 
TargetType" ��.R���  �� Triggers P�  P� Property �@��
IsSelected P� Value . . ���  � �� Z� ��  � �� Z� P�  �@J�IsMouseOver . . ���  � �� Z� ��  � �� Z� ����  �� DataType" ��.R�� 
������ $��Stretch=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $
��Auto ��� $��* �.+��� $	��0.5q�$��1��$��Stretch=�$��2��$��0,7,0,7q�
�������$��0���� $��0 10 0 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.ExtruderName��� $��1��$��1��$��Right=�$	��250��$��0,15,0,5q����� *Name+�� $��0 10 0 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.ExtruderDiameter��� $��2��$��1��$��Right=�$	��250��$��0,15,0,5q����� *
Diameter+�� $��0 10 0 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $/ )CurrentLanguage.ExtruderTemperatureOffset��� $��3��$��1��$��Right=�$	��250��$��0,15,0,5q����� *OffsetTemperature+�� $��0 10 0 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.ExtruderColor�#  Xceed.Wpf.Toolkit.ColorPicker  $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�   SelectedColor �� *ExtruderColor+ �� 	Converter# [  �� $��5��$��2��$ 
Horizontal=�.+��� $��0 0 10 0q�$��Right=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.ExtruderOffsetX��� $��25,5,0,0q�$��80��$��Right=����� *	OffsetX+�� $��
120 0 10 0q�$��Right=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.ExtruderOffsetY��� $��25,5,0,0q�$��80��$��Right=����� *	OffsetY+