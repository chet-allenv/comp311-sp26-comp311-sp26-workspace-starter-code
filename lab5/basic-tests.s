    # addi 
    addi x4, x0, -20        
    addi x5, x4, 0x7F0      
    addi x6, x5, 0x701      
    addi x7, x6, 0x531      

    # andi  
    andi x14, x6, 0x123     
    andi x15, x14, 0x71C    
    andi x17, x15, 0x541    

    # slti (
    slti x18, x4, 311       # set x18 = (x4 < 311) ? 1 : 0
    slti x19, x18, 2        # set x19 = (x18 < 2) ? 1 : 0
    slti x20, x19, 0        # set x20 = (x19 < 0) ? 1 : 0
    slti x21, x20, -3       # set x21 = (x20 < -3) ? 1 : 0
    slti x22, x21, 5        # set x22 = (x21 < 5) ? 1 : 0
    addi x0,  x22, 0        # write to x0 is ignored (still 0)
    slti x23, x4,  -20      
    addi x0,  x23, 0
    slti x24, x11, -90     
    addi x0,  x24, 0
    slti x25, x4,  0        
    addi x0,  x25, 0
    slti x26, x11, 600      
    addi x0,  x26, 0
    slti x27, x4,  -1       
    addi x0,  x27, 0

    # add
    add x8, x4, x5       # x8 = x4 + x5
    add x9, x8, x6       # x9 = x8 + x6

    # sub
    sub x10, x9, x4      # x10 = x9 - x4
    sub x11, x10, x7     # x11 = x10 - x7

    # or
    or x12, x4, x5       # x12 = x4 | x5
    or x13, x12, x6      # x13 = x12 | x6

    # and
    and x16, x6, x7      # x16 = x6 & x7
    and x28, x16, x5     # x28 = x16 & x5

    # slt
    slt x29, x4, x5      # x29 = (x4 < x5) ? 1 : 0
    slt x30, x5, x4      # x30 = (x5 < x4) ? 1 : 0

    # sll
    sll x8, x4, x5       # x8 = x4 << x5
    sll x9, x6, x4       # x9 = x6 << x4

    # srl
    srl x10, x5, x4      # x10 = x5 >> x4 (logical)
    srl x11, x6, x5      # x11 = x6 >> x5

    # sra
    sra x12, x4, x5      # x12 = x4 >> x5 (arithmetic)
    sra x13, x6, x4      # x13 = x6 >> x4


