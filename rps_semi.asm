.model small
.stack 100h
.data

    ; MAIN MENU
    menuline1   db 13,10, '|-----------------------------------------------------------------------------|$'
    menuline2   db 13,10, '|                              ROCK PAPER SCISSORS!                           |$'    
    menuline3   db 13,10, '|-----------------------------------------------------------------------------|$'
    menuline4   db 13,10, '|                           _______  _______  _______                         |$'
    menuline5   db 13,10, '|                          (  ____ )(  ____ )(  ____ \                        |$'
    menuline6   db 13,10, '|                          | (    )|| (    )|| (    \/                        |$'
    menuline7   db 13,10, '|                          | (____)|| (____)|| (_____                         |$'
    menuline8   db 13,10, '|                          |     __)|  _____)(_____  )                        |$'     
    menuline9   db 13,10, '|                          | (\ (   | (            ) |                        |$'
    menuline10  db 13,10, '|                          | ) \ \__| )      /\____) |                        |$'
    menuline11  db 13,10, '|                          |/   \__/|/       \_______)                        |$'
    menuline12  db 13,10, '|                                                                             |$'
    menuline13  db 13,10, '|                                                                             |$'
    menuline14  db 13,10, '|                             A CSCC 31 Project.                              |$'
    menuline15  db 13,10, '|                                                                             |$'
    menuline16  db 13,10, '|          By:                                                                |$'
    menuline17  db 13,10, '|                                                                             |$'
    menuline18  db 13,10, '|          France Real Esclamado            John Lester Tion                  |$'
    menuline19  db 13,10, '|          Luke Floren Aaron Jamis          Jasper Tumanda                    |$'
    menuline20  db 13,10, '|                                                                             |$'
    menuline21  db 13,10, '|                                                                             |$'
    menuline22  db 13,10, '|                             PRESS (1) TO START!                             |$'
    menuline23  db 13,10, '|                                                                             |$'
    menuline24  db 13,10, '|                                                                             |$'
    menuline25  db 13,10, '|=============================================================================|$'
    
    ; GAME SCREEN
    line1   db 13,10, '|-----------------------------------------------------------------------------|$'
    line2   db 13,10, '|                          Welcome to our RPS Game!                           |$'    
    line3   db 13,10, '|-----------------------------------------------------------------------------|$'
    line4   db 13,10, '|                                                                             |$'
    line5   db 13,10, '| [====================]   [=====================]   [=====================]  |$'
    line6   db 13,10, '| ||     ********     ||   ||   ______________  ||   ||       (0)(0)      ||  |$'
    line7   db 13,10, '| ||    **********    ||   ||   |////////////|  ||   ||        \\//       ||  |$'
    line8   db 13,10, '| ||   ************   ||   ||   |////////////|  ||   ||         \/        ||  |$'
    line9   db 13,10, '| ||  **************  ||   ||   |////////////|  ||   ||        //\\       ||  |$'
    line10  db 13,10, '| ||   ************   ||   ||   |////////////|  ||   ||       //  \\      ||  |$'
    line11  db 13,10, '| ||    **********    ||   ||   |////////////|  ||   ||      //    \\     ||  |$'
    line12  db 13,10, '| ||     ********     ||   ||   --------------  ||   ||     //      \\    ||  |$'
    line13  db 13,10, '| [====================]   [=====================]   [=====================]  |$'
    line14  db 13,10, '|         ROCK                      PAPER                    SCISSORS         |$'
    line15  db 13,10, '|         (1)                        (2)                       (3)            |$'
    line16  db 13,10, '|                                                                             |$'
    line17  db 13,10, '|                                                                             |$'
    line18  db 13,10, '|                                                                             |$'
    line19  db 13,10, '|=============================================================================|$'
    
    ;WIN SCREEN
    winline1   db 13,10, '|-----------------------------------------------------------------------------|$'
    winline2   db 13,10, '|                              CONGRATULATIONS!                               |$'    
    winline3   db 13,10, '|-----------------------------------------------------------------------------|$'
    winline4   db 13,10, '|                                                                             |$'
    winline5   db 13,10, '|                  _______                     _________ _        _           |$'
    winline6   db 13,10, '|        |\     /|(  ___  )|\     /|  |\     /|\__   __/( (    /|( )          |$'
    winline7   db 13,10, '|        ( \   / )| (   ) || )   ( |  | )   ( |   ) (   |  \  ( || |          |$'
    winline8   db 13,10, '|         \ (_) / | |   | || |   | |  | | _ | |   | |   |   \ | || |          |$'     
    winline9   db 13,10, '|          \   /  | |   | || |   | |  | |( )| |   | |   | (\ \) || |          |$'
    winline10  db 13,10, '|           ) (   | |   | || |   | |  | || || |   | |   | | \   |(_)          |$'
    winline11  db 13,10, '|           | |   | (___) || (___) |  | () () |___) (___| )  \  | _           |$'
    winline12  db 13,10, '|           \_/   (_______)(_______)  (_______)\_______/|/    )_)(_)          |$'
    winline13  db 13,10, '|                                                                             |$'
    winline14  db 13,10, '|                                                                             |$'
    winline15  db 13,10, '|                                                                             |$'
    winline16  db 13,10, '|                                                                             |$'
    winline17  db 13,10, '|                              THANKS FOR PLAYING.                            |$'
    winline18  db 13,10, '|                                                                             |$'
    winline19  db 13,10, '|                                                                             |$'
    winline20  db 13,10, '|                                                                             |$'
    winline21  db 13,10, '|                                                                             |$'
    winline22  db 13,10, '|                             PRESS (1) TO RESTART.                           |$'
    winline23  db 13,10, '|                                                                             |$'
    winline24  db 13,10, '|                                                                             |$'
    winline25  db 13,10, '|=============================================================================|$'
    
    ;LOSE SCREEN
    loseline1   db 13,10, '|-----------------------------------------------------------------------------|$'
    loseline2   db 13,10, '|                                      OOF.                                   |$'    
    loseline3   db 13,10, '|-----------------------------------------------------------------------------|$'
    loseline4   db 13,10, '|                                                                             |$'
    loseline5   db 13,10, '|              _______             _        _______  _______  _______  _      |$'
    loseline6   db 13,10, '|    |\     /|(  ___  )|\     /|  ( \      (  ___  )(  ____ \(  ____ \( )     |$'
    loseline7   db 13,10, '|    ( \   / )| (   ) || )   ( |  | (      | (   ) || (    \/| (    \/| |     |$'
    loseline8   db 13,10, '|     \ (_) / | |   | || |   | |  | |      | |   | || (_____ | (__    | |     |$'     
    loseline9   db 13,10, '|      \   /  | |   | || |   | |  | |      | |   | |(_____  )|  __)   | |     |$'
    loseline10  db 13,10, '|       ) (   | |   | || |   | |  | |      | |   | |      ) || (      (_)     |$'
    loseline11  db 13,10, '|       | |   | (___) || (___) |  | (____/\| (___) |/\____) || (____/\ _      |$'
    loseline12  db 13,10, '|       \_/   (_______)(_______)  (_______/(_______)\_______)(_______/(_)     |$'
    loseline13  db 13,10, '|                                                                             |$'
    loseline14  db 13,10, '|                              .                                              |$'
    loseline15  db 13,10, '|                                                                             |$'
    loseline16  db 13,10, '|                                                                             |$'
    loseline17  db 13,10, '|                              THANKS FOR PLAYING.                            |$'
    loseline18  db 13,10, '|                                                                             |$'
    loseline19  db 13,10, '|                                                                             |$'
    loseline20  db 13,10, '|                                                                             |$'
    loseline21  db 13,10, '|                                                                             |$'
    loseline22  db 13,10, '|                             PRESS (1) TO RESTART.                           |$'
    loseline23  db 13,10, '|                                                                             |$'
    loseline24  db 13,10, '|                                                                             |$'
    loseline25  db 13,10, '|=============================================================================|$'

   
    
    prompt      db 13,10, '        Press [1] for Rock, [2] for Paper, [3] for Scissor, [0] to Quit:$'
    invalid_msg db 13,10, 'Invalid choice, pick again.$'
    user_msg    db 13,10, 'You chose: $'
    comp_msg    db 13,10, 'Computer chose: $'
    win_msg     db 13,10, 'You Win!$'
    lose_msg    db 13,10, 'Computer Wins!$'
    draw_msg    db 13,10, 'It''s a Tie!$'
    rock_msg    db 'Rock$'
    paper_msg   db 'Paper$'
    scissor_msg db 'Scissor$'

    user_score   db 0
    comp_score   db 0
    draw_score   db 0
    win_limit    db 5
    
    start_score_msg db 13,10, '[ SCORE: You: $'
    comp_score_msg      db ' | Computer: $'
    draw_score_msg      db ' | Draws: $'
    score_end       db ' ]',13,10,'$'
    
    crlf db 13,10, '$'
