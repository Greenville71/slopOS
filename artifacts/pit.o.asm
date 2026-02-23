
pit.o:     file format elf32-i386


Disassembly of section .text:

00000000 <pit_handler>:
   0:	a1 00 00 00 00       	mov    eax,ds:0x0
   5:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
   b:	83 c0 01             	add    eax,0x1
   e:	83 d2 00             	adc    edx,0x0
  11:	a3 00 00 00 00       	mov    ds:0x0,eax
  16:	89 15 04 00 00 00    	mov    DWORD PTR ds:0x4,edx
  1c:	c3                   	ret
  1d:	8d 76 00             	lea    esi,[esi+0x0]

00000020 <pit_init>:
  20:	83 ec 14             	sub    esp,0x14
  23:	31 d2                	xor    edx,edx
  25:	b8 dc 34 12 00       	mov    eax,0x1234dc
  2a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  2e:	f7 f1                	div    ecx
  30:	89 0d 00 00 00 00    	mov    DWORD PTR ds:0x0,ecx
  36:	89 c1                	mov    ecx,eax
  38:	b8 36 00 00 00       	mov    eax,0x36
  3d:	e6 43                	out    0x43,al
  3f:	89 c8                	mov    eax,ecx
  41:	e6 40                	out    0x40,al
  43:	89 c8                	mov    eax,ecx
  45:	c1 e8 08             	shr    eax,0x8
  48:	e6 40                	out    0x40,al
  4a:	68 00 00 00 00       	push   0x0
  4f:	6a 20                	push   0x20
  51:	e8 fc ff ff ff       	call   52 <pit_init+0x32>
  56:	c7 44 24 20 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
  5d:	00 
  5e:	83 c4 1c             	add    esp,0x1c
  61:	e9 fc ff ff ff       	jmp    62 <pit_init+0x42>
  66:	66 90                	xchg   ax,ax
  68:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  6f:	00 

00000070 <pit_get_ticks>:
  70:	a1 00 00 00 00       	mov    eax,ds:0x0
  75:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
  7b:	c3                   	ret
  7c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000080 <pit_sleep_ms>:
  80:	56                   	push   esi
  81:	b8 d3 4d 62 10       	mov    eax,0x10624dd3
  86:	8b 0d 00 00 00 00    	mov    ecx,DWORD PTR ds:0x0
  8c:	53                   	push   ebx
  8d:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  91:	0f af 15 00 00 00 00 	imul   edx,DWORD PTR ds:0x0
  98:	8b 1d 04 00 00 00    	mov    ebx,DWORD PTR ds:0x4
  9e:	f7 e2                	mul    edx
  a0:	c1 ea 06             	shr    edx,0x6
  a3:	01 d1                	add    ecx,edx
  a5:	83 d3 00             	adc    ebx,0x0
  a8:	eb 07                	jmp    b1 <pit_sleep_ms+0x31>
  aa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  b0:	f4                   	hlt
  b1:	a1 00 00 00 00       	mov    eax,ds:0x0
  b6:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
  bc:	39 c8                	cmp    eax,ecx
  be:	89 d0                	mov    eax,edx
  c0:	19 d8                	sbb    eax,ebx
  c2:	72 ec                	jb     b0 <pit_sleep_ms+0x30>
  c4:	5b                   	pop    ebx
  c5:	5e                   	pop    esi
  c6:	c3                   	ret

Disassembly of section .data:

00000000 <pit_freq>:
   0:	64 00 00             	add    BYTE PTR fs:[eax],al
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
  24:	1d 00 00 00 00       	sbb    eax,0x0
  29:	00 00                	add    BYTE PTR [eax],al
  2b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	20 00                	and    BYTE PTR [eax],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	46                   	inc    esi
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	00 00                	add    BYTE PTR [eax],al
  3d:	43                   	inc    ebx
  3e:	0e                   	push   cs
  3f:	18 6c 0e 1c          	sbb    BYTE PTR [esi+ecx*1+0x1c],ch
  43:	42                   	inc    edx
  44:	0e                   	push   cs
  45:	20 50 0e             	and    BYTE PTR [eax+0xe],dl
  48:	04 00                	add    al,0x0
  4a:	00 00                	add    BYTE PTR [eax],al
  4c:	10 00                	adc    BYTE PTR [eax],al
  4e:	00 00                	add    BYTE PTR [eax],al
  50:	50                   	push   eax
  51:	00 00                	add    BYTE PTR [eax],al
  53:	00 70 00             	add    BYTE PTR [eax+0x0],dh
  56:	00 00                	add    BYTE PTR [eax],al
  58:	0c 00                	or     al,0x0
  5a:	00 00                	add    BYTE PTR [eax],al
  5c:	00 00                	add    BYTE PTR [eax],al
  5e:	00 00                	add    BYTE PTR [eax],al
  60:	20 00                	and    BYTE PTR [eax],al
  62:	00 00                	add    BYTE PTR [eax],al
  64:	64 00 00             	add    BYTE PTR fs:[eax],al
  67:	00 80 00 00 00 47    	add    BYTE PTR [eax+0x47000000],al
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	41                   	inc    ecx
  72:	0e                   	push   cs
  73:	08 86 02 4c 0e 0c    	or     BYTE PTR [esi+0xc0e4c02],al
  79:	83 03 78             	add    DWORD PTR [ebx],0x78
  7c:	c3                   	ret
  7d:	0e                   	push   cs
  7e:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  81:	0e                   	push   cs
  82:	04 00                	add    al,0x0
