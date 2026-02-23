
isr.o:     file format elf32-i386


Disassembly of section .text:

00000000 <isr_register_handler>:
   0:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
   5:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
   9:	89 14 85 00 00 00 00 	mov    DWORD PTR [eax*4+0x0],edx
  10:	c3                   	ret
  11:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  1f:	00 

00000020 <pic_init>:
  20:	b8 11 00 00 00       	mov    eax,0x11
  25:	e6 20                	out    0x20,al
  27:	e6 a0                	out    0xa0,al
  29:	31 c0                	xor    eax,eax
  2b:	e6 80                	out    0x80,al
  2d:	b8 20 00 00 00       	mov    eax,0x20
  32:	e6 21                	out    0x21,al
  34:	b8 28 00 00 00       	mov    eax,0x28
  39:	e6 a1                	out    0xa1,al
  3b:	31 c0                	xor    eax,eax
  3d:	e6 80                	out    0x80,al
  3f:	b8 04 00 00 00       	mov    eax,0x4
  44:	e6 21                	out    0x21,al
  46:	b8 02 00 00 00       	mov    eax,0x2
  4b:	e6 a1                	out    0xa1,al
  4d:	31 c0                	xor    eax,eax
  4f:	e6 80                	out    0x80,al
  51:	b8 01 00 00 00       	mov    eax,0x1
  56:	e6 21                	out    0x21,al
  58:	e6 a1                	out    0xa1,al
  5a:	31 c0                	xor    eax,eax
  5c:	e6 80                	out    0x80,al
  5e:	b8 fb ff ff ff       	mov    eax,0xfffffffb
  63:	e6 21                	out    0x21,al
  65:	b8 ff ff ff ff       	mov    eax,0xffffffff
  6a:	e6 a1                	out    0xa1,al
  6c:	c3                   	ret
  6d:	8d 76 00             	lea    esi,[esi+0x0]

00000070 <pic_send_eoi>:
  70:	80 7c 24 04 07       	cmp    BYTE PTR [esp+0x4],0x7
  75:	76 07                	jbe    7e <pic_send_eoi+0xe>
  77:	b8 20 00 00 00       	mov    eax,0x20
  7c:	e6 a0                	out    0xa0,al
  7e:	b8 20 00 00 00       	mov    eax,0x20
  83:	e6 20                	out    0x20,al
  85:	c3                   	ret
  86:	66 90                	xchg   ax,ax
  88:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  8f:	00 

00000090 <irq_clear_mask>:
  90:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  94:	ba 21 00 00 00       	mov    edx,0x21
  99:	3c 08                	cmp    al,0x8
  9b:	8d 48 f8             	lea    ecx,[eax-0x8]
  9e:	0f 42 c8             	cmovb  ecx,eax
  a1:	b8 a1 00 00 00       	mov    eax,0xa1
  a6:	0f 43 d0             	cmovae edx,eax
  a9:	ec                   	in     al,dx
  aa:	0f b3 c8             	btr    eax,ecx
  ad:	ee                   	out    dx,al
  ae:	c3                   	ret
  af:	90                   	nop

000000b0 <irq_set_mask>:
  b0:	53                   	push   ebx
  b1:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  b5:	ba 21 00 00 00       	mov    edx,0x21
  ba:	80 f9 08             	cmp    cl,0x8
  bd:	8d 41 f8             	lea    eax,[ecx-0x8]
  c0:	0f 43 c8             	cmovae ecx,eax
  c3:	b8 a1 00 00 00       	mov    eax,0xa1
  c8:	0f 43 d0             	cmovae edx,eax
  cb:	ec                   	in     al,dx
  cc:	bb 01 00 00 00       	mov    ebx,0x1
  d1:	d3 e3                	shl    ebx,cl
  d3:	09 d8                	or     eax,ebx
  d5:	ee                   	out    dx,al
  d6:	5b                   	pop    ebx
  d7:	c3                   	ret
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 

000000e0 <isr_handler>:
  e0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  e4:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  e7:	8b 04 85 00 00 00 00 	mov    eax,DWORD PTR [eax*4+0x0]
  ee:	85 c0                	test   eax,eax
  f0:	74 0e                	je     100 <isr_handler+0x20>
  f2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  f6:	ff e0                	jmp    eax
  f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  ff:	00 
 100:	c3                   	ret
 101:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 108:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 10f:	00 

