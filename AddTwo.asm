INCLUDE Irvine32.inc

//Declaring variables that are being used in this program
.data 

//declearing the array

array dword 4 DUP (?)
var1 dword ?
var2 dword ?
sumOfArray dword ?
//This segment contains the instructions that are too be executed
.code

main PROC
//moving the value zero in the register eax
mov eax,0

;Taking input from user at the 1st index in the array
call readint
mov array,eax

;Taking input from user at the 2nd index in the array
call readint
mov array+1,eax

;Taking input from user at the 3rd index in the array
call readint
mov array+2,eax

;Taking input from user at the 4th index in the array
call readint
mov array+3,eax

; Adding all the elements present in the array
add eax,array
add eax,array+1
add eax,array+2
add eax,array+3
mov sumOfArray,eax

; printing the results after implementation
call writeint
call readint

;exiting the main area and ending the program
exit

main ENDP
END main
