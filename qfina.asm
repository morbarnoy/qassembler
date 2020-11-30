locals
dseg    segment 
        numboard    db  200 dup(0)
        coor    db  20000 dup(0)

        white   db  4, 30, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 1, 7, 28, 4, 1, 255, 4, 30, 254                
        black   db  4, 30, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 1, 8, 28, 4, 1, 255, 4, 30, 254    
        taken   db  4, 30, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255
                db  4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 1, 9, 28, 4, 1, 255, 4, 30, 254
       
                queen1  db  15, 30, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 10, 0, 7, 10, 11, 15, 1, 255, 15, 1, 10, 8, 0, 11, 10, 9, 15, 1, 255, 15, 1, 10, 6, 0, 15, 10, 7, 15, 1, 255, 15, 1, 10, 5, 0, 17, 10, 6, 15, 1, 255, 15, 1, 10, 4, 0, 19, 10, 5, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 254     
        queen2  db  15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 1, 0, 25, 10, 2, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 2, 0, 23, 10, 3, 15, 1, 255, 15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255,15, 1, 10, 3, 0, 21, 10, 4, 15, 1, 255, 15, 1, 10, 4, 0, 19, 10, 5, 15, 1, 255, 15, 1, 10, 5, 0, 17, 10, 6, 15, 1, 255, 15, 1, 10, 6, 0, 15, 10, 7, 15, 1, 255, 15, 1, 10, 8, 0, 11, 10, 9, 15, 1, 255, 15, 1, 10, 10, 0, 7, 10, 11, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 1, 10, 28, 15, 1, 255, 15, 30, 254
        
        long    db  0
        cxst    dw  0
        dxst    dw  0
        hmboards dw 0
        
        topy    dw  60
        topx    dw  60
        size1   db  30; size of square
        size2   dw  30
        
        num1    db  5; size of board
        totcx   dw  ?;size of the entire board 
        totdx   dw  ?
        howmuch dw  ?;for when you put by yourself it counts how many queens you put 

        num2    dw  ?; size of board
        snum1   db  ?
        snum2   dw  ?
        winCheck    db 0
        first   db  0;rec check if it i the first time
        place   dw  0;wjere to read from 
                
dseg ends
sseg    segment stack
        dw  400h    dup(?)
sseg    ends

cseg    segment
assume  cs:cseg, ds: dseg, ss:sseg
;///////////////////////////////////////////////////
paintwhite  proc
            push bx
            mov bx, 0
            mov ah, 0ch
            mov cxst, cx
            mov dxst, dx

    @@odha: mov al, white[bx]
            inc bx
            mov ah, white[bx]
            mov long, ah
            mov ah, 0ch
            inc bx
            
            cmp al, 255
            jnz @@not255
            mov cx, cxst
            inc dx
            dec bx
            jmp @@odha
    @@not255:   cmp al, 254
            jnz @@again1
            mov cx, cxst
            mov dx, dxst
            jmp @@enddd
    @@again1:   int 10h
            inc cx
            dec long
            cmp long, 0
            jnz @@again1
            jmp @@odha
    @@enddd:pop bx
            ret
paintwhite      endp
paintblack  proc
            push bx
            mov bx, 0
            mov ah, 0ch
            mov cxst, cx
            mov dxst, dx

    @@odha: mov al, black[bx]
            inc bx
            mov ah, black[bx]
            mov long, ah
            mov ah, 0ch
            inc bx
            
            cmp al, 255
            jnz @@not255
            mov cx, cxst
            inc dx
            dec bx
            jmp @@odha
    @@not255:   cmp al, 254
            jnz @@again1
            mov cx, cxst
            mov dx, dxst
            jmp @@enddd
    @@again1:   int 10h
            inc cx
            dec long
            cmp long, 0
            jnz @@again1
            jmp @@odha
    @@enddd:pop bx
            ret
