   M S B A M L   `   `   `  ���� ^  ZAurelienRibon.Ui.SyntaxHighlightBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null�^clr-namespace:AurelienRibon.Ui.SyntaxHighlightBox;assembly=AurelienRibon.Ui.SyntaxHighlightBox#AurelienRibon.Ui.SyntaxHighlightBox  D @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:_3DPrinter.setting_3DPrinter.setting ?$clr-namespace:_3DPrinter.view.editor_3DPrinter.view.editor '   !_3DPrinter.view.editor.CodeEditor   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     }syntaxHighlightBox^clr-namespace:AurelienRibon.Ui.SyntaxHighlightBox;assembly=AurelienRibon.Ui.SyntaxHighlightBox     4setting clr-namespace:_3DPrinter.setting     7editor$clr-namespace:_3DPrinter.view.editor     ` \ICSharpCode.AvalonEdit, Version=4.3.1.9429, Culture=neutral, PublicKeyToken=9cc39be672370310?
avalonedit.http://icsharpcode.net/sharpdevelop/avalonedit      SettingWindowBackgroundColor#��[    � 	Resources    editorStyle �� 
TargetType<   6AurelienRibon.Ui.SyntaxHighlightBox.SyntaxHighlightBox  TextBoxStyle �� BasedOn �� Property �� Value  editorStyle2'  !ICSharpCode.AvalonEdit.TextEditor  HeaderTextBlockStyle��%a  &	       7  7   &	     7   &	 �    �� "  8   .���  �@��AcceptsReturn . ��  �@��
AcceptsTab . �� % �@��HorizontalScrollBarVisibility$
 Auto=��� # �@��VerticalScrollBarVisibility$
 Auto=���  � ��$ Courier New)���  � ��$
 12pt(���  � ��8  ��  � ��
 ���� �� "  .��� % �@ HorizontalScrollBarVisibility$
 Auto=��� # �@ VerticalScrollBarVisibility$
 Auto=���  � ��$ Courier New)���  � ��$
 12pt(���  � ��8   ��  � ��
 ���� �� " ��.���  � ��$ 22(���  � �� �	#FF00AADE.���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* �.+��� -   $��0��$��20,10q����� %  _3DPrinter.setting.Localization   Instance �� Source# Z  �� Path$ CurrentLanguage.SaveGCode�  -   	  Name$	 editor1��$��2��
   ShowLineNumbers
 .    SyntaxHighlightingM  GICSharpCode.AvalonEdit.Highlighting.HighlightingDefinitionTypeConverter$ G-Code #��[ � $��1��$	��0,5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��Stretch=�$��1�����	#FF00AADE$��1q�$
��20,5q��� $��1��#��[ $
��20,3q�$��18(�$��Center=����� # Z $ CurrentLanguage.Statistic��� $��2��$��0��  TextBlockStyle#��[ $
��20,3q�$��16(����� # Z $! CurrentLanguage.ProcessTime��� $��3��$��0��#��[ $
��20,3q�$��16(����� # Z $  CurrentLanguage.LayerCount��� $��4��$��0��#��[ $
��20,3q�$��16(����� # Z $ CurrentLanguage.LineCount��� $��5��$��0��#��[ $
��20,3q�$��16(����� # Z $$ CurrentLanguage.FilamentLength��� $��2��$��1��#��[ $
��20,3q�$��16(�$��Right=����	#FF00AADE���� )  #_3DPrinter.setting.SettingsProvider   Instance# Z $* $PrintingStatistic.PrintingTimeFormat��� $��3��$��1��#��[ $
��20,3q�$��16(�$��Right=����	#FF00AADE���� # Z $# PrintingStatistic.LayersCount��� $��4��$��1��#��[ $
��20,3q�$��16(�$��Right=����	#FF00AADE���� # Z $% PrintingStatistic.LineCodeCount��� $��5��$��1��#��[ $
��20,3q�$��16(�$��Right=����	#FF00AADE���� # Z $&  PrintingStatistic.FilamentLength� �� StringFormat$ {0} мм���� $��6��$��Stretch=�$��1�����	#FF00AADE$��1q�$
��20,5q