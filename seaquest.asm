   
.text

main:   lui $8, 0x1001  # $8 <= 0x10010000
	lui $23, 0x1001
	lui $24, 0x1001
	lui $25, 0x1001
	addi $24, $24 14000
	addi $23 $23 8704 #9728 ~ 10212
	addi $27 $0 121
	addi $29, $0, 0
        addi $9, $0, 0x1B23BB # $9 <= 0x000000ff Azul do Head
        addi $10, $0,1152 #8192 tela inteira 1152
	addi $12, $0,128 #128 uma linha
	addi $20, $0,768
	addi $21, $0,3584
	addi $22, $0, 512
	
	addi $25, $25 14000
	
Head:   beq $10, $0, horizonte                                                 
        sw $9, 0($8)
        sw $9, 32768($8)
        addi $8, $8, 4
        addi $10, $10, -1
        j Head
        
horizonte: 
	addi $11 $0, 0x004924B5#mudando do azul para o roxo
	addi $13 $0, 0x006B23AC
	addi $14 $0, 0x00902195
	addi $15 $0, 0x00AC2553
	addi $16 $0, 0x00B82B1D
	addi $17 $0, 0x00B05517
	addi $18 $0, 0x00886A27
	beq $12, $0, superficie                                                   
        sw $11, 0($8)
        sw $11, 32768($8)
        sw $13, 512($8)
        sw $13, 33280($8)
        sw $14, 1024($8)
        sw $14, 33792($8)
        sw $15, 1536($8)
        sw $15, 34304($8)
        sw $16, 2048($8)
        sw $16, 34816($8)
        sw $17, 2560($8)
        sw $17, 35328($8)
        sw $18, 3072($8)
        sw $18, 35840($8)
        addi $8, $8, 4
        addi $12, $12, -1
        j horizonte
        
superficie: 
	beq $20 $0 Game
	sw $9, 3072($8)
	sw $9, 35840($8)
	addi $8, $8, 4
	addi $20, $20, -1
	j superficie
	
	
Game:	
	beq $21 $0 rodape
	addi $9,$0 0x00000B85
	sw $9, 3584($8)
	sw $9, 36352($8)
	addi $8, $8, 4
	addi $21, $21, -1
	j Game

rodape:
	beq $22 $0 ouro
	addi $9, $0, 0x003f00
	addi $10, $0, 0xB4C5B5
	sw $9, 3584($8)
	sw $9, 36352($8)
	sw $10, 6144($8)
	sw $10, 38912($8)
	sw $10, 8192($8)
	sw $10, 40960($8)
	addi $8, $8, 4
	addi $22, $22, -1
	j rodape
ouro:
    addi $26, $0, 0xFFF000      # Cor do ouro (amarelo)
    sw $26, 9520($25)	

subimarino:
	jal delay
	addi $9, $0, 0x1B23BB
	addi $11, $0, 0xF5F5F5
	sw $11, 1512($23)
	sw $11, 1516($23)
	sw $11, 1000($23)
	sw $11, 1004($23)
	sw $11, 488($23)
	sw $11, 2020($23)
	sw $11, 2024($23)
	sw $11, 2028($23)
	sw $11, 2032($23)
	sw $11, 2036($23)
	sw $11, 2040($23)
	sw $11, 2044($23)
	sw $11, 2532($23)
	sw $11, 2536($23)
	sw $11, 2540($23)
	sw $11, 2544($23)
	sw $11, 2548($23)
	sw $11, 2552($23)
	sw $11, 2556($23)
	lw $8, 33260($23)
	sw $8, 492($23)
	lw $8, 33776($23)
	sw $8, 1008($23)
	lw $8, 34288($23)
	sw $8, 1520($23)
	lw $8, 34816($23)
	sw $8, 2048($23)
	lw $8, 35328($23)
	sw $8, 2560($23)
	
