
keyboard.o:     file format elf32-i386


Disassembly of section .text:

00000000 <kb_handler>:
   0:	e4 60                	in     al,0x60
   2:	3c e0                	cmp    al,0xe0
   4:	0f 84 b6 00 00 00    	je     c0 <kb_handler+0xc0>
   a:	80 3d 00 00 00 00 00 	cmp    BYTE PTR ds:0x0,0x0
  11:	0f 85 89 00 00 00    	jne    a0 <kb_handler+0xa0>
  17:	84 c0                	test   al,al
  19:	0f 88 e1 00 00 00    	js     100 <kb_handler+0x100>
  1f:	3c 2a                	cmp    al,0x2a
  21:	0f 84 a9 00 00 00    	je     d0 <kb_handler+0xd0>
  27:	3c 36                	cmp    al,0x36
  29:	0f 84 a1 00 00 00    	je     d0 <kb_handler+0xd0>
  2f:	0f b6 0d 01 00 00 00 	movzx  ecx,BYTE PTR ds:0x1
  36:	3c 3a                	cmp    al,0x3a
  38:	0f 84 e2 02 00 00    	je     320 <kb_handler+0x320>
  3e:	0f b6 c0             	movzx  eax,al
  41:	80 3d 02 00 00 00 00 	cmp    BYTE PTR ds:0x2,0x0
  48:	0f 84 ca 00 00 00    	je     118 <kb_handler+0x118>
  4e:	0f b6 90 40 00 00 00 	movzx  edx,BYTE PTR [eax+0x40]
  55:	84 c9                	test   cl,cl
  57:	0f 84 93 00 00 00    	je     f0 <kb_handler+0xf0>
  5d:	8d 42 9f             	lea    eax,[edx-0x61]
  60:	3c 19                	cmp    al,0x19
  62:	77 7c                	ja     e0 <kb_handler+0xe0>
  64:	83 ea 20             	sub    edx,0x20
  67:	a1 08 00 00 00       	mov    eax,ds:0x8
  6c:	8d 48 01             	lea    ecx,[eax+0x1]
  6f:	c1 f9 1f             	sar    ecx,0x1f
  72:	c1 e9 18             	shr    ecx,0x18
  75:	8d 44 08 01          	lea    eax,[eax+ecx*1+0x1]
  79:	0f b6 c0             	movzx  eax,al
  7c:	29 c8                	sub    eax,ecx
  7e:	8b 0d 04 00 00 00    	mov    ecx,DWORD PTR ds:0x4
  84:	39 c8                	cmp    eax,ecx
  86:	74 11                	je     99 <kb_handler+0x99>
  88:	8b 0d 08 00 00 00    	mov    ecx,DWORD PTR ds:0x8
  8e:	a3 08 00 00 00       	mov    ds:0x8,eax
  93:	88 91 20 00 00 00    	mov    BYTE PTR [ecx+0x20],dl
  99:	c3                   	ret
  9a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  a0:	c6 05 00 00 00 00 00 	mov    BYTE PTR ds:0x0,0x0
  a7:	84 c0                	test   al,al
  a9:	78 ee                	js     99 <kb_handler+0x99>
  ab:	83 e8 47             	sub    eax,0x47
  ae:	3c 0c                	cmp    al,0xc
  b0:	77 e7                	ja     99 <kb_handler+0x99>
  b2:	0f b6 c0             	movzx  eax,al
  b5:	ff 24 85 00 00 00 00 	jmp    DWORD PTR [eax*4+0x0]
  bc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  c0:	c6 05 00 00 00 00 01 	mov    BYTE PTR ds:0x0,0x1
  c7:	c3                   	ret
  c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  cf:	00 
  d0:	c6 05 02 00 00 00 01 	mov    BYTE PTR ds:0x2,0x1
  d7:	c3                   	ret
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 
  e0:	8d 42 bf             	lea    eax,[edx-0x41]
  e3:	3c 19                	cmp    al,0x19
  e5:	77 09                	ja     f0 <kb_handler+0xf0>
  e7:	83 c2 20             	add    edx,0x20
  ea:	e9 78 ff ff ff       	jmp    67 <kb_handler+0x67>
  ef:	90                   	nop
  f0:	84 d2                	test   dl,dl
  f2:	0f 85 6f ff ff ff    	jne    67 <kb_handler+0x67>
  f8:	c3                   	ret
  f9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 100:	83 e0 7f             	and    eax,0x7f
 103:	3c 2a                	cmp    al,0x2a
 105:	74 04                	je     10b <kb_handler+0x10b>
 107:	3c 36                	cmp    al,0x36
 109:	75 8e                	jne    99 <kb_handler+0x99>
 10b:	c6 05 02 00 00 00 00 	mov    BYTE PTR ds:0x2,0x0
 112:	c3                   	ret
 113:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 118:	0f b6 90 c0 00 00 00 	movzx  edx,BYTE PTR [eax+0xc0]
 11f:	e9 31 ff ff ff       	jmp    55 <kb_handler+0x55>
 124:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 128:	a1 08 00 00 00       	mov    eax,ds:0x8
 12d:	83 c0 01             	add    eax,0x1
 130:	99                   	cdq
 131:	c1 ea 18             	shr    edx,0x18
 134:	01 d0                	add    eax,edx
 136:	0f b6 c0             	movzx  eax,al
 139:	29 d0                	sub    eax,edx
 13b:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 141:	39 d0                	cmp    eax,edx
 143:	0f 84 50 ff ff ff    	je     99 <kb_handler+0x99>
 149:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 14f:	a3 08 00 00 00       	mov    ds:0x8,eax
 154:	c6 82 20 00 00 00 f8 	mov    BYTE PTR [edx+0x20],0xf8
 15b:	c3                   	ret
 15c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 160:	a1 08 00 00 00       	mov    eax,ds:0x8
 165:	83 c0 01             	add    eax,0x1
 168:	99                   	cdq
 169:	c1 ea 18             	shr    edx,0x18
 16c:	01 d0                	add    eax,edx
 16e:	0f b6 c0             	movzx  eax,al
 171:	29 d0                	sub    eax,edx
 173:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 179:	39 d0                	cmp    eax,edx
 17b:	0f 84 18 ff ff ff    	je     99 <kb_handler+0x99>
 181:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 187:	a3 08 00 00 00       	mov    ds:0x8,eax
 18c:	c6 82 20 00 00 00 f6 	mov    BYTE PTR [edx+0x20],0xf6
 193:	c3                   	ret
 194:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 198:	a1 08 00 00 00       	mov    eax,ds:0x8
 19d:	83 c0 01             	add    eax,0x1
 1a0:	99                   	cdq
 1a1:	c1 ea 18             	shr    edx,0x18
 1a4:	01 d0                	add    eax,edx
 1a6:	0f b6 c0             	movzx  eax,al
 1a9:	29 d0                	sub    eax,edx
 1ab:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 1b1:	39 d0                	cmp    eax,edx
 1b3:	0f 84 e0 fe ff ff    	je     99 <kb_handler+0x99>
 1b9:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 1bf:	a3 08 00 00 00       	mov    ds:0x8,eax
 1c4:	c6 82 20 00 00 00 fa 	mov    BYTE PTR [edx+0x20],0xfa
 1cb:	c3                   	ret
 1cc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 1d0:	a1 08 00 00 00       	mov    eax,ds:0x8
 1d5:	83 c0 01             	add    eax,0x1
 1d8:	99                   	cdq
 1d9:	c1 ea 18             	shr    edx,0x18
 1dc:	01 d0                	add    eax,edx
 1de:	0f b6 c0             	movzx  eax,al
 1e1:	29 d0                	sub    eax,edx
 1e3:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 1e9:	39 d0                	cmp    eax,edx
 1eb:	0f 84 a8 fe ff ff    	je     99 <kb_handler+0x99>
 1f1:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 1f7:	a3 08 00 00 00       	mov    ds:0x8,eax
 1fc:	c6 82 20 00 00 00 f7 	mov    BYTE PTR [edx+0x20],0xf7
 203:	c3                   	ret
 204:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 208:	a1 08 00 00 00       	mov    eax,ds:0x8
 20d:	83 c0 01             	add    eax,0x1
 210:	99                   	cdq
 211:	c1 ea 18             	shr    edx,0x18
 214:	01 d0                	add    eax,edx
 216:	0f b6 c0             	movzx  eax,al
 219:	29 d0                	sub    eax,edx
 21b:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 221:	39 d0                	cmp    eax,edx
 223:	0f 84 70 fe ff ff    	je     99 <kb_handler+0x99>
 229:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 22f:	a3 08 00 00 00       	mov    ds:0x8,eax
 234:	c6 82 20 00 00 00 fe 	mov    BYTE PTR [edx+0x20],0xfe
 23b:	c3                   	ret
 23c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 240:	a1 08 00 00 00       	mov    eax,ds:0x8
 245:	83 c0 01             	add    eax,0x1
 248:	99                   	cdq
 249:	c1 ea 18             	shr    edx,0x18
 24c:	01 d0                	add    eax,edx
 24e:	0f b6 c0             	movzx  eax,al
 251:	29 d0                	sub    eax,edx
 253:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 259:	39 d0                	cmp    eax,edx
 25b:	0f 84 38 fe ff ff    	je     99 <kb_handler+0x99>
 261:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 267:	a3 08 00 00 00       	mov    ds:0x8,eax
 26c:	c6 82 20 00 00 00 fd 	mov    BYTE PTR [edx+0x20],0xfd
 273:	c3                   	ret
 274:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 278:	a1 08 00 00 00       	mov    eax,ds:0x8
 27d:	83 c0 01             	add    eax,0x1
 280:	99                   	cdq
 281:	c1 ea 18             	shr    edx,0x18
 284:	01 d0                	add    eax,edx
 286:	0f b6 c0             	movzx  eax,al
 289:	29 d0                	sub    eax,edx
 28b:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 291:	39 d0                	cmp    eax,edx
 293:	0f 84 00 fe ff ff    	je     99 <kb_handler+0x99>
 299:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 29f:	a3 08 00 00 00       	mov    ds:0x8,eax
 2a4:	c6 82 20 00 00 00 f9 	mov    BYTE PTR [edx+0x20],0xf9
 2ab:	c3                   	ret
 2ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 2b0:	a1 08 00 00 00       	mov    eax,ds:0x8
 2b5:	83 c0 01             	add    eax,0x1
 2b8:	99                   	cdq
 2b9:	c1 ea 18             	shr    edx,0x18
 2bc:	01 d0                	add    eax,edx
 2be:	0f b6 c0             	movzx  eax,al
 2c1:	29 d0                	sub    eax,edx
 2c3:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 2c9:	39 d0                	cmp    eax,edx
 2cb:	0f 84 c8 fd ff ff    	je     99 <kb_handler+0x99>
 2d1:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 2d7:	a3 08 00 00 00       	mov    ds:0x8,eax
 2dc:	c6 82 20 00 00 00 fb 	mov    BYTE PTR [edx+0x20],0xfb
 2e3:	c3                   	ret
 2e4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 2e8:	a1 08 00 00 00       	mov    eax,ds:0x8
 2ed:	83 c0 01             	add    eax,0x1
 2f0:	99                   	cdq
 2f1:	c1 ea 18             	shr    edx,0x18
 2f4:	01 d0                	add    eax,edx
 2f6:	0f b6 c0             	movzx  eax,al
 2f9:	29 d0                	sub    eax,edx
 2fb:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
 301:	39 d0                	cmp    eax,edx
 303:	0f 84 90 fd ff ff    	je     99 <kb_handler+0x99>
 309:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 30f:	a3 08 00 00 00       	mov    ds:0x8,eax
 314:	c6 82 20 00 00 00 fc 	mov    BYTE PTR [edx+0x20],0xfc
 31b:	c3                   	ret
 31c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 320:	83 f1 01             	xor    ecx,0x1
 323:	88 0d 01 00 00 00    	mov    BYTE PTR ds:0x1,cl
 329:	c3                   	ret
 32a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000330 <keyboard_init>:
 330:	83 ec 14             	sub    esp,0x14
 333:	68 00 00 00 00       	push   0x0
 338:	6a 21                	push   0x21
 33a:	e8 fc ff ff ff       	call   33b <keyboard_init+0xb>
 33f:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 346:	e8 fc ff ff ff       	call   347 <keyboard_init+0x17>
 34b:	83 c4 1c             	add    esp,0x1c
 34e:	c3                   	ret
 34f:	90                   	nop

