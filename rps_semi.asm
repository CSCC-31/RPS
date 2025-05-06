.model small
.stack 100h
.data
    line1   db 13,10, '--------------------------------------------------$'
    line2   db 13,10, '     Welcome to our RPS Game! Choose your pick$'
    line3   db 13,10, '--------------------------------------------------$'
    line4   db 13,10, '      ***                  |$'
    line5   db 13,10, '     *****                 |$'
    line6   db 13,10, '    *******                |Rock$'
    line7   db 13,10, '     *****                 |$'
    line8   db 13,10, '      ***                  |$'
    line9   db 13,10, '                           |$'
    line10  db 13,10, '    -------                |$'
    line11  db 13,10, '    |     |                |$'
    line12  db 13,10, '    |     |                |Paper$'
    line13  db 13,10, '    |     |                |$'
    line14  db 13,10, '    -------                |$'
    line15  db 13,10, '                           |$'
    line16  db 13,10, '     (0)(0)                |$'
    line17  db 13,10, '      //\\                 |$'
    line18  db 13,10, '     //--\\                |Scissor$'
    line19  db 13,10, '    //    \\               |$'
    line20  db 13,10, '   //      \\              |$'
    line21  db 13,10, '--------------------------------------------------$'

    prompt      db 13,10, 'Press 1 for Rock, 2 for Paper, 3 for Scissor, 0 to Quit:$'
    invalid_msg db 13,10, 'Invalid choice, pick again.$'
    user_msg    db 13,10, 'You chose: $'
    comp_msg    db 13,10, 'Computer chose: $'
    win_msg     db 13,10, 'You Win!$'
    lose_msg    db 13,10, 'Computer Wins!$'
    draw_msg    db 13,10, 'It''s a Tie!$'
    score_msg   db 13,10, 'Score - You: $'
    comp_score_msg db ' Computer: $'
    draw_score_msg db ' Draws: $'

    rock_msg    db 'Rock$'
    paper_msg   db 'Paper$'
    scissor_msg db 'Scissor$'

    user_score   db 0
    comp_score   db 0
    draw_score   db 0

.code
start:
    mov ax, @data
    mov ds, ax

main_loop:
    call ShowMenu
    call GetUserChoice
    cmp al, 0
    je ExitGame
    mov bl, al
    call GetComputerChoice
    mov bh, al

    call ShowResults
    call CompareChoices
    call ShowScore
    jmp main_loop

ExitGame:
    mov ah, 4Ch
    int 21h

ShowMenu proc
    mov ah, 09h
    lea dx, line1
    int 21h
    lea dx, line2
    int 21h
    lea dx, line3
    int 21h
    lea dx, line4
    int 21h
    lea dx, line5
    int 21h
    lea dx, line6
    int 21h
    lea dx, line7
    int 21h
    lea dx, line8
    int 21h
    lea dx, line9
    int 21h
    lea dx, line10
    int 21h
    lea dx, line11
    int 21h
    lea dx, line12
    int 21h
    lea dx, line13
    int 21h
    lea dx, line14
    int 21h
    lea dx, line15
    int 21h
    lea dx, line16
    int 21h
    lea dx, line17
    int 21h
    lea dx, line18
    int 21h
    lea dx, line19
    int 21h
    lea dx, line20
    int 21h
    lea dx, line21
    int 21h
    ret
ShowMenu endp

GetUserChoice proc
    lea dx, prompt
    mov ah, 09h
    int 21h

get_input:
    mov ah, 01h
    int 21h
    sub al, '0'
    cmp al, 0
    jb invalid
    cmp al, 3
    ja invalid
    ret
invalid:
    lea dx, invalid_msg
    mov ah, 09h
    int 21h
    jmp get_input
GetUserChoice endp

GetComputerChoice proc
    mov ah, 00h
    int 1Ah
    mov ax, dx
    xor dx, dx
    mov cx, 3
    div cx
    inc dl
    mov al, dl
    ret
GetComputerChoice endp

ShowResults proc
    lea dx, user_msg
    mov ah, 09h
    int 21h
    mov al, bl
    call ShowChoice

    lea dx, comp_msg
    mov ah, 09h
    int 21h
    mov al, bh
    call ShowChoice    ; Show computer's choice
    ret
ShowResults endp

CompareChoices proc
    mov al, bl
    mov ah, bh
    cmp al, ah
    je Draw

    cmp al, 1
    je R_Rock
    cmp al, 2
    je R_Paper
    jmp R_Scissor

R_Rock:
    cmp ah, 3
    je Win
    jmp Lose

R_Paper:
    cmp ah, 1
    je Win
    jmp Lose

R_Scissor:
    cmp ah, 2
    je Win
    jmp Lose

Draw:
    lea dx, draw_msg
    mov ah, 09h
    int 21h
    inc draw_score
    ret

Win:
    lea dx, win_msg
    mov ah, 09h
    int 21h
    inc user_score
    ret

Lose:
    lea dx, lose_msg
    mov ah, 09h
    int 21h
    inc comp_score
    ret
CompareChoices endp

ShowScore proc
    mov ah, 09h
    lea dx, score_msg
    int 21h
    mov al, user_score
    call PrintNum

    lea dx, comp_score_msg
    mov ah, 09h
    int 21h
    mov al, comp_score
    call PrintNum

    lea dx, draw_score_msg
    mov ah, 09h
    int 21h
    mov al, draw_score
    call PrintNum

    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    int 21h
    ret
ShowScore endp

ShowChoice proc
    cmp al, 1
    je showRock
    cmp al, 2
    je showPaper
    jmp showScissor
showRock:
    lea dx, rock_msg
    jmp showdone
showPaper:
    lea dx, paper_msg
    jmp showdone
showScissor:
    lea dx, scissor_msg
showdone:
    mov ah, 09h
    int 21h
    ret
ShowChoice endp

PrintNum proc
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h
    ret
PrintNum endp

end start

