.global start               // Definindo symbol utilizado pelo linker para iniciar o programa
.intel_syntax noprefix      // Definindo opcao para nao precisar do prefixo da intel %

start:
    mov rax, 0x2000004      // Passando o comando 4 (write), a ser executado
    mov rdi, 1              // Passando o destino da saida 1 (stdout)
    lea rsi, message[rip]   // Passando o endereco (rip, pointer) da origem (source), de mensagem
    mov rdx, 12             // Passando o comprimento do texto
    syscall                 // Executando acao passada para o registrador rax

    mov rax, 0x2000001      // Passando o comando 1 (exit), a ser executado
    mov rdi, 99             // Passando o codigo de saida
    syscall

message:
    .asciz "Ola, mundo!\n"  // Definindo o valor da variavel message como asci delimitado por \0
