
mouse.o:     file format elf32-i386


Disassembly of section .text:

00000000 <mouse_handler>:
   0:	e4 60                	in     al,0x60
   2:	8b 15 04 00 00 00    	mov    edx,DWORD PTR ds:0x4
   8:	83 fa 01             	cmp    edx,0x1
   b:	74 53                	je     60 <mouse_handler+0x60>
   d:	83 fa 02             	cmp    edx,0x2
  10:	74 1e                	je     30 <mouse_handler+0x30>
  12:	85 d2                	test   edx,edx
  14:	75 40                	jne    56 <mouse_handler+0x56>
  16:	a2 00 00 00 00       	mov    ds:0x0,al
  1b:	a8 08                	test   al,0x8
  1d:	74 37                	je     56 <mouse_handler+0x56>
  1f:	c7 05 04 00 00 00 01 	mov    DWORD PTR ds:0x4,0x1
  26:	00 00 00 
  29:	c3                   	ret
  2a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  30:	0f b6 15 00 00 00 00 	movzx  edx,BYTE PTR ds:0x0
  37:	a2 02 00 00 00       	mov    ds:0x2,al
  3c:	c7 05 04 00 00 00 00 	mov    DWORD PTR ds:0x4,0x0
  43:	00 00 00 
  46:	89 d1                	mov    ecx,edx
  48:	83 e1 07             	and    ecx,0x7
  4b:	88 0d 08 00 00 00    	mov    BYTE PTR ds:0x8,cl
  51:	80 fa 3f             	cmp    dl,0x3f
  54:	76 1a                	jbe    70 <mouse_handler+0x70>
  56:	c3                   	ret
  57:	90                   	nop
  58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  5f:	00 
  60:	a2 01 00 00 00       	mov    ds:0x1,al
  65:	c7 05 04 00 00 00 02 	mov    DWORD PTR ds:0x4,0x2
  6c:	00 00 00 
  6f:	c3                   	ret
  70:	0f b6 0d 01 00 00 00 	movzx  ecx,BYTE PTR ds:0x1
  77:	56                   	push   esi
  78:	0f b6 f0             	movzx  esi,al
  7b:	53                   	push   ebx
  7c:	89 cb                	mov    ebx,ecx
  7e:	81 cb 00 ff ff ff    	or     ebx,0xffffff00
  84:	f6 c2 10             	test   dl,0x10
  87:	0f 45 cb             	cmovne ecx,ebx
  8a:	0d 00 ff ff ff       	or     eax,0xffffff00
  8f:	83 e2 20             	and    edx,0x20
  92:	0f 44 c6             	cmove  eax,esi
  95:	89 c3                	mov    ebx,eax
  97:	a1 0c 00 00 00       	mov    eax,ds:0xc
  9c:	01 c8                	add    eax,ecx
  9e:	a3 0c 00 00 00       	mov    ds:0xc,eax
  a3:	a1 08 00 00 00       	mov    eax,ds:0x8
  a8:	29 d8                	sub    eax,ebx
  aa:	a3 08 00 00 00       	mov    ds:0x8,eax
  af:	a1 0c 00 00 00       	mov    eax,ds:0xc
  b4:	85 c0                	test   eax,eax
  b6:	78 50                	js     108 <mouse_handler+0x108>
  b8:	a1 08 00 00 00       	mov    eax,ds:0x8
  bd:	85 c0                	test   eax,eax
  bf:	78 37                	js     f8 <mouse_handler+0xf8>
  c1:	8b 15 0c 00 00 00    	mov    edx,DWORD PTR ds:0xc
  c7:	a1 04 00 00 00       	mov    eax,ds:0x4
  cc:	39 c2                	cmp    edx,eax
  ce:	7c 08                	jl     d8 <mouse_handler+0xd8>
  d0:	83 e8 01             	sub    eax,0x1
  d3:	a3 0c 00 00 00       	mov    ds:0xc,eax
  d8:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
  de:	a1 00 00 00 00       	mov    eax,ds:0x0
  e3:	39 c2                	cmp    edx,eax
  e5:	7c 08                	jl     ef <mouse_handler+0xef>
  e7:	83 e8 01             	sub    eax,0x1
  ea:	a3 08 00 00 00       	mov    ds:0x8,eax
  ef:	5b                   	pop    ebx
  f0:	5e                   	pop    esi
  f1:	c3                   	ret
  f2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  f8:	c7 05 08 00 00 00 00 	mov    DWORD PTR ds:0x8,0x0
  ff:	00 00 00 
 102:	eb bd                	jmp    c1 <mouse_handler+0xc1>
 104:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 108:	c7 05 0c 00 00 00 00 	mov    DWORD PTR ds:0xc,0x0
 10f:	00 00 00 
 112:	eb a4                	jmp    b8 <mouse_handler+0xb8>
 114:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 118:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 11f:	00 

