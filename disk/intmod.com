�AINTMOD - CRT Terminal Customization
Copyright (c) 1985, 1987 by CompuView Products Inc.
Written by Charles Turner. install.ini install *CRT.TBL*  
CRT TABLE MODIFICATION :

 Each CRT table contains 16 control (escape) sequences.
 With the exception of ADDOFF, each sequence contains 7 bytes.
 The first byte is the count of the characters being sent to the
 CRT.  This byte is followed by the actual characters.  These are
 followed by the delay in milliseconds needed by the CRT.  If 6
 control characters are being sent there is no time delay entry.

 The sequence ADDOFF, contains the 3 bytes necessary for the CRT to
 do cursor addressing.

 Modifications to a CRT table are made by first entering the terminal's
 mumber from the DISPLAY menu.  You then have the option of modifying a
 single control sequences or all of the sequences.

 Cursor Leadin Chars between X and Y Cursor Lead Out Addoff Clear Screen EOS EOL Insert Line Delete Line Forward Scroll Reverse Scroll Begin Reverse Video End Reverse Video Enable Status Line Disable Status Line Enter VEDIT Exit VEDIT 
CURSOR ADDRESSING :

 The first byte of ADDOFF controls the addressing convention
 for the CRT terminal.  The remaining two bytes are the row/column
 (or column/row) offsets needed.  (Usually "1" for ASCII and "20H"
 for Binary.)

 BYTE ONE :

 If the low bit is set the CRT expects the column number followed
 by the row number; the opposite if the bit is not set.
 If the high bit is set the CRT expects the row/column numbers in
 ASCII; if the bit is not set they are expected in Binary.
 ���V*�W�!m�͊5���21�! 9s#rz��`! 9^#V�!s�͊5��!  ��WC�͓%�w͹Ͳ�%s


 %s
 ���V!  DMÊ`i#DM`i�*p^̈́W�	!w �͇��! 9s#rx�¼! 9^#V�"h^"f^��! 9^#V�*h^u �s#r! 9^#V�"h^!  �*h^u �s#r*j^�*h^�ͨ��*h^^#V�!f�͊5��Å*f^�! 9s#r!  DM�!`i#DM`i�*p^̈́W�e*j^�! �!s �!
 9^#V�##��b;�! 9�! 9^#V!u ^#V! 9s#r��Loading: %s                       �V! 9^#V*�W"�W! 9^#V��WP��  �V!
 9^#V�*t^�����*t^�̈́T�#�͇��!
 9^#V��s#r*t^�!
 9^#V�^#V��+T���  �V!
 9^#V�ͻ<��!
 9�~#fo#��s#r�+�s{��	������V*f^|��;	*�W�!��͊5���!  �!
 9s#r�X	!
 9�~#fo#��s#r!
 9^#V! ̈́Wʅ	!
 9^#V�) X^#V�!��͊5���I	��1!  �*p^�! �*r^�!���-�!
 9�! 9s#r! 9^#V�+���0��! 9s#r!w �͇��! 9s#r! 9^#V�^#V�̈́T�#�͇��! 9^#V��s#r! 9^#V�^#V�! 9^#V�^#V��+T��!s �! 9^#V�##�! 9^#V�##��J5���! 9^#V�##DM�k'! 9^#V�^#V�!
 9^#V�!��͊5���! �!  �!NX��"/����! 9s#r! 9~#�
!D�!
�ͅ3��ʔ
���! 9^#V! �JW�I!  �!
 9s#r��
!
 9�~#fo#��s#r!
 9^#V! ̈́W��
�! 9^#V�����! PYDMõ
�k'��:�! PYDM�k'! �!
 9s#r�!
 9�~#fo#��s#r!
 9^#V! ̈́W�F�! 9^#V�����! PYDM���! 9�~#fo+��s#r! 9^#V! ̈́Wʋ! 9^#V! ��VPYDM�! 9^#V�������! 9^#V! �JWʫ! PYDM��:���! 9^#V! ��V��PYDM�! 9^#V�����! �! 9^#V�! 9^#V��K+���!s�!L�ͅ3���2
!s �! 9^#V�##�! 9^#V�##��J5����21     MODIFICATION OPTIONS:  0.  EXIT to Main Menu 1.  Cursor Leadin 2.  Chars between X and Y 3.  Cursor Lead Out 4.  Addoff 5.  Clear Screen 6.  EOS 7.  EOL 8.  Insert Line 9.  Delete Line 10. Forward Scroll 11. Reverse Scroll 12. Begin Reverse Video 13. End Reverse Video 14. Enable Status Line 15. Disable Status Line 16. Enter VEDIT 17. Exit VEDIT 18. Modify ENTIRE Terminal entry Enter Option Number Sorry, <%s> is Empty
 %s 
Number of terminal to be modified?  
Termimal Entry:  (%d) %s
 