00000110 <irq_handler>:
 110:	53                   	push   ebx
 111:	83 ec 08             	sub    esp,0x8
 114:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
 118:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
 11b:	8b 14 85 00 00 00 00 	mov    edx,DWORD PTR [eax*4+0x0]
 122:	85 d2                	test   edx,edx
 124:	74 0c                	je     132 <irq_handler+0x22>
 126:	83 ec 0c             	sub    esp,0xc
 129:	53                   	push   ebx
 12a:	ff d2                	call   edx
 12c:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
 12f:	83 c4 10             	add    esp,0x10
 132:	83 e8 20             	sub    eax,0x20
 135:	3c 07                	cmp    al,0x7
 137:	76 07                	jbe    140 <irq_handler+0x30>
 139:	b8 20 00 00 00       	mov    eax,0x20
 13e:	e6 a0                	out    0xa0,al
 140:	b8 20 00 00 00       	mov    eax,0x20
 145:	e6 20                	out    0x20,al
 147:	83 c4 08             	add    esp,0x8
 14a:	5b                   	pop    ebx
 14b:	c3                   	ret

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
  17:	00 01                	add    BYTE PTR [ecx],al
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
  24:	11 00                	adc    DWORD PTR [eax],eax
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 00                	add    BYTE PTR [eax],al
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	10 00                	adc    BYTE PTR [eax],al
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	20 00                	and    BYTE PTR [eax],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	4d                   	dec    ebp
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	00 00                	add    BYTE PTR [eax],al
  3d:	00 00                	add    BYTE PTR [eax],al
  3f:	00 10                	add    BYTE PTR [eax],dl
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
  47:	00 70 00             	add    BYTE PTR [eax+0x0],dh
  4a:	00 00                	add    BYTE PTR [eax],al
  4c:	16                   	push   ss
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 00                	add    BYTE PTR [eax],al
  51:	00 00                	add    BYTE PTR [eax],al
  53:	00 10                	add    BYTE PTR [eax],dl
  55:	00 00                	add    BYTE PTR [eax],al
  57:	00 58 00             	add    BYTE PTR [eax+0x0],bl
  5a:	00 00                	add    BYTE PTR [eax],al
  5c:	90                   	nop
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 1f                	add    BYTE PTR [edi],bl
  61:	00 00                	add    BYTE PTR [eax],al
  63:	00 00                	add    BYTE PTR [eax],al
  65:	00 00                	add    BYTE PTR [eax],al
  67:	00 18                	add    BYTE PTR [eax],bl
  69:	00 00                	add    BYTE PTR [eax],al
  6b:	00 6c 00 00          	add    BYTE PTR [eax+eax*1+0x0],ch
  6f:	00 b0 00 00 00 28    	add    BYTE PTR [eax+0x28000000],dh
  75:	00 00                	add    BYTE PTR [eax],al
  77:	00 00                	add    BYTE PTR [eax],al
  79:	41                   	inc    ecx
  7a:	0e                   	push   cs
  7b:	08 83 02 66 c3 0e    	or     BYTE PTR [ebx+0xec36602],al
  81:	04 00                	add    al,0x0
  83:	00 10                	add    BYTE PTR [eax],dl
  85:	00 00                	add    BYTE PTR [eax],al
  87:	00 88 00 00 00 e0    	add    BYTE PTR [eax-0x20000000],cl
  8d:	00 00                	add    BYTE PTR [eax],al
  8f:	00 21                	add    BYTE PTR [ecx],ah
  91:	00 00                	add    BYTE PTR [eax],al
  93:	00 00                	add    BYTE PTR [eax],al
  95:	00 00                	add    BYTE PTR [eax],al
  97:	00 28                	add    BYTE PTR [eax],ch
  99:	00 00                	add    BYTE PTR [eax],al
  9b:	00 9c 00 00 00 10 01 	add    BYTE PTR [eax+eax*1+0x1100000],bl
  a2:	00 00                	add    BYTE PTR [eax],al
  a4:	3c 00                	cmp    al,0x0
  a6:	00 00                	add    BYTE PTR [eax],al
  a8:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  ab:	08 83 02 43 0e 10    	or     BYTE PTR [ebx+0x100e4302],al
  b1:	55                   	push   ebp
  b2:	0e                   	push   cs
  b3:	1c 41                	sbb    al,0x41
  b5:	0e                   	push   cs
  b6:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  b9:	10 58 0e             	adc    BYTE PTR [eax+0xe],bl
  bc:	08 41 c3             	or     BYTE PTR [ecx-0x3d],al
  bf:	0e                   	push   cs
  c0:	04 00                	add    al,0x0
	...
