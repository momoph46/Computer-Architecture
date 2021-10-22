.data
arg:  .word 38
str1: .string "The result is " 

.text
main: lw a0, arg
      mv a1,zero
      jal ra, Add_Digits

      #print
      la a0 ,str1
      li a7 ,4
      ecall
      mv a0 ,a1
      li a7 ,1
      ecall
      
      li a7,10
      ecall
exit:


Add_Digits: 
            mv t5, a0
            
    loop1:  slti t1, t5, 10 
            bne t1, zero, end2
            mv t4, zero
    loop2:  
            beq t5, zero, end1
            li t2,10
            rem t3, t5, t2
            add t4, t4, t3
            div t5, t5, t2 
            j loop2
    end1:   mv t5,t4
            j loop1
    end2:   mv a1, t5
            ret


