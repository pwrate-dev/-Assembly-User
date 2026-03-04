; Hoje Vamos Colocar Nosso Bem-Te-Vi  (Pc Speaker) pra cantar
; O Canto do Bem-Te-Vi (PC Speaker) 
section .text
global _start

_start:
    in al, 61h      ; Vê o Estado Atual da Melodia do Bem-Te-Vi 
    or al, 3        ; Abre o bico Bem-Te-Vi (Ativa os bits 0 e 1)
    out 61h, al     ; O CANTO COMEÇA

    ; RESPIRA Bem-Te-Vi 
    mov ecx, 0x0FFFFFFF 
delay_loop:
    loop delay_loop     
    in al, 61h      
    and al, 0fch    ; Limpa os bits 0 e 1 (Fecha o bico Desgraça Tô Tentando Dormir)
    out 61h, al     ; O silêncio volta
    
    ; final
    mov eax, 1      ; Syscall exit
    xor ebx, ebx    ; Vassoura no EBX: Retorno 0 (Sucesso sem erros)
    int 0x80        ; Entrega o controle de volta pro sistema