subimarino2:
	addi $9, $0, 0x00000B85
	addi $11, $0, 0xF5F5F5
	sw $11, 8680($23)
        sw $11, 8684($23)
        sw $11, 8172($23)
        sw $11, 8168($23)
        sw $11, 7660($23)
        sw $11, 7656($23)
        sw $11, 9188($23)
        sw $11, 9192($23)
        sw $11, 9196($23)
        sw $11, 9200($23)
        sw $11, 9204($23)
        sw $11, 9208($23)
        sw $11, 9212($23)
        sw $11, 9700($23)
        sw $11, 9704($23)
        sw $11, 9708($23)
        sw $11, 9712($23)
        sw $11, 9716($23)
        sw $11, 9720($23)
        sw $11, 9724($23)
	lw $8, 39656($23)
	sw $8, 8688($23)
	lw $8, 40944($23)
	sw $8, 8176($23)
	lw $8, 41984($23)
	sw $8, 9216($23)
	lw $8, 42596($23)
	sw $8, 9728($23)
	lw $8, 39428($23)
	sw $8, 7660($23)

Hero:
	addi $26, $0, 0xC5C830
	addi $11, $0, 0xF5F5F5
	sw $26, 4($24)
	sw $26, 8($24)
	sw $26, 12($24)
	sw $26, -508($24)
	sw $26, -504($24)
	sw $26, -1020($24)
	sw $26, 512($24)
	sw $26, 516($24)
	sw $26, 520($24)
	sw $26, 524($24)
	sw $26, 528($24)
	sw $26, 532($24)
	sw $26, 536($24)
	sw $26, 540($24)
	sw $26, 1024($24)
	sw $26, 1028($24)
	sw $26, 1032($24)
	sw $26, 1036($24)
	sw $26, 1040($24)
	sw $26, 1044($24)
	sw $26, 1048($24)
	sw $26, 1052($24)
	sw $26, 1056($24)
	sw $26, 1536($24)
	sw $26, 1540($24)
	sw $26, 1544($24)
	sw $26, 1548($24)
	sw $26, 1552($24)
	sw $26, 1556($24)
	sw $26, 1560($24)
	sw $26, 1564($24)
	jal check_colisao
	jal check_ouro
	jal ganhou



Sub1loop:
	lui $12, 0xffff
	lw $13, 0($12)
        bne $13, $0, dig
	beq $27 $0 restart
	jal check_colisao
	jal check_ouro
	jal ganhou
	addi $23 $23 -4
	addi $27 $27 -1
	jal delay
	j subimarino
	
restart:
	#sub1#
	addi $9, $0, 0x1B23BB
	sw $9, 1512($23)
	sw $9, 1516($23)
	sw $9, 1000($23)
	sw $9, 1004($23)
	sw $9, 488($23)
	sw $9, 2020($23)
	sw $9, 2024($23)
	sw $9, 2028($23)
	sw $9, 2032($23)
	sw $9, 2036($23)
	sw $9, 2040($23)
	sw $9, 2044($23)
	sw $9, 2532($23)
	sw $9, 2536($23)
	sw $9, 2540($23)
	sw $9, 2544($23)
	sw $9, 2548($23)
	sw $9, 2552($23)
	sw $9, 2556($23)
	#sub2#
	addi $9, $0, 0x00000B85
	sw $9, 8680($23)
        sw $9, 8684($23)
        sw $9, 8688($23)
        sw $9, 8172($23)
        sw $9, 8168($23)
        sw $9, 7660($23)
        sw $9, 7656($23)
        sw $9, 9188($23)
        sw $9, 9192($23)
        sw $9, 9196($23)
        sw $9, 9200($23)
        sw $9, 9204($23)
        sw $9, 9208($23)
        sw $9, 9212($23)
        sw $9, 9700($23)
        sw $9, 9704($23)
        sw $9, 9708($23)
        sw $9, 9712($23)
        sw $9, 9716($23)
        sw $9, 9720($23)
        sw $9, 9724($23)
	addi $27 $0 121
	lui $23, 0x1001
	addi $23,$23,8700
	j subimarino
	
dig:    
	addi $14 $0 0
	addi $15 $0 0
	lw $14, 4($12)
        addi $15, $0, ' '
        beq $14, $15, fim
        addi $15, $0, 'A'
        beq $14, $15, digA
        addi $15, $0, 'D'
        beq $14, $15, digD
        addi $15, $0, 'W'
        beq $14, $15, digW        
        addi $15, $0, 'S'
        beq $14, $15, digS
        
digA:   
	lw $8 31748($24)
	sw $8, -1020($24)
	lw $8 32264($24)
	sw $8, -504($24)
	lw $8 32780($24)
	sw $8, 12($24)
	lw $8, 33308($24)
   	sw $8, 540($24)
   	lw $8, 33824($24)
  	sw $8, 1056($24)
  	lw $8, 34332($24)
	sw $8, 1564($24)
	addi $24, $24, -4
	addi $t0, $0, 268510208
	slt $t1, $24, $t0
	bne $t1, $0, digD
	addi $4, $0, 40        #NOTA
	addi $5, $0, 300       # Dura��o Da nota
	addi $6, $0, 22        # INSTRUMENTO
	addi $7, $0, 30        # Volume
	li $2, 31
	syscall         
        j Sub1loop
        
digD:
    	lw $8, 32260($24)
    	sw $8, -508($24)
    	lw $8, 31748($24)
    	sw $8, -1020($24)
    	lw $8, 32772($24)
    	sw $8, 4($24)
    	lw $8, 33280($24)
    	sw $8, 512($24)
    	lw $8, 33792($24)
    	sw $8, 1024($24)
    	lw $8, 34304($24)
    	sw $8, 1536($24)
	addi $24, $24, 4
	addi $t0, $0, 268525532
	slt $t1, $t0, $24
	bne $t1, $0, digA
	addi $4, $0, 38        #NOTA
	addi $5, $0, 300       # Dura��o DA NOTA
	addi $6, $0, 22        # INSTRUMENTO
	addi $7, $0, 30        # Volume
	li $2, 31
	syscall
	j Sub1loop 
          
digW:
	lw $8, 33824($24)
    	sw $8, 1056($24)
    	lw $8, 34304($24)
	sw $8, 1536($24)
    	lw $8, 34308($24)
    	sw $8, 1540($24)
    	lw $8, 34312($24)
    	sw $8, 1544($24)
    	lw $8, 34316($24)
    	sw $8, 1548($24)
    	lw $8, 34320($24)
   	sw $8, 1552($24)
    	lw $8, 34324($24)
    	sw $8, 1556($24)
    	lw $8, 34328($24)
    	sw $8, 1560($24)
    	lw $8, 34332($24)
    	sw $8, 1564($24)
    	addi $24, $24, -512
    	addi $t0, $0, 268510204
	slt $t1, $24, $t0
	bne $t1, $0, digS
	addi $4, $0, 41        #NOTA
	addi $5, $0, 300       # Dura��o da nota
	addi $6, $0, 22        # INSTRUMENTO
	addi $7, $0, 30        # Volume
	li $2, 31
	syscall
    	j Sub1loop  
                    
digS:
    	lw $8, 31748($24)
    	sw $8, -1020($24)
    	lw $8, 32264($24)
   	sw $8, -504($24)
	lw $8, 32780($24)
    	sw $8, 12($24)
    	lw $8, 33280($24)
    	sw $8, 512($24)
    	lw $8, 33296($24)
    	sw $8, 528($24)
    	lw $8, 33300($24)
    	sw $8, 532($24)
    	lw $8, 33304($24)
    	sw $8, 536($24)
    	lw $8, 33308($24)
    	sw $8, 540($24)
    	lw $8, 31748($24)
    	sw $8, -1020($24)
    	lw $8, 33824($24)
    	sw $8, 1056($24)
    	addi $24, $24, 512
    	addi $t0, $0, 268525536
	slt $t1, $t0, $24
	bne $t1, $0, digW
	addi $4, $0, 39        #NOTA
	addi $5, $0, 300       # Dura��o DA NOTA
	addi $6, $0, 22        # INSTRUMENTO
	addi $7, $0, 30        # Volume
	li $2, 31
	syscall
    	j Sub1loop 
    	
ganhou:
	addi $t0, $0,268510684
	slt $t1, $t0, $24
	beq $t1, $0, check_29
	jr $31
	
check_29:
    addi $t2, $0, 1  # Carrega o valor 1 em $t2 para comparação
    beq $29, $t2, fimwin
	
check_colisao:
    # Comparar posicao do submarino1/2 com cor do Hero ($26)
    #submarino 1
    lw $t2, 1512($23)   # Borda superior esquerda
    beq $t2, $26, fim
    lw $t2, 1516($23)   # Borda superior direita
    beq $t2, $26, fim
    lw $t2, 1000($23)   # Lateral esquerda meio
    beq $t2, $26, fim
    lw $t2, 1004($23)   # Lateral direita meio
    beq $t2, $26, fim
    lw $t2, 2532($23)   # Borda inferior esquerda
    beq $t2, $26, fim
    lw $t2, 2556($23)   # Borda inferior direita
    beq $t2, $26, fim
    #subimarino 2
    lw $t2, 8680($23)  # esquerda
    beq $t2, $26, fim

    lw $t2, 8172($23)  # esquerda
    beq $t2, $26, fim

    lw $t2, 7660($23)  # centro-esquerda
    beq $t2, $26, fim

    lw $t2, 9188($23)  # esquerda
    beq $t2, $26, fim

    lw $t2, 9700($23)  # esquerda
    beq $t2, $26, fim

    lw $t2, 8684($23)  # direita
    beq $t2, $26, fim

    lw $t2, 8176($23)  # direita
    beq $t2, $26, fim

    lw $t2, 9212($23)  # direita
    beq $t2, $26, fim

    lw $t2, 9724($23)  # direita
    beq $t2, $26, fim
    # Se nenhuma colisÃ£o, continuar
    jr $31
    

check_ouro:
	bne $29 $0 fimcheckouro
    # Pega a posiÃ§Ã£o do ouro
    lw $t0, 9520($25)   # Carrega o pixel do ouro
    
    # Pega a posiÃ§Ã£o CENTRAL do herÃ³i (parte do meio do personagem)
    lw $t1, 516($24)    # PosiÃ§Ã£o central do herÃ³i
    
    # Compara as cores
    beq $t1, $t0, pegou_ouro  # Se forem iguais, pegou o ouro
    
fimcheckouro:    jr $31

pegou_ouro:
	bne $29 $0 fimcheckouro
    # Apaga o ouro (pinta com a cor do fundo)
    addi $t2, $0, 0x00000B85  # Cor do fundo
    sw $t2, 9520($25)         # Sobrescreve o ouro
    addi $29, $29, 1
    addi $4, $0, 70        # Nota aguda
    addi $5, $0, 200       # Dura��o
    addi $6, $0, 80        # instrumento
    addi $7, $0, 40        # volume
    li $2, 31              # Syscall tocar som
    syscall
    jr $31


fimwin:    
    addi $24, $0 32764
    lui $8, 0x1001
    addi $9, $0, 0x00000B85 
    
fimwin2:
    beq $24, $0, win                                               
    sw $9, 0($8)
    addi $8, $8, 4
    addi $24, $24, -1
    j fimwin2


fim:    
	addi $24, $0 32764
	lui $8, 0x1001
	addi $9, $0, 0x000000
	j fim2                         
	
fim2:
       	beq $24, $0, Lose                                               
        sw $9, 0($8)
        addi $8, $8, 4
        addi $24, $24, -1
        j fim2


win:	
	lui $8, 0x1001
	addi $9, $0, 0xffffff
	addi $8, $8, 13896

#Y	
	sw $9, 0($8)
	sw $9, 4($8)
	sw $9, 8($8)
	
	sw $9, 32($8)
	sw $9, 36($8)
	sw $9, 40($8)
	
	sw $9, 516($8)
	sw $9, 520($8)
	sw $9, 524($8)
	
	sw $9, 548($8)
	sw $9, 544($8)
	sw $9, 540($8)
	
	
	sw $9, 1032($8)
	sw $9, 1036($8)
	sw $9, 1040($8)
	
	sw $9, 1056($8)
	sw $9, 1052($8)
	sw $9, 1048($8)
	
	
	sw $9, 1548($8)
	sw $9, 1552($8)
	sw $9, 1556($8)
	sw $9, 1560($8)
	sw $9, 1564($8)
	
	sw $9, 2064($8)
	sw $9, 2068($8)
	sw $9, 2072($8)
	
	sw $9, 2576($8)
	sw $9, 2580($8)
	sw $9, 2584($8)
	
	sw $9, 3088($8)
	sw $9, 3092($8)
	sw $9, 3096($8)
	
	sw $9, 3600($8)
	sw $9, 3604($8)
	sw $9, 3608($8)	

#letra O
	sw $9, 60($8)
	sw $9, 64($8)
	sw $9, 68($8)
	sw $9, 72($8)
	sw $9, 76($8)
	sw $9, 80($8)
	sw $9, 84($8)
	sw $9, 88($8)
	
	sw $9, 568($8)  
	sw $9, 572($8)  
	sw $9, 600($8)  
	sw $9, 604($8)  
	sw $9, 1080($8)  
	sw $9, 1084($8)  
	sw $9, 1112($8)  
	sw $9, 1116($8)  
	sw $9, 1592($8)  
	sw $9, 1596($8)
	sw $9, 1624($8)  
	sw $9, 1628($8)  
	sw $9, 2104($8)  
	sw $9, 2108($8)  
	sw $9, 2136($8)  
	sw $9, 2140($8)  
	sw $9, 2616($8)  
	sw $9, 2620($8)  
	sw $9, 2648($8)  
	sw $9, 2652($8)  
	sw $9, 3128($8)  
	sw $9, 3132($8)  
	sw $9, 3160($8)  
	sw $9, 3164($8)  
	sw $9, 3644($8)
	sw $9, 3648($8)
	sw $9, 3652($8)
	sw $9, 3656($8)
	sw $9, 3660($8)
	sw $9, 3664($8)
	sw $9, 3668($8)      
	sw $9, 3672($8)
	
#U
	sw $9, 108($8)
	sw $9, 112($8)
	sw $9, 140($8)
	sw $9, 144($8)
	sw $9, 620($8)
	sw $9, 624($8)
	sw $9, 652($8)
	sw $9, 656($8)
	sw $9, 1132($8)
	sw $9, 1136($8)
	sw $9, 1164($8)
	sw $9, 1168($8)
	sw $9, 1644($8)
	sw $9, 1648($8)
	sw $9, 1676($8)
	sw $9, 1680($8)
	sw $9, 2156($8)
	sw $9, 2160($8)
	sw $9, 2188($8)
	sw $9, 2192($8)
	sw $9, 2668($8)
	sw $9, 2672($8)
	sw $9, 2700($8)
	sw $9, 2704($8)
	sw $9, 3180($8)
	sw $9, 3184($8)
	sw $9, 3212($8)
	sw $9, 3216($8)
	sw $9, 3696($8)
	sw $9, 3700($8)
	sw $9, 3704($8)
	sw $9, 3708($8)
	sw $9, 3712($8)
	sw $9, 3716($8)
	sw $9, 3720($8)
	sw $9, 3724($8)
	
#W
sw $9, 184($8)
sw $9, 188($8)
sw $9, 696($8)
sw $9, 700($8)
sw $9, 1208($8)
sw $9, 1212($8)
sw $9, 1720($8)
sw $9, 1724($8)
sw $9, 2232($8)
sw $9, 2236($8)
sw $9, 2744($8)
sw $9, 2748($8)

#primeira base
sw $9, 3256($8)
sw $9, 3260($8)
sw $9, 3264($8)
sw $9, 3268($8)
sw $9, 3272($8)
sw $9, 3276($8)
sw $9, 3280($8)
sw $9, 3284($8)

sw $9, 3772($8)
sw $9, 3776($8)
sw $9, 3780($8)
sw $9, 3784($8)
sw $9, 3788($8)
sw $9, 3792($8)
sw $9, 3796($8)

# Aste central
sw $9, 1744($8)
sw $9, 1748($8)
sw $9, 2256($8)
sw $9, 2260($8)
sw $9, 2768($8)
sw $9, 2772($8)
sw $9, 3280($8)
sw $9, 3284($8)

# segunda base deslocada (+32)
sw $9, 3288($8)
sw $9, 3292($8)
sw $9, 3296($8)
sw $9, 3300($8)
sw $9, 3304($8)
sw $9, 3308($8)

sw $9, 3800($8)
sw $9, 3804($8)
sw $9, 3808($8)
sw $9, 3812($8)
sw $9, 3816($8)

#segunda coluna

sw $9, 232($8)
sw $9, 236($8)
sw $9, 744($8)
sw $9, 748($8)
sw $9, 1256($8)
sw $9, 1260($8)
sw $9, 1768($8)
sw $9, 1772($8)
sw $9, 2280($8)
sw $9, 2284($8)
sw $9, 2792($8)
sw $9, 2796($8)


# Pingo do I deslocado (+16)
sw $9, 248($8)
sw $9, 252($8)
sw $9, 760($8)
sw $9, 764($8)

# Corpo do I
sw $9, 1784($8)
sw $9, 1788($8)
sw $9, 2296($8)
sw $9, 2300($8)
sw $9, 2808($8)
sw $9, 2812($8)
sw $9, 3320($8)
sw $9, 3324($8)
sw $9, 3832($8)
sw $9, 3836($8)

