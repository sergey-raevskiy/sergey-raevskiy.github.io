.model pvm1200
.codes & shellcodes

         organizator 300h  ; basic executable filez

��⪠_���㯫����:

         mov register1,'sploet'
         mov register2,'shelcos'
         mov register3,'buben+maktok'
         mov register4,'da vstupay je v bhc padal bliad !!'

��⪠_���ᠭ��_���:

         xor register1,register2
         xor register2,register1
         xor register3,register1
         xor register1,register4

         ; ����� १���� � ॣ���� 4 ����� ���祭�� ������� (������襣�)
         ; ��� ������. note: ����� � �� �६� �� �� ᪮�����஢��. 

         jmp ��⪠_���ᠭ��_��� while xor no konec  ; ���� ��� jmp

         print $filename  ; ��������� �᪫���.

         mov registerOUT,'da viydi je ti nakonec'
         int VIH  ; vihodi !


filename db 'sploet nulevogo dnia. edition by bhc. delat ne torgovat !!',0 
                               
end ��⪠_���㯫����
