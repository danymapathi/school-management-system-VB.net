   M S B A M L   `   `   `  ����Q  MSchoolManagementSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SchoolManagementSystemSchoolManagementSystem  5      "    SchoolManagementSystem.Staff   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SchoolManagementSystem     5      -   5        $	��580��5      $	��995��6,     � 	Resources  5         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 	updateBtn �� 
TargetType �� 
TargetType �� CornerRadius	 �� Triggers
 P� Property P� Value  fireBtn��%	  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  &	 =    7   7  7  �� 5	   
   .�5
      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6"   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5       � ��# � ��6+   �� 5        � ��$ 1q�60   �� 5!       � ��$ Center=�6;   �� 5"       � ��$ Center=�69   �� 5#       � ��$ 1q�6(   �� 5$       � �� 5%      �� 5&      " ��6&   .R�5'      �� ���	#FF007ACC$��1q�69   $ 20��6M   $
��Left=�6_   $��35��6z   $	��Top=�6�   $��90��6�   $��0,0,0,-5q�6�   ._�5(      �� $��Update��6$   $��Center=�65   $��Center=�6W   $��17(�6t   ���	#FF007ACC���	#000000006�   5)      	 5*      P� 5+      
 �@��IsDefaulted . 6=   P� 5,      
 �@J�IsMouseOver . 6=   P� 5-      
 � �� . 6;   P� 5.      
 � {� .  6;   50      52      53      �� 54   
   " ��6    .�55      ��  �@�FocusVisualStyle8   61   �� 56       � ��8  6+   �� 57       � ��8  6,   �� 58       � ��# � ��6+   �� 59       � ��$ 1q�60   �� 5:       � ��$ Center=�6;   �� 5;       � ��$ Center=�69   �� 5<       � ��$ 1q�6(   �� 5=       � �� 5>      �� 5?      " ��6&   .R�5@      �� 
���  ��$��1q�63   $ 20��6G   $
��Left=�6Y   $��35��6t   $	��Top=�6�   $��90��6�   $��0,0,0,-5q�6�   ._�5A      �� $��Delete��6$   $��Center=�65   $��Center=�6W   $��17(�6t   
���  ��6�   5B      	 5C      P� 5D      
 �@��IsDefaulted . 6=   P� 5E      
 �@J�IsMouseOver . 6=   P� 5F      
 � �� . 6;   P� 5G      
 � {� .  6;   5I      5K      5L      5M      .��5N      � 
�������.+�5O   
   ��  �� Orientation$ Vertical=�6   .+�5P      �� $ 
Horizontal=�6   $��60��62   $	��Top=�6>   ���	#FFEEEEF2.+�5Q      �� -   5         ��Name$ _searchStaffField��5Q      $��25��65   $	��400��6A   $��40,0,0,0q�6M   ���	#FF007ACC6_   �� 5R      -   5         ��Name$ _searchStaffBtn��5R      $��Search��62   $��80��6C   $��25��6N   
����������	#FF007ACC6m   �� 5S      -   5        $��
Add Member��5S      $	��120��6.   $��25��6:   $��Right=�6F   $��	300,0,0,0q�6b   
����������	#FF007ACC6�   5T      �� 5V      $ 
Horizontal=�6   $	��519��62   ���	#FFC2C3C9.+�5W      �� $	��980��6   $��1,2,0,0q�6%   ���	#FF3399FF���	#FFC2C3C9._�5X      � .+�5Y      &   System.Windows.Controls.DataGrid  -   5          Name$ 	_dataGrid��5Y   #   $��	0,0,682,0q�66      AutoGenerateColumns .     Columns 5Z      0  *System.Windows.Controls.DataGridTextColumn  5[   "   ,  &System.Windows.Controls.DataGridColumn   Header$ Names��65      Width5  /System.Windows.Controls.DataGridLengthConverter$	 293 6j      CanUserReorder .     CanUserResize .  1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *teacherfull_name+   HeaderStyle 5\   &   �� 5]   *   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  60   .�5^   .   ��  � ��
 �����6K   �� 5_   .    � �� �	#FF2939556K   �� 5`   .    � ��$ Center=�6[   �� 5a   .    � ��$ Normal"�6K   �� 5b   .    � ��$ 15(�6I   �� 5c   .    � ��
 �����6L   �� 5d   .    � ��$ 1,1,0,0q�6P   �� 5e   .    � ��$ Center=�6[   5f   +   5h   #   5j      �� 5k      $��327,10,31,0q�6!   $ 30��66   $��1q�6H   
�������
�������$	��190��6�   $	��Top=�6�   ._�5l      �� 
�������$��	18,9,19,9q�68   .+�5m   "   �� $	��113��6)   ���	#FFEEEEEE �� Left$ 50��6L   
 �� Top$ 25��6]   $��124.28��6m   ._�5n   &   �� -   5         ��Name$ image��5n   ,   5o   #   �� 5p   "   -   5         ��Name$ label��5p   (   $��Id��67   $	 189��6D   $ 25��6V   $��16(�6f   �� 5q   "   -   5        $ 
label_Copy��5q   (   $
��Name��6<   $	 189��6K   $ 56��6]   $��16(�6m   �� 5r   "   -	   5        $ label_Copy1��5r   (   $��Degree��6=   $	 189��6N   $ 87��6`   $��16(�6p   �� 5s   "   -
   5        $ _idField��5s   *   $��26��6<   $	 323��6H    �� TextWrapping$
 Wrap=�6Z   $ 25��6o   $	��212��6   $��16(�6�   �� 5t   "   -   5        $ _nemesField��5t   *   $��26��6?   $	 323��6K   $
 Wrap=�6]   $ 56��6r   $	��212��6�   $��16(�6�   �� 5u   "   -   5        $ 
_qualField��5u   *   $��26��6>   $	 323��6J   $
 Wrap=�6\   $ 87��6q   $	��212��6�   $��16(�6�   �� 5v   "   -   5        $ label_Copy2��5v   (   $��Salary��6=   $	 189��6N   $	 118��6`   $��16(�6q   �� 5w   "   -   5        $ 	_salField��5w   *   $��26��6=   $	 323��6I   $
 Wrap=�6[   $	 118��6p   $	��212��6�   $��16(�6�   5y      5z      �� 5{      $&�� Check  Subject - Class - Section��6    $��27��6K   $��327,248,31,0q�6W   $��1q�6m   ���	#FF3399FF$	��Top=�6�     5|      -   5        $ 	_subCS_dg��5|   #   $��327,280,232,0q�66   $	��156��6M   $	��Top=�6Z    .  ���	#FF000003 5}        5~   "   $ Subject��65   $	 217 6f    .   .   6F   �� *subjectName+ 5   &   �� 5�   *   "  60   .�5�   .   ��  � ��$ 0,0,1,1q�6P   �� 5�   .    � ��
 �   �6L   �� 5�   .    � ��
 �����6K   �� 5�   .    � �� �	#FF2939556K   �� 5�   .    � ��$ Center=�6[   �� 5�   .    � ��$ Normal"�6K   �� 5�   .    � ��$ 12(�6I   5�   +   5�   #     5�   "   $ Class��65   $	 201 6b    .   .   6D   �� *	className+ 5�   &   �� 5�   *   "  60   .�5�   .   ��  � ��$ 0,0,0,1q�6P   �� 5�   .    � ��
 �   �6L   �� 5�   .    � ��
 �����6K   �� 5�   .    � �� �	#FF2939556K   �� 5�   .    � ��$ Center=�6[   �� 5�   .    � ��$ Normal"�6K   �� 5�   .    � ��$ 12(�6I   5�   +   5�   #   5�        5�      -   5        $��	sectionDg��5�   :   $��747,280,31,81q�6#   ���	#FF000003 .   5�        5�   "   $ Section��65   $	 200 6f    .   .   6F   �� *sectionName+ 5�   &   �� 5�   *   "  60   .�5�   .   ��  � ��
 �����6K   �� 5�   .    � �� �	#FF2939556K   �� 5�   .    � ��$ Center=�6[   �� 5�   .    � ��$ Normal"�6K   �� 5�   .    � ��$ 12(�6I   �� 5�   .    � ��$ 0,0,1,1q�6P   �� 5�   .    � ��
 �   �6L   5�   +   5�   #   5�      �� 5�      -   5        $ 	UpdateBtn��5�   !   $��Update��64   $��90��6E   $��30��6P   $��17(�6\   $��556,206.462,333,0q�6j   #��� 
 6�   $	��Top=�6�   �� 5�      -   5        $ fireBtn��5�   !   $
��Fire��62   $��90��6A   $��30��6L   $��17(�6X   $��661,206.462,228,0q�6f   #���  6�   $	��Top=�6�   �� 5�      $��Attribute A Course��6    $��27��6=   $��327,454,522,0q�6I   $��1q�6`   ���	#FF3399FF$	��Top=�6�   �� 5�      -   5        $ _attributeField��5�   "   $
 Wrap=�6;   $��16(�6O   $��462,454,305,37q�6]   �� 5�      -   5        $ attributeCourseBtn��5�   !   $��	Attribute��6=   $��27��6Q   $��Bottom=�6]   $	��100��6x   $��679,0,200,37q�6�   
����������	#FF3399FF6�   5�      5�      5�      5�      5�      5�      