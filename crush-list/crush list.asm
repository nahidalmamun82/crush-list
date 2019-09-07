.STACK 100H
.MODEL SMALL
.DATA
MSG1  DB "*******************PROJECT PANEL********************$"
MSG2  DB "******          *** crush list ***            ******$"
MSG3  DB "******                                        ******$"
MSG4  DB "******          1.Features [I=input,E=terminate]****$"
MSG5  DB "******          2.Friend Crush List           ******$"
MSG6  DB "******          3.Other Crush List            ******$"
MSG7  DB "******          4.Propability Of Love         ******$"
MSG8  DB "******          5.Warning zone                ******$"
MSG9  DB "******                                        ******$"
MSG10 DB "****************************************************$"
MSG11 DB "Please Enter a Number What u want to see $"

FEATURE1 DB "U can add,delete,image upload of ur crush & see the list & CRUSH PRIORITY $"
FEATURE2 DB "#in future it will be a web software...''in php'' # $"  

FND_L  DB "1.SABBIR 2.TOUHID 3.SHAHEED 4.ABIR $"
FND_SA DB "Total crush =1;  Shamima  LOC:--  DATE:02-02-17$"
FND_T  DB "Total crush =1;  Muna    LOC:--   DATE:04-03-17$"
FND_SH DB "Total crush =1;  Lucky     LOC:--   DATE:09-11-1$"
FND_A  DB "Total crush =1;  Aysha   LOC:--   DATE:04-03-17$"

OTHER_L  DB "1.Emon Sir $"
OTHER_E  DB "Total crush =1;  Unknown1  LOC:JU  DATE:02-02-12$" 


FND_LL  DB "1.SABBIR 2.TOUHID 3.SHAHEED 4.ABIR 5.EMON $"

PROP_SA DB  "Fall in lv:30% ,  Happiness:20% , Trust:12% $"
PROP_T  DB  "Fall in lv:45% ,  Happiness:25% , Trust:15% $"
PROP_SH DB  "Fall in lv:35% ,  Happiness:15% , Trust:11% $"
PROP_A  DB  "Fall in lv:40% ,  Happiness:22% , Trust:5% $" 
PROP_E  DB  "Fall in lv:46% ,  Happiness:27% , Trust:17% $"  

WRZN_SA DB  "Despire : 40% ,  Eye contact : should be increased ,Increasing_Follow : 95% $"
WRZN_T  DB  "Despire : 45% ,  Eye contact : increased ,      Increasing_Follow : 80% $"
WRZN_SH DB  "Despire : 50% ,  Eye contact : carry on ,       Increasing_Follow : 85% $"
WRZN_A  DB  "Despire : 47% ,  Eye contact : more than befor ,Increasing_Follow : 92% $"
WRZN_E  DB  "Despire : 90% ,  Eye contact : low priority  , Increasing_Follow : sry..expired $"
 