OK to exit to MAIN MENU without updating this Terminal?   (Yes)  
Is this CRT terminal entry complete?   (No)  ���V!w �͇�DM!  �! 9s#rý!  �`i�!
 9~#fo##�s! 9�~#fo#��s#r�+! 9^#V!s ̈́W��Ø!  �!u 	s#r!��͊5�! �*t^��Q,��!�͊5�*t^�̈́T�#�͇��`is#r*t^�`i^#V��+T��*f^|�ʷ!D�!�ͅ3��ʷ��(!  �*p^�! �*r^�!L��-�!
 9�! 9s#r! 9^#V�+���0��!
 9s#r!f�͊5�!
 9^#V�^#V�!i�͊5��!��!��ͅ3��ʷ!s �! 9^#V�##�`i##��J5�������! 9s#r! 9~#���*p^#"p^! 9^#V�#"r^�


Enter new CRT name  (up to 30 characters)

 


 
Initialize new entry from existing terminal?   (Yes)  

Enter terminal number?  

 
OK to initialize using <%s> ?     (Yes)  ���V*f^|�¯*�W�!��͊5���!  �*p^�! �*r^�!���-�!
 9�! 9s#r! 9^#V�+���0�DM`i^#V�!��͊5��!�!	�ͅ3����*p^+"p^*f^�! 9s#rBK!  �! 9s#r�4! 9�~#fo#��s#r! 9^#V�+�! 9^#V�̈́W�b`i�! 9s#r!u 	^#VBK�%`i�*f^�JW�*f^u ^#V�"f^Ö!u 	^#V�!
 9^#V!u �s#r`i�*h^�JWʭ! 9^#V�"h^!  "r^�Sorry, <%s> is Empty
 
Enter number of terminal to be deleted  
OK to delete <%s> ?     (Yes)  ���V! 9N#F*f^|��4`i"h^"f^! �*f^^#V�`i^#V���S���! 9s#r! 9^#V!  ̈́W�r*f^�!u 	s#r`i"f^! �! 9~#��! �! 9s#r*f^u ^#V!
 9s#r*f^�! 9s#r!
 9~#��
!
 9^#V�^#V�`i^#V���S���! 9s#r!  ͅW�
!
 9^#V! 9s#r!
 9^#V!u ^#V!
 9s#r! 9�~#fo#��s#rã! 9~#��3`i^#V�*zX�*�W�!��͊5�! 9�!  �!
 9~#��b`i�*h^u �s#r`i"h^!  �*h^u �s#rÂ!
 9^#V!u 	s#r`i�!
 9^#V!u �s#r! 9^#V�� already contains an entry for  
 <%s>%s<%s>
   �V! �! �!|X��"/��������(��z�͓��	�� �!�͊5��ͱW   � � � � � ��!3�!�ͅ3��ʿ�8    INTMOD : MAIN MENU 0. EXIT Program 1. DISPLAY terminal entries 2. ADD a new terminal entry 3. DELETE existing terminal entry 4. MODIFY existing terminal entry 5. PRINT ONE or ALL entries  Enter option number   Invalid entry
 

Finished with modifications?  (No)  ���V! 9N#F!  �! 9s#r�d! 9�~#fo#��s#r! 9^#V!
 ̈́Wʑ! 9^#V�):X^#V�!Q�͊5���U!  �`i^ ! �"Wʩ! ì!  �!�X��"/����! 9s!T�͊5�!  �`i^ !� �"W��! ��!  �!�X��"/����! 9s! 9~�� !� �!  �! 9^ ��!
 9s!
 9^ �!X�͊5��!��!u�ͅ3��ʑ!
 9^�`i#DM+�s! �!� �!  �`i^ �!���-�!
 9��`i#DM+�s! �!� �!  �`i^ �!���-�!
 9�`is�4 
BYTE ONE - Bit 0 : 0. Send Row first then Column 1. Send Column first then Row Enter Option Number 4 
BYTE ONE - Bit 7 : 0. Send Address in Binary 1. Send Address in ASCII Enter Option Number  %s 


 

Byte ONE being set to: %xH 
Is Byte ONE correct?  (Yes)  

Enter First coordinate offset:  

Enter Second coordinate offset: ���V! 9N#F!  �! 9s#r`i�!
 9s#r! 9~#��!
 9^#VBK! �! 9s#r!  �! 9s#r�4! 9�~#fo#��s#r! 9^#V! ̈́W�Y!  �! 9^#V! 9�s�%!  �! 9s#r! 9^#V�)X^#V�!�͊5��`i~�ʋ!�Î!��!��ͅ3���! �! �! �`i^ ! �"W�!���-�!
 9�! 9s! 9^#V! �JW�`i#DM+^ !� �"W��!
��!�!��ͅ3���! 9^ !� �2W�! 9s�f! 9^#V! �JW�a`i#DM+^ !� �"W�;!D�>!L�!�ͅ3���^! 9^ !� �2W�! 9s�f`i#DM! 9^�! 9�~#fo#��s#r�+�! 9�s! 9^ ! �"W�! 9s!  �! 9s#rõ! 9�~#fo#��s#r! 9^ �!
 9^#V���W�! �!� �!  �`i#DM+^ �!S��-�!
 9��! 9�~#fo#��s#r�+�! 9�sæ! 9^ ! ��W�X! �!� �!  �`i#DM+^ �!`��-�!
 9��! 9�~#fo#��s#r�+�! 9�s!n�͊5�!  �! 9s#r�}! 9�~#fo#��s#r! 9^#V! ̈́W�! 9^#V! 9^ !
 ̈́W��! 9^#V! 9^ �!~�͊5���! 9^#V! 9^ ! ̈́W��! 9^#V! 9^ �!��͊5���! 9^#V! 9^ �!��͊5���n!��͊5���/!��!��ͅ3����!
 9^#VBK!  �! 9s#r�U! 9�~#fo#��s#r! 9^#V! ̈́W�~! 9^#V! 9^�`i#DM+�s�F�

 <* %s *>    Are you using this sequence?   (Yes)   (No)  
