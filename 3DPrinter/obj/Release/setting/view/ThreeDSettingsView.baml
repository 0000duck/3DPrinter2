   M S B A M L   `   `   `  ���� q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 0   *_3DPrinter.setting.view.ThreeDSettingsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     X TXceed.Wpf.Toolkit, Version=3.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  .setting clr-namespace:_3DPrinter.setting  0view%clr-namespace:_3DPrinter.setting.view    � 	Resources  5  /_3DPrinter.setting.view.MColorToDColorConverter   MColor_To_DColor��%   &	          .��� $��Stretch=�$��Stretch=�$��
20,0,20,20q� � RowDefinitions �� $
��Auto ��� $��* �.+��� $��0 0 0 20q�$��0��$
��Left=�  HeaderTextBlockStyle#��[ ���� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$# CurrentLanguage.Visualization�'   !System.Windows.Controls.Accordion  $��Stretch=�$��Stretch=�$��1��.@�+   %System.Windows.Controls.AccordionItem  $��Stretch=����� # Z $ CurrentLanguage.Common�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� -    ��Name$	 cb6��$��5��$��0,5,5,5q�$��2������ # Z $" CurrentLanguage.ShowPrintBed� d� 	IsChecked �� )  #_3DPrinter.setting.SettingsProvider   Instance# Z $! ThreeDSettings.showPrintbed�	 �� Mode$	 TwoWay=��� -   $	 cb7��$��6��$��0,5,5,5q�$��2������ # Z $! CurrentLanguage.ShowCompass� �� # Z $  ThreeDSettings.ShowCompass�$	 TwoWay=��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.BackgroundTop��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.BackgroungBottom��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.BedColor��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $' !CurrentLanguage.PrinterFrameColor�#  Xceed.Wpf.Toolkit.ColorPicker  $��Right=�$��0��$��1��$	��150��$��0,5,0,5q�
   SelectedColor
 �� # Z $	 TwoWay=�$" ThreeDSettings.backgroundTop� �� 	Converter# [    $��Right=�$��1��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$% ThreeDSettings.backgroundBottom�# [    $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$  ThreeDSettings.printerBase�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$! ThreeDSettings.printerFrame�# [  �� $��1q�$��1��$��Stretch=�$��20,20,20,20q�
�������$��4��$��2��  $��Stretch=����� # Z $ CurrentLanguage.Model�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.FaceColor��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.InnerFaceColor��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.CuttedFaceColor��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Edges��� $��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $) #CurrentLanguage.SelectedObjectColor��� $��0 0 20 0q�$��5��$
��Left=�#��[ $��14(�$��Center=����� # Z $( "CurrentLanguage.SelectedFrameColor��� $��0 0 20 0q�$��6��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.OuterObjectColor��� $��0 0 20 0q�$��7��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.ErrorObject��� $��0 0 20 0q�$��8��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.ErrorEdgeColor�  $��Right=�$��0��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.faces�# [    $��Right=�$��1��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$  ThreeDSettings.insideFaces�# [    $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.cutFaces�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.edges�# [    $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$" ThreeDSettings.selectedFaces�# [    $��Right=�$��5��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$! ThreeDSettings.selectionBox�# [    $��Right=�$��6��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$$ ThreeDSettings.outsidePrintbed�# [    $��Right=�$��7��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.errorModel�# [    $��Right=�$��8��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$# ThreeDSettings.errorModelEdge�# [    $��Stretch=����� # Z $ CurrentLanguage.Filament�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.FilamentColor��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.FilamentColor��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.HotFilamentColor��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $+ %CurrentLanguage.SelectedFilamentColor�  $��Right=�$��0��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.filament�# [    $��Right=�$��1��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.filament2�# [    $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$  ThreeDSettings.hotFilament�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$% ThreeDSettings.selectedFilament�# [    $��Stretch=�$��0q����� # Z $ CurrentLanguage.Lights�.��  $��Stretch=�$	��5,5q�.@�  $��Stretch=����� # Z $ CurrentLanguage.Light1�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��2��$��0��$��0,5,5,5q����� # Z $! CurrentLanguage.LightEnable� �� # Z $! ThreeDSettings.enableLight1�$	 TwoWay=��� $��2��$��1�� �� Orientation$ 
Horizontal=�$��Stretch=�.+��� $��0 0 20 0q�$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.LightDirection��� $��X��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.xdir1��� $��Y��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.ydir1��� $��Z��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.zdir1��� $��0��$��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.AmbientColor��� $��0��$��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.DifusseColor��� $��0��$��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Specular�  $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.ambient1�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.diffuse1�# [    $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.specular1�# [    $��Stretch=����� # Z $ CurrentLanguage.Light2�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0��$��2��$��0,5,5,5q����� # Z $! CurrentLanguage.LightEnable� �� # Z $! ThreeDSettings.enableLight2�$	 TwoWay=��� $��2��$��1��$ 
Horizontal=�$��Stretch=�.+��� $��0 0 20 0q�$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.LightDirection��� $��X��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.xdir2��� $��Y��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.ydir2��� $��Z��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.zdir2��� $��0��$��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.AmbientColor��� $��0��$��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.DifusseColor��� $��0��$��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Specular�  $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.ambient2�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.diffuse2�# [    $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.specular2�# [    $��Stretch=����� # Z $ CurrentLanguage.Light3�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��2��$��0��$��0,5,5,5q����� # Z $! CurrentLanguage.LightEnable� �� # Z $! ThreeDSettings.enableLight3�$	 TwoWay=��� $��2��$��1��$ 
Horizontal=�$��Stretch=�.+��� $��0 0 20 0q�$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.LightDirection��� $��X��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.xdir3��� $��Y��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.ydir3��� $��Z��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.zdir3��� $��0��$��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.AmbientColor��� $��0��$��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.DifusseColor��� $��0��$��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Specular�  $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.ambient3�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.diffuse3�# [    $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.specular3�# [    $��Stretch=����� # Z $ CurrentLanguage.Light4�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��2��$��0��$��0,5,5,5q����� # Z $! CurrentLanguage.LightEnable� �� # Z $! ThreeDSettings.enableLight4�$	 TwoWay=��� $��2��$��1��$ 
Horizontal=�$��Stretch=�.+��� $��0 0 20 0q�$
��Left=�#��[ $��18(�$��Center=����� # Z $$ CurrentLanguage.LightDirection��� $��X��$��	20 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.xdir4��� $��Y��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.ydir4��� $��Z��$��	40 0 10 0q�$
��Left=�#��[ $��14(�$��Center=��� $��0,5,0,0q�$��60������ # Z $	 TwoWay=�$ ThreeDSettings.zdir4��� $��0��$��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.AmbientColor��� $��0��$��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $" CurrentLanguage.DifusseColor��� $��0��$��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Specular�  $��Right=�$��2��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.ambient4�# [    $��Right=�$��3��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.diffuse4�# [    $��Right=�$��4��$��1��$	��150��$��0,5,0,5q�
 �� # Z $	 TwoWay=�$ ThreeDSettings.specular4�# [  