.CODE
    MAIN PROC
        
         MOV AX,@DATA
         MOV DS,AX
         
         MOV AH,9
         LEA DX,MSG1
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG2
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG3
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG4
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG5
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG6
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG7
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG8
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG9
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
         
         MOV AH,9
         LEA DX,MSG10
         INT 21H
         MOV AH,2
         MOV DL,0AH
         INT 21H
         MOV DL,0DH
         INT 21H
        
         MOV AH,9
         LEA DX,MSG11
         INT 21H 
         ;end project panel
         
         ;compare all feature
         MOV AH,1
         INT 21H 
         CMP AL,'E'
         JE EXECUTE
         CMP AL,'I'
         JE INPUT
         CMP AL,'1'
         JE FEATURE
         CMP AL,'2'
         JE FND_LIST
         CMP AL,'3'
         JE OTHER_LIST
         CMP AL,'4'
         JE PRO_LV
         CMP AL,'5'
         JE WARNING_ZN
         
         
        ;function
            JMP END_IF   ;FEATURE
            FEATURE: 
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV DL,0DH
            INT 21H
            MOV AH,9 
            LEA DX,FEATURE1
            INT 21H
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV DL,0DH
            INT 21H
            MOV AH,9 
            LEA DX,FEATURE2
            INT 21H 
            JMP INPUT
            
            
        
            JMP END_IF    ;FRIEND LIST
            FND_LIST: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_L
                INT 21H
                MOV AH,1    ;scan & compare
                INT 21H
                
                CMP AL,'E'  ;all feature compare
                JE EXECUTE
                CMP AL,'I'
                JE INPUT
                CMP AL,'1'
                JE SABBIR
                CMP AL,'2'
                JE TOUHID
                CMP AL,'3'
                JE SHAHEED
                CMP AL,'4'
                JE ABIR
            
            
            JMP END_IF    ;SABBIR
            SABBIR:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_SA
                INT 21H
                JMP INPUT
                 
            
            JMP END_IF    ;TOUHID
            TOUHID:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_T
                INT 21H
                JMP INPUT
            
            JMP END_IF    ;SHAHEED
            SHAHEED:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_SH
                INT 21H
                JMP INPUT
                   
            JMP END_IF    ;ABIR
            ABIR: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_A
                INT 21H
                JMP INPUT
            
                   
            
            JMP END_IF    ;OTHER LIST
            OTHER_LIST:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,OTHER_L
                INT 21H
                MOV AH,1    ;scan & compare
                INT 21H
                
                CMP AL,'E'  ;all feature compare
                JE EXECUTE
                CMP AL,'I'
                JE INPUT
                CMP AL,'1'
                JE EMON
                
              
            JMP END_IF    ;EMON
            EMON: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,OTHER_E
                INT 21H
                JMP INPUT   
             
            
            JMP END_IF    ;PRO_LV
            PRO_LV:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_LL
                INT 21H
                MOV AH,1    ;scan & compare
                INT 21H
                
                CMP AL,'E'  ;all feature compare
                JE EXECUTE
                CMP AL,'I'
                JE INPUT
                CMP AL,'1'
                JE SABR
                CMP AL,'2'
                JE TOHD
                CMP AL,'3'
                JE SHAED
                CMP AL,'4'
                JE ABR 
                CMP AL,'5'
                JE EMONN
                
            JMP END_IF    ;PRO_SABBIR
            SABR:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,PROP_SA
                INT 21H
                JMP INPUT
                 
            
            JMP END_IF    ;PRO_TOUHID
            TOHD:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,PROP_T
                INT 21H
                JMP INPUT
            
            JMP END_IF    ;PRO_SHAHEED
            SHAED:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,PROP_SH
                INT 21H
                JMP INPUT
                   
            JMP END_IF    ;PRO_ABIR
            ABR: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,PROP_A
                INT 21H
                JMP INPUT
               
            JMP END_IF    ;PRO_EMON
            EMONN: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,PROP_E
                INT 21H
                JMP INPUT
            
            
            JMP END_IF    ;WARNING_ZN -----------
            WARNING_ZN:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,FND_LL
                INT 21H
                MOV AH,1    ;scan & compare
                INT 21H
                
                CMP AL,'E'  ;all feature compare
                JE EXECUTE
                CMP AL,'I'
                JE INPUT
                CMP AL,'1'
                JE SABR1
                CMP AL,'2'
                JE TOHD1
                CMP AL,'3'
                JE SHAED1
                CMP AL,'4'
                JE ABR1
                CMP AL,'5'
                JE EMON1
                
            JMP END_IF    ;WRZN_SA
            SABR1:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,WRZN_SA
                INT 21H
                JMP INPUT
                 
            
            JMP END_IF    ;WRZN_T
            TOHD1:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,WRZN_T
                INT 21H
                JMP INPUT
            
            JMP END_IF    ;WRZN_SH
            SHAED1:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,WRZN_SH
                INT 21H
                JMP INPUT
                   
            JMP END_IF    ;WRZN_A
            ABR1: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,WRZN_A
                INT 21H
                JMP INPUT
                
            JMP END_IF    ;WRZN_E
            EMON1: 
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9 
                LEA DX,WRZN_E
                INT 21H
                JMP INPUT
            
            
            
            
            JMP END_IF    ;EXECUTE
            EXECUTE: 
            JMP END_IF
            
            
            JMP END_IF ;again scan &compare  ;INPUT
            INPUT:
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,2
                MOV DL,0AH
                INT 21H
                MOV DL,0DH
                INT 21H
                MOV AH,9
                LEA DX,MSG11
                INT 21H 
                MOV AH,1
                INT 21H 
                
                CMP AL,'E'  ;all feature compare
                JE EXECUTE
                CMP AL,'I'
                JE INPUT
                CMP AL,'1'
                JE FEATURE
                CMP AL,'2'
                JE FND_LIST
                CMP AL,'3'
                JE OTHER_LIST
                CMP AL,'4'
                JE PRO_LV
                CMP AL,'5'
                JE WARNING_ZN
            
             
            
            
            
            
         END_IF:
         
        MAIN ENDP
    END MAIN