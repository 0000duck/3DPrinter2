   M S B A M L   `   `   `  ���� q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 0   *_3DPrinter.setting.view.SlicerSettingsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     4setting clr-namespace:_3DPrinter.setting     6view%clr-namespace:_3DPrinter.setting.view       � 	Resources  2  ,_3DPrinter.setting.view.DoubleToIntConverter   DoubleToIntConverter��%   &	          .��� $��Stretch=�$��Stretch=�$��
20,0,20,20q� � ColumnDefinitions �� $
��Auto ��� $��* � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* �.+��� $��	0,21,0,20q�$��1��$
��Left=�  HeaderTextBlockStyle#��[ $��14(�$��Center=����� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$# CurrentLanguage.SlicerProfile���  �� Orientation$ 
Horizontal=�$��1��$��1��$��Right=�.+��� -    ��Name$ printerComboBox��$	��250��$��Right=�$��	0,15,0,15q� �� 
IsEditable . 	 �� SelectedIndex	 �� )  #_3DPrinter.setting.SettingsProvider
   Instance# Z
  �� Mode$ TwoWay=�$! SelectedSlicerSettingsIndex����� # Z
 $ OneWay=�$ SlicerNameList��� -   $��	0,15,0,15q�$��Right=� � ToolTip �� # Z $ CurrentLanguage.Delete�.���� $��Center=�$��Center=�$"��../../images/del_printer.png��$��20��$��20��$
��Fill=��� $��0 0 0 20q�$
��Left=�#��[ ���� # Z $$ CurrentLanguage.SlicerSettings�'   !System.Windows.Controls.Accordion  $��Stretch=�$��Stretch=�$��2��$��0q�$��2��.@�+   %System.Windows.Controls.AccordionItem  ���� # Z $ CurrentLanguage.Speed�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��1* ��� $��1* �.+��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $  CurrentLanguage.PrintSpeed��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.TravelSpeed��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.FirstLayerSpeed��� $��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $) #CurrentLanguage.OuterPerimeterSpeed��� $��0 0 20 0q�$��5��$
��Left=�#��[ $��14(�$��Center=����� # Z $) #CurrentLanguage.InnerPerimeterSpeed��� $��0 0 20 0q�$��6��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.InfillSpeed��� $��0 0 20 0q�$��7��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.SkinInfillSpeed��� $��1��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $' !SelectedSlicerSettings.printSpeed�$ TwoWay=��� $��2��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $&  SelectedSlicerSettings.moveSpeed�$ TwoWay=��� $��3��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $. (SelectedSlicerSettings.initialLayerSpeed�$ TwoWay=��� $��4��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $( "SelectedSlicerSettings.inset0Speed�$ TwoWay=��� $��5��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $( "SelectedSlicerSettings.insetXSpeed�$ TwoWay=��� $��6��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $( "SelectedSlicerSettings.infillSpeed�$ TwoWay=��� $��7��$��1��$��2��$��Stretch=�$��	10,5,10,5q����� # Z
 $&  SelectedSlicerSettings.skinSpeed�$ TwoWay=�  ���� # Z $ CurrentLanguage.Quality�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.LayerHeight��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $&  CurrentLanguage.FirstLayerHeight��� $��0��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $+ %SelectedSlicerSettings.layerThickness�$ TwoWay=� �� 	Converter# [  �� $��1��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $2 ,SelectedSlicerSettings.initialLayerThickness�$ TwoWay=�# [    $��0q����� # Z $  CurrentLanguage.Structures�.���� $
��Auto=�$��Hidden=�$��0q�.���� $��0q�.+�� $��Stretch=�$
��15,7q� �� $
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
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.ShellThinckness��� $��0��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.extrusionWidth�# [  �� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.InfillOverlap��� $��2��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.infillOverlap��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.InfillPattern��� $	��300��$��Right=�$��3��$��1��$��0,5,0,5q�	 �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.infillPattern�.@��� ���� # Z $ CurrentLanguage.Automatic��� ���� # Z $ CurrentLanguage.Grid��� ���� # Z $ CurrentLanguage.Lines��� ���� # Z $  CurrentLanguage.Concentric��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��6��$��2���� $��0 0 20 0q�$��7��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.SupportPattern��� $��0 0 20 0q�$��8��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.OverhangAngle��� $��0 0 20 0q�$��10��$
��Left=�#��[ $��14(�$��Center=����� # Z $  CurrentLanguage.DistanceXY��� $��0 0 20 0q�$��11��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.DistanceZ��� $	��300��$��Right=�$��7��$��1��$��0,5,0,5q�	 �� # Z
 $ TwoWay=�$( "SelectedSlicerSettings.supportType�.@��� ���� # Z $ CurrentLanguage.Grid��� ���� # Z $ CurrentLanguage.Lines��� $��8��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$) #SelectedSlicerSettings.supportAngle��� $��10��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$. (SelectedSlicerSettings.supportXYDistance�# [  �� $��11��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.supportZDistance�# [  �� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��12��$��2���� $��0 0 20 0q�$��13��$
��Left=�#��[ $��14(�$��Center=����� # Z $$ CurrentLanguage.SkirtLineCount��� $��0 0 20 0q�$��14��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.SkirtDistance��� $��13��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.skirtLineCount��� $��14��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.skirtDistance��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��27��$��2���� $��0 0 20 0q�$��28��$
��Left=�#��[ $��14(�$��Center=����� # Z $! CurrentLanguage.GCodeFlavor��� $	��300��$��Right=�$��28��$��1��$��0,5,0,5q�	 �� # Z
 $ TwoWay=�$( "SelectedSlicerSettings.gcodeFlavor�.@��� $'��!RepRap (Repetier/Marlin/Sprinter)���� $��	UltiGCode���� $��Makerbot���� $	��BFB���� $��Mach3���� $��RepRap Volumetric��  $��0q����� # Z $ CurrentLanguage.Extrusion�.���� $
��Auto=�$��Hidden=�$��0q�.���� $��0q�.+�� $��Stretch=�$
��15,7q� �� $
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
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.RetractionSpeed��� $��0 0 20 0q�$��1��$
��Left=�#��[ $��14(�$��Center=����� # Z $( "CurrentLanguage.RetractionDistance��� $��0 0 20 0q�$��2��$
��Left=�#��[ $��14(�$��Center=����� # Z $, &CurrentLanguage.MinTravelBeforeRetract��� $��0 0 20 0q�$��3��$
��Left=�#��[ $��14(�$��Center=����� # Z $/ )CurrentLanguage.MinExtrusionBeforeRetract��� $��0 0 20 0q�$��4��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.ZHop��� $��0 0 20 0q�$��5��$
��Left=�#��[ $��14(�$��Center=����� # Z $( "CurrentLanguage.CutOffObjectBottom��� $��0��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$, &SelectedSlicerSettings.retractionSpeed��� $��1��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.retractionAmount�# [  �� $��2��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$6 0SelectedSlicerSettings.retractionMinimalDistance�# [  �� $��3��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$= 7SelectedSlicerSettings.minimalExtrusionBeforeRetraction�# [  �� $��4��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.retractionZHop�# [  �� $��5��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$' !SelectedSlicerSettings.objectSink�# [  �� $��0��$��8��$��2��$��0,5,0,5q����� # Z $&  CurrentLanguage.SpiralizeContour� d� 	IsChecked �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.spiralizeMode��� $��0��$��10��$��2��$��0,5,0,5q����� # Z $+ %CurrentLanguage.PerimeterBeforeInfill� �� # Z
 $ TwoWay=�$2 ,SelectedSlicerSettings.perimeterBeforeInfill��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��11��$��2���� $��0 0 20 0q�$��12��$
��Left=�#��[ $��14(�$��Center=����� # Z $% CurrentLanguage.SupportExtruder��� $��0 0 20 0q�$��13��$
��Left=�#��[ $��14(�$��Center=����� # Z $0 *CurrentLanguage.RetractionOnExtruderSwitch��� $��0 0 20 0q�$��15��$
��Left=�#��[ $��14(�$��Center=����� # Z $# CurrentLanguage.VolumeOverlap��� $	��250��$��Right=�$��12��$��1��$��0,5,0,5q� �� DisplayMemberPath$
 Name��	 �� # Z
 $ TwoWay=�$, &SelectedSlicerSettings.supportExtruder����� # Z
 $' !SelectedPrinterSettings.Extruders��� $��13��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$; 5SelectedSlicerSettings.retractionAmountExtruderSwitch�# [  �� $��15��$��1��$��Right=�$	��250��$��0,5,0,5q����� # Z
 $ TwoWay=�$/ )SelectedSlicerSettings.multiVolumeOverlap�# [  �� $��0��$��17��$��2��$��0,5,0,5q����� # Z $&  CurrentLanguage.CreateOozeShield� �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.enableOozeShield��� $	��0.5q�$��1��$��Stretch=�$��0,7,0,7q�
�������$��18��$��2���� $��0��$��21��$��2��$��0,5,0,5q����� # Z $" CurrentLanguage.CoolHeadLift� �� # Z
 $ TwoWay=�$) #SelectedSlicerSettings.coolHeadLift�  $��Stretch=����� # Z $ CurrentLanguage.GCode�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $��* � �� $
��Auto ��� $��* �.+��� $��0 0 20 0q�$��0��$
��Left=�#��[ $��14(�$��Center=����� # Z $ CurrentLanguage.Position��� -   $	��300��$��Right=�$��0��$��1��$��0,5,0,5q�.@��� ���� # Z $  CurrentLanguage.StardGCode��� ���� # Z $ CurrentLanguage.EndGCode��� ���� # Z $* $CurrentLanguage.BeforeExtruderSwitch��� ���� # Z $) #CurrentLanguage.AfterExtruderSwitch��� -    ��Name$ codeBox��$��1��$��2��$��Stretch=�$��Stretch=�$��0,5,0,5q� �� TextWrapping$
 Wrap=� �� AcceptsReturn .   $��Stretch=����� # Z $ CurrentLanguage.Advanced�.��� $��Stretch=�$
��15,7q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� $��0��$��0,5,0,5q����� # Z $( "CurrentLanguage.CombineEverythingA� �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.Comb_Every_TypeA��� $��1��$��0,5,0,5q����� # Z $( "CurrentLanguage.CombineEverythingB� �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.Comb_Every_TypeB��� $��2��$��0,5,0,5q����� # Z $# CurrentLanguage.KeepOpenFaces� �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.KeepOpenFaces��� $��3��$��0,5,0,5q����� # Z $( "CurrentLanguage.ExtensiveStitching� �� # Z
 $ TwoWay=�$/ )SelectedSlicerSettings.ExtensiveStitching