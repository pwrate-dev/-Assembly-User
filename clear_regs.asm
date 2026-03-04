;A Vassoura que Faz a Varredura dos Registradores 
; clear_regs.asm - Mostrando o truque do XOR para varrer registradores 
section .text
global _start

;Primeiro Você Pega a Vassoura e a Pá (xor) e limpa a Sujeira (EAX,EBX,ECX)

_start:
    ; O Jeito Comum Seria: mov eax, 0 (5 bytes)
    ; O Jeito Dona de Casa (Tia da limpeza style):
    xor eax, eax    ; Zera EAX usando apenas 2 bytes
    xor ebx, ebx    ; Zera EBX
    xor ecx, ecx    ; Zera ECX
    
    ; Agora o Quarto está Limpo (processador) Está Limpo para Começar Os Trabalhos 
    mov eax, 1      ; Syscall exit
    int 0x80