paintblack      endp        
paintqueen  proc
            push bx
            mov bx, 0
            mov ah, 0ch
            mov cxst, cx
            mov dxst, dx

    @@odha: mov al, queen1[bx]
            inc bx
            mov ah, queen1[bx]
            mov long, ah
            mov ah, 0ch
            inc bx
            
            cmp al, 255
            jnz @@not255
            mov cx, cxst
            inc dx
            dec bx
            jmp @@odha
    @@not255:   cmp al, 254
            jnz @@again1
            mov bx, 0
            mov cx, cxst
            jmp @@odha2
    @@again1:   int 10h
            inc cx
            dec long
            cmp long, 0
            jnz @@again1
            jmp @@odha
            
    @@odha2:mov al, queen2[bx]
            inc bx
            mov ah, queen2[bx]
            mov long, ah
            mov ah, 0ch
            inc bx
            
            cmp al, 255
            jnz @@no255
            mov cx, cxst
            inc dx
            dec bx
            jmp @@odha2
    @@no255:    cmp al, 254
            jnz @@again2
            mov cx, cxst
            mov dx, dxst
            jmp @@enddd
    @@again2:   int 10h
            inc cx
            dec long
            cmp long, 0
            jnz @@again2
            jmp @@odha2
            
    @@enddd:pop bx
            ret
paintqueen      endp    
painton     proc; move squar that shows where you are standing 
            push bx
            mov bx, 1
            mov ah, 0ch
            mov al, 10; color of pick square 
    @@repeat:    int 10h
            inc cx
            inc bl
            cmp bl, size1
            jnz @@repeat
            mov bl, 1
    @@repeat1:   int 10h
            inc dx
            inc bl
            cmp bl, size1
            jnz @@repeat1
            mov bl, 1
    @@repeat2:   int 10h
            dec cx
            inc bl
            cmp bl, size1
            jnz @@repeat2
            mov bl, 1
    @@repeat3:   int 10h
            dec dx
            inc bl
            cmp bl, size1
            jnz @@repeat3
            pop bx
            ret
painton     endp
paintoff    proc; erases place that says where you are standing 
            push bx
            mov bx, 1
            mov ah, 0ch
            mov al, 4; color do not change !!!!!!!!
    @@repeat:    int 10h
            inc cx
            inc bl
            cmp bl, size1
            jnz @@repeat
            mov bl, 1
    @@repeat1:   int 10h
            inc dx
            inc bl
            cmp bl, size1
            jnz @@repeat1
            mov bl, 1
    @@repeat2:   int 10h
            dec cx
            inc bl
            cmp bl, size1
            jnz @@repeat2
            mov bl, 1
    @@repeat3:   int 10h
            dec dx
            inc bl
            cmp bl, size1
            jnz @@repeat3
            pop bx
            ret
paintoff    endp
painttaken  proc
            push bx
            mov bx, 0
            mov ah, 0ch
            mov cxst, cx
            mov dxst, dx

    @@odha: mov al, taken[bx]
            inc bx
            mov ah, taken[bx]
            mov long, ah
            mov ah, 0ch
            inc bx
            
            cmp al, 255
            jnz @@not255
            mov cx, cxst
            inc dx
            dec bx
            jmp @@odha
    @@not255:   cmp al, 254
            jnz @@again1
            mov cx, cxst
            mov dx, dxst
            jmp @@enddd
    @@again1:   int 10h
            inc cx
            dec long
            cmp long, 0
            jnz @@again1
            jmp @@odha
    @@enddd:pop bx
            ret
painttaken      endp
;//////////////////////////////////////////////////////////////////////////////
Therecurs    proc
            cmp numboard[bx][si], 0;empty 
            jz @@shurah
            jmp @@shura
 @@shurah:           
            mov numboard[bx][si], 1;queen
            call Checks
            cmp si, snum2; are we at the last amuda
            jz @@complete
            push bx si cx
            mov bx, 0
            mov cx, 0
            inc si; move to next amuda 
            call Therecurs
            pop cx si bx
            jmp @@all; cleans last place you where because you did not succeed 
            
  @@complete: 
            push bx si ax; when done we go here 
            mov bx, 0
            mov si, 0
            mov al, 0; instead of di
    @@repeat:; goes over enitre board and marks where the queens are 
            cmp numboard[bx][si], 1;queen
            jnz @@not
            
            push ax
            mov ax, si
            mov coor[di], al; marks the cordinations in coor
            pop ax
            inc di
            mov coor[di], al
            inc di
            
            
    @@not:  inc si;makes sure it goes over the whole board
            cmp si, num2;end of amuda 
            jnz @@repeat
            mov si, 0
            inc al
            add bx, num2
            cmp al, num1
            jnz @@repeat
        
            pop ax si bx
            
    @@all:  mov numboard[bx][si], 0; cleans the last place you were 
            call Checks
            
