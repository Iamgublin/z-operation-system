; boot.asm
; Copyright (c) 2009-2012 mik 
; All rights reserved.


; ����һ���հ�ģ��ʾ������Ϊ setup ģ��
; ����д����̵ĵ� 2 ������ ��
;

%include "..\inc\support.inc"

;
; ģ�鿪ʼ���� SETUP_SEG - 2���� 2 ����ΪҪ����ģ��ͷ�Ĵ�ŵġ�ģ�� size��
; load_module ���ص� SETUP_SEG-2��ʵ��Ч���� SETUP ģ��ᱻ���ص�����ڵ㡱����setup_entry
;
        org SETUP_SEG - 2
        
;
; ��ģ��Ŀ�ͷ word ��С����������ģ��Ĵ�С��
; load_module �������� size ����ģ�鵽�ڴ�

SETUP_BEGIN:

setup_length    dw (SETUP_END - SETUP_BEGIN)            ; SETUP_END-SETUP_BEGIN �����ģ��� size


setup_entry:                                            ; ����ģ��������ڵ㡣        
message0 db 0dh, 0ah,"Loading S.M.A.R.T........  complete!"
message1 db 0dh, 0ah,"Welcome My Master:ZhaoLiZhou", 0dh, 0ah
message db 0dh, 0ah,"   <__,.n\.    /  ,--/ >", 0dh, 0ah 
        db "         �� ', !--�\-i  /  /'", 0dh, 0ah 
        db "         /'/'      L//'\/'", 0dh, 0ah 
		db "       /   /,   /|  ,�� ,  ',", 0dh, 0ah 
		db "      /  / /-�\/  ��  L_ / \! i", 0dh, 0ah 
		db "       / / 7/'/   /'/-//!/\|   |", 0dh, 0ah 
		db "        !,/7 '@'     'i@ii|    |", 0dh, 0ah 
		db "         |./'    _    ,,,, / |./    |", 0dh, 0ah 
		db "       /'| i��./,,__  _,./ /   .i   |", 0dh, 0ah 
		db "         /'| | / k_��_//'\,  /.  |", 0dh, 0ah 
		db "            | |/i ��|/   i  ,./ |  i  |", 0dh, 0ah 
		db "           .|/ / ��:     /!   ��  |", 0dh, 0ah 
		db "            k\>//    _,.//    //!", 0dh, 0ah 
		db "            !'<//'T'', �� ''7'/r'", 0dh, 0ah 
		db "            /'\L__|___i,___,//|/", 0dh, 0ah 
		db "               /-,/  |___./", 0dh, 0ah 
		db "               '/'    !_,.:", 0dh, 0ah 
times 1024-($-$$) db 0


SETUP_END:

; end of setup        