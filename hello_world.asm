

global _start				; Define the start label globally

section .text: 				; The section where the main functional code will be ran

_start:					; Use start label to specify entry point
	mov eax, 0x4			; Use the write system call
	mov ebx, 1			; Use stdout as the fd
	mov ecx, message		; Use defined message as the buffer
	mov edx, message_len 		; Supply message length
	int 0x80			; Invoke the syscall
	

	mov eax, 0x1			; The following code will exit the program
	mov ebx, 0
	int 0x80

section .data:				; The section where the data will be defined
	message: db "Hello World!", 0xA
	message_len equ $-message
