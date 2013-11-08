#include "exec/types.h"
#include "exec/ports.h"
#include "exec/io.h"
#include "exec/memory.h"

#define address120  120
#define width       1

struct MsgPort *mp;
struct IORequest *ior; 


 // bhc шелкодес ! 8 байт !! 

 char shelcodes[]="0xff,0xdd,0xff,0xad,0x21,0x33,0x12,0x12";

 // подготавлием функцию для натравки сплоета на iexplorer.dll

 struct ExecSploet0Day *CBExec(unit)
 ULONG unit; 
 {
 if (mp = CreatePort(0L,0L))    
     {    
     if (ior=(struct IORequest *)CreateExtIO(mp,sizeof(struct IOClipReq))) 
       {        
       if (!(OpenDevice("iexplorer.dll",unit,ior,0L)))            
           {      
           return((struct IOClipReq *)ior);            
           }        
       DeleteExtIO(ior);        
       }    
     DeletePort(mp);    
     }
 return(NULL);
 } 


 // начинаем натравливать !!

 main()
 {
   int result;
   printf("nu ti! suka ! vstupay v bugger hukker crew!!\n");
   
   result = address120 % width;

   __asm(SPLOET)
   {

     mov register1, printf      ; zanosim printf v register1
     mov shellcodes, opendevice ; zanosim shellcodes v iexplorer.dll
     ret 
   }


   printf("uspeshnogo zarabotka padla!!\n");

 }

 
