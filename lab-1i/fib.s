	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	mov r3, #-1 		@ r3 = previous
    	mov r4, #1 		@ r4 = result
   	mov r5, #0 		@ r5 = sum

.loop:
	 add r5, r3, r4		@ sum = previous + result
	 mov r3, r4 		@ previous = result
	 mov r4, r5 		@ result = sum

	 subs r0, r0, #1 		@ if r0 >= 0 , r0 = r0 - 1   
	 bge .loop 

	 mov r0, r4 		@ r0 = result
	 pop {r3, r4, r5, pc}
	    
.size fibonacci, .-fibonacci
 .end    