00000120 <mouse_init>:
 120:	83 ec 0c             	sub    esp,0xc
 123:	ba a0 86 01 00       	mov    edx,0x186a0
 128:	eb 0b                	jmp    135 <mouse_init+0x15>
 12a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 130:	83 ea 01             	sub    edx,0x1
 133:	74 06                	je     13b <mouse_init+0x1b>
 135:	e4 64                	in     al,0x64
 137:	a8 02                	test   al,0x2
 139:	75 f5                	jne    130 <mouse_init+0x10>
 13b:	b8 a8 ff ff ff       	mov    eax,0xffffffa8
 140:	e6 64                	out    0x64,al
 142:	ba a0 86 01 00       	mov    edx,0x186a0
 147:	eb 0c                	jmp    155 <mouse_init+0x35>
 149:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 150:	83 ea 01             	sub    edx,0x1
 153:	74 06                	je     15b <mouse_init+0x3b>
 155:	e4 64                	in     al,0x64
 157:	a8 02                	test   al,0x2
 159:	75 f5                	jne    150 <mouse_init+0x30>
 15b:	b8 20 00 00 00       	mov    eax,0x20
 160:	e6 64                	out    0x64,al
 162:	ba a0 86 01 00       	mov    edx,0x186a0
 167:	eb 0c                	jmp    175 <mouse_init+0x55>
 169:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 170:	83 ea 01             	sub    edx,0x1
 173:	74 06                	je     17b <mouse_init+0x5b>
 175:	e4 64                	in     al,0x64
 177:	a8 01                	test   al,0x1
 179:	74 f5                	je     170 <mouse_init+0x50>
 17b:	e4 60                	in     al,0x60
 17d:	89 c1                	mov    ecx,eax
 17f:	ba a0 86 01 00       	mov    edx,0x186a0
 184:	83 e1 df             	and    ecx,0xffffffdf
 187:	83 c9 02             	or     ecx,0x2
 18a:	eb 09                	jmp    195 <mouse_init+0x75>
 18c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 190:	83 ea 01             	sub    edx,0x1
 193:	74 06                	je     19b <mouse_init+0x7b>
 195:	e4 64                	in     al,0x64
 197:	a8 02                	test   al,0x2
 199:	75 f5                	jne    190 <mouse_init+0x70>
 19b:	b8 60 00 00 00       	mov    eax,0x60
 1a0:	e6 64                	out    0x64,al
 1a2:	ba a0 86 01 00       	mov    edx,0x186a0
 1a7:	eb 0c                	jmp    1b5 <mouse_init+0x95>
 1a9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 1b0:	83 ea 01             	sub    edx,0x1
 1b3:	74 06                	je     1bb <mouse_init+0x9b>
 1b5:	e4 64                	in     al,0x64
 1b7:	a8 02                	test   al,0x2
 1b9:	75 f5                	jne    1b0 <mouse_init+0x90>
 1bb:	89 c8                	mov    eax,ecx
 1bd:	e6 60                	out    0x60,al
 1bf:	ba a0 86 01 00       	mov    edx,0x186a0
 1c4:	eb 0f                	jmp    1d5 <mouse_init+0xb5>
 1c6:	66 90                	xchg   ax,ax
 1c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1cf:	00 
 1d0:	83 ea 01             	sub    edx,0x1
 1d3:	74 06                	je     1db <mouse_init+0xbb>
 1d5:	e4 64                	in     al,0x64
 1d7:	a8 02                	test   al,0x2
 1d9:	75 f5                	jne    1d0 <mouse_init+0xb0>
 1db:	b8 d4 ff ff ff       	mov    eax,0xffffffd4
 1e0:	e6 64                	out    0x64,al
 1e2:	ba a0 86 01 00       	mov    edx,0x186a0
 1e7:	eb 0c                	jmp    1f5 <mouse_init+0xd5>
 1e9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 1f0:	83 ea 01             	sub    edx,0x1
 1f3:	74 06                	je     1fb <mouse_init+0xdb>
 1f5:	e4 64                	in     al,0x64
 1f7:	a8 02                	test   al,0x2
 1f9:	75 f5                	jne    1f0 <mouse_init+0xd0>
 1fb:	b8 f6 ff ff ff       	mov    eax,0xfffffff6
 200:	e6 60                	out    0x60,al
 202:	ba a0 86 01 00       	mov    edx,0x186a0
 207:	eb 0c                	jmp    215 <mouse_init+0xf5>
 209:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 210:	83 ea 01             	sub    edx,0x1
 213:	74 06                	je     21b <mouse_init+0xfb>
 215:	e4 64                	in     al,0x64
 217:	a8 01                	test   al,0x1
 219:	74 f5                	je     210 <mouse_init+0xf0>
 21b:	e4 60                	in     al,0x60
 21d:	ba a0 86 01 00       	mov    edx,0x186a0
 222:	eb 09                	jmp    22d <mouse_init+0x10d>
 224:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 228:	83 ea 01             	sub    edx,0x1
 22b:	74 06                	je     233 <mouse_init+0x113>
 22d:	e4 64                	in     al,0x64
 22f:	a8 02                	test   al,0x2
 231:	75 f5                	jne    228 <mouse_init+0x108>
 233:	b8 d4 ff ff ff       	mov    eax,0xffffffd4
 238:	e6 64                	out    0x64,al
 23a:	ba a0 86 01 00       	mov    edx,0x186a0
 23f:	eb 0c                	jmp    24d <mouse_init+0x12d>
 241:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 248:	83 ea 01             	sub    edx,0x1
 24b:	74 06                	je     253 <mouse_init+0x133>
 24d:	e4 64                	in     al,0x64
 24f:	a8 02                	test   al,0x2
 251:	75 f5                	jne    248 <mouse_init+0x128>
 253:	b8 f4 ff ff ff       	mov    eax,0xfffffff4
 258:	e6 60                	out    0x60,al
 25a:	ba a0 86 01 00       	mov    edx,0x186a0
 25f:	eb 0c                	jmp    26d <mouse_init+0x14d>
 261:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 268:	83 ea 01             	sub    edx,0x1
 26b:	74 06                	je     273 <mouse_init+0x153>
 26d:	e4 64                	in     al,0x64
 26f:	a8 01                	test   al,0x1
 271:	74 f5                	je     268 <mouse_init+0x148>
 273:	e4 60                	in     al,0x60
 275:	83 ec 08             	sub    esp,0x8
 278:	68 00 00 00 00       	push   0x0
 27d:	6a 2c                	push   0x2c
 27f:	e8 fc ff ff ff       	call   280 <mouse_init+0x160>
 284:	c7 04 24 0c 00 00 00 	mov    DWORD PTR [esp],0xc
 28b:	e8 fc ff ff ff       	call   28c <mouse_init+0x16c>
 290:	83 c4 1c             	add    esp,0x1c
 293:	c3                   	ret
 294:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 298:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 29f:	00 

