   M S B A M L   `   `   `  ����q  mSystem.Windows.Controls.Layout.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.ToolkitSystem.Windows.Controls  5      D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting 5      A%clr-namespace:_3DPrinter.setting.view_3DPrinter.setting.view 5      0   *_3DPrinter.setting.view.SlicerSettingsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      jcontrolsUclr-namespace:System.Windows.Controls;assembly=System.Windows.Controls.Layout.Toolkit     5      4setting clr-namespace:_3DPrinter.setting     5      6view%clr-namespace:_3DPrinter.setting.view     5        � 	Resources  5
      2  ,_3DPrinter.setting.view.DoubleToIntConverter   DoubleToIntConverter��%   &	          5   
   6$   5      .��5      � $��Stretch=�6   $��Stretch=�6)   $��
20,0,20,20q�6F    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��	0,21,0,20q�6y   $��1��6�   $
��Left=�6�     HeaderTextBlockStyle#��[ 6�   $��14(�6�   $��Center=�6�   ��6   �� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$# CurrentLanguage.SlicerProfile�6�   �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��6/   $��1��6<   $��Right=�6L   .+�5      �� -   5         ��Name$ printerComboBox��5      $	��250��60   $��Right=�6<   $��	0,15,0,15q�6X    �� 
IsEditable . 	 �� SelectedIndex	 6�   �� )  #_3DPrinter.setting.SettingsProvider
   Instance# Z
  �� Mode$ TwoWay=�$! SelectedSlicerSettingsIndex���6  �� # Z
 $ OneWay=�$ SlicerNameList��� 5      -   5        $��	0,15,0,15q�5      $��Right=�6(    � ToolTip 6_   �� # Z $ CurrentLanguage.Delete�.��5       �� $��Center=�6   $��Center=�65   $"��../../images/del_printer.png��6P   $��20��6v   $��20��6�   $
��Fill=�6�   5!      5"      �� 5$   
   $��0 0 0 20q�6z   $
��Left=�6�   #��[ 6�   ��6   �� # Z $$ CurrentLanguage.SlicerSettings�6�   '   !System.Windows.Controls.Accordion  5&   
   $��Stretch=�6   $��Stretch=�6;   $��2��6W   $��0q�6d   $��2��6p   .@�5(      +   %System.Windows.Controls.AccordionItem  ��6%   �� # Z $ CurrentLanguage.Speed�.��5)      � $��Stretch=�6   $
��15,7q�65    5*      �� 5+      $
��Auto �6(   �� 5,      $
��Auto �6(   �� 5-      $
��Auto �6(   �� 5.      $
��Auto �6(   �� 5/      $
��Auto �6(   �� 50      $
��Auto �6(   �� 51      $
��Auto �6(   �� 52      $
��Auto �6(    54      �� 55      $
��Auto �6+   �� 56      $��1* �6+   �� 57      $��1* �6+   .+�5:      �� $��0 0 20 0q�6�   $��1��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $  CurrentLanguage.PrintSpeed�6�   �� 5;      $��0 0 20 0q�6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $! CurrentLanguage.TravelSpeed�6�   �� 5=      $��0 0 20 0q�6�   $��3��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $% CurrentLanguage.FirstLayerSpeed�6�   �� 5>      $��0 0 20 0q�6�   $��4��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6    �� # Z $) #CurrentLanguage.OuterPerimeterSpeed�6  �� 5@      $��0 0 20 0q�6�   $��5��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6    �� # Z $) #CurrentLanguage.InnerPerimeterSpeed�6  �� 5A      $��0 0 20 0q�6�   $��6��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $! CurrentLanguage.InfillSpeed�6�   �� 5B      $��0 0 20 0q�6�   $��7��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $% CurrentLanguage.SkinInfillSpeed�6�   �� 5H      $��1��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6p   ��6�   �� # Z
 $' !SelectedSlicerSettings.printSpeed�$ TwoWay=��� 5J      $��2��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $&  SelectedSlicerSettings.moveSpeed�$ TwoWay=��� 5L      $��3��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $. (SelectedSlicerSettings.initialLayerSpeed�$ TwoWay=��� 5N      $��4��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $( "SelectedSlicerSettings.inset0Speed�$ TwoWay=��� 5P      $��5��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $( "SelectedSlicerSettings.insetXSpeed�$ TwoWay=��� 5R      $��6��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $( "SelectedSlicerSettings.infillSpeed�$ TwoWay=��� 5T      $��7��6   $��1��6+   $��2��6;   $��Stretch=�6P   $��	10,5,10,5q�6o   ��6�   �� # Z
 $&  SelectedSlicerSettings.skinSpeed�$ TwoWay=�5U      5V        5X      ��6%   �� # Z $ CurrentLanguage.Quality�.��5Y      � $��Stretch=�6   $
��15,7q�65    5Z      �� 5[      $
��Auto �6(   �� 5\      $
��Auto �6(   �� 5]      $
��Auto �6(   �� 5^      $��* �6(    5`      �� 5a      $
��Auto �6+   �� 5b      $��* �6+   .+�5e      �� $��0 0 20 0q�6�   $��0��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $! CurrentLanguage.LayerHeight�6�   �� 5f      $��0 0 20 0q�6�   $��1��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $&  CurrentLanguage.FirstLayerHeight�6�   �� 5k      $��0��6   $��1��6+   $��Right=�6<   $	��250��6Y   $��0,5,0,5q�6e   ��6v   �� # Z
 $+ %SelectedSlicerSettings.layerThickness�$ TwoWay=� �� 	Converter# [  �� 5l      $��1��6   $��1��6+   $��Right=�6<   $	��250��6Y   $��0,5,0,5q�6e   ��6v   �� # Z
 $2 ,SelectedSlicerSettings.initialLayerThickness�$ TwoWay=�# [  5q      5r        5t      $��0q�6�   ��6%   �� # Z $  CurrentLanguage.Structures�.��5u      �� $