.code
start:
    mov ax, @data
    mov ds, ax
    
    
menu_loop:
    call ShowMenu
    mov ah, 01h
    int 21h
    sub al, '0'
    cmp al, 1
    
    je start_game
    jmp menu_loop

start_game:
    jmp main_loop
    
    
main_loop:
    call ShowGame
    call GetUserChoice
    cmp al, 0
    je ExitGame
    mov bl, al
    call GetComputerChoice
    mov bh, al
    
    call ShowResults
    call CompareChoices
    call ShowScore

    mov al, user_score
    cmp al, [win_limit]
    je UserGameWin
    
    mov al, comp_score
    cmp al, [win_limit]
    je CompGameWin
    
    jmp main_loop

ExitGame:
    Call ResetScores
    jmp menu_loop

UserGameWin:
    call ShowWin
    call ResetScores

WaitUserRestart:
    mov ah, 01h         
    int 21h
    sub al, '0'         
    cmp al, 1           
    jne WaitUserRestart 

    jmp main_loop       

CompGameWin:
    call ShowLose
    call ResetScores

WaitCompRestart:
    mov ah, 01h
    int 21h
    sub al, '0'
    cmp al, 1
    jne WaitCompRestart

    jmp main_loop

ShowWin proc
    mov ah,09h
    lea dx, winline1
    int 21h
    lea dx, winline2
    int 21h
    lea dx, winline3
    int 21h
    lea dx, winline4
    int 21h
    lea dx, winline5
    int 21h
    lea dx, winline6
    int 21h
    lea dx, winline7
    int 21h
    lea dx, winline8
    int 21h
    lea dx, winline9
    int 21h
    lea dx, winline10
    int 21h
    lea dx, winline11
    int 21h
    lea dx, winline12
    int 21h
    lea dx, winline13
    int 21h
    lea dx, winline14
    int 21h
    lea dx, winline15
    int 21h
    lea dx, winline16
    int 21h
    lea dx, winline17
    int 21h
    lea dx, winline18
    int 21h
    lea dx, winline19
    int 21h
    lea dx, winline20
    int 21h
    lea dx, winline21
    int 21h
    lea dx, winline22
    int 21h
    lea dx, winline23
    int 21h
    lea dx, winline24
    int 21h
    lea dx, winline25
    int 21h
    ret
