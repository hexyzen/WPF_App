   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.Page2   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N� 
Background  �#121212 N� Title$ Details��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��118 �6   �� 5      $	��119 �6   �� 5      $	��243 �6   �� 5      $	��160 �6   �� 5      $	��160 �6    � RowDefinitions 5   
   �� 5      $��98 �6   �� 5      $��52 �6   �� 5      $��75 �6   �� 5      $��50 �6   �� 5      $��75 �6   �� 5      $��75 �6   .+�5   
   �� -   5         ��Name$ 
label_name��5      $��0��6$   ���#FFFF$��1��6H   $��Normal&�6U   $��24(�6j   $��2��6x   $��	10,14,0,0q�6�   �� 5   
   -   5        $ label_price��5      $��0��6%   ���#FFFF$��2��6I   $��Normal&�6V   $��24(�6k   $��2��6y   $��
10,0,49,25q�6�   $
��Left=�6�   $��Center=�6�   �� 5    
   -   5        $ label_price_change��5       $��1��6,   ���#FFFF$��2��6P   $��Normal&�6^   $��16(�6s   $��1��6�   $��
30,0,31,27q�6�   $��Center=�6�   $
��Left=�6�   �� 5!   
   -   5        $ 
label_rank��5!      ���#e9e9ee$��Normal&�6;   $��14(�6P   $��10,86,30,38q�6^   $��2��6s   �� 5"   
   -   5         ��Name$ textbox_search��5"      $��bitcoin��6*   $��2��69   ���#2f2f2f$