000002a0 <mouse_get_x>:
 2a0:	a1 0c 00 00 00       	mov    eax,ds:0xc
 2a5:	c3                   	ret
 2a6:	66 90                	xchg   ax,ax
 2a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2af:	00 

000002b0 <mouse_get_y>:
 2b0:	a1 08 00 00 00       	mov    eax,ds:0x8
 2b5:	c3                   	ret
 2b6:	66 90                	xchg   ax,ax
 2b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2bf:	00 

000002c0 <mouse_get_button>:
 2c0:	0f b6 05 08 00 00 00 	movzx  eax,BYTE PTR ds:0x8
 2c7:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
 2cb:	0f a3 d0             	bt     eax,edx
 2ce:	0f 92 c0             	setb   al
 2d1:	c3                   	ret
 2d2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 2d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2df:	00 

000002e0 <mouse_set_bounds>:
 2e0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 2e4:	a3 04 00 00 00       	mov    ds:0x4,eax
 2e9:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 2ed:	a3 00 00 00 00       	mov    ds:0x0,eax
 2f2:	c3                   	ret

Disassembly of section .data:

00000000 <max_y>:
   0:	00 03                	add    BYTE PTR [ebx],al
	...

00000004 <max_x>:
   4:	00 04 00             	add    BYTE PTR [eax+eax*1],al
	...