00000350 <keyboard_has_char>:
 350:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 356:	a1 04 00 00 00       	mov    eax,ds:0x4
 35b:	39 c2                	cmp    edx,eax
 35d:	0f 95 c0             	setne  al
 360:	c3                   	ret
 361:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 368:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 36f:	00 

00000370 <keyboard_get_char>:
 370:	eb 07                	jmp    379 <keyboard_get_char+0x9>
 372:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 378:	f4                   	hlt
 379:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 37f:	a1 04 00 00 00       	mov    eax,ds:0x4
 384:	39 c2                	cmp    edx,eax
 386:	74 f0                	je     378 <keyboard_get_char+0x8>
 388:	a1 04 00 00 00       	mov    eax,ds:0x4
 38d:	0f b6 88 20 00 00 00 	movzx  ecx,BYTE PTR [eax+0x20]
 394:	a1 04 00 00 00       	mov    eax,ds:0x4
 399:	83 c0 01             	add    eax,0x1
 39c:	99                   	cdq
 39d:	c1 ea 18             	shr    edx,0x18
 3a0:	01 d0                	add    eax,edx
 3a2:	0f b6 c0             	movzx  eax,al
 3a5:	29 d0                	sub    eax,edx
 3a7:	a3 04 00 00 00       	mov    ds:0x4,eax
 3ac:	89 c8                	mov    eax,ecx
 3ae:	c3                   	ret