��Auto=�6   $��Hidden=�6C   $��0q�6j   .��5v      �� $��0q�6!   .+�5w      � $��Stretch=�6   $
��15,7q�6=    5x      �� 5y   "   $
��Auto �60   �� 5z   "   $
��Auto �60   �� 5{   "   $
��Auto �60   �� 5|   "   $
��Auto �60   �� 5}   "   $
��Auto �60   �� 5~   "   $
��Auto �60   �� 5   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60    5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63   .+�5�      �� $��0 0 20 0q�6�   $��0��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $% CurrentLanguage.ShellThinckness�6  �� 5�      $��0��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.shellThickness��� 5�      $��0 0 20 0q�6�   $��1��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6
  ��6(   �� # Z $) #CurrentLanguage.TopBottomThinckness�6
  �� 5�      $��1��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$/ )SelectedSlicerSettings.topBottomThickness��� 5�      $��0 0 20 0q�6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $# CurrentLanguage.InfillOverlap�6  �� 5�      $��2��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.infillOverlap��� 5�      $��0 0 20 0q�6�   $��3��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $# CurrentLanguage.InfillPattern�6  �� 5�      $	��300��6'   $��Right=�63   $��3��6O   $��1��6\   $��0,5,0,5q�6m   	 6~   �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.infillPattern�.@�5�   "   �� ��6/   �� # Z $ CurrentLanguage.Automatic��� 5�   "   ��6/   �� # Z $ CurrentLanguage.Grid��� 5�   "   ��6/   �� # Z $ CurrentLanguage.Lines��� 5�   "   ��6/   �� # Z $  CurrentLanguage.Concentric�5�      �� 5�      $	��0.5q�6%   $��1��6;   $��Stretch=�6F   $��0,7,0,7q�6d   