@@shura:  cmp cx, snum2; are you in the last row
            jz @@end
            push bx si cx
            inc cx
            add bx, num2; go to next shura
            call Therecurs
            pop cx si bx
    @@end:  
            ret
Therecurs    endp
;/////////////////////////////////////////////////////////////////////////////
Checks      proc; checks entire board and cleans everything that isnt a queen and put where you cant put
            push bx si di
            mov bx, 0
            mov si, 0
            mov di, 0
        
    @@repeat: cmp numboard[bx][si], 1
            jz @@next
            mov numboard[bx][si], 0
    @@next: inc si
            cmp si, num2
            jnz @@repeat
            mov si, 0
            inc di
            add bx, num2
            cmp di, num2
            jnz @@repeat
                    
            mov bx, 0
            mov si, 0
            mov di, 0
        
@@repeat1: cmp numboard[bx][si], 1; marks where u cant go by going from queen to queen and marking everyplace 
            jnz @@next1
            push si
    @@right: cmp si, snum2
            jz @@a
            inc si
            mov numboard[si][bx], 2; cant be here 
            jmp @@right
    @@a:    pop si
            push si bx di
    @@down: cmp si, snum2
            jz @@b
            cmp di, snum2
            jz @@b
            inc si
            inc di
            add bx, num2
            mov numboard[si][bx], 2
            jmp @@down
    @@b:    pop di bx si
            push si bx di
    @@up:   cmp si, snum2
            jz @@c
            cmp di, 0
            jz @@c
            inc si
            dec di
            sub bx, num2
            mov numboard[si][bx], 2
            jmp @@up
    @@c:    pop di bx si            
    @@next1:inc si
            cmp si, num2
            jnz @@repeat1
            mov si, 0
            inc di
            add bx, num2
            cmp di, num2
            jnz @@repeat1
            pop di si bx
            ret
Checks      endp        
        