Disassembly of section .rodata:

00000000 <sc_shift-0x40>:
   0:	98                   	cwde
   1:	01 00                	add    DWORD PTR [eax],eax
   3:	00 08                	add    BYTE PTR [eax],cl
   5:	02 00                	add    al,BYTE PTR [eax]
   7:	00 d0                	add    al,dl
   9:	01 00                	add    DWORD PTR [eax],eax
   b:	00 99 00 00 00 e8    	add    BYTE PTR [ecx-0x18000000],bl
  11:	02 00                	add    al,BYTE PTR [eax]
  13:	00 99 00 00 00 b0    	add    BYTE PTR [ecx-0x50000000],bl
  19:	02 00                	add    al,BYTE PTR [eax]
  1b:	00 99 00 00 00 78    	add    BYTE PTR [ecx+0x78000000],bl
  21:	02 00                	add    al,BYTE PTR [eax]
  23:	00 40 02             	add    BYTE PTR [eax+0x2],al
  26:	00 00                	add    BYTE PTR [eax],al
  28:	60                   	pusha
  29:	01 00                	add    DWORD PTR [eax],eax
  2b:	00 99 00 00 00 28    	add    BYTE PTR [ecx+0x28000000],bl
  31:	01 00                	add    DWORD PTR [eax],eax
	...

