   M S B A M L   `   `   `  ����Q  MSchoolManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SchoolManagementSystemSchoolManagementSystem  5   	   '    !SchoolManagementSystem.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:SchoolManagementSystem     5   	     � Title$  
MainWindow��5   	   $	��330��6   $	��685��6)    � WindowStyle$
 None=�65    � WindowStartupLocation$ CenterScreen=�6I    � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 logInBtn	 �� 
TargetType
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value��%�  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   "	 ��6!   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      "
 ��6&   .R�5(      �� ���	#FF007ACC$��1q�69   $
��Left=�6M   $��35��6h   $	��Top=�6t   $	��100��6�   $ 20��6�   ._�5)      �� $��Log In��6$   $��Center=�65   $��Center=�6Y   ���	#FF007ACC��6{   Z� 6�   5*       5+      P� 5,       �@��IsDefaulted . 6=   P� 5-       �@J�IsMouseOver . 6=   P� 5.       � �� . 6;   P� 5/       � {� .  6;   51      53      54      55      .��56      � ��57   
   �� 58       �� EndPoint$ 0.625,0.913&�6"    �� 
StartPoint$ 0.375,0.087&�69   .��59      �  � Color$ White��6    � Offset$ 0Q�6-   � 5:      $ White��6   $ 1Q�6-   5;      .+�5=   
   �� $��
246,75,0,0q�6    �� Orientation$ Vertical=�6)   $
��Left=�6@   $	��185��6[   $	��172��6g   $	��Top=�6t   .+�5>      �� -   5         ��Name$ label��5>      $��Username��6#   $��17(�66   $��Center=�6D   $��Center=�6a   $��0,0,0,0q�6�   $	��Top=�6�   $	��108��6�   �� 5?      -   5         ��Name$ usernametxtbx��5?      $
��Left=�6-   $��23��6H    �� TextWrapping$
 Wrap=�6T   $	��Top=�6i   $	��185��6�   �� 5@      -   5        $ 
label_Copy��5@      $��Password��6(   $��17(�6;   $��Center=�6I   $��Center=�6f   $��0,0,0,0q�6�   $	��Top=�6�   $	��108��6�   G� 5A      -   5         G�Name$ passwordtxtbx��5A      $
��Left=�61   $��23��6L   $	��Top=�6Y   $	��185��6q   �� 5B      -   5         ��Name$ logInBtn��5B      $��Log In��6'   $
��0,15q�68   $��35��6F   $	��100��6R   $��18(�6^   #��� 
 6l   5C      �� 5D   
   -   5        $ label_Copy1��5D      $��X��6%   $��15(�61   $��Center=�6?   $��Center=�6\   $��572.332,6.22,8.668,0q�6�   $	��Top=�6�   $��96��6�   $��26.61��6�   
���  �����	#FFF3F3F36�   5F      5G      