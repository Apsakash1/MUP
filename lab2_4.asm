.MODEL TINY
.DATA
ARRAY1	DW	0001h,0f002h,0f456h,0f000h,0f678h
count 	dw	5h
neg1	dw 	0h

.code
.startup
		lea si,array1
		mov ax,0h
	x2:	cmp ax,[si]
		jnge x1
		inc neg1
		
	x1: add si,2h
		dec count
		jnz x2
.exit
end