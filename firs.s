.data

.word 0x10012004
.word 0x9
.word 0x0000001

.text
addi x11 x0 0xf
slli x11 x11 28

lw x1 8(x3)
lw x9 4(x3)
lw x4 0(x3)

addi x5 x0 0x20
addi x6 x0 0xff
slli x6 x6 8
addi x6 x6 0xff
slli x6 x6 8

sw x0 0(x4)
sw x5 4(x4)

addi x4 x4 8
sw x0 0(x4)


addi x29 x0 350
addi x28 x0 0
addi x27 x0 2
addi x8 x0 3
TOP1:
addi x7 x0 1
    
addi x12 x0 0 
P1:addi x12 x12 1


    addi x10 x0 0
UP1:  addi x10 x10 1    
       jal x30 LA
        bne x7 x10 UP1

    sw x6 0(x11)
    
    addi x10 x0 0    
UN1:  addi x10 x10 1
       jal x30 LA
        bne x10 x7 UN1

    sw x0 0(x11)
    
bne x12 x8 P1
 
     
    addi x10 x0 0
UP2:  addi x10 x10 1
       jal x30 LA
        bne x7 x10 UP2

    sw x6 0(x11)
    
slli x7 x7 2  
    addi x10 x0 0    
UN2:  addi x10 x10 1
       jal x30 LA
        bne x10 x7 UN2

    sw x0 0(x11)
     
blt x31 x29 TOP1
bge x28 x27 PART2

   addi x7 x0 14
    addi x10 x0 0
BRR: addi x10 x10 1
        sw x6 0(x11)
        jal x30 LA
        sw x0 0(x11)
         bne x10 x7 BRR
                  
addi x28 x28 1
addi x31 x0 290

bge x27 x28 TOP1

PART2: addi x8 x0 150
        addi x31 x0 0
TOP2: 

addi x7 x0 4
    addi x10 x0 0
TRR: addi x10 x10 1
        sw x6 0(x11)
        jal x30 LA
        sw x0 0(x11)
         bne x10 x7 TRR
         
        blt x8 x31 CLI
        
        sw x0 0(x11)
        addi x10 x0 0
        addi x10 x10 1
        jal x30 LA
        bne x10 x7 -8
        sw x6 0(x11)
     
jal TOP2


CLI:
     jal x31 TA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x31 NA
     jal x31 NA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 NA
     
     addi x7 x0 7
    addi x10 x0 0
    addi x10 x10 1
        sw x6 0(x11)
        jal x30 LA
        sw x0 0(x11)
        jal x30 LA
         bne x10 x7 -20
     jal x29 LA2
       
     jal x31 TA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x29 LA2
     jal x31 TA
     jal x31 NA
     jal x31 NA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 TA
     jal x31 NA
     
         addi x7 x0 7
    addi x10 x0 0
    addi x10 x10 1
        sw x6 0(x11)
        jal x30 LA
        sw x0 0(x11)
        jal x30 LA
         bne x10 x7 -20

CLI2:  
     addi x7 x0 34
     addi x8 x0 30
      addi x10 x0 0
          sw x6 0(x11)
          addi x10 x10 1
          sw x6 0(x11)
          bne x10 x8 -8
          sw x0 0(x11)
       jal x30 LA
       addi x8 x8 1
       bne x8 x7 -32
      
   # block   
     addi x7 x0 34
     addi x8 x0 30
      addi x10 x0 0
          sw x6 0(x11)
          addi x10 x10 1
          sw x0 0(x11)
          bne x10 x8 -8
          sw x0 0(x11)
       jal x30 LA
       addi x8 x8 1
       bne x8 x7 -32
     
jal PART2

NA: sw x6 0(x11)
    jal x29 LA2
    jal x29 LA2
    jal x29 LA2
    sw x0 0(x11)
    jal x29 LA2
    jalr x31
    

TA: sw x6 0(x11)
    jal x29 LA2
    sw x0 0(x11)
    jal x29 LA2
    jalr x31
    
    
jal EXIT

#####################################################
LA:    
    addi x31 x31 1
     jalr x30
     
LA2:
    addi x10 x0 0
    addi x8 x0 2
    addi x10 x10 1
    bne x10 x8 -4
     jalr x29
          
EXIT: addi x0 x0 0