# ARMv6-M 
thumb instruction subset  

---

32bit pointer  
byte 8bit  
word 16bit  
dword 32bit  
  
registers:  
13 + 3     32bit  
R0..R12 + SP, LR, PC  

---

## 32bit encoding:
15  14  13  12  11  10   9   8   7   6   5   4   3   2   1   0  
..............................................................  

armasm

---

Threading:  
Mutex  
Semaphore  

---

ADC     (reg)  
ADD     (imm)  
ADD     (reg)  
ADD     (SP + imm)  
ADD     (sp + reg)  
ADR  
AND     (reg)  
ASR     (imm)  
ASR     (reg)  
B  
BIC     (reg)  
BKPT  
BL  
BLX     (reg)  
BX  
CMN     (reg)  
CMP     (reg)  
CPS  
CPY  
DMB     [data memory barrier - CP15 op]  
DSB  
EOR     (reg)  
ISB  
LDM, LDMIA, LDMFD  
LDR     (imm)  
LDR     (reg)  
LDRB    (imm)  
LDRB    (reg)  
LDRH    (imm)  
LDRH    (reg)  
LDRSB   (reg)  
LDRSH   (reg)  
LSL     (imm)  
LSL     (reg)  
LSR     (imm)  
LSR     (reg)  
MOV     (imm)  
MOV     (reg)  
MOV     (shifted reg)  
MRS       
MRS     (reg)  
MUL       
MVN     (reg)  
NEG       
NOP       
ORR     (reg)  
POP       
PUSH      
REV       
REV16     
REVSH     
ROR     (reg)  
RSB     (imm)  
SBC     (reg)  
SEV       
STM, STMIA, STMEA  
STR     (imm)  
STR     (reg)  
STRB    (imm)  
STRB    (reg)  
STRH    (imm)  
STRH    (reg)  
SUB     (imm)  
SUB     (reg)  
SUB     (SP - imm)  
SVC       
SXTB      
SXTH      
TST     (reg)  
UDF       
WFE       
WFI     [wait for interrupt, hint - CP15 op - enter low power state until wake-up event]  
YIELD     


???
SWP
SWPB




---  

# Links

Cortex-M0+:  
https://developer.arm.com/documentation/dui0662/b/The-Cortex-M0--Instruction-Set  

ARMv6-M Architecture Manual:  
https://developer.arm.com/documentation/ddi0419/e/?lang=en  