�������$��6��6�   $��2��6�   6�   �� 5�      $��0 0 20 0q�6�   $��7��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $$ CurrentLanguage.SupportPattern�6  �� 5�      $��0 0 20 0q�6�   $��8��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $# CurrentLanguage.OverhangAngle�6  �� 5�      $��0 0 20 0q�6�   $��10��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $  CurrentLanguage.DistanceXY�6  �� 5�      $��0 0 20 0q�6�   $��11��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $ CurrentLanguage.DistanceZ�6  �� 5�      $	��300��6'   $��Right=�63   $��7��6O   $��1��6\   $��0,5,0,5q�6m   	 6~   �� # Z
 $ TwoWay=�$( "SelectedSlicerSettings.supportType�.@�5�   "   �� ��6/   �� # Z $ CurrentLanguage.Grid��� 5�   "   ��6/   �� # Z $ CurrentLanguage.Lines�5�      �� 5�      $��8��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$) #SelectedSlicerSettings.supportAngle��� 5�      $��10��6&   $��1��64   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$. (SelectedSlicerSettings.supportXYDistance�# [  �� 5�      $��11��6&   $��1��64   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.supportZDistance�# [  �� 5�      $	��0.5q�6%   $��1��6;   $��Stretch=�6F   $��0,7,0,7q�6d   
�������$��12��6�   $��2��6�   6�   �� 5�      $��0 0 20 0q�6�   $��13��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $$ CurrentLanguage.SkirtLineCount�6  �� 5�      $��0 0 20 0q�6�   $��14��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $# CurrentLanguage.SkirtDistance�6  �� 5�      $��13��6&   $��1��64   $��Right=�6E   $	��250��6b   $��0,5,0,5q�6n   ��6   �� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.skirtLineCount��� 5�      $��14��6&   $��1��64   $��Right=�6E   $	��250��6b   $��0,5,0,5q�6n   ��6   �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.skirtDistance��� 5�      $	��0.5q�6%   $��1��6;   $��Stretch=�6F   $��0,7,0,7q�6d   
�������$��27��6�   $��2��6�   6�   �� 5�      $��0 0 20 0q�6�   $��28��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $! CurrentLanguage.GCodeFlavor�6  �� 5�      $	��300��6'   $��Right=�63   $��28��6O   $��1��6]   $��0,5,0,5q�6n   	 6   �� # Z
 $ TwoWay=�$( "SelectedSlicerSettings.gcodeFlavor�.@�5�   "   �� $'��!RepRap (Repetier/Marlin/Sprinter)��6/   �� 5�   "   $��	UltiGCode��6/   �� 5�   "   $��Makerbot��6/   �� 5�   "   $	��BFB��6/   �� 5   "   $��Mach3��6/   �� 5  "   $��RepRap Volumetric��6/   5     5     5     5     5       5
     $��0q�6�   ��6%   �� # Z $ CurrentLanguage.Extrusion�.��5     �� $
��Auto=�6   $��Hidden=�6C   $��0q�6j   .��5     �� $��0q�6!   .+�5     � $��Stretch=�6   $
��15,7q�6=    5     �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5  "   $
��Auto �60   �� 5   "   $
��Auto �60   �� 5!  "   $
��Auto �60   �� 5"  "   $
��Auto �60   �� 5#  "   $
��Auto �60   �� 5$  "   $
��Auto �60   �� 5%  "   $
��Auto �60    5'     �� 5(  "   $
��Auto �63   �� 5)  "   $��* �63   .+�5-     �� $��0 0 20 0q�6�   $��0��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $% CurrentLanguage.RetractionSpeed�6  �� 5.     $��0 0 20 0q�6�   $��1��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6	  ��6(   �� # Z $( "CurrentLanguage.RetractionDistance�6	  �� 50     $��0 0 20 0q�6�   $��2��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $, &CurrentLanguage.MinTravelBeforeRetract�6  �� 51     $��0 0 20 0q�6�   $��3��6�   $
��Left=�6�   #��[ 6�   $��14(�6  $��Center=�6  ��6(   �� # Z $/ )CurrentLanguage.MinExtrusionBeforeRetract�6  �� 53     $��0 0 20 0q�6�   $��4��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6(   �� # Z $ CurrentLanguage.ZHop�6�   �� 54     $��0 0 20 0q�6�   $��5��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6	  ��6(   �� # Z $( "CurrentLanguage.CutOffObjectBottom�6	  �� 5;     $��0��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$, &SelectedSlicerSettings.retractionSpeed��� 5<     $��1��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.retractionAmount�# [  �� 5=     $��2��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$6 0SelectedSlicerSettings.retractionMinimalDistance�# [  �� 5?     $��3��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$= 7SelectedSlicerSettings.minimalExtrusionBeforeRetraction�# [  �� 5@     $��4��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$+ %SelectedSlicerSettings.retractionZHop�# [  �� 5A     $��5��6&   $��1��63   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$' !SelectedSlicerSettings.objectSink�# [  �� 5L     $��0��6'   $��8��67   $��2��6D   $��0,5,0,5q�6�   ��6X   �� # Z $&  CurrentLanguage.SpiralizeContour� d� 	IsChecked 6�   �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.spiralizeMode��� 5P     $��0��6'   $��10��67   $��2��6E   $��0,5,0,5q�6�   ��6Y   �� # Z $+ %CurrentLanguage.PerimeterBeforeInfill� 6�   �� # Z
 $ TwoWay=�$2 ,SelectedSlicerSettings.perimeterBeforeInfill��� 5S     $	��0.5q�6%   $��1��6;   $��Stretch=�6F   $��0,7,0,7q�6d   
�������$��11��6�   $��2��6�   6�   �� 5V     $��0 0 20 0q�6�   $��12��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $% CurrentLanguage.SupportExtruder�6  �� 5W     $��0 0 20 0q�6�   $��13��6�   $
��Left=�6�   #��[ 6�   $��14(�6  $��Center=�6  ��6(   �� # Z $0 *CurrentLanguage.RetractionOnExtruderSwitch�6  �� 5\     $��0 0 20 0q�6�   $��15��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6  ��6(   �� # Z $# CurrentLanguage.VolumeOverlap�6  �� 5^     $	��250��6'   $��Right=�63   $��12��6O   $��1��6]   $��0,5,0,5q�6n    �� DisplayMemberPath$
 Name��6}  	 6   �� # Z
 $ TwoWay=�$, &SelectedSlicerSettings.supportExtruder���6	  �� # Z
 $' !SelectedPrinterSettings.Extruders�6}  �� 5`     $��13��6&   $��1��64   $��Right=�6E   $	��250��6b   $��0,5,0,5q�6n   ��6   �� # Z
 $ TwoWay=�$; 5SelectedSlicerSettings.retractionAmountExtruderSwitch�# [  �� 5c     $��15��6&   $��1��64   $��Right=�6D   $	��250��6a   $��0,5,0,5q�6m   ��6~   �� # Z
 $ TwoWay=�$/ )SelectedSlicerSettings.multiVolumeOverlap�# [  �� 5g     $��0��6'   $��17��67   $��2��6E   $��0,5,0,5q�6�   ��6Y   �� # Z $&  CurrentLanguage.CreateOozeShield� 6�   �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.enableOozeShield��� 5j     $	��0.5q�6%   $��1��6;   $��Stretch=�6F   $��0,7,0,7q�6d   