��Left=�6^    �� TextWrapping$
 Wrap=�6{   $	��211��6�   $��40��6�   $��
22,29,0,29q�6�   $��16(�6�   $��0,0,0,0q�6�   $��Center=�6�   $��Center=�6   $��Center=�6"  
�������6F  �� 5#   
   -   5           	StrSearch#���   5#      
�������$��14(�6K   $��Medium"�6Z   $��3��6n   $
��Left=�6~   $��34��6�   $��Center=�6�   $	��102��6�   $��10,0,0,0q�6�   ��5$      �� 5%       �� 
TargetType" ��6   .�5&      ��  �� Property � ��	 �� Value$	 Google Sans)�6?   �� 5'       � ��	 �#00000063   �� 5(       �@�Cursor$
	 Hand��6/   
 �� Triggers
 5)      P� 5*       P� Property �@J�IsMouseOver P� Value$
 True��69   . �5+      ��  � ��	 �#2525256;   5,      5.      ��51      �� 52       �� 
TargetType" ��6"   .R�53      �� $	��100��6   $��25��6)    �� CornerRadius$ 12��54      #��z��6/   ._�55      �� $��Center=�6+   $��Center=�6F   56      57      59      � 5;   
   -   5         �Name$ Capitalization��5;      $��1��6'   $��4��67   $��4��6E   $��118,7,15,34q�6Y   $��2��6n   $y�Hidden=�6    5<      �� 5=      $	��140 �6#   �� 5>      $	��147 �6#   �� 5?      $��0 �6#   �� 5@      $	��116 �6#   �� 5A      $��0 �6#   �� 5B      $	��72* �6#   �� 5C       5E      �� 5F      $��* �6    �� 5G      $��* �6    �� 5H      $��* �6    .+�5K      ��   StrMarketCap#���  6   ���#9e9d9b$��0��6S   $��Center=�6c   $��13(�6~   $��30��6�   �� 5L        StrTradingvol#���  6   ���#9e9d9b$��1��6S   $��0��6`   $��Center=�6p   $��13(�6�   $��30��6�   �� 5M        StrValuation#���  6   ���#9e9d9b$��2��6R   $��0��6_   $��Center=�6o   $��13(�6�   $��30��6�   $��0,0,2,0q�6�   �� 5N        StrCircsupl#���  6   ���#9e9d9b$��2��6Q   $��Center=�6a   $��13(�6|   $��30��6�   $��2��6�   �� 5O        StrTotalsupl#���  6   ���#9e9d9b$��1��6R   $��2��6_   $��Center=�6o   $��13(�6�   $��30��6�   $��2��6�   �� 5P        
StrMaxsupl#���  6   ���#9e9d9b$��2��6P   $��2��6]   $��Center=�6m   $��13(�6�   $��30��6�   $��2��6�   �� 5R      -   5        $ label_market_cap��5R      ���#FFFF$��1��6A   $��Center=�6Q   $��13(�6l   $��30��6z   �� 5S      -	   5        $ label_trading_vol��5S      ���#FFFF$��1��6B   $��1��6O   $��Center=�6_   $��13(�6z   $��30��6�   �� 5T      -
   5        $ label_diluted_val��5T      ���#FFFF$��2��6B   $��1��6O   $��Center=�6_   $��13(�6z   $��30��6�   �� 5U      -   5        $ label_circ_supl��5U      ���#FFFF$��4��6@   $��Center=�6P   $��13(�6k   $��30��6y   $��3��6�   �� 5V      -   5        $ label_total_supl��5V      ���#FFFF$��1��6A   $��4��6N   $��Center=�6^   $��13(�6y   $��30��6�   $��3��6�   �� 5W      -   5        $ label_max_supl��5W      ���#FFFF$��2��6?   $��4��6L   $��Center=�6\   $��13(�6w   $��30��6�   $��3��6�   5X      � 5Z   
   -   5        $ 	Exchanges��5Z      $��2��6"   $��2��61   $��4��6E   $��
15,55,0,34q�6V   $y�Visible=�6j    5[      �� 5\      $	��49* �6#   �� 5]      $	��57* �6#   �� 5^      $	��97* �6#   �� 5_      $��9* �6#    5a      �� 5b      $��* �6    �� 5c      $��* �6    �� 5d      $��* �6    �� 5e      $��* �6    �� 5f      $��* �6    .+�5i      �� -   5        $ label_market0��5i      ���#9e9d9b$��0��6@   $��Center=�6P   $��14(�6k   $��30��6y   $��4��6�   �� 5j      -   5        $ label_market1��5j      ���#9e9d9b$��1��6@   $��0��6M   $��Center=�6]   $��14(�6x   $��30��6�   $��4��6�   �� 5k      -   5        $ label_market2��5k      ���#9e9d9b$��2��6@   $��0��6M   $��Center=�6]   $��14(�6x   $��30��6�   $��4��6�   �� 5l      -   5        $ label_market3��5l      ���#9e9d9b$��3��6@   $��0��6M   $��Center=�6]   $��14(�6x   $��30��6�   $��4��6�   �� 5m      -   5        $ label_market4��5m      ���#9e9d9b$��4��6@   $��0��6M   $��Center=�6]   $��14(�6x   $��32��6�   $��4��6�   5n      � 5p   
   -   5        $ GridInfo��5p      $��3��6!   $
��Left=�61   $	��172��6L   $y�Hidden=�6Y   $	��Top=�6m   $	��150��6�   $��4��6�   $��2��6�   $��	90,97,0,0q�6�    5q      �� 5r      $��50 �6#   �� 5s      $	��100 �6#    5v      �� 5w      $��20 �6    �� 5x      $��* �6    �� 5y      $��* �6    �� 5z      $��* �6    .+�5}      ��   StrInfo#���  6   
�������$	��Top=�6K   $��14(�6c   $��27��6q   $
��Left=�6}   $	��Top=�6�   $��2��6�   $��0,-7,0,0q�6�   $
��Left=�6�   $	��150��6�   �� 5~        
StrWebsite#���  6   ���#9e9d9b$��Center=�6P   $��11(�6k   $��38��6y   $��Center=�6�   $��Center=�6�   $��1��6�   $
��Left=�6�   �� 5       	 	StrMarket#��� 	 6   ���#9e9d9b$��Center=�6O   $��11(�6j   $��38��6x   $
��Left=�6�   $��Center=�6�   $��2��6�   $
��Left=�6�   $��50��6�   �� 5�       
 StrForum#��� 
 6   ���#9e9d9b$��Center=�6N   $��11(�6i   $��38��6w   $��Center=�6�   $��Center=�6�   $��3��6�   $
��Left=�6�   �� 5�      -   5         ��Name$ button_homepage��5�      $��1��6/   $��Center=�6?   $��1��6\   $��Center=�6i   $��11(�6�   ��5�      �� 5�      " ��6   .�5�      ��  � ��$	 Google Sans)�6C   �� 5�       � ��	 �#00000067   �� 5�       �@�Cursor$
	 Hand��63   
 5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � ��	 �#2525256?   �� 5�   "    � ��	 �#ffff6?   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $��25��6"   $��90��6.   $ 6��5�      #��z��6.   ._�5�      �� $��Center=�6/   $��Center=�6J   5�      5�      5�      �� 5�      -   5        $��coingecko.com��5�      ���#9e9d9b$��1��6B   $��Center=�6R   $��2��6o   $��Center=�6|   $��0,0,0,0q�6�   $��Center=�6�   $��Center=�6�   $��11(�6  ��5�      �� 5�      " ��6   .�5�      ��  � ��$	 Google Sans)�6C   �� 5�       � ��	 �#00000067   �� 5�       �@�Cursor$
	 Hand��63   
 5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � ��	 �#2525256?   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $��25��6"   $��90��6.   $ 6��5�      #��z��6.   ._�5�      �� $��Center=�6/   $��Center=�6J   5�      5�      5�      �� 5�      -   5        $ button_forum��5�      $��1��6,   $��Center=�6<   $��3��6Y   $��Center=�6f   $��11(�6�   ��5�      �� 5�      " ��6   .�5�      ��  � ��$	 Google Sans)�6C   �� 5�       � ��	 �#00000067   �� 5�       �@�Cursor$
	 Hand��63   
 5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � ��	 �#2525256?   �� 5�   "    � ��	 �#ffff6?   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $��25��6"   $��90��6.   $ 6��5�      #��z��6.   ._�5�      �� $��Center=�6/   $��Center=�6J   5�      5�      5�      5�      �� 5�   
   -   5        $ textbox_result��5�      $��2��6*   $y�Hidden=�6:   $��0,0,0,0q�6N   ���#393939���#e3e3e3$
��Left=�6�   $��2��6�   $
 Wrap=�6�   $��Center=�6�   $	��136��6�   $��26��6�   $
��Left=�6  $��Center=�6$  $��2��6F  $��	187,0,0,0q�6Z  �� 5�   
   -   5        $ textbox_mul��5�      $y�Hidden=�6'   ���#393939$��0,0,0,0q�6P   ���#e3e3e3$��2��6   $
��Left=�6�   $��2��6�   $��10��6�   $
 Wrap=�6�   $��Center=�6�   $	��136��6�   $��24��6�   $
��Left=�6  $��Center=�6*  $��5,0,0,0q�6L  �� 5�   
   -   5        $ button_convert��5�      $y�Hidden=�6)     
StrConvert#���  6=   
�������$��2��6w   $
��Left=�6�   $��	111,0,0,0q�6�   $��3��6�   $	��Top=�6�   $��28��6�   $	��104��6�   ��5�      �� 5�      " ��6   .�5�      ��  � ��$	 Google Sans)�6?   �� 5�       � ��	 �#00000063   �� 5�       �@�Cursor$
	 Hand��6/   
 5�      P� 5�       �@J�IsMouseOver$
 True��69   . �5�      ��  � ��	 �#2525256;   5�      5�      ��5�      �� 5�      " ��6"   .R�5�      �� $	��100��6   $��25��6)   $ 12��5�      #��z��6/   ._�5�      �� $��Center=�6+   $��Center=�6F   5�      5�      5�      �� 5�   
   -   5        $ label_convert��5�      ���#e3e1da$��1��6<   $
��Left=�6L   $��81,0,0,0q�6g   $��2��6y   $��Center=�6�   $��24��6�   $��38��6�   �� 5�   
   -   5        $ textbox_convert��5�      $y�Hidden=�6+   $��0,0,0,0q�6?   ���#393939���#ffff$��2��6�   $
��Left=�6�   $��
214,26,0,0q�6�   $��1��6�   $��ethereum��6�   $
 Wrap=�6�   $	��Top=�6�   $��82��6
  $��36��6  $��Center=�6!  $��Center=�6E  $��16(�6g  $��2��6u  $��2��6�  �� 5�   
   -   5        $ label_error��5�      $
��Left=�6%   $��	108,0,0,0q�6@   $��Center=�6S   $��2��6n   $��34��6�   $	��129��6�   d� 5�   
   -   5         d�Name$ tb��5�      
����������#252525$��EN��6M   $��0 0 0 0q�6�   $��32��5�   
   $��Center=�6   $|�False��6[    J� RenderTransformOrigin$	 0,0&�6m    � ForceCursor$
 True��6�   $��Center=�6�   $��Center=�6�   $��0,0,0,0q�6�    K� ZIndex$ -2��6�    d� 	IsChecked 66   �� *IsCheckedState+6�   5�      5�      