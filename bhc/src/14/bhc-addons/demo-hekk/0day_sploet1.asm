.model pvm1200
.codes & shellcodes

         organizator 300h  ; basic executable filez

метка_вступления:

         mov register1,'sploet'
         mov register2,'shelcos'
         mov register3,'buben+maktok'
         mov register4,'da vstupay je v bhc padal bliad !!'

метка_описание_ксор:

         xor register1,register2
         xor register2,register1
         xor register3,register1
         xor register1,register4

         ; здесь результат в регистре 4 имеет значение полного (полнейшего)
         ; ксора данных. note: кодес в это время еще не скомпелирован. 

         jmp метка_описание_ксор while xor no konec  ; пока ксор jmp

         print $filename  ; компеляция эксклойта.

         mov registerOUT,'da viydi je ti nakonec'
         int VIH  ; vihodi !


filename db 'sploet nulevogo dnia. edition by bhc. delat ne torgovat !!',0 
                               
end метка_вступления
