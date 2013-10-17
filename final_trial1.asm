;Paul Rachwalski
;#1 Problem Set 16

;*******************************************************************************
format MZ
entry code_seg:start
;*******************************************************************************
stack 100h
;*******************************************************************************
segment data_seg 
	    row db 0d
	    col db 0d
	    char db ?
	    attrib1 db 0ah
	    attrib2 db 0dh
	    attrib3 db 0a0h
	    attrib4 db 10h
	    reps dw 01h
	    
	    msg1 db "-----MODIFIED-----$"
	    msg2 db "---BINARY CLOCK---$"
	    msg3 db "Written by Paul Rachwalski$"
	    msg4 db "[ESC] to exit$"
	    
	    hr db ?, ?
	    hrdis db ?, ?
	    hrraw db ?
	    min db ?, ?
	    mindis db ?, ?
	    minraw db ?
	    sec db ?, ?
	    secdis db ?, ?
	    secraw db ?
	    num db 10h
	  
;*******************************************************************************
segment code_seg
start:  mov ax, data_seg
        mov ds, ax
        mov es, ax
        
        ;---WRITE CLOCK INFO---        
        mov ah, 2h
        mov bh, 0h
        mov dh, 3d
        mov dl, 30d
        int 10h        
        mov ah, 9h
        lea dx, [msg1]
        int 21h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 4d
        mov dl, 30d
        int 10h        
        mov ah, 9h
        lea dx, [msg2]
        int 21h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 23d
        mov dl, 52d
        int 10h        
        mov ah, 9h
        lea dx, [msg3]
        int 21h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 23d
        mov dl, 2d
        int 10h        
        mov ah, 9h
        lea dx, [msg4]
        int 21h
               
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 32d
        int 10h
        mov ah, 9h
        mov al, "H"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 34d
        int 10h
        mov ah, 9h
        mov al, "H"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 38d
        int 10h
        mov ah, 9h
        mov al, "M"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 40d
        int 10h
        mov ah, 9h
        mov al, "M"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 44d
        int 10h
        mov ah, 9h
        mov al, "S"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 13d
        mov dl, 46d
        int 10h
        mov ah, 9h
        mov al, "S"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 10d
        mov dl, 30d
        int 10h
        mov ah, 9h
        mov al, "1"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 9d
        mov dl, 30d
        int 10h
        mov ah, 9h
        mov al, "2"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 8d
        mov dl, 30d
        int 10h
        mov ah, 9h
        mov al, "4"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 7d
        mov dl, 30d
        int 10h
        mov ah, 9h
        mov al, "8"
        mov bh, 0h
        mov bl, [attrib2]
        mov cx, [reps]
        int 10h
        
c1a:    mov cx, 4
        mov [row], 07d
col1:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 32d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col1
        
c2a:    mov cx, 4
        mov [row], 07d
col2:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 34d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col2
        
c3a:    mov cx, 4
        mov [row], 07d
col3:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 38d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col3
        
c4a:    mov cx, 4
        mov [row], 07d
col4:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 40d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col4
        
c5a:    mov cx, 4
        mov [row], 07d
col5:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 44d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col5
        
c6a:    mov cx, 4
        mov [row], 07d
col6:   push cx        
        mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, 46d
        int 10h
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
        inc [row]
        pop cx
        loop col6
        
        ;!!!---BEGIN LOOP HERE---!!!
        
step:   mov ah, 2h
        mov bh, 0h
        mov dh, 0h
        mov dl, 1h
        int 10h
        
time1:  mov ah, 1h
        int 16h
        jnz t1b
        jmp t1c

t1b:    mov ah, 0h
        int 16h
        cmp al, 1bh
        je exit               

t1c:    mov ah, 2ch
        int 21h
        mov [hrraw], ch
        mov [minraw], cl
        mov [secraw], dh
        
        
        ;---CALCULATE HOURS---
time2:  mov al, [hrraw]        
        mov ah, 0h
        mov bl, 0ah
        div bl
        cmp al, [hr]
        je t2b
        jne t2c
t2b:    cmp ah, [hr + 1]
        je time3
t2c:    mov [hr], al
        mov [hrdis], al
        add [hrdis], 48d
        mov [hr + 1], ah
        mov [hrdis + 1], ah
        add [hrdis + 1], 48d
        
        ;---WRITE HOURS---
