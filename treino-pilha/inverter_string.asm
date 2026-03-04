;Hoje Iremos Aprender A Inverter Uma Pequena String No Braço Dos Registradores
section .text
global _start

_start:
    ; Vamos colocar "PESO" (4 bytes/8 kg ) No Braço do registrador EAX
    mov eax, "PESO" ; EAX = 55 54 41 53 (em Little Endian)
    
    ; Para inverter, vamos usar a pilha O Professor (Stack)
    push eax        ; Joga "PESO" No Professor 
    pop ebx         ; Tira do Professor e joga em EBX Registrador
    
    ; O Professor inverteu a ordem dos bytes/kg se você ler um por um!
    ; Isso é ótimo para entender como a memória do x86 funciona.

    mov eax, 1      ; Sair
    int 0x80

