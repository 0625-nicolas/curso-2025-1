
.data
mensaje: .asciz "%ld \n "

.text
.global main
.extern printf       #indico que quiero utilizar la funcion de libc

main:

  subq $8, %rsp     # alineacion de datos 

  mov $4, %rax
  mov $5, %rbx
  add %rbx, %rax   # rax=rax+rbx


  #bloque de impresion
  #printf ("%ld \n", rax);
  #          rdi   , rsi 

  movq $mensaje, %rdi
  movq %rax, %rsi
  xorq %rax, %rax    # rax=0
  call printf

  addq $8, %rsp     #alineacion de datos


  #Salir del sistema
  mov $60, %rax    #indico que vamos a usar la funcion exit
  mov $0, %rdi     #indico que el argumento tiene un valor de 0
  syscall          #no es parte del ensamblador pero llama a las funciones del sis
  