wrhr:   mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 32d
        int 10h        
        mov ah, 9h
        mov al, [hrdis]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 34d
        int 10h
        mov ah, 9h
        mov al, [hrdis + 1]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h

        ;---BINARY HOURS SUB---        
        mov [row], 10d
        mov [col], 32d
        mov al, [hr]
        mov ah, 0h
        mov cx, 04d
        call binha1
        mov [row], 10d
        mov [col], 34d
        mov al, [hr + 1]
        mov ah, 0h
        mov cx, 04d
        call binha1
        jmp time3
        
binha1: push cx
        shr al, 1h
        push ax
        jc binha2
        jnc binha3
        
binha2: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib3]
        mov cx, [reps]
        int 10h
        jmp binha4

binha3: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
 
binha4: dec [row]
        pop ax
        pop cx
        loop binha1
        ret

        ;---CALCULATE MINUTES---
time3:  mov al, [minraw]        
        mov ah, 0h
        mov bl, 0ah
        div bl
        cmp al, [min]
        je t3b
        jne t3c
t3b:    cmp ah, [min + 1]
        je time4
t3c:    mov [min], al
        mov [mindis], al
        add [mindis], 48d
        mov [min + 1], ah
        mov [mindis + 1], ah
        add [mindis + 1], 48d
        
        ;---WRITE MINUTES---
wrmin:  mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 38d
        int 10h
        
        mov ah, 9h
        mov al, [mindis]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 40d
        int 10h
        
        mov ah, 9h
        mov al, [mindis + 1]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h
        
        ;---BINARY MINUTES SUB---
        mov [row], 10d
        mov [col], 38d
        mov al, [min]
        mov ah, 0h
        mov cx, 04d
        call binma1
        mov [row], 10d
        mov [col], 40d
        mov al, [min + 1]
        mov ah, 0h
        mov cx, 04d
        call binma1
        jmp time4
        
binma1: push cx
        shr al, 1h
        push ax
        jc binma2
        jnc binma3
        
binma2: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib3]
        mov cx, [reps]
        int 10h
        jmp binma4

binma3: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
 
binma4: dec [row]
        pop ax
        pop cx
        loop binma1
        ret  
        
        ;---CALCULATE SECONDS---
time4:  mov al, [secraw]       
        mov ah, 0h
        mov bl, 0ah
        div bl
        cmp al, [sec]
        je t4b
        jne t4c
t4b:    cmp ah, [sec + 1]
        je last
t4c:    mov [sec], al
        mov [secdis], al
        add [secdis], 48d
        mov [sec + 1], ah
        mov [secdis + 1], ah
        add [secdis + 1], 48d
                    
        ;---WRITE SECONDS---
wrsec:  mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 44d
        int 10h
        
        mov ah, 9h
        mov al, [secdis]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h
        
        mov ah, 2h
        mov bh, 0h
        mov dh, 12d
        mov dl, 46d
        int 10h
        
        mov ah, 9h
        mov al, [secdis + 1]
        mov bh, 0h
        mov bl, [attrib1]
        mov cx, [reps]
        int 10h
        
        ;---BINARY SECONDS SUB---
        mov [row], 10d
        mov [col], 44d
        mov al, [sec]
        mov ah, 0h
        mov cx, 04d
        call binsa1
        mov [row], 10d
        mov [col], 46d
        mov al, [sec + 1]
        mov ah, 0h
        mov cx, 04d
        call binsa1
        jmp last
        
binsa1: push cx
        shr al, 1h
        push ax
        jc binsa2
        jnc binsa3
        
binsa2: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib3]
        mov cx, [reps]
        int 10h
        jmp binsa4

binsa3: mov ah, 2h
        mov bh, 0h
        mov dh, [row]
        mov dl, [col]
        int 10h        
        mov ah, 9h
        mov al, " "
        mov bh, 0h
        mov bl, [attrib4]
        mov cx, [reps]
        int 10h
 
binsa4: dec [row]
        pop ax
        pop cx
        loop binsa1
        ret
        
        ;Move cursor out of screen (shows up when compiled)
last:   mov ah, 2h
        mov bh, 0h
        mov dh, 25d
        mov dl, 79d
        int 10h
        jmp time1
        
exit:   mov ah, 4ch
        int 21h
