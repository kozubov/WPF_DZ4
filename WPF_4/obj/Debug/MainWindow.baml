   M S B A M L   `   `   `  ����@  <WPF_4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WPF_4WPF_4  5   	       WPF_4.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:WPF_4     5   	     � Title$  Gallery��5   	   $	��600��6   $	��800��6&    � WindowStartupLocation$ CenterScreen=�62    � Icon$ Images/gallery.ico��6W    � 	Resources 5	       �� 
TargetType   Buttons �� Property �� Value  Gallery 
 Second �� Triggers :� RoutedEvent	 �� TargetProperty
 W� From	 W� To g� Duration  	ImageGrow 
 Shadow��%�  &	        '�� �     &	 -    &	 y    &	 ;    &	 �    �� 5
   
   " ��6   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � ��$ 10q�6(   �� 5       � ��$ 10q�6'   �� 5       �@�Cursor$
 Hand��6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 15q�6+   5      �� 5   
   " ��6   .�5      ��  � ��$ 0q�60   6<   5      �� 5   
   " ��6    5      :� 5      $ 
MouseEnter��6   .[�5      �� .��5      �� .��5      W� $ 	 Effect.(BlurEffect.Radius)�6.   $
 5X�6e   $ 0X�6n   $ 0:0:0.5D�6u   6�   5      5      5      :� 5       $ 
MouseLeave��6   .[�5!      �� .��5"      �� .��5#      W� $ 	 Effect.(BlurEffect.Radius)�6.   $
 0X�6e   $ 5X�6n   $ 0:0:0.5D�6u   6�   5$      5%      5&      5(      �� 5)   
   " ��6"    5*      :� 5+      $ 
MouseEnter��6   .[�5,      �� .��5-      �� .��5.      W� $	 (FrameworkElement.Width)�6.   $
 80X�6c   $	 140X�6m   $ 0:0:0.5D�6v   W� 5/      $	 (FrameworkElement.Height)�6.   $
 80X�6d   $	 140X�6n   $ 0:0:0.5D�6w   50      51      52      :� 53      $ 
MouseLeave��6   .[�54      �� .��55      �� .��56      W� $	 (FrameworkElement.Width)�6.   $	
 140X�6c   $ 80X�6n   $ 0:0:0.5D�6v   W� 57      $	 (FrameworkElement.Height)�6.   $	
 140X�6d   $ 80X�6o   $ 0:0:0.5D�6w   58      59      5:      5<      �� 5=   
   " ��6    5>      :� 5?      $ 
MouseEnter��6   .[�5@      �� .��5A      �� .��5B      W� $'	 !Effect.(DropShadowEffect.Opacity)�6/   $
 0X�6m   $ 1X�6v   $ 0:0:0.5D�6}   5C      5D      5E      :� 5F      $ 
MouseLeave��6   .[�5G      �� .��5H      �� .��5I      W� $'	 !Effect.(DropShadowEffect.Opacity)�6.   $
 1X�6l   $ 0X�6u   $ 0:0:0.5D�6|   5J      5K      5L      5N      5O      .��5P      �  � ColumnDefinitions 5Q   
   �� 5R      $��4* �6   6,   �� 5S      6!   .+�5U   
   �� #��[ 6   $��Disabled=�6�   $
��Auto=�6�   ��63   ��  �� Path$ Photos� �� SelectedItem 6W   �� $ SelectedPhoto���5V      �� 5W      .R�5X      �� #��[ 6!    J� Effect 5Y      3  -System.Windows.Media.Effects.DropShadowEffect  5Z         Opacity$ 0Q�6/   .+�5\      �� #��[ 6%    5]      -  'System.Windows.Media.Effects.BlurEffect  5^   "      Radius$ 5Q�6-   6:   .+�5`      �� $��80��6H   $��80��6S   $��Uniform=�6_   #��[ 6q   ��6$   �� $ ImageSource�6�   �� 5a      $��14(�6G   $��Center=�6U   ��6(   �� $ FileName�6t   �� 5b      $��12(�6_   $��Center=�6m   ��6(   �� $ FileSize� �� StringFormat$ {0} Кб��6�   5c      5d      5e      ��5g      �� 5h      .R�5i      �  � Orientation$ 
Horizontal=�6    5j      5l      �� 5m   
   $��1��6   .+�5n      �� #��[  6   ��66   �� $ AddImageCommand�.��5o      ��  �� Orientation$ 
Horizontal=�6   .+�5p      �� $�� Images/add_image.png��6   $��40��6;   $��40��6F   �� 5q      $��
 Add Image��6    $��Center=�62   5r      5s      �� 5t      #��[  6   ��66   �� $ DeleteImageCommand���6b   �� $ SelectedPhoto�.��5u      �� $ 
Horizontal=�6   .+�5v      �� $�� Images/remove_image.png��6   $��40��6>   $��40��6I   �� 5w      $�� Remove Image��6    $��Center=�65   5x      5y      5z      5{      5|      