00000008 <my>:
   8:	80 01 00             	add    BYTE PTR [ecx],0x0
	...

0000000c <mx>:
   c:	00 02                	add    BYTE PTR [edx],al
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
  17:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	14 01                	adc    al,0x1
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 02                	add    BYTE PTR [edx],al
  2a:	78 0e                	js     3a <.eh_frame+0x3a>
  2c:	08 86 02 44 0e 0c    	or     BYTE PTR [esi+0xc0e4402],al
  32:	83 03 02             	add    DWORD PTR [ebx],0x2
  35:	74 0a                	je     41 <.eh_frame+0x41>
  37:	c3                   	ret
  38:	0e                   	push   cs
  39:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  3c:	0e                   	push   cs
  3d:	04 47                	add    al,0x47
  3f:	0b 20                	or     esp,DWORD PTR [eax]
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
  47:	00 20                	add    BYTE PTR [eax],ah
  49:	01 00                	add    DWORD PTR [eax],eax
  4b:	00 74 01 00          	add    BYTE PTR [ecx+eax*1+0x0],dh
  4f:	00 00                	add    BYTE PTR [eax],al
  51:	43                   	inc    ebx
  52:	0e                   	push   cs
  53:	10 03                	adc    BYTE PTR [ebx],al
  55:	55                   	push   ebp
  56:	01 0e                	add    DWORD PTR [esi],ecx
  58:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  5b:	1c 42                	sbb    al,0x42
  5d:	0e                   	push   cs
  5e:	20 54 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],dl
  62:	00 00                	add    BYTE PTR [eax],al
  64:	10 00                	adc    BYTE PTR [eax],al
  66:	00 00                	add    BYTE PTR [eax],al
  68:	68 00 00 00 a0       	push   0xa0000000
  6d:	02 00                	add    al,BYTE PTR [eax]
  6f:	00 06                	add    BYTE PTR [esi],al
  71:	00 00                	add    BYTE PTR [eax],al
  73:	00 00                	add    BYTE PTR [eax],al
  75:	00 00                	add    BYTE PTR [eax],al
  77:	00 10                	add    BYTE PTR [eax],dl
  79:	00 00                	add    BYTE PTR [eax],al
  7b:	00 7c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bh
  7f:	00 b0 02 00 00 06    	add    BYTE PTR [eax+0x6000002],dh
  85:	00 00                	add    BYTE PTR [eax],al
  87:	00 00                	add    BYTE PTR [eax],al
  89:	00 00                	add    BYTE PTR [eax],al
  8b:	00 10                	add    BYTE PTR [eax],dl
  8d:	00 00                	add    BYTE PTR [eax],al
  8f:	00 90 00 00 00 c0    	add    BYTE PTR [eax-0x40000000],dl
  95:	02 00                	add    al,BYTE PTR [eax]
  97:	00 12                	add    BYTE PTR [edx],dl
  99:	00 00                	add    BYTE PTR [eax],al
  9b:	00 00                	add    BYTE PTR [eax],al
  9d:	00 00                	add    BYTE PTR [eax],al
  9f:	00 10                	add    BYTE PTR [eax],dl
  a1:	00 00                	add    BYTE PTR [eax],al
  a3:	00 a4 00 00 00 e0 02 	add    BYTE PTR [eax+eax*1+0x2e00000],ah
  aa:	00 00                	add    BYTE PTR [eax],al
  ac:	13 00                	adc    eax,DWORD PTR [eax]
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	00 00                	add    BYTE PTR [eax],al
	...