00000040 <sc_shift>:
  40:	00 1b                	add    BYTE PTR [ebx],bl
  42:	21 40 23             	and    DWORD PTR [eax+0x23],eax
  45:	24 25                	and    al,0x25
  47:	5e                   	pop    esi
  48:	26 2a 28             	sub    ch,BYTE PTR es:[eax]
  4b:	29 5f 2b             	sub    DWORD PTR [edi+0x2b],ebx
  4e:	08 09                	or     BYTE PTR [ecx],cl
  50:	51                   	push   ecx
  51:	57                   	push   edi
  52:	45                   	inc    ebp
  53:	52                   	push   edx
  54:	54                   	push   esp
  55:	59                   	pop    ecx
  56:	55                   	push   ebp
  57:	49                   	dec    ecx
  58:	4f                   	dec    edi
  59:	50                   	push   eax
  5a:	7b 7d                	jnp    d9 <sc_normal+0x19>
  5c:	0a 00                	or     al,BYTE PTR [eax]
  5e:	41                   	inc    ecx
  5f:	53                   	push   ebx
  60:	44                   	inc    esp
  61:	46                   	inc    esi
  62:	47                   	inc    edi
  63:	48                   	dec    eax
  64:	4a                   	dec    edx
  65:	4b                   	dec    ebx
  66:	4c                   	dec    esp
  67:	3a 22                	cmp    ah,BYTE PTR [edx]
  69:	7e 00                	jle    6b <sc_shift+0x2b>
  6b:	7c 5a                	jl     c7 <sc_normal+0x7>
  6d:	58                   	pop    eax
  6e:	43                   	inc    ebx
  6f:	56                   	push   esi
  70:	42                   	inc    edx
  71:	4e                   	dec    esi
  72:	4d                   	dec    ebp
  73:	3c 3e                	cmp    al,0x3e
  75:	3f                   	aas
  76:	00 2a                	add    BYTE PTR [edx],ch
  78:	00 20                	add    BYTE PTR [eax],ah
	...
  86:	00 00                	add    BYTE PTR [eax],al
  88:	37                   	aaa
  89:	38 39                	cmp    BYTE PTR [ecx],bh
  8b:	2d 34 35 36 2b       	sub    eax,0x2b363534
  90:	31 32                	xor    DWORD PTR [edx],esi
  92:	33 30                	xor    esi,DWORD PTR [eax]
  94:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...

000000c0 <sc_normal>:
  c0:	00 1b                	add    BYTE PTR [ebx],bl
  c2:	31 32                	xor    DWORD PTR [edx],esi
  c4:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
  cb:	30 2d 3d 08 09 71    	xor    BYTE PTR ds:0x7109083d,ch
  d1:	77 65                	ja     138 <sc_normal+0x78>
  d3:	72 74                	jb     149 <sc_normal+0x89>
  d5:	79 75                	jns    14c <sc_normal+0x8c>
  d7:	69 6f 70 5b 5d 0a 00 	imul   ebp,DWORD PTR [edi+0x70],0xa5d5b
  de:	61                   	popa
  df:	73 64                	jae    145 <sc_normal+0x85>
  e1:	66 67 68 6a 6b       	addr16 pushw 0x6b6a
  e6:	6c                   	ins    BYTE PTR es:[edi],dx
  e7:	3b 27                	cmp    esp,DWORD PTR [edi]
  e9:	60                   	pusha
  ea:	00 5c 7a 78          	add    BYTE PTR [edx+edi*2+0x78],bl
  ee:	63 76 62             	arpl   WORD PTR [esi+0x62],esi
  f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
  f2:	6d                   	ins    DWORD PTR es:[edi],dx
  f3:	2c 2e                	sub    al,0x2e
  f5:	2f                   	das
  f6:	00 2a                	add    BYTE PTR [edx],ch
  f8:	00 20                	add    BYTE PTR [eax],ah
	...
 106:	00 00                	add    BYTE PTR [eax],al
 108:	37                   	aaa
 109:	38 39                	cmp    BYTE PTR [ecx],bh
 10b:	2d 34 35 36 2b       	sub    eax,0x2b363534
 110:	31 32                	xor    DWORD PTR [edx],esi
 112:	33 30                	xor    esi,DWORD PTR [eax]
 114:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43             	add    BYTE PTR [edi+0x43],al
   3:	43                   	inc    ebx
   4:	3a 20                	cmp    ah,BYTE PTR [eax]
   6:	28 47 4e             	sub    BYTE PTR [edi+0x4e],al
   9:	55                   	push   ebp
   a:	29 20                	sub    DWORD PTR [eax],esp
   c:	31 35 2e 32 2e 31    	xor    DWORD PTR ds:0x312e322e,esi
  12:	20 32                	and    BYTE PTR [edx],dh
  14:	30 32                	xor    BYTE PTR [edx],dh
  16:	36 30 32             	xor    BYTE PTR ss:[edx],dh
  19:	30 39                	xor    BYTE PTR [ecx],bh
	...

Disassembly of section .note.gnu.property:

00000000 <.note.gnu.property>:
   0:	04 00                	add    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	18 00                	sbb    BYTE PTR [eax],al
   6:	00 00                	add    BYTE PTR [eax],al
   8:	05 00 00 00 47       	add    eax,0x47000000
   d:	4e                   	dec    esi
   e:	55                   	push   ebp
   f:	00 02                	add    BYTE PTR [edx],al
  11:	00 01                	add    BYTE PTR [ecx],al
  13:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
  17:	00 00                	add    BYTE PTR [eax],al
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 01                	add    BYTE PTR [ecx],al
  1d:	00 01                	add    BYTE PTR [ecx],al
  1f:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
  23:	00 01                	add    BYTE PTR [ecx],al
  25:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	00 00                	add    BYTE PTR [eax],al
   6:	00 00                	add    BYTE PTR [eax],al
   8:	01 7a 52             	add    DWORD PTR [edx+0x52],edi
   b:	00 01                	add    BYTE PTR [ecx],al
   d:	7c 08                	jl     17 <.eh_frame+0x17>
   f:	01 1b                	add    DWORD PTR [ebx],ebx
  11:	0c 04                	or     al,0x4
  13:	04 88                	add    al,0x88
  15:	01 00                	add    DWORD PTR [eax],eax
  17:	00 10                	add    BYTE PTR [eax],dl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	2a 03                	sub    al,BYTE PTR [ebx]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 00                	add    BYTE PTR [eax],al
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	1c 00                	sbb    al,0x0
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	30 03                	xor    BYTE PTR [ebx],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	1f                   	pop    ds
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	00 00                	add    BYTE PTR [eax],al
  3d:	43                   	inc    ebx
  3e:	0e                   	push   cs
  3f:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  42:	1c 42                	sbb    al,0x42
  44:	0e                   	push   cs
  45:	20 54 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],dl
  49:	00 00                	add    BYTE PTR [eax],al
  4b:	00 10                	add    BYTE PTR [eax],dl
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  52:	00 00                	add    BYTE PTR [eax],al
  54:	50                   	push   eax
  55:	03 00                	add    eax,DWORD PTR [eax]
  57:	00 11                	add    BYTE PTR [ecx],dl
  59:	00 00                	add    BYTE PTR [eax],al
  5b:	00 00                	add    BYTE PTR [eax],al
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 10                	add    BYTE PTR [eax],dl
  61:	00 00                	add    BYTE PTR [eax],al
  63:	00 64 00 00          	add    BYTE PTR [eax+eax*1+0x0],ah
  67:	00 70 03             	add    BYTE PTR [eax+0x3],dh
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	3f                   	aas
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	00 00                	add    BYTE PTR [eax],al
	...