;///////////////////////////////////////////
    Start:
            mov ax, dseg
            mov ds, ax
            mov al, 12h
            mov ah, 0h
            int 10h
            
            mov al, size1
            mov bl, num1
            mul bl
            add ax, topx
            mov totcx, ax
            mov al, size1
            mov bl, num1
            mul bl
            add ax, topy
            mov totdx, ax
            
    ;build board        
            mov cx, topx
            mov dx, topy
            mov di, 1
            mov si, 1
            
    odhap:  cmp di, 1
            jnz black1
            call paintwhite
            inc di
            jmp white1
    black1: call paintblack
            dec di
    white1: add cx, size2
            cmp cx, totcx
            jc odhap
            cmp si, 1
            jnz q1
            inc si
            mov di, 2
            jmp q2
    q1:     dec si
            mov di, 1
    q2:     mov cx, topx
            add dx, size2
            cmp dx, totdx
            jc odhap
            
            mov ah, 0
            mov al, num1
            mov num2, ax
            mov snum1, al
            dec snum1
            mov snum2, ax
            dec snum2
            
            mov cx, topx
            mov dx, topy
            call painton
            mov bx, 0
            mov si, 0
                        
    wait:   mov ah, 7
            int 21h
            cmp al, 1bh
            jnz up
            jmp endd
    up:     cmp al, 'w'
            jnz down
            sub dx, size2
            cmp dx, topy
            jnc a1
            add dx, size2
            jmp wait
    a1:     add dx, size2
            call paintoff
            sub dx, size2
            call painton
            sub bx, num2;
            jmp wait
    down:   cmp al, 's'
            jnz right
            add dx, size2
            cmp dx, totdx
            jc a4
            sub dx, size2
            jmp wait
    a4:     sub dx, size2
            call paintoff
            add dx, size2
            call painton
            add bx, num2;
            jmp wait
    right:  cmp al, 'd'
            jnz left
            add cx, size2
            cmp cx, totcx
            jc a3
            sub cx, size2
            jmp wait
    a3:     sub cx, size2
            call paintoff
            add cx, size2
            call painton
            inc si;
            jmp wait
            left:   cmp al, 'a'
            jnz queen
            sub cx, size2
            cmp cx, topx
            jnc a2
            add cx, size2
            jmp wait
    a2:     add cx, size2
            call paintoff
            sub cx, size2
            call painton
            dec si;
            jmp wait
            
            queen:  cmp al, 'z'
            jz q
            jmp solution
    q:      cmp numboard[si][bx], 0
            jz w
            jmp wait
    w:      call paintqueen
            mov numboard[si][bx], 1
            
            push cx si
    right1: cmp si, snum2; block where you cant put 
            jz left1
            inc si
            add cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp right1
            
    left1:  pop si cx
            push cx si
    left2:  cmp si, 0
            jz up1
            dec si
            sub cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp left2
    
    up1:    pop si cx
            push dx bx
    up2:    cmp bx, 0
            jz down1
            sub bx, num2
            sub dx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp up2
    
    down1:  pop bx dx
            push dx bx
            mov ax, size2
            sub totdx, ax
    down2:  cmp dx, totdx
            jz downright1
            add bx, num2
            add dx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp down2
            
    downright1:pop bx dx
            push bx si cx dx
    downright2:cmp dx, totdx
            jz downleft1
            cmp si, snum2
            jz downleft1
            add bx, num2
            inc si
            add dx, size2
            add cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp downright2
    
    downleft1:pop dx cx si bx
            push bx si cx dx
    downleft2:cmp dx, totdx
            jz upleft1
            cmp si, 0
            jz upleft1
            add bx, num2
            dec si
            add dx, size2
            sub cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp downleft2
    
    upleft1:mov ax, size2
            add totdx, ax
            pop dx cx si bx 
            push bx si cx dx
    upleft2:cmp bx, 0
            jz upright1
            cmp si, 0
            jz upright1
            sub bx, num2
            dec si
            sub dx, size2
            sub cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp upleft2
            
    upright1: pop dx cx si bx
            push bx si cx dx
    upright2:cmp bx, 0
            jz q3
            cmp si, snum2
            jz q3
            sub bx, num2
            inc si
            sub dx, size2
            add cx, size2
            call painttaken
            mov numboard[si][bx], 2
            jmp upright2
            

    q3:     
            pop dx cx si bx
            inc winCheck
            mov al, winCheck
            cmp al, num1
            jnz t
            mov ah, 2
            mov bh, 0
            mov dh, 2
            mov dl, 8
            int 10h
            
            mov dl, 'Y'
            int 21h
            mov dl, 'o'
            int 21h
            mov dl, 'u'
            int 21h
            mov dl, ' '
            int 21h
            mov dl, 'W'
            int 21h
            mov dl, 'i'
            int 21h
            mov dl, 'n'
            int 21h
            mov dl, '!'
            int 21h
            jmp endd
    t:      jmp wait
   ;; printing of the recursivness     
    solution:   cmp al, 'x'; if i press enter 
            jz u
            jmp wait
    u:      cmp first, 0
            jnz notzero
            mov first, 1
            mov bx, 0
            mov si, 0
            mov di, 0
            mov cx, 0
            call Therecurs
            
notzero:    mov cx, topx
            mov dx, topy
            mov di, 1
            mov si, 1
            
    odhap1: cmp di, 1
            jnz black2
            call paintwhite
            inc di
            jmp white2
    black2: call paintblack
            dec di
    white2: add cx, size2
            cmp cx, totcx
            jc odhap1
            cmp si, 1
            jnz y1
            inc si
            mov di, 2
            jmp y2
    y1:     dec si
            mov di, 1
    y2:     mov cx, topx
            add dx, size2
            cmp dx, totdx
            jc odhap1   

            mov di, place
            mov cx, topx
            mov dx, topy
            mov bx, num2
            mov si, 0
            
    show:   mov al, coor[di]; shows the queens 
            mov ah, size1
            mul ah
            add cx, ax
            inc di
            inc place
            mov al, coor[di]
            mov ah, size1
            mul ah
            add dx, ax
            inc di
            inc place
            call paintqueen
            mov cx, topx
            mov dx, topy            
            inc si
            cmp si, bx
            jnz show

            jmp wait
    endd:  
    mov ah, 4ch
 int 21h
cseg    ends
end     start












