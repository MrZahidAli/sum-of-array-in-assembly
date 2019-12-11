INCLUDE irvine32.inc
.data

arr dword 2, 2, 2, 2
sizeOfArray DWORD ?

.code

	sumArray PROTO, arr: PTR DWORD, sizeOfArray: DWORD

main PROC
	mov sizeOfArray, lengthof arr
	INVOKE sumArray, ADDR arr, sizeOfArray
	call writeint
	call crlf
	call crlf
	call waitmsg
	EXIT
main endp

	sumArray PROC, arr2:PTR DWORD, sizeOfArray2: DWORD
		mov esi, arr2   ;address of arr2 into esi
		mov ecx, sizeOfArray2
		mov eax, 0
		L1:
			add eax, [esi]
			add esi, 4
			loop L1
		ret
	sumArray endp

end main