;hello world
section .data
  msg db  "hello, world", 0
section .bss
section .text
  global main
main:
  mov rax, 1       ; 1 = write
  mov rdi, 1       ; 1 = to stdout
  mov rsi, msg     ; string to display in rsi
  mov rdx, 12      ; length of the string, exluding 0
  syscall          ; display the string
  mov rax, 60      ; 60 = exit
  mov rdi, 0       ; 0 = sucess exit code
  syscall
