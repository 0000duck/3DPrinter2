   M S B A M L   `   `   `  ���� D  @3DPrinter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:_3DPrinter.view.ThreeD_3DPrinter.view.ThreeD  'clr-namespace:_3DPrinter
_3DPrinter  ;"clr-namespace:_3DPrinter.view.menu_3DPrinter.view.menu  K*clr-namespace:_3DPrinter.view.notification_3DPrinter.view.notification  ?$clr-namespace:_3DPrinter.view.editor_3DPrinter.view.editor  C&clr-namespace:_3DPrinter.view.controls_3DPrinter.view.controls  7 clr-namespace:_3DPrinter.setting_3DPrinter.setting  E'clr-namespace:_3DPrinter.projectManager_3DPrinter.projectManager      _3DPrinter.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     7threeD$clr-namespace:_3DPrinter.view.ThreeD     /
_3DPrinterclr-namespace:_3DPrinter     3menu"clr-namespace:_3DPrinter.view.menu     Cnotification*clr-namespace:_3DPrinter.view.notification     7editor$clr-namespace:_3DPrinter.view.editor     X TXceed.Wpf.Toolkit, Version=3.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5controls&clr-namespace:_3DPrinter.view.controls  .setting clr-namespace:_3DPrinter.setting  <projectManager'clr-namespace:_3DPrinter.projectManager  -     �Name$
  main�� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=�   CustomWindowStyle#��[   � Title$ PrintCAM��$��Stretch=�$��Stretch=�$
��1200��$	��800�� � 	Resources *   $_3DPrinter.NameFilePositionConverter  NameFilePosition!   _3DPrinter.VisibleConverter  VisibleConverter1%   _3DPrinter.BoolVisibleConverter  BoolVisibleConverter1(   "_3DPrinter.ExpanderHeightConverter  HeightConverter  familyCollection �� Source   System.Windows.Media.Fonts   SystemFontFamilies �� Source3  -System.Windows.Media.Effects.DropShadowEffect  ShadowEffect1   Opacity	   	Direction
   
BlurRadius   ShadowDepth  ExpanderStyle1 �� 
TargetType �� Property �� Value �� 
TargetType J� SnapsToDevicePixels � RowDefinitions d�Name d� 	IsChecked �� Mode �� RelativeSource � FocusVisualStyle �� Padding �� StrokeDashArray � ColumnDefinitions ��Name �� ContentStringFormat �� ContentStringFormat �� Triggers P� Property P� Value  �� 
TargetName! �� Mode" �� AncestorType# �� Path$ ��Name  WindowButtonOverColor 	 ExpanderStyle2% ��Name 
 ButtonStyleMin  ButtonStyleRotate& ��Name  ButtonStyleLock  ButtonStyleVisible  Rotate_90_ButtonStyle   _3DPrinter.SizeConverter  sizeConverter1  ButtonStyleSave' �� 	Converter  ButtonStyleDeleteModel  ButtonStyleAddModel  ButtonStyleLand  ButtonStyleFit  ButtonStyleAllocation  ButtonStyleCenter  ButtonStyleScale  ButtonStyleMove  Storyboard1( g� Duration) �� TargetProperty9  3System.Windows.Media.Animation.EasingDoubleKeyFrame* O� KeyTime+ O� Value,   EasingFunction4	  .System.Windows.Media.Animation.ExponentialEase7
  1System.Windows.Media.Animation.EasingFunctionBase- 
  
EasingMode. W� From	/ W� To  ButtonMenuStyle   WindowButtonForePressedColor  WindowForeColor0 �� ScaleX1 �� ScaleY2 8� X3 8� Y4 �� Triggers5 :� RoutedEvent6 g� AutoReverse7 �� Orientation  WindowColor  MenuButtonHighlightColor  WindowForeHighlightColor8 ]� 
Conditions9 �� Property: �� Value   RecentButtonStyle ! WindowButtonColor; � ToolTip< �� TextAlignment= �� 	Converter> T� X? T� Y@ �� BindingA �� ValueB N� EnterActions " SeparatorMenuStyle # ToggleMenuStyle'  !System.Windows.VisualStateManagerC   VisualStateGroups%  System.Windows.VisualStateGroupD   States   System.Windows.VisualStateE   
StoryboardF �� 
TargetNameG R� KeyTime $ ButtonHoverBackgroundBrushH R� Value % ButtonHoverBorderBrush & LightForegroundBrush  System.Windows.Visibility ' ButtonBackgroundBrush ( ButtonBorderBrush ) ButtonPressedBorderBrushI ��Name * ForegroundBrush + DisabledVisualElement , ComboBoxMenuStyleJ �� 
IsEditableK �� SelectedIndex��%xA  &	       &	      &	 
     &	      &	      &	 )     &	 R     7  7  &		 +    &	
 �    &	 �    &	 e    &	 �    &	 �    &	     &	     7  7  &	 �    7  7  &	 E    7  7  &	 �    &	 a!    &	 �"    &	 l$    &	 �%    &	 S(    &	 �*    &	 ~+    7  7  7  7  7  7  7  &	  /    7 ! 7  7  7 ! 7  7  7  &	" 4    7  7  &	# �4    7  7  7 $ 7 % 7 & 7  7  7 & 7 & 7 ' 7 ( 7  7 ) 7 * 7 ) 7 + 7  7  7  7  7  &	, >    7  7          ��  �� # Z   $	 0.8Q�$	 0Q�$
 70Q�$ 15Q��� " 9�.���  � ��# � ����  � ��
 ���� ��  � ��$ Stretch=���  � ��
 ���� ��  � ��$ 1q���  � �� �� " 9�.R��� #��z��$	��Top=�#��z��#��z�� . ._��  �� $
��Auto ��� $��* �.+�d� $ 
HeaderSite��$��0��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��$��1q�$��0��$��0��#��z�� �� *
IsExpanded+$ TwoWay=� �� *TemplatedParent+ �� .���  � �� �� .R��� $��0q�$ 0q�$��0q�._��� $��0q� . 
���   �$��1��$	 1 2R����� " d�.���  � �� �� " d�.R��� $��48��$��0q�$ 0q�$��0q�._�� 
������  .   �� $��48 ��� $��* �.+��� $��Center=�$��Center=�$��images/menu2.png��$��47��$��47��$��0q��� $ HeaderContent��#��z��#��z��$��1��# z $
��Left=�$��0,0,0,0q���.  . $��Center=��� $ 
ExpandSite��$��1��#��z��#��z��# z |�.  #��z��#��z��$y�	Collapsed=�#��z�� P�  �@9�
IsExpanded . . ��� $  
ExpandSite�� � y�$ Visible=��� $  
ExpandSite�� ��  �� $! FindAncestor=�"" 9�$# ActualHeight� � ���� 8    �@J�EffectP�  �@9�ExpandDirection$
 Left=�. ��� $  
ExpandSite�� � ��$
 Left=��� $  
HeaderSite�� � ��$ Right=��� $  
HeaderSite�� � �� �� " d�.���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�._�� 
������  .  $��0q� �� $��48 ��� $��* �.+�� 
������  .  $��0q� �� $��48 ��� $��* �.+��� $��Center=�$��Center=�$��images/menu2.png��$��47��$��47��$��0q��� $ HeaderContent��#��z��#��z��$��1��# z $
��Left=�$��0,0,0,0q���.  . $��Center=��� #��z��#��z��# z $��Center=�$��0,0,0,0q�$��1����.  . $	��Top=� P�  �@J�IsMouseOver . . ��� $  border1��8   � ��P�  � �� . . ��� $  border1�� � �� �	#ff566a99P�  � {� .  . ��� # � �� � ���� " 9�.���  � ��# � ����  � ��
 ���� ��  � ��$ Stretch=���  � ��
 ���� ��  � ��$ 1q���  � �� �� " 9�.R��� #��z��$��Stretch=�#��z��#��z�� . ._��  �� $
��Auto ��� $��* � �� $
��Auto ��� $��* �.+��� $��1��$��Stretch=�$��2��$��1q����	#3F000000d� $ 
HeaderSite��$��1��$��0��#��z��$
��Left=�#��z��#��z��#��z��#��z��#��z��#��z��#��z��$��1q�$��0��$��0��#��z�� �� *
IsExpanded+$ TwoWay=� �� *TemplatedParent+ �� .���  � �� �� .R��� $��0q�$ 0q�$��0q�._��� $��0q� . 
���   �$��1��$	 1 2R����� " d�.���  � �� �� " d�.R��� $��0q�$ 0q�$��0q�._�� 
������  .   �� $��44 ��� $��* � �� $��44 ��� $��* �.+��� $% Icon1��$��Center=�$��Center=�$��images/expander_left.png��$��20��$��20��$��0q��� $ HeaderContent��#��z��$y�Hidden=�#��z��$��1��# z $
��Left=�$��0,0,0,0q���.  . $��Center=�$��1���� $ HeaderPanel1��$��1��$��1��#��z��#��z��# z |�.  #��z��#��z��#��z���� $ 
ExpandSite��$��1��$��1��#��z��#��z��# z |�.  #��z��#��z��$y�	Collapsed=�#��z�� P�  �@9�
IsExpanded . . ��� $  
ExpandSite�� � y�$ Visible=��� $  
ExpandSite�� ��  �� $! FindAncestor=�"" 9�$# ActualHeight� � ���� $  HeaderPanel1�� � y�$ 	Collapsed=�P�  �@9�ExpandDirection$ Right=�. ��� $  
ExpandSite�� � ��$
 Left=��� $  
HeaderSite�� � ��$ Right=��� $  
HeaderSite�� � �� �� " d�.���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��._�� 
������  .  $��0q� �� $��44 ��� $��* �.+�� 
������  .  $��0q� �� $��44 ��� $��* �.+��� $% Icon1��$��Center=�$��Center=�$��images/expander_left.png��$��20��$��20��$��0q��� $ HeaderContent��#��z��#��z��$��1��# z $
��Left=�$��0,0,0,0q���.  . $��Center=��� $$ HeaderPanel��
������ $��Center=�$��0,0,0,0q�$��1��$	��Top=�$y�	Collapsed=�._��� #��z��#��z��# z $��Center=�$��0,0,0,0q�$��1����.  . $	��Top=� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#4f000000P�  � �� . . ��� $  border1�� � �� �	#2f000000P�  �@d�	IsChecked$
 TrueY�. ��� $  Icon1�� � ��$ images/expander_right.png���� $  HeaderPanel�� � y�$ 	Collapsed=�P�  �@d�	IsChecked$ FalseY�. ��� $  HeaderPanel�� � y�$ Visible=�P�  � {� .  . ��� # � �� � ���� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/save_g.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#4f000000P�  � �� . . ��� $  border1�� � �� �	#2f000000�� " d�.���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��._��  �� $��44 ��� $
��Auto �.+��� $% Icon1��$��Center=�$��Center=�$��images/rotate.png��$
��Fill=�$��32��$��32��$��0q��� $& track1��$��1��
������ $��44��$��5��$��0q�$y�	Collapsed=� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000P�  �@d�	IsChecked$
 TrueY�. ��� $  track1�� � y�$ Visible=��� $  border1�� � �� �	#4f000000��  � ��$	 Top=��� " d�.���  � ��$ Center=���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��24��._��� $% Icon1��$��Center=�$��Center=�$��images/unlock.png��$
��Fill=�$��24��$��24��$��0q� P�  �@d�	IsChecked$
 TrueY�. ��� $  Icon1�� � ��$ images/lock.png����  � ��$	 Top=��� " d�.���  � ��$ Center=���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/unvisible.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000P�  �@d�	IsChecked$
 TrueY�. ��� $  Icon1�� � ��$ images/visible.png����  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��30��$��30��._��� $
��90°��
�������$��14(�$��Center=�$��Center=� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=�  �� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�#��z��#��z��._��� $% Icon1��$��Center=�$��Center=�$��images/save_stl.png��$
��Fill=�$��0q����� *Width+8'   ���� *Height+8'   P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�#��z��#��z��._��� $% Icon1��$��Center=�$��Center=�$��images/delete_model.png��$
��Fill=�$��0q����� *Width+8'   ���� *Height+8'   P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�#��z��#��z��._��� $% Icon1��$��Center=�$��Center=�$��images/add_model.png��$
��Fill=�$��0q����� *Width+8'   ���� *Height+8'   P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/land.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/scale_to_fit.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/allocation2.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " ��.���  � �� �� " ��.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��$��44��._��� $% Icon1��$��Center=�$��Center=�$��images/centre.png��$
��Fill=�$��32��$��32��$��0q� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000��  � ��$	 Top=��� " d�.���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��._��  �� $��44 ��� $
��Auto �.+��� $% Icon1��$��Center=�$��Center=�$��images/scale.png��$
��Fill=�$��32��$��32��$��0q��� $& track1��$��1��
������ $��44��$��5��$��0q�$y�	Collapsed=� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000P�  �@d�	IsChecked$
 TrueY�. ��� $  track1�� � y�$ Visible=��� $  border1�� � �� �	#4f000000��  � ��$	 Top=��� " d�.���  � �� �� " d�.R��� $$ border1��$ 0q�$��0q�$��0q�$��44��._��  �� $��44 ��� $
��Auto �.+��� $% Icon1��$��Center=�$��Center=�$��images/move.png��$
��Fill=�$��32��$��32��$��0q��� $& track1��$��1��
������ $��44��$��5��$��0q�$y�	Collapsed=� P�  �@J�IsMouseOver . . ��� $  border1�� � �� �	#2f000000P�  � �� . . ��� $  border1�� � �� �	#6f000000P�  �@d�	IsChecked$
 TrueY�. ��� $  track1�� � y�$ Visible=��� $  border1�� � �� �	#4f000000��  � ��$	 Top=��� .��U� $( 0:0:0.3D�$,) &RenderTransform.(TranslateTransform.Y)�.\�  $* 0%��$+ 20Q�  $	* 99%��$+ 0Q�, 	  $- EaseOut=�W� $) Opacity�$	. 0.0X�$	/ 1.0X�$( 0:0:0.2D��� " ��.���  � ��$ 48����  � ��$ 18(���  � ��8   ��  � ��8  ��  � �� �� " ��.R��� -   $��0q�#��z������ " ��.���  � z� �� $0 1Q�$1 1Q���  �@J�RenderTransformOrigin 8� $	2 0.5Q�$	3 0.5Q�4 :� $5 PreviewMouseDown��[��� .���� .��W� $) RenderTransform.ScaleX�$
/ 0.95X�$( 0:0:0.15D�6 . W� $) RenderTransform.ScaleY�$
/ 0.95X�$( 0:0:0.15D�6 . ._��� $7 
Horizontal=�.+��� $��10,0,0,0q�$��24��$��24��$
��Fill=����� *Image+�� $��	10,0,10,0q�$��12(�$
��Left=�$
��Wrap=�$��Center=�$	��100������ *
TaskName+ P�  � {� .  . ��� 8   � ���� 8   � ��P�  �@J�IsMouseOver . . ��� 8   � ���� 8   � ��]� 8 �� 9 �@��
IsSelected: . �� 9 �@J�IsMouseOver: . ./��� 8   � ����  � �� �	#ffcfcfcf�� " ��.���  � ��$ 48����  � ��$ 18(���  � ��8   ��  � ��8  ��  � ��$	 195����  � �� �� " ��.R��� -   $��0q�
���Gc��#��z��; �� ���� " ��.���  � z� �� $0 1Q�$1 1Q���  �@J�RenderTransformOrigin 8� $	2 0.5Q�$	3 0.5Q�4 :� $5 PreviewMouseDown��[��� .���� .��W� $) RenderTransform.ScaleX�$
/ 0.95X�$( 0:0:0.15D�6 . W� $) RenderTransform.ScaleY�$
/ 0.95X�$( 0:0:0.15D�6 . ._��� $��15,0,5,0q�$��14(�$��Stretch=�$
< Left=�$��Center=�$	��199������ 8=   P�  � {� .  . ��� 8   � ���� 8   � ��P�  �@J�IsMouseOver . . ��� 8   � ���� 8   � ��]� 8 �� 9 �@��
IsSelected: . �� 9 �@J�IsMouseOver: . ./���  � �� �	#ff566a99��  � �� �	#ffcfcfcf��  �@J�RenderTransformOrigin 8� $2 1Q�$3 0Q���  � z� T� TranslateTransform��$> 0Q�$? 30Q�-   4 �� @ ��  �� *FindAncestor+$" ListViewL�$# 
Visibility�A VisibleB �� .���� .��U� $( 0:0:0.3D�$,) &RenderTransform.(TranslateTransform.Y)�.\�  $* 0%��+ 20  $	* 99%��+ 0, 	  $- EaseOut=�W� $) Opacity�$	. 0.0X�$	/ 1.0X�$( 0:0:0.2D��� " ��.���  � ��$ 48����  � ��$ 18(���  � ��$ 5,0,5,0q���  � ��8   ��  � ��8  ��  � �� �� " ��.R��� $��1q�
�������$��1��$��36��#��z���� " ��.���  � ��$ 48����  � ��$ 18(���  � ��$ 2,0,0,2q���  � ��8   ��  � ��8  ��  � �� �� " ��.R��� -   $��0q�#��z������ " ��.���  � z� �� $0 1Q�$1 1Q���  �@J�RenderTransformOrigin 8� $	2 0.5Q�$	3 0.5Q�4 :� $5 PreviewMouseDown��[��� .���� .��W� $) RenderTransform.ScaleX�$
/ 0.95X�$( 0:0:0.15D�6 . W� $) RenderTransform.ScaleY�$
/ 0.95X�$( 0:0:0.15D�6 . ._�d� $ ToggleButton�� ��  �� $! FindAncestor=�"" ��$# DataContext.Checked�$ TwoWay=����� " d�.���  � �� �� " d�.R�� C   CommonStates��.D   
Normal��  	MouseOver��.E �� .��T� $F Bd��$
) Fill�..�i� $G 0��8H  T� $F Bd��$) Stroke�..�i� $G 0��8H  T� $( 0D�$) 
Foreground�$F contentControl��..�i� $G 0��8H    Pressed��.E �� .��T� $F Bd��$
) Fill�..�i� $G 0��8H  T� $F Bd��$) Stroke�..�i� $G 0��8H  T� $( 0D�$) 
Foreground�$F contentControl��..�i� $G 0��8H    Disabled��.E �� .��T� $) (UIElement.Visibility)�$F DisabledVisualElement��..�i� $G 0��H  Visible=�  CheckStates��.D   Checked��.E �� .��T� $) (UIElement.Visibility)�$F checked��..�i� $G 0��H  Visible=�T� $( 0D�$) 
Foreground�$F contentControl1��..�i� $G 0��8H    	Unchecked��  Indeterminate��  FocusStates��.D   Focused��  	Unfocused��.+��� $& Bd��8��	 8��
 $��0���� $& checked��8�� 8�� $��0��$y�	Collapsed=��� $I contentControl��#��z��#��z��#��z��#��z��.���� $ contentPresenter���� $I contentControl1��$y�	Collapsed=�#��z��#��z��#��z��8�� .���� $ contentPresenter1���� $& FocusedVisualElement��8�� $y�	Collapsed=�$��2���� $& DisabledVisualElement��8�� $y�	Collapsed=�.���� $7 
Horizontal=�.+��� $��10,0,0,0q�$��24��$��24��$
��Fill=����� *Image+�� $��	10,0,10,0q�$��12(�#��z��$
��Left=�$
��Wrap=�$	��100��$��Center=����� *
TaskName+ P�  � {� .  . ��� 8   � ���� 8   � ��P�  �@J�IsMouseOver . . ��� 8   � ���� 8   � ��]� 8 �� 9 �@��
IsSelected: . �� 9 �@J�IsMouseOver: . ./��� 8   � ����  � �� �	#ffcfcfcf�� " ��.���  � ��$ 48����  � ��$ 18(���  � ��8   ��  � ��8  ��  � �� �� " ��.R��� -   $��0q�#��z��._��� $7 
Horizontal=�.+��� $��10,0,5,0q�$��12(�$
��Left=�$
��Wrap=�$��Center=�$	��100������ *
TaskName+�� $��5,0,10,0q�$	��150��$��Center=�J .  ���� *
ItemSource+$ OneWay=�K �� *SelectedItemIndex+$ TwoWay=� .��� -   L �Name$
L body��.+�� $��Stretch=� �� $
��245* ��� $	��64* ��� $
��Auto � �� $
��Auto ��� $��* �.+�*   $_3DPrinter.view.ThreeD.ThreeDControl  -   M  Name$M threedview1��*   $_3DPrinter.view.ThreeD.ThreeDControlN   GotFocus$N Threedview1_OnGotFocus��$��Stretch=�$��Stretch=�$��2��$��2���� $��0��$��0q�$7 Vertical=�$��3��O K� ZIndex$O 3��.+��  �� $��* ��� $
��Auto �.+�"   _3DPrinter.view.menu.MenuApp  -	   P  Name$P topList��$��48,0,0,0q�$��Stretch=�Q �� SelectionMode$Q Single=�$��50��$��0������ !   _3DPrinter.setting.MenuDataR   Instance# ZR $
# Data��� $��0q�|�.  $Q Extended=�#��[ $��0q�y��� S �� ElementName$S topList��$# SelectedItem�#= [ ���� $S topList��$# SelectedItem.Commands����� .R�� $��Stretch=���!   _3DPrinter.MenutyleSelector  T   ButtonStyle#T [ U   SeparatorStyle#U [" V   ToggleStyle#V [# W   ComboBoxStyle#W [, 9� -
   X 9�Name$X 	expander2��$��0q�$��Stretch=�$��1��$��3��$��0q�$��0q����	#6f000000$��Right=�Y 9� ExpandDirection$Y Right=�Z 9� 
IsExpandedZ .  #��[	 ���  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� $��0��$7 Vertical=�$	��Top=�$��0,10,0,0q�.+��� -   #��[ $��44��$��44��; �� %   _3DPrinter.setting.Localization[   Instance# Z[ $# CurrentLanguage.LoadModel��� -   #��[ $��44��$��44��; �� # Z[ $!# CurrentLanguage.DeleteModel��� -   #��[ $��44��$��44��; �� # Z[ $# CurrentLanguage.SaveAsSTL�.��� $	��200��$��Right=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� 
�������$��20,10,10,10q�$��18(����� # Z[ $# CurrentLanguage.Models��� $��1��$��1��$��0,5,0,5q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=��� $��2��$7 
Horizontal=�$
��Left=�$��	10,0,10,0q�.+��� -   #��[ $��32��$��32��; �� # Z[ $# CurrentLanguage.LoadModel��� -   #��[ $��32��$��32��; �� # Z[ $!# CurrentLanguage.DeleteModel��� -   #��[ $��32��$��32��; �� # Z[ $# CurrentLanguage.SaveAsSTL��� $��3��$��1��$��0,5,0,5q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=��� -   \ ��Name$\ modelListView1��$��4��$��Stretch=�$Q Single=�
������ $��0q�$��Disabled=�$	��200��K �� .   (_3DPrinter.projectManager.ProjectManager]   Instance# Z] $ TwoWay=�$'# !CurrentProject.SelectedModelIndex����� # Z] $# CurrentProject.ModelList� ��%�  '��       �� " ��.���  � �� �� " ��.R��� $$ border1��
������ $��1q�
������ ; �� *	ModelName+._��  �� $
��Auto ��� $��* �.+��� $��10,5,5,5q�$��24��$��24��$
��Fill=�$��images/model2.png���� $��Center=�
�������$��12(�$��CharacterEllipsis=�$��Stretch=�$��1������ *	ModelName+ ]� 8 �� 9 �@��
IsSelected: . ./��� $  border1�� � ��
 ������� $  border1�� � �� �	#1FFFFFFF-   ���� �� -   $$ BorderTest2��$��5��$��1��$��0,5,0,5q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=��� $��6��$
��10,5q�$��Stretch=�^ �� DisplayMemberPath$
^ Name������ # Z] $># 8CurrentProject.projectSettings.PrinterSettings.Extruders�K �� # Z] $1# +CurrentProject.SelectedModel.ExtruderNumber��� $��Center=�$7 
Horizontal=�$��7��.+��� -   _ ��Name$_ 
LandButton��#��[ ; �� # Z[ $# CurrentLanguage.Lay��� -   $_ 	FitButton��#��[ ; �� # Z[ $$# CurrentLanguage.ScaleToPrinter��� -   $_ CentrerButton��#��[ ; �� # Z[ $"# CurrentLanguage.CenterObject��� -   $_ AutoPositionButton��#��[ ; �� # Z[ $"# CurrentLanguage.Autoposition��� $��Center=�$7 
Horizontal=�$��8��.+�d� -   #��[  �� # Z] $ TwoWay=�$*# $CurrentProject.SelectedModel.Visible�; �� # Z[ $## CurrentLanguage.ObjectVisible�d� -   $ 
moveToggle��#��[ ; �� # Z[ $# CurrentLanguage.Move�d� -   $ scaleToggle��#��[ ; �� # Z[ $# CurrentLanguage.Scale�d� -   $ rotateToggle��#��[ ; �� # Z[ $# CurrentLanguage.Rotate�� -   $L 	movePanel��$��9�����	#4f000000$	��186��$��Center=�$y�	Collapsed=� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0��$��X:��
�������$��18(�$��Center=�$��	10,5,30,5q��� $��1��$��Y:��
�������$��18(�$��Center=�$��	10,5,30,5q��� $��2��$��Z:��
�������$��18(�$��Center=�$��	10,5,30,5q��� -   $��0��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Position.X�` �� UpdateSourceTrigger$` Explicit=�a �� StringFormat$a N2���� -   $��1��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Position.Y�$` Explicit=�$a N2���� -   $��2��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Position.Z�$` Explicit=�$a N2��� -    $L rotatePanel��$��9�����	#4f000000$	��186��$��Center=�$y�	Collapsed=� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��X:��
�������$��18(�$��Center=�$��	10,5,30,5q��� $��1��$��Y:��
�������$��18(�$��Center=�$��	10,5,30,5q��� $��2��$��Z:��
�������$��18(�$��Center=�$��	10,5,30,5q��� -!   b ��Name$b rotateX��$��0��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Rotation.X�$` Explicit=�$a N2���� -"   $b rotateY��$��1��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Rotation.Y�$` Explicit=�$a N2���� -#   $b rotateZ��$��2��$��1��$��5,5,10,5q����� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Rotation.Z�$` Explicit=�$a N2���� -$   $��0��$��2��$��5,5,5,5q�#��[ �� -%   $��1��$��2��$��5,5,5,5q�#��[ �� -&   $��2��$��2��$��5,5,5,5q�#��[ � -'   $L 
scalePanel��$��9�����	#4f000000$	��186��$��Center=�$y�	Collapsed=� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+��� $��0��$��X:��
�������$��18(�$��Center=�$��	10,5,10,5q��� $��1��$��Y:��
�������$��18(�$��Center=�$��	10,5,10,5q��� $��2��$��Z:��
�������$��18(�$��Center=�$��	10,5,10,5q��� -(   $��0��$��1��$��5,5,5,5q����� # Z] $ TwoWay=�$*# $CurrentProject.SelectedModel.Scale.X�$` Explicit=�$a N2���� -)   $��1��$��1��$��5,5,5,5q����� # Z] $ TwoWay=�$*# $CurrentProject.SelectedModel.Scale.Y�$` Explicit=�$a N2���� -*   $��2��$��1��$��5,5,5,5q����� # Z] $ TwoWay=�$*# $CurrentProject.SelectedModel.Scale.Z�$` Explicit=�$a N2���� $��0��$��2��$��2��$��5,5,10,5q�	c �� X1$c 0��	d �� Y1$d 15��	e �� X2$e 27��	f �� Y2$f 15��$��2��
�������$
��Left=��� $��0��$��2��$��2��$��5,5,10,5q�$c 27��$d 15��$e 27��$f 30��$��2��
�������$
��Left=��� $��1��$��2��$��5,5,5,5q�$c 0��$d 15��$e 10��$f 15��$��2��
�������$
��Left=��� $��2��$��2��$��2��$��5,5,10,5q�$c 0��$d 15��$e 27��$f 15��$��2��
�������$
��Left=��� $��2��$��2��$��2��$��5,5,10,5q�$c 27��$d 15��$e 27��$f 0��$��2��
�������$
��Left=�d� -+   $ 	scaleLock��$��1��$��3��#��[ $��0,5,10,5q� �� # Z] $ TwoWay=�$-# 'CurrentProject.SelectedModel.Scale.Lock��� $��10��$��1��$��0,5,0,5q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=�� $��11�� �� $
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
��Auto ��� $��40 � �� $
��Auto ��� $��* �.+��� 
�������$��10,10,10,10q�$��18(�$��2��$��Center=����� # Z[ $!# CurrentLanguage.Information��� $��1��
�������$��14(�$��Center=�$��10,5,0,5q����� # Z[ $# CurrentLanguage.Points��� $��2��
�������$��14(�$��Center=�$��10,5,0,5q����� # Z[ $# CurrentLanguage.Edges��� $��3��
�������$��14(�$��Center=�$��10,5,0,5q����� # Z[ $# CurrentLanguage.Faces��� $��1��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $:# 4CurrentProject.projectSettings.PrintStatistic.Points��� $��2��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $9# 3CurrentProject.projectSettings.PrintStatistic.Edges��� $��3��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $9# 3CurrentProject.projectSettings.PrintStatistic.Faces��� $��4��
�������$��14(�$��Center=�$��10,5,0,5q����� # Z[ $# CurrentLanguage.Surface��� $��5��
�������$��14(�$��Center=�$��10,5,0,5q����� # Z[ $# CurrentLanguage.Volume��� $��4��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $;# 5CurrentProject.projectSettings.PrintStatistic.Surface��� $��5��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $:# 4CurrentProject.projectSettings.PrintStatistic.Volume��� $��6��
�������$��20,10,10,10q�$��16(�$��2��$��Center=����� # Z[ $# CurrentLanguage.Size��� $��7��$��X:��
�������$��14(�$��Center=�$��10,5,0,5q��� $��8��$��Y:��
�������$��14(�$��Center=�$��10,5,0,5q��� $��9��$��Z:��
�������$��14(�$��Center=�$��10,5,0,5q��� $��7��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $9# 3CurrentProject.projectSettings.PrintStatistic.SizeX��� $��8��$��1��
�������$��14(�$��Center=�$��Right=�$��0,5,10,5q����� # Z] $9# 3CurrentProject.projectSettings.PrintStatistic.SizeY��� $��9��$��1��
�������$��14(�$��Center=�$��Right=�$��	0,5,10,15q����� # Z] $9# 3CurrentProject.projectSettings.PrintStatistic.SizeZ�9� -,   $X 	expander3��$��0q�$��Stretch=�$��1��$��3��$��0q�$��0q����	#6f000000$��Right=�$Y Right=�Z . #��[	 $y�Hidden=����  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� --   $	��Top=�$��0,10,0,0q�#��[
 $��0��; �� # Z[ $# CurrentLanguage.SaveGCode��� $��1��$��1q�$��Stretch=�$	��5,3q�$��1��
�������*   $_3DPrinter.view.controls.RangeSlider  -.   g  Name$g rangeSlider1��$��2��h   Orientation$h Vertical=�i   HigherRangeBackgroundi �	#FF858585j   LowerRangeBackgroundj �	#FF858585k   Step$k 1Q�$
��0,10q�l   RangeBackgroundl �	#FF0086AF$	��300��$��Center=�m   Maximumm �� )   #_3DPrinter.setting.SettingsProvidern   Instance# Zn $# CommonSettings.MaxLayer�o   Minimumo �� # Zn $# CommonSettings.MinLayer�p   HigherValuep �� # Zn $ # CommonSettings.HigherLayer�q   
LowerValueq �� # Zn $# CommonSettings.LowerLayer��� $��1��$��1q�$��Stretch=�$	��5,3q�$��3��
�������.��'   !_3DPrinter.view.editor.CodeEditor  -/   r  Name$r 
codeEditor��$��Right=�$	��400��9� -0   $X 	expander1��$��0q�$��0q�$��0q� - WindowBackColor#��[- $
��Left=�$
Y Left=�Z .  #��[ ���� *ActualHeight+$S threedview1��.��� $	��200�� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��48 �.+�$   _3DPrinter.view.menu.ButtonExt  -1   s  Name$s 
newProject��$   _3DPrinter.view.menu.ButtonExtt   Click$t NewProject_OnClick��$��0��$��Stretch=�$
��Left=�$	��Top=� . ItemMenuButton#��[. u   Image$u ../../images/big_logo.png������ # Z[ $ # CurrentLanguage.NewProject�  -2   $s openProject��$t OpenProject_OnClick��$��1��$��Stretch=�$	��Top=�#��[. $u ../../images/open.png������ # Z[ $!# CurrentLanguage.OpenProject�  -3   $s addModel��$t AddModel_OnClick��$��2��$��Stretch=�$	��Top=�#��[. $ u ../../images/add_model.png������ # Z[ $# CurrentLanguage.LoadModel�  -4   $s loadCode��$t LoadCode_OnClick��$��3��$��Stretch=�$	��Top=�#��[. $ u ../../images/add_gcode.png������ # Z[ $# CurrentLanguage.LoadCode�  -5   $s saveProject��$t SaveProject_OnClick��$��4��$��Stretch=�$	��Top=�#��[. $u ../../images/save.png������ # Z[ $!# CurrentLanguage.SaveProject�  -6   $
s exit��$t ButtonBase_OnClick3��$��5��$��Stretch=�$	��Top=�#��[. $u ../../images/exit.png������ # Z[ $# CurrentLanguage.Exit��� -7   $$ 
BorderTest��$��7��$��1��$��0,2,0,2q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=��� $��8��
�������$��16(�$��Center=�$��5,35,5,5q����� # Z[ $!# CurrentLanguage.RecentFiles��� -8   $\ 
recentList��$��9��$Q Extended=�
������ $��0q�
�����@�#��[  $��Stretch=�$��Stretch=����� # Zn $# RecentFiles.ProjectFiles�$ OneWay=����� .R�� $��Stretch=�v � Orientation$v Vertical=�
������ �� -9   $$ Border1��$��11��$��1��$��0,2,0,2q�$	��180��$��Stretch=�
�������$��2q�$��Bottom=�  -:   $s settings��$t Settings_OnClick��$��12��$��Stretch=�$��Bottom=�#��[. $u ../../images/config.png������ # Z[ $# CurrentLanguage.Settings�  -;   $s about��$t About_OnClick��$��13��$��Stretch=�$��Bottom=�#��[. $u ../../images/about.png������ # Z[ $# CurrentLanguage.About��� -<   $$ toasterGrid��
������ $��0q�$��Stretch=�$��Stretch=�y��� $S toaster��$ TwoWay=�$# 
Visibility�._�1   +_3DPrinter.view.notification.ToasterControl  -=   w  Name$w toaster��x   ToasterTitle$x Title��y   Message$!y This is description message��z   Image$z ../../images/conf.png��$��0,0,0,25q�$��Bottom=�$	��360��$��80��$��Right=�$y�	Collapsed=