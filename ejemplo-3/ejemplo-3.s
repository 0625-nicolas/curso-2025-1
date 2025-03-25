
.data

mensaje: .asciz "Numero1 %d numero2 %d \r\n"

.text
.global main
.extern printf          #similar al include

main:
_start:

    subq $8, %rsp       #Alineamos datos

    mov $4, %rax
    mov $5, %rbx

    #               %rdi             %rsi  %rdx
    # printf(mensaje, rax, rbx)
    # printf("Numero1 %d numero2 %d ", rax, rbx)

    movq $mensaje, %rdi  #guarda la direccion de memoria de mensaje
    movq %rax, %rsi
    movq %rbx, %rdx


#   call imprimir
    # RAX se pone en 0 para indicar que necesitamos 0 registros de punto flotan
    movq $0, %rax   #rax=0 toca memoria
    xorq %rax, %rax #rax=0 No toca memoria

    call printf

    addq $8, %rsp

    call salir

salir:
    # salir del sistema
    mov $60, %rax
    mov $0, %rdi
    syscall
    ret