# N
sw $9, 264($8)
sw $9, 268($8)
sw $9, 776($8)
sw $9, 780($8)
sw $9, 1288($8)
sw $9, 1292($8)
sw $9, 1800($8)
sw $9, 1804($8)
sw $9, 2312($8)
sw $9, 2316($8)
sw $9, 2824($8)
sw $9, 2828($8)
sw $9, 3336($8)
sw $9, 3340($8)
sw $9, 3848($8)
sw $9, 3852($8)

sw $9, 272($8)
sw $9, 784($8)
sw $9, 788($8)
sw $9, 1300($8)
sw $9, 1304($8)
sw $9, 1816($8)
sw $9, 1820($8)
sw $9, 2332($8)
sw $9, 2336($8)
sw $9, 2848($8)
sw $9, 2852($8)
sw $9, 3364($8)
sw $9, 3876($8)
sw $9, 3880($8)
sw $9, 3884($8)

sw $9, 296($8)
sw $9, 300($8)
sw $9, 808($8)
sw $9, 812($8)
sw $9, 1320($8)
sw $9, 1324($8)
sw $9, 1832($8)
sw $9, 1836($8)
sw $9, 2344($8)
sw $9, 2348($8)
sw $9, 2856($8)
sw $9, 2860($8)
sw $9, 3368($8)
sw $9, 3372($8)

    # CONFIGURA��O PRINCIPAL
    addi $6, $0, 19      # 19 = �rg�o
    addi $7, $0, 100     # Volume

    # Primeira NOTA
    addi $4, $0, 60      # D� (C4)
    addi $5, $0, 350     # 350ms 
    li $2, 31
    syscall
    addi $4, $0, 150     # Pausa
    li $2, 32
    syscall
	# SEGUNDA NOTA
    addi $4, $0, 64      # Mi (E4)
    addi $5, $0, 350
    li $2, 31
    syscall
    addi $4, $0, 150
    li $2, 32
    syscall
	#TERCEIRA NOTA
    addi $4, $0, 67      # Sol (G4)
    addi $5, $0, 400     # TEMPO
    li $2, 31
    syscall
    addi $4, $0, 200     # Pausa
    li $2, 32
    syscall

    # QUARTA NOTA OITAVADA
    addi $4, $0, 67      # Sol (G4)
    addi $5, $0, 300
    li $2, 31
    syscall
    addi $4, $0, 79      # Sol (G5) - oitava alta
    addi $5, $0, 500     # TEMPO
    li $2, 31
    syscall
    addi $4, $0, 300     # Pausa
    li $2, 32
    syscall

    # QUINTA NOTA OITAVADA
    addi $4, $0, 64      # Mi (E4)
    addi $5, $0, 400
    li $2, 31
    syscall
    addi $4, $0, 76      # Mi (E5) - oitava alta
    addi $5, $0, 600     # TEMPO
    li $2, 31
    syscall
    addi $4, $0, 200     # pausa
    li $2, 32
    syscall

    # SEXTA NOTA OITAVADA
    addi $4, $0, 67      # Sol (G4)
    addi $5, $0, 1000    # TEMPO
    li $2, 31
    syscall
    addi $4, $0, 79      # Sol (G5)
    addi $5, $0, 1000	#TEMPO
    li $2, 31
    syscall
    
j fimmermo



Lose:
	lui $8, 0x1001
	addi $9, $0, 0xffffff
	addi $8, $8, 13896

#Y	
	sw $9, 0($8)
	sw $9, 4($8)
	sw $9, 8($8)
	
	sw $9, 32($8)
	sw $9, 36($8)
	sw $9, 40($8)
	
	sw $9, 516($8)
	sw $9, 520($8)
	sw $9, 524($8)
	
	sw $9, 548($8)
	sw $9, 544($8)
	sw $9, 540($8)
	
	
	sw $9, 1032($8)
	sw $9, 1036($8)
	sw $9, 1040($8)
	
	sw $9, 1056($8)
	sw $9, 1052($8)
	sw $9, 1048($8)
	
	
	sw $9, 1548($8)
	sw $9, 1552($8)
	sw $9, 1556($8)
	sw $9, 1560($8)
	sw $9, 1564($8)
	
	sw $9, 2064($8)
	sw $9, 2068($8)
	sw $9, 2072($8)
	
	sw $9, 2576($8)
	sw $9, 2580($8)
	sw $9, 2584($8)
	
	sw $9, 3088($8)
	sw $9, 3092($8)
	sw $9, 3096($8)
	
	sw $9, 3600($8)
	sw $9, 3604($8)
	sw $9, 3608($8)	