Number of characters used?  
Are you using a computer to emulate a terminal?   (Yes)   (No)  
Use Insert/Delete Line to scroll screen?   (Yes)   (No)  
Next value? 
Time delay?  

Inserting :   %x  0%xH  %xH  
 
Is this sequence correct?  (Yes)  ���V!  �! 9s#r!a�!G�ͅ3����*j^��v>�!  ��WC�*�W�!
 9��+T��!b�!
 9��GT��*t^���Q�*�W�!g�͊5��! �͇�"t^!��!
 9�͡:���! 9s#rz��X! 9�!��͊5��*j^��v>�!  ��WC�! 9^#V�*�W�����*p^�!��! 9^#V�ͨ5���! 9^#V�!  ���=��*f^DM!  �! 9s#rý! 9�~#fo#��s#r�+!u 	^#VBK! 9^#V*p^̈́W��`i^#V�̈́T�#�! 9�~#fo��s#rã! 9^#V�!��͊5��! 9^#V�!��! 9^#V�ͨ5���! 9^#V�!  ���=��*f^DM!  �! 9s#r�T! 9�~#fo#��s#r�+!u 	^#VBK! 9^#V*p^̈́W�z! 9^#V�`i^#V������:*f^DMË!u 	^#VBKx�ʱ! 9^#V�! �!s �`i##���;�! 9�Â*j^�! �! �*t^��b;�! 9�! 9s#r! 9^#V�! 9^#V�! �*t^���;�! 9�! 9^#V! �JW±*j^��v>�! 9^#V��v>�!��*�W��GT��*�W�͟O�*�W�*�W��.O��*�W�!
 9��.O���




OK to save changes?   .$$$ 
Total memory usage: %u bytes w  Error opening <%s> 
 %d 
Total string length: %d %d .bak   �V! 9^#V�~���!
 9^#V�!
 9�~#fo#��s#r�+^ ���=����!
 9^#V�!  ���=������V! �! 9s#r!}"�!x"�͡:��"n^!  �!�X��"/���! 9s#r! 9~#� !  �*p^�! �*r^�!"��-�!
 9�! 9s#r! 9^#V�+���0�DM!  ��! 9^#V�*n^�Ͳ"�! 9��g!!  �!
 9s#rù !
 9�~#fo#��s#r!
 9^#V! ̈́W�� !
 9^#V�)�X^#V�!�"�*n^�ͨ5���ê *f^DM! �! 9s#rx��g!! 9^#V! ��W�(!!  �! 9s#r*n^�! ���=��!  ��! 9�~#fo#��s#r�+�*n^�Ͳ"�! 9�!u 	^#VBK! 9�~#fo#��s#r�� *n^�! ���=���4    PRINT OPTIONS : 0. Print a single entry 1. Print ALL terminal entries  Option number?  

    ***************************
     *                         *
     *      CRT Terminals      *
     *                         *
     ***************************
 LST: w 
Enter number of terminal entry to be printed:  %s ���V!  �! 9s#r! 9s#r! 9^#V�##�! 9s#r! 9^#V�^#V�! 9^#V�!�#�! 9^#V�ͨ5�! 9�! DM�#`i#DM`i �̈́W�B#! 9�! 9�! 9��! 9^#V���#�!
 9��#! 9�! 9�! 9�!  �! 9^#V���#�!
 9�! DM�s#`i#DM`i\ �̈́Wʣ#! 9�! 9�! 9��! 9^#V���#�!
 9��n#�

Terminal Entry:   (%d) %s

 ���V! 9N#F`i^#V�^ !
 ��W�$`i^#V�^ �!�%�! 9^#V�ͨ5���! �! 9^#V���~#fo��s#rÕ$`i^#V�^ ! ��W�a$`i^#V�^ �!�%�! 9^#V�ͨ5���! �! 9^#V���~#fo��s#rÕ$`i^#V�^ �!�%�! 9^#V�ͨ5���! �! 9^#V���~#fo��s#r`i�~#fo#��s#r! 9^#V! �sV�W%! 9^#V�^#V�! ��ͨW�! 9s#r!  �! 9s#r��$! 9�~#fo#��s#r! 9^#V! 9~#fö́W�%! 9^#V�!  ���=����$! 9^#V��~#fo#��s#r�+)X^#V�!�%�! 9^#V�ͨ5���!  �! 9^#V��s#rÀ%!�%�! 9^#V�ͨ5��! �! 9^#V���~#fo��s#r�%x 0%xH %xH %s
 ,   �V!  DMæ%`i#DM`i �̈́W��%`i)�X^#V�!h'�͊5��á%��1�

INTMOD : CRT Table Modification Program

 The file INSTALL.INI contains tables of Escape sequences for
 various CRT Terminals.  These sequences are used by the program
 INSTALL to customize VEDIT to run on a particular machine.

 INTMOD allows you to work interactively with the file
 INSTALL.INI.  New terminal entries can be added, while existing
 entries can be modified, deleted, displayed and printed.

 %s   �V!  DM�~'`i#DM`i �̈́Wʕ'!�'�͊5��y'�
   �V!
 9~#���'! 9^#V!
 ̈́W��'!Y�!  �ͭ=��!
 9^#V�^#V�!
 9^#V�!�'�͊5���� %d) %-30s   �V! 9^#V�^#V! 9~#fo�YW��(! 9^#V�^#V�! 9^#V��~#fo#��s#r�͘'��! 9^#V�^#V�! 9^#V��~#fo#��s#r�͘'��! �! 9^#V���~#fo��s#r!�(�͊5�! 9^#V�~#�ʥ(! 9^#V�^#V!u ^#V�!
 9^#V��s#r! 9^#V�~#���(! 9^#V�^#V!u ^#V�! 9^#V��s#r��'�
 ���V*f^|���(*�W�!�*�͊5���!  �! 9s#r! 9s#r*f^�! 9s#r�k'!�*�͊5�*p^�! 9~#foͨW�! 9s#r!( �iW�B)! �_)! 9^#V! �sV�! 9^#V! �^V��! 9s#r*f^�! 9s#r!  �! 9s#rÏ)! 9�~#fo#��s#r! 9^#V! 9~#fo�! 9^#V�̈́W��)! 9^#V!u ^#V! 9s#rÀ)! 9^#V! 9s#r! 9^#V! 9~#fo�! 9s#r! 9�! 9^#V�! 9�! 9�! 9�!$ 9���'�! 9�! 9^#V! 9s#r! 9^#V! 9s#r!+�͊5�! �! 9��Q,��!
 9^ !E �JW�Y*�!
 9��7U�DM! PY��jW�|*`i�*p^�jW¶*! 9~#�®**f^�! 9s#r! 9s#r!  �! 9s#r!  �! 9s#r! |��)`i"r^! �`i+���0����K+����Sorry, <%s> is Empty
   Supported CRT Terminals:

 
Enter desired number, <RETURN> to continue, or "E" to Exit this menu:  ���V!  �! 9s#r! 9s#r! 9^#V�##�! 9s#r! 9~#�ʂ+�k'! 9^#V�^#V�! 9^#V�!3,�͊5���! DMí+`i#DM`i �̈́W��+! 9�! 9�! 9��!Y���#�!
 9�è+! 9�! 9�! 9�!  �!Y���#�!
 9�! DM�,`i#DM`i\ �̈́W�2,! 9�! 9�! 9��!Y���#�!
 9��,�

Terminal Entry:   (%d) %s

 ���V! 9^#V�*t^�s*t^�!
 �͍R��*t^#^ BK! PYDM!  �*t^PY�s`i �JWʨ,!  �! 9^#V��s�! �! 9s#r��,! 9�~#fo#��s#r! 9^#V`i��W��,*t^�! 9~#fo^ ��U��*t^�! 9~#fo�sö,*t^##�! 9^#V��+T������V! 9N#F!
 9^#V�!U.�͊5��! 9~#��Y-! 9^#V�! 9^#V��![.�͊5�! 9��w-! 9^#V�! 9^#V��!k.�͊5�! 9�! 9^#V�! 9^#V��=2���! 9s#r! 9^#V`i��W¸-! 9^#V! 9~#fo��W�&.*�X�!{.�͊5��! 9~#���-! 9^#V�*�X��!~.�͊5�! 9��.! 9^#V�*�X��!�.�͊5�! 9�! 9^#V�! 9^#V��=2���! 9s#rÔ-! 9^#V��
Please enter a number between   and  
%s   [%x-%x] (%x)    [%u-%u] (%u)    %s %x%s%x:  %u%s%u:    �V! 9^ ��U��! 9s! 9^ �!0 ���jW��.! 9^ !9 �jW��.! 9^ !���!
 9~#fo��V�! 9^ �!A ���jW�/! 9^ !F �jW�/! 9^ !���!
 9~#fo��V�!������V! 9^#V! �JW�H/! 9^#V! �JW�K/�k'! 9^#V�^#V��7U��! 9s#r! 9^#V�##^#V�!�0�͊5��! DMÇ/`i#DM`i�! 9~#fö́Wʵ/`i)�! 9~#fo^#V�!�0�͊5��Â/!�0�͊5�! 9^#V�##)�! 9~#fo^#V�###�! 9^#V�)�! 9~#fo^#V�!�0�͊5����K3�! 9s#r! 9^#V!  ̈́W�00! 9^#V�+++�! 9^#V�ͅW�c0! 9^#V!���YW�c0! 9^#V�+++�!�0�͊5���K3�! 9s#r�0! 9^#V! �JW0! 9^#V! �JWʆ0�k'! 9^#V!���JWʡ0! 9^#V�é0! 9^#V��%s

 %s
 
 %s (%s)  
Please enter a number from 0 to %d:  ���V!  �! 9s#r*f^DM�1! 9�~#fo#��s#r�+!u 	^#VBK! 9^#V!
 9~#fö́W�/1��0`i�  �V!�1�*�W�͡:��"j^|��^1*�W�!�1�͊5��!�1�!� �͇�"t^*j^�*t^�����!	 �*�W�*t^���S���ʏ1!�1�*j^�*t^�����*t^��7U�"p^*j^�*t^�����*t^��7U�"�W!  �r+ Unable to open <%s > Bad format check ���V!2�͊5�!	Y��O<��! 9s !
 �YW�2��1!;2�͊5��Press <RETURN> to continue  
 ���V!�X�! 9s#r! �! 9��Q,��!
 9~��n2! 9^#V��! 9~#�2!
 9��7U��!
 9�̈́T��! 9s#r! 9^#V!
 9+DM`i^ !  �JWʸ2`i+DMâ2`i^ !H �JW��2`i^ !h �JW��2`i+DM!  �! 9s#r! 9�~#fo##��s#r�++^#V�`i^ �͐.���! 9s#r!���JW�3!���! 9^#V! 9�~#fo��s#r`i+DM#�!
 9�YW��2! 9^#V�����V! �! 9��Q,��! 9^ !rZ#^ ! �"Wʁ3! 9��7U��!������V! 9^#V! 9s#r! 9^#V! 9s#r!  DMx���4! 9^#V�! 9^#V�!B5�͊5���! �!
 9��Q,��! DM! 9^ !_ �"W��4! �! 9s#r��4!  �! 9s#r��4!���! 9s#r! 9^#V�̈́T��! 9s#rz�ʘ4!  �! 9s#r!  �! 9s#r�V4! 9�~#fo#��s#r! 9^#V! 9~#fö́Wʕ4! 9^#V! 9~#fo^ !Y �JWʒ4! �! 9s#r�G4��4!  DM! 9^#V�̈́T�²4*�Xõ4*�X�! 9s#r! 9^#V�̈́T���4!G5��4!H5�! 9s#r��4ͱW   
4N �3Y �3�4ì3! 9^#V�� Please enter YES or NO:   Please enter YES, NO, or press RETURN:  %s%s      �V!  DM�]5`i#DM`i�! 9~#fö́Wʉ5!
 9^#V`i^�!
 9^#V`i�s�X5�  �V!
 9�!
 9^#V�!�=���5����  �V! 9^#V�"�Z! 9�! 9^#V�!�5���5����  �V*�Z�!
 9^#V�ͭ=���8��V!� 9N#F!  " [!� 9^#V�"�Z!� 9�~#fo#��s#r�+^ �"�Z|���9*�Z% �JW��9!  �! 9s! "[!  "[!'"[!� 9^#V�^ �"�Z- �JWʁ6!  "[!� 9�~#fo#��s#r�+^ �"�Z*�Z0 �JWʫ6!0 "[!� 9�~#fo#��s#r�+^ �"�Z*�Z* �JW��6*�Z##"�Z++^#V�"[!� 9�~#fo#��s#r�+^ �"�Z�*7!  "[!� 9�~#fo#��s#r�+^ �"�ZrZ#^ ! �"W�*7*[
 ��V�*�Z��"[��6*�Z. �JW��7!� 9�~#fo#��s#r�+^ �"�Z* �JWʃ7*�Z##"�Z++^#V�"[!� 9�~#fo#��s#r�+^ �"�Z��7!  "[ä7!� 9�~#fo#��s#r�+^ �"�Z*�ZrZ#^ ! �"W��7*[
 ��V�*�Z��"[Ì7! "
[*�Zl �JW�8!� 9�~#fo#��s#r�+^ �"�Z! "
[�'8*�Zh �JW�'8!� 9�~#fo#��s#r�+^ �"�Z*�Z÷8! "[�N8!
 "[�N8! "[�N8!��"[*
[�! 9�*[�*�Z���9�! 9��"[*
[�*�Z"�Z��8*�Z##"�Z++^#V�"[�̈́T�"
[��8*�Z##"�Z++^#V�"�Z*�Z�! 9"[�s��8ͱW c �8d H8o -8s z8u 68x ?8�8! 9�*[ͨW"
[*
[�*[ͅW��8*["
[*[|��59�	9* [#" [*[+"[#�*
[ͅW�59*[�`i��U����JW�29!����9!  "[�E9*[#"[*[~��|9*[�*[̈́W�|9*[#"[+^ �`i��U����JW�y9!����>9*[�* [" [*[|���9Ù9* [#" [*[+"[#�*
[ͅW��9!  �`i��U����JW��9!���Ò9��9*�Z�`i��U����JW��9!���* [#" [�6* [��!  "�X"�X!
 9~2�XG+V+^+�6 "�X�+N+V+^!�Xw#�:y��E:/<O*�X�X~���F::�XG!�X> �w#�9:�F:�!�X >�^�)|��Z:g,�R:�s+�=�M:Z !�:~*�X+"�Xw!�X���F:#�|:*�X��:+6-��0123456789abcdef  �V�`@DM|�µ:!  ��! 9^#V�! 9^#V���:����  �V! 9^#V��v>�!�XDM��:`i DMx���:!��"v^!  �!
 9^#V����S���;��:! 	^#V�!
 9^#V�� D��"[���JW�7;!  �*[�! 9^#V! �s! �! 9^#V! �s! 9^#V��  �V! 9N#F!  "[�;*[#"[*[�! 9~#fö́W��;!
 9^#V�"[æ;*[+"[*[|���;! 9^#V�ͻ<�"[���JW��;*[�*[�`i#DM+�sß;�x;*[�  �V! 9N#F!
 9^#V! 9~#fo��V"[!  "[�<*[#"[*[�*[��W�F<! 9^#V�`i#DM+^ ���=�����JW�C<!  ��<! 9^#V��  �V! 9N#F�ͻ<�"[���YWʷ<! �*[�"W"[ä<`i�~#fo+��s#r! �`i ��n�2W��s!����\<ͱW   �< �< }<�<*[�  �V! 9N#F! 	^#V�`i^#V���W�|=! 	^ ! �"W��<!���!���`i ��n�"W��s`i ~#��=�ͩ@�!	 	^#V�! 	^#V�! 	^ �͹G���"[  ��jW�d=*[|��M=! �P=! �`i ��n�2W��s!���! 	^#V`is#r*[�! 	s#r`i�~#fo#��s#r�+^ !� �"W�  �V!Y�!
 9^#V�ͭ=���  �V! 9N#F`i
 �JW��=!
 9^#V�! ���=�����JW��=!���!
 9^#V����=���  �V!
 9N#F! 	^#V�`i^#V���W�(>! 9^#V!� �"W����>���! 9^#V�`i�~#fo#��s#r�+�s !� �"W�  �V!	YDM`i�Y���W�u>`i DM����v>��U>�  �V! 9N#F!  " [`i ~���>! 	^ ! �"Wʱ>!������>��" [! 	^ �͝E��* [�2W" [! 	^ ! �"W��>! 	^#V���Q�!  �! 	s* [�  �V! 9N#F!J>"Z! 	^ ! �"W�?!���! 	^ ! �"Wʅ?! 	^#V�`i^#V�ͨW""[*"[�! 	^#V�! 	^ �ͮJ������JWʅ?! �`i ��n�2W��s!  �`is#r! 	s#r!���!
 9^#V!���JWʼ?!���`i ��n�"W��s!  �`is#r! 	s#r!  �`i ~#���?�ͩ@�!	 	^#V! �JW�@! �! 9�! 	^ �ͮJ������JW�^?!
 9^#V��! 	^#V`is#r!	 	^#V�! 	^#V��! 	s#r! �`i ��n�2W��s!
 9^#V�`i�~#fo#��s#r�+�s !� �"W�  �V!	YDM`i ~�ʏ@`i DM�Y���Wʌ@!  ��k@!  �`is#r! 	s#r! 	s#r`i�  �V! 9N#F! 	^ �͹N���@! �!	 	s#r`i �! 	s#r�! ��WP�"$[|���@! �!	 	s#r! �`i ��n�2W��s*$[�! 	s#r�!�Z� s#y��!A* � �"x^*�Y"z^�NA�Y�   � �=A  �V! �!n[�!� �͹T���!  �:� o&  �"Wn[�s!2C"2[!n[DM! "�[*�[ �̈́W�C`i^ !  �JW¶A`i^ !	 �JWʾA`i#DMÚA`i~��C`i^ !> �JW��A! "�[��A`i^ !< �JW��B!  "�[`i#DM^ !  �JW�B`i^ !	 �JW�B��A`i"�[`i#DM~��OB`i^ !  �JW�=B`i^ !	 �JW�LB!  �`i#DM+�s�OB�B*�[�͝E�*�[|��rB!��*�[���C��"�[ÂB!  �*�[�� D��"�[*�[���JW��B!3C�!� ��+T��*�[�!� ��GT��!UC�!� ��GT��!� �!	 �͍R��!
 ��WC��C`i�*�[#"�[+)2[�s#r`i#DM~��C`i^ !  �JW�C`i^ !	 �JW�C!  �`i#DM+�s�C��BÍA!2[�*�[��$��!  ��WC�� Can't open file for redirection:  $   �V*Z��U!  DM`i �̈́WʂC`i#DM+�͝E��hC! 9~#�ʥC! �͍R� �"WʥC!�C�͟O��=A�A:$$$.SUB   �V!��"v^!���  �V!  �con: CON: lst: LST: prn: PRN: pun: PUN: rdr: RDR:   �V!
 9^#V�!�! 9^#V�� D����  �V!�Y"�[!  "�[�FD*�[ "�[*�[#"�[*�[ �̈́W�iD*�[ ^#V!�C�JW�sD�5D!��"v^!���!ZDMÃD`i DM`i~#�ʤD! 9^#V�`i^#V���S��ʤD�{D! 	^#V�"�[!
 9^#V! �"W#"�[*�[ �"W��D*�[^�*�[�s{���D!��"v^!���*�[ �"W�E*�[#^�*�[#�s{��E!��"v^!���! 	^#V�*�[ �s#r*�[##^�*�[##�s*�[###^�*�[###�s!�C�*�[ �s#r�*�[�! 9^#V�! 9^#V�! 9^#V�*�[ ^#V���U�!
 9�!  ̈́WʙE!�C�*�[ �s#r!���*�[�  �V! 9^#V!  ̈́W��E! 9^#V! ͅW��E!��"v^!���! 9^#V�)))�YDM! 	^#V�! 	^#V���U��! 9s#r!  �! 	s! 	s! 	s`is!�C�! 	s#r! 9^#V��  �V!�[DM�:F`i' DM`i4]���W�TF`i% ~��^F�2F!��"v^!����!
 9^#V�͡R��"4]���JWʂF!��"v^!���*4]� �JWʔFͿS"4]*4]���S�!
 9^#V! �"WʶF�! �͍R���! �͍R��� �JW��F!
 9^#V! �"W��F�! �͍R��� �JW��F!��"v^��S!����G!
 9^#V! �"W �JW�G!��"v^��S!���!  �!! 	s#r!# 	s!$ 	s*4]�!& 	s`i�! 9^#V! �s#r!
 9^#V! �"W#�!% 	s!�G�! 9^#V! �s#r!
 9^#V! �"WʋG��]M���S!  �  �V! 9N#F�N�! �͍R��!  �!% 	s!  �  �V! 9^#V�)))�YDM! 9^#V�! 9^#V�! 	^#V�`i^ �)`Z^#V���U����  �V!  DM! 9^#V�"6]*6]& ^ ���S�*6]$ ~��yH*6]$ ^ �!� ��ͨWDM�! 9~#fo��W�\H! 9^#VBK�! 9^#V�*6]��$I����yH��S!  �! 9^#V`iͨW ��W"8]|���H*8]�! 9^#V`i�*6]���N���":]|���H��S*8]�*:]ͨW ���VPY�*8] ���VPYDM`i�! 9~#fo��W�I! 9^#V`iͨW�! 9^#V`i�*6]��$I����I��S`i���S! 9^#V��  �V! 9N#F�� N��=I!���! 9^#V�! 9^#V�!$ 	^ !� �͹T���!$ 	^ ! 9~#fo �"W�!$ 	s{�I`i! �~#fo#��s#r!  �  �V:=]��J!� }2<]!  }2>]}2=]!<]�!
 �͍R��!
 �! �͍R��:>]o&  �JW��I!  }2=]!  �:hZo�:=]o#}2=]& <]#�s! ">^:=]o& DM�! 9~#foͅW�%J! 9^#VBK�! 9^#V�*>^<]�͹T���`i�*>^">^`i�:=]o�ͨW}2=]`i�  �V!
 9N#F!  "@^�uJ*@^#"@^*@^�! 9~#fö́WʪJ! 9^#V�͍R��`i#DM+�s ! �JWªJ�nJ*@^�  �V! 9^#V�)))�YDM! 9^#V�! 9^#V�! 	^#V�! 	^ �)iZ^#V���U����  �V!  DM! 9^#V�"B^*B^& ^ ���S�*B^$ ~��pK*B^$ ^ �!� ��ͨWDM�! 9~#fo��W�SK! 9^#VBK�! 9^#V�*B^��(L����pK��S!���! 9^#V`iͨW ��W"D^|���K*D^�! 9^#V`i�*B^���N���"F^|���K��S*D^�*F^ͨW ���VPYDM|���K!���`i�*D^ ���VPYDM`i�! 9~#fo��W�L! 9^#V`iͨW�! 9^#V`i�*B^��(L����L��S`i���S! 9^#V��  �V! 9N#F�� N�  �̈́W�HL!���! 9^#V�!$ 	^ !� �! 9^#V�͹T����!" �͍R��"v^|�ʀL!���!$ 	^ ! 9~#fo �"W�!$ 	s{�²L`i! �~#fo#��s#r!  �  �V!
 9N#F! 9^#V�"H^*H^+"H^#|��M`i^ !
 �JW��L! �! �͍R��`i#DM+^ �! �͍R����L! 9^#V��  �V!
 9N#F! 9^#V�"J^*J^+"J^#|��TM`i#DM+^ �!
 9^#V�͍R���-M! 9^#V��  �V! 9N#F�!# �͍R��`i! ~#�M!  �!$ 	s!  �`i! �~#fo+��s#r�� N�ʪM!���! "L^*L^� ���W��M*L^+"L^^ ! �YW��M*L^#"L^��MðM*L^���!$ 	s !� �JW�N`i! �~#fo#��s#r!  �!$ 	s!  �  �V!  "N^�  �V! 9N#F*N^PY�YW�HN!! 	^#V*P^�YWʵN!� �! �͍R���!! �͍R��"v^ �JW�wN*v^ �JWʙN!  "v^! �!� �!� �͝T���!  "N^! �*v^|�ʥN!���`i"N^!! 	^#V�"P^!  �  �V! 9^#V�)))�Y^ ���-V!��N�-V"�*�Z�!� "�Z� ��*�Z�� ��O*�Z! 4�O#4*�Z+"�Z}���N����)O��)Oo& "v^�*�Z����V! 9�!F 9^#V�͡R��DM! 9�!H 9^#V�͡R�����S�! 9�! �͍R��� �YWʍO! 9�! �͍R��!��"v^ÛO! 9�! �͍R����S����V! 9�!2 9^#V�͡R��DM���S�! 9�! �͍R��DM��S`i� �JW��O!��"v^!���!  �  �V! 9N#F!��	^#V�+))"Z^���Q�!
 9^#V��WP�"X^|��SP*X^PY�YW�SP!
 9^#V*Z^��W�?P*Z^�GP!
 9^#V��*X^��͹T���*X^�  �V! 9^#V�### ��W#"^^*V^"\^|�P!R^"\^"T^"V^*\^##^#VBKåP`i"\^! 	^#VBK! 	^#V�`i��YW�Q! 	^#V�`i^#V�))PY��JW�Q! 	^#V�^#V�`i��~#fo��s#r! 	^#V�##^#V! 	s#råP`i^#V*^^��WʎQ`i^#V*^^�JW�1Q! 	^#V�*\^##�s#r�vQ*^^))PY"V^*V^�*\^##�s#r! 	^#V�*V^##�s#r`i^#V*^^ͨW�*V^�s#r*^^�`is#r*\^"V^!  �! 	s#r`i �`i�*V^�JW��Q! �ͅS�DM���JWʱQ!  �! �`is#r!  �! 	s#r`i ���Q�*V^DM×P�  �V! 9^#V!��"`^*`^##~#���Q!���*V^DM�R! 	^#VBK`i�*`^��W�,R! 	^#V�*`^����W�`R! 	^#V�`i����W�]R*`^PY���W�`R! 	^#V�*`^����W�`R�R! 	^#V�*`^##�s#r*`^�! 	s#r`i"V^!  ��-V͐R���-V*�ZDM*�Z�� �o�g��! 9N#F#^#V
� ʸR�	¼RíRkb6 #>6 #=��R>6 #=��R�� 
�yS��R�0_z������W��R�/��R���R��
�:> �%S
��A�`S�[�S�@�"S�a�`S�{�`S�`w#
�.�@S��YS�(S�gSw#�)S{�o|� g
��YS�gSw#�JS& jz���!��|����*�pS>?��a��{�� ��0��:҃S��7�! 9^#V*�YکS�*x^}�|�کS*�Y�"�Y�|��!���=�! 9}�_|#�W�"x^��-V �� o& ���-V �� 2qZ:�Z��� _� �-V :qZ_� ! 9���T! 9�F+N+V+^+~+ng�x��%T��%T��%T#�T�o�g��! 9V+^+~+ng�w��CT#�8T�|��! 9���[T! 9�F+N+V+^+~+ng対�mT#�eTx��~Tw��~T#�mTw��|��! 9~#fo  ��ʙT#ÐT�}���! 9^#V#N#F#n�x�ʷTs#ìT���!	 9F+N+V+^+~+ng���T��T}���T�	U	�	����T�+����+wx���T�ɯ���T����~#x���T��! 9~�a�U�{�U� o& ��! 9~�A�2U�[�2U� o& ��  �V! 9N#F`i^ !  �JW�`U`i^ !	 �JW�hU`i#DM�DU!  "d^`i^ !- �JWʊU! "d^`i#DMÝU`i^ !+ �JWʝU`i#DM!  "b^`i^ !rZ#^ ! �"W��U*b^
 ��V�`i#DM+^ ���"b^ãU*d^|���U*b^͞W��U*b^����DM!  9�9������`i��U���������|����DM!  9�9��!V�`i�~#x��"V��! 9���<V�������Z~#�CV!PV������[V����|��z��̀V����W}��͖V�}��z�̀V���W|��|��V/g}/o#z��V/W{/_�MD!  ͣV�}��y/Ox/G>)�)�ҴV,	��V�}�o|�g�=¬V�=¬V��DM!  >)�)���V	=��V�}���{�_�
W|��W|7g}o��V���{�_�
W)�W}���{�_�
W|�g}o�W��|�g}�o��|/g}/o��|�g}�o��|�g}�o��|��cW�TW}��TW|��cW!  ��}��cW|��TW! }���|��|W}�|�?> � o& �z�o& ��|���W}�|�> � o& �|�o& �}/o|/g#}���}�o|�g�����BK^#Vz���W#y���W###ùW#x���W#~#fo���}�|�> ?� o& ��}�|�> � o& � v��    ���(i��-q��M[q����������� ,7N�� -o��8N`z�������� .E]m|��.0FVr�����������	#<u!w!�!�!�!�!�!"6"W"�%�%7&x&�&�&-'/.O.    �45        r    r+  w  w+ a  	a+ 	x  x+                                                                                                                               |^ ???????????                      �C   �C   �C     �C      �C      �C      �C      �C      �C      �C      �C  �C �C   �C   �C $F�CZ �CZ �CZ �CZ �CZ �CZ �CZ �CZ �CZ �CZ   Z  �C�G�IXJ
�C�JMM           00000                  �@@@@@@@@@@@@@@@@@@@@@@						@@@@@





@@@@        