ShowWin endp

ShowLose proc
    mov ah,09h
    lea dx, loseline1
    int 21h
    lea dx, loseline2
    int 21h
    lea dx, loseline3
    int 21h
    lea dx, loseline4
    int 21h
    lea dx, loseline5
    int 21h
    lea dx, loseline6
    int 21h
    lea dx, loseline7
    int 21h
    lea dx, loseline8
    int 21h
    lea dx, loseline9
    int 21h
    lea dx, loseline10
    int 21h
    lea dx, loseline11
    int 21h
    lea dx, loseline12
    int 21h
    lea dx, loseline13
    int 21h
    lea dx, loseline14
    int 21h
    lea dx, loseline15
    int 21h
    lea dx, loseline16
    int 21h
    lea dx, loseline17
    int 21h
    lea dx, loseline18
    int 21h
    lea dx, loseline19
    int 21h
    lea dx, loseline20
    int 21h
    lea dx, loseline21
    int 21h
    lea dx, loseline22
    int 21h
    lea dx, loseline23
    int 21h
    lea dx, loseline24
    int 21h
    lea dx, loseline25
    int 21h
    ret
ShowLose endp

ShowMenu proc
    mov ah,09h
    lea dx, menuline1
    int 21h
    lea dx, menuline2
    int 21h
    lea dx, menuline3
    int 21h
    lea dx, menuline4
    int 21h
    lea dx, menuline5
    int 21h
    lea dx, menuline6
    int 21h
    lea dx, menuline7
    int 21h
    lea dx, menuline8
    int 21h
    lea dx, menuline9
    int 21h
    lea dx, menuline10
    int 21h
    lea dx, menuline11
    int 21h
    lea dx, menuline12
    int 21h
    lea dx, menuline13
    int 21h
    lea dx, menuline14
    int 21h
    lea dx, menuline15
    int 21h
    lea dx, menuline16
    int 21h
    lea dx, menuline17
    int 21h
    lea dx, menuline18
    int 21h
    lea dx, menuline19
    int 21h
    lea dx, menuline20
    int 21h
    lea dx, menuline21
    int 21h
    lea dx, menuline22
    int 21h
    lea dx, menuline23
    int 21h
    lea dx, menuline24
    int 21h
    lea dx, menuline25
    int 21h
    ret
    
ShowMenu endp
    
ShowGame proc
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
    ret
ShowGame endp

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
    call ShowChoice    
    ret
ShowResults endp

ResetScores proc
    mov user_score, 0
    mov comp_score, 0
    mov draw_score, 0
ResetScores endp

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
    lea dx, start_score_msg
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

    lea dx, score_end
    mov ah, 09h
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