#letra O
	sw $9, 60($8)
	sw $9, 64($8)
	sw $9, 68($8)
	sw $9, 72($8)
	sw $9, 76($8)
	sw $9, 80($8)
	sw $9, 84($8)
	sw $9, 88($8)
	
	sw $9, 568($8)  
	sw $9, 572($8)  
	sw $9, 600($8)  
	sw $9, 604($8)  
	sw $9, 1080($8)  
	sw $9, 1084($8)  
	sw $9, 1112($8)  
	sw $9, 1116($8)  
	sw $9, 1592($8)  
	sw $9, 1596($8)
	sw $9, 1624($8)  
	sw $9, 1628($8)  
	sw $9, 2104($8)  
	sw $9, 2108($8)  
	sw $9, 2136($8)  
	sw $9, 2140($8)  
	sw $9, 2616($8)  
	sw $9, 2620($8)  
	sw $9, 2648($8)  
	sw $9, 2652($8)  
	sw $9, 3128($8)  
	sw $9, 3132($8)  
	sw $9, 3160($8)  
	sw $9, 3164($8)  
	sw $9, 3644($8)
	sw $9, 3648($8)
	sw $9, 3652($8)
	sw $9, 3656($8)
	sw $9, 3660($8)
	sw $9, 3664($8)
	sw $9, 3668($8)      
	sw $9, 3672($8)
	
#U
	sw $9, 108($8)
	sw $9, 112($8)
	sw $9, 140($8)
	sw $9, 144($8)
	sw $9, 620($8)
	sw $9, 624($8)
	sw $9, 652($8)
	sw $9, 656($8)
	sw $9, 1132($8)
	sw $9, 1136($8)
	sw $9, 1164($8)
	sw $9, 1168($8)
	sw $9, 1644($8)
	sw $9, 1648($8)
	sw $9, 1676($8)
	sw $9, 1680($8)
	sw $9, 2156($8)
	sw $9, 2160($8)
	sw $9, 2188($8)
	sw $9, 2192($8)
	sw $9, 2668($8)
	sw $9, 2672($8)
	sw $9, 2700($8)
	sw $9, 2704($8)
	sw $9, 3180($8)
	sw $9, 3184($8)
	sw $9, 3212($8)
	sw $9, 3216($8)
	sw $9, 3696($8)
	sw $9, 3700($8)
	sw $9, 3704($8)
	sw $9, 3708($8)
	sw $9, 3712($8)
	sw $9, 3716($8)
	sw $9, 3720($8)
	sw $9, 3724($8)
	
#L
sw $9, 184($8)
sw $9, 188($8)
sw $9, 696($8)
sw $9, 700($8)
sw $9, 1208($8)
sw $9, 1212($8)
sw $9, 1720($8)
sw $9, 1724($8)
sw $9, 2232($8)
sw $9, 2236($8)
sw $9, 2744($8)
sw $9, 2748($8)
sw $9, 3256($8)
sw $9, 3260($8)
sw $9, 3264($8)
sw $9, 3268($8)
sw $9, 3272($8)
sw $9, 3276($8)
sw $9, 3280($8)
sw $9, 3284($8)
sw $9, 3772($8)
sw $9, 3776($8)
sw $9, 3780($8)
sw $9, 3784($8)
sw $9, 3788($8)
sw $9, 3792($8)
sw $9, 3796($8)

#O
sw $9, 236($8)
sw $9, 240($8)
sw $9, 244($8)
sw $9, 248($8)
sw $9, 252($8)
sw $9, 256($8)
sw $9, 260($8)
sw $9, 264($8)

sw $9, 744($8)
sw $9, 748($8)
sw $9, 776($8)
sw $9, 780($8)
sw $9, 1256($8)
sw $9, 1260($8)
sw $9, 1288($8)
sw $9, 1292($8)
sw $9, 1768($8)
sw $9, 1772($8)
sw $9, 1800($8)
sw $9, 1804($8)
sw $9, 2280($8)
sw $9, 2284($8)
sw $9, 2312($8)
sw $9, 2316($8)
sw $9, 2792($8)
sw $9, 2796($8)
sw $9, 2824($8)
sw $9, 2828($8)
sw $9, 3304($8)
sw $9, 3308($8)
sw $9, 3336($8)
sw $9, 3340($8)
sw $9, 3820($8)
sw $9, 3824($8)
sw $9, 3828($8)
sw $9, 3832($8)
sw $9, 3836($8)
sw $9, 3840($8)
sw $9, 3844($8)
sw $9, 3848($8)