�������$��18��6�   $��2��6�   6�   �� 5s     $��0��6'   $��21��67   $��2��6E   $��0,5,0,5q�6�   ��6Y   �� # Z $" CurrentLanguage.CoolHeadLift� 6�   �� # Z
 $ TwoWay=�$) #SelectedSlicerSettings.coolHeadLift�5x     5y     5z     5{       5}     $��Stretch=�6�   ��6&   �� # Z $ CurrentLanguage.GCode�.��5~     � $��Stretch=�6   $
��15,7q�65    5     �� 5�     $
��Auto �6(   �� 5�     $��* �6(    5�     �� 5�     $
��Auto �6+   �� 5�     $��* �6+   .+�5�     �� $��0 0 20 0q�6�   $��0��6�   $
��Left=�6�   #��[ 6�   $��14(�6�   $��Center=�6�   ��6    �� # Z $ CurrentLanguage.Position�6�   �� 5�     -   5        $	��300��5�     $��Right=�6+   $��0��6G   $��1��6T   $��0,5,0,5q�6e   .@�5�     �� ��6'   �� # Z $  CurrentLanguage.StardGCode��� 5�     ��6'   �� # Z $ CurrentLanguage.EndGCode��� 5�     ��6'   �� # Z $* $CurrentLanguage.BeforeExtruderSwitch��� 5�     ��6'   �� # Z $) #CurrentLanguage.AfterExtruderSwitch�5�     �� 5�     -   5         ��Name$ codeBox��5�     $��1��6/   $��2��6<   $��Stretch=�6P   $��Stretch=�6l   $��0,5,0,5q�6�    �� TextWrapping$
 Wrap=�6�    �� AcceptsReturn . 6�   5�     5�       5�     $��Stretch=�6�   ��6&   �� # Z $ CurrentLanguage.Advanced�.��5�     � $��Stretch=�6   $
��15,7q�65    5�     �� 5�     $
��Auto �6(   �� 5�     $
��Auto �6(   �� 5�     $
��Auto �6(   �� 5�     $
��Auto �6(   �� 5�     $��* �6(   .+�5�     �� $��0��6   $��0,5,0,5q�6�   ��6,   �� # Z $( "CurrentLanguage.CombineEverythingA� 6�   �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.Comb_Every_TypeA��� 5�     $��1��6   $��0,5,0,5q�6�   ��6,   �� # Z $( "CurrentLanguage.CombineEverythingB� 6�   �� # Z
 $ TwoWay=�$- 'SelectedSlicerSettings.Comb_Every_TypeB��� 5�     $��2��6   $��0,5,0,5q�6�   ��6,   �� # Z $# CurrentLanguage.KeepOpenFaces� 6�   �� # Z
 $ TwoWay=�$* $SelectedSlicerSettings.KeepOpenFaces��� 5�     $��3��6   $��0,5,0,5q�6�   ��6,   �� # Z $( "CurrentLanguage.ExtensiveStitching� 6�   �� # Z
 $ TwoWay=�$/ )SelectedSlicerSettings.ExtensiveStitching�5�     5�     5�     5�     5�     