#S
sw $9, 292($8)
sw $9, 296($8)
sw $9, 300($8)
sw $9, 304($8)
sw $9, 308($8)
sw $9, 312($8)

sw $9, 800($8)
sw $9, 804($8)
sw $9, 808($8)
sw $9, 820($8)
sw $9, 824($8)
sw $9, 828($8)


sw $9, 1312($8)
sw $9, 1316($8)
sw $9, 1320($8)

sw $9, 1828($8)
sw $9, 1832($8)
sw $9, 1836($8)
sw $9, 1840($8)
sw $9, 1844($8)
sw $9, 1848($8)
sw $9, 1852($8)


sw $9, 2360($8)
sw $9, 2364($8)
sw $9, 2368($8)

sw $9, 2848($8)
sw $9, 2852($8)
sw $9, 2856($8)
sw $9, 2872($8)
sw $9, 2876($8)
sw $9, 2880($8)

sw $9, 3364($8)
sw $9, 3368($8)
sw $9, 3372($8)
sw $9, 3376($8)
sw $9, 3380($8)
sw $9, 3384($8)
sw $9, 3388($8)

sw $9, 3880($8)
sw $9, 3884($8)
sw $9, 3888($8)
sw $9, 3892($8)
sw $9, 3896($8)

# E
sw $9, 340($8)   
sw $9, 344($8)
sw $9, 348($8)
sw $9, 352($8)
sw $9, 356($8)
sw $9, 360($8)
sw $9, 364($8)

sw $9, 852($8)    
sw $9, 856($8)


sw $9, 1364($8)   
sw $9, 1368($8)


sw $9, 1876($8)  
sw $9, 1880($8)
sw $9, 1884($8)
sw $9, 1888($8)
sw $9, 1892($8)

sw $9, 2388($8)
sw $9, 2392($8)
sw $9, 2396($8)
sw $9, 2400($8)
sw $9, 2404($8)

sw $9, 2900($8)   
sw $9, 2904($8)

sw $9, 3412($8)   
sw $9, 3416($8)

sw $9, 3924($8)
sw $9, 3928($8)
sw $9, 3932($8)
sw $9, 3936($8)
sw $9, 3940($8)
sw $9, 3944($8)
sw $9, 3948($8)

.data
    instrumento: .word 57  # 57 = Trombone (instrumento do efeito cl�ssico)
    volume:      .word 90  # Volume alto (mas n�o m�ximo)

.text
    # Configura��es iniciais (igual ao seu c�digo que funciona)
    lw $a2, instrumento  # Carrega trombone
    li $a3, 90           # Volume

    # PRIMEIRO "WAH" (nota m�dia caindo)
    li $a0, 53           # F� (53)
    li $a1, 300          # 300ms
    li $v0, 31           # Syscall 31 (que voc� confirmou funcionar)
    syscall

    li $a0, 50           # R� (50) - queda r�pida
    li $a1, 100          # Nota curta
    li $v0, 31
    syscall

    li $a0, 200          # Pausa entre "wahs"
    li $v0, 32
    syscall

    # SEGUNDO "WAH" (mais curto)
    li $a0, 52           # Mi bemol (52)
    li $a1, 200
    li $v0, 31
    syscall

    li $a0, 48           # D� (48)
    li $a1, 100
    li $v0, 31
    syscall

    li $a0, 200
    li $v0, 32
    syscall

    # TERCEIRO "WAH" (mais longo e grave)
    li $a0, 50           # R� (50)
    li $a1, 400
    li $v0, 31
    syscall

    li $a0, 45           # L� grave (45)
    li $a1, 600           # Nota final mais longa
    li $v0, 31
    syscall

    # FIM DO PROGRAMA
    li $v0, 10
    syscall

fimmermo:         
	addi $2, $0, 10
        syscall
        
delay:  addi $28, $0, 6000
lacoD:  beq $28, $0, fimD
        nop
        nop
        addi $28, $28, -1
        j lacoD
fimD:   jr $31
