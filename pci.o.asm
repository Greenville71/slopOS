
pci.o:     file format elf32-i386


Disassembly of section .text:

00000000 <pci_find_device>:
   0:	55                   	push   ebp
   1:	bd f8 0c 00 00       	mov    ebp,0xcf8
   6:	57                   	push   edi
   7:	56                   	push   esi
   8:	53                   	push   ebx
   9:	83 ec 0c             	sub    esp,0xc
   c:	0f b7 44 24 20       	movzx  eax,WORD PTR [esp+0x20]
  11:	66 89 44 24 02       	mov    WORD PTR [esp+0x2],ax
  16:	0f b7 44 24 24       	movzx  eax,WORD PTR [esp+0x24]
  1b:	66 89 04 24          	mov    WORD PTR [esp],ax
  1f:	31 c0                	xor    eax,eax
  21:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  25:	89 c6                	mov    esi,eax
  27:	31 d2                	xor    edx,edx
  29:	c1 e6 10             	shl    esi,0x10
  2c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  30:	89 d3                	mov    ebx,edx
  32:	31 c9                	xor    ecx,ecx
  34:	c1 e3 0b             	shl    ebx,0xb
  37:	90                   	nop
  38:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  3f:	00 
  40:	89 c8                	mov    eax,ecx
  42:	89 ea                	mov    edx,ebp
  44:	c1 e0 08             	shl    eax,0x8
  47:	09 f0                	or     eax,esi
  49:	09 d8                	or     eax,ebx
  4b:	0d 00 00 00 80       	or     eax,0x80000000
  50:	ef                   	out    dx,eax
  51:	ba fc 0c 00 00       	mov    edx,0xcfc
  56:	ed                   	in     eax,dx
  57:	66 83 f8 ff          	cmp    ax,0xffff
  5b:	74 12                	je     6f <pci_find_device+0x6f>
  5d:	89 c2                	mov    edx,eax
  5f:	c1 ea 10             	shr    edx,0x10
  62:	66 39 14 24          	cmp    WORD PTR [esp],dx
  66:	75 07                	jne    6f <pci_find_device+0x6f>
  68:	66 39 44 24 02       	cmp    WORD PTR [esp+0x2],ax
  6d:	74 31                	je     a0 <pci_find_device+0xa0>
  6f:	83 c1 01             	add    ecx,0x1
  72:	83 f9 08             	cmp    ecx,0x8
  75:	75 c9                	jne    40 <pci_find_device+0x40>
  77:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  7b:	83 c2 01             	add    edx,0x1
  7e:	83 fa 20             	cmp    edx,0x20
  81:	75 a9                	jne    2c <pci_find_device+0x2c>
  83:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  87:	83 c0 01             	add    eax,0x1
  8a:	3d 00 01 00 00       	cmp    eax,0x100
  8f:	75 90                	jne    21 <pci_find_device+0x21>
  91:	83 c4 0c             	add    esp,0xc
  94:	31 c0                	xor    eax,eax
  96:	5b                   	pop    ebx
  97:	5e                   	pop    esi
  98:	5f                   	pop    edi
  99:	5d                   	pop    ebp
  9a:	c3                   	ret
  9b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  a0:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  a4:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  a8:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  ac:	85 db                	test   ebx,ebx
  ae:	74 02                	je     b2 <pci_find_device+0xb2>
  b0:	88 03                	mov    BYTE PTR [ebx],al
  b2:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  b6:	85 db                	test   ebx,ebx
  b8:	74 06                	je     c0 <pci_find_device+0xc0>
  ba:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  be:	88 10                	mov    BYTE PTR [eax],dl
  c0:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  c4:	85 c0                	test   eax,eax
  c6:	74 06                	je     ce <pci_find_device+0xce>
  c8:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  cc:	88 08                	mov    BYTE PTR [eax],cl
  ce:	83 c4 0c             	add    esp,0xc
  d1:	b8 01 00 00 00       	mov    eax,0x1
  d6:	5b                   	pop    ebx
  d7:	5e                   	pop    esi
  d8:	5f                   	pop    edi
  d9:	5d                   	pop    ebp
  da:	c3                   	ret
  db:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]

000000e0 <pci_read_bar0>:
  e0:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
  e5:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [esp+0xc]
  ea:	c1 e0 10             	shl    eax,0x10
  ed:	c1 e2 08             	shl    edx,0x8
  f0:	09 d0                	or     eax,edx
  f2:	0f b6 54 24 08       	movzx  edx,BYTE PTR [esp+0x8]
  f7:	c1 e2 0b             	shl    edx,0xb
  fa:	09 d0                	or     eax,edx
  fc:	ba f8 0c 00 00       	mov    edx,0xcf8
 101:	0d 10 00 00 80       	or     eax,0x80000010
 106:	ef                   	out    dx,eax
 107:	ba fc 0c 00 00       	mov    edx,0xcfc
 10c:	ed                   	in     eax,dx
 10d:	89 c1                	mov    ecx,eax
 10f:	89 c2                	mov    edx,eax
 111:	83 e1 f0             	and    ecx,0xfffffff0
 114:	83 e2 fc             	and    edx,0xfffffffc
 117:	a8 01                	test   al,0x1
 119:	89 c8                	mov    eax,ecx
 11b:	0f 45 c2             	cmovne eax,edx
 11e:	c3                   	ret
 11f:	90                   	nop

00000120 <pci_read_irq_line>:
 120:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
 125:	0f b6 54 24 0c       	movzx  edx,BYTE PTR [esp+0xc]
 12a:	c1 e0 10             	shl    eax,0x10
 12d:	c1 e2 08             	shl    edx,0x8
 130:	09 d0                	or     eax,edx
 132:	0f b6 54 24 08       	movzx  edx,BYTE PTR [esp+0x8]
 137:	c1 e2 0b             	shl    edx,0xb
 13a:	09 d0                	or     eax,edx
 13c:	ba f8 0c 00 00       	mov    edx,0xcf8
 141:	0d 3c 00 00 80       	or     eax,0x8000003c
 146:	ef                   	out    dx,eax
 147:	ba fc 0c 00 00       	mov    edx,0xcfc
 14c:	ed                   	in     eax,dx
 14d:	c3                   	ret
 14e:	66 90                	xchg   ax,ax

00000150 <pci_enable_bus_master>:
 150:	57                   	push   edi
 151:	ba f8 0c 00 00       	mov    edx,0xcf8
 156:	56                   	push   esi
 157:	53                   	push   ebx
 158:	0f b6 4c 24 10       	movzx  ecx,BYTE PTR [esp+0x10]
 15d:	0f b6 44 24 18       	movzx  eax,BYTE PTR [esp+0x18]
 162:	c1 e1 10             	shl    ecx,0x10
 165:	c1 e0 08             	shl    eax,0x8
 168:	09 c1                	or     ecx,eax
 16a:	0f b6 44 24 14       	movzx  eax,BYTE PTR [esp+0x14]
 16f:	c1 e0 0b             	shl    eax,0xb
 172:	09 c1                	or     ecx,eax
 174:	81 c9 04 00 00 80    	or     ecx,0x80000004
 17a:	89 c8                	mov    eax,ecx
 17c:	ef                   	out    dx,eax
 17d:	ba fc 0c 00 00       	mov    edx,0xcfc
 182:	ed                   	in     eax,dx
 183:	ba f8 0c 00 00       	mov    edx,0xcf8
 188:	89 c3                	mov    ebx,eax
 18a:	89 c8                	mov    eax,ecx
 18c:	ef                   	out    dx,eax
 18d:	89 d8                	mov    eax,ebx
 18f:	ba fc 0c 00 00       	mov    edx,0xcfc
 194:	83 c8 04             	or     eax,0x4
 197:	ef                   	out    dx,eax
 198:	5b                   	pop    ebx
 199:	5e                   	pop    esi
 19a:	5f                   	pop    edi
 19b:	c3                   	ret
 19c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000001a0 <pci_find_pcnet>:
 1a0:	57                   	push   edi
 1a1:	56                   	push   esi
 1a2:	53                   	push   ebx
 1a3:	83 ec 14             	sub    esp,0x14
 1a6:	8d 44 24 13          	lea    eax,[esp+0x13]
 1aa:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
 1ae:	50                   	push   eax
 1af:	8d 44 24 16          	lea    eax,[esp+0x16]
 1b3:	50                   	push   eax
 1b4:	8d 44 24 19          	lea    eax,[esp+0x19]
 1b8:	50                   	push   eax
 1b9:	68 00 20 00 00       	push   0x2000
 1be:	68 22 10 00 00       	push   0x1022
 1c3:	e8 fc ff ff ff       	call   1c4 <pci_find_pcnet+0x24>
 1c8:	83 c4 14             	add    esp,0x14
 1cb:	89 c3                	mov    ebx,eax
 1cd:	85 c0                	test   eax,eax
 1cf:	0f 84 90 00 00 00    	je     265 <pci_find_pcnet+0xc5>
 1d5:	0f b6 4c 24 11       	movzx  ecx,BYTE PTR [esp+0x11]
 1da:	0f b6 44 24 13       	movzx  eax,BYTE PTR [esp+0x13]
 1df:	c1 e1 10             	shl    ecx,0x10
 1e2:	c1 e0 08             	shl    eax,0x8
 1e5:	09 c1                	or     ecx,eax
 1e7:	0f b6 44 24 12       	movzx  eax,BYTE PTR [esp+0x12]
 1ec:	c1 e0 0b             	shl    eax,0xb
 1ef:	09 c1                	or     ecx,eax
 1f1:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 1f5:	85 c0                	test   eax,eax
 1f7:	74 28                	je     221 <pci_find_pcnet+0x81>
 1f9:	89 c8                	mov    eax,ecx
 1fb:	ba f8 0c 00 00       	mov    edx,0xcf8
 200:	0d 10 00 00 80       	or     eax,0x80000010
 205:	ef                   	out    dx,eax
 206:	ba fc 0c 00 00       	mov    edx,0xcfc
 20b:	ed                   	in     eax,dx
 20c:	89 c6                	mov    esi,eax
 20e:	89 c2                	mov    edx,eax
 210:	83 e6 f0             	and    esi,0xfffffff0
 213:	83 e2 fc             	and    edx,0xfffffffc
 216:	a8 01                	test   al,0x1
 218:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 21c:	0f 44 d6             	cmove  edx,esi
 21f:	89 10                	mov    DWORD PTR [eax],edx
 221:	85 ff                	test   edi,edi
 223:	74 15                	je     23a <pci_find_pcnet+0x9a>
 225:	89 c8                	mov    eax,ecx
 227:	ba f8 0c 00 00       	mov    edx,0xcf8
 22c:	0d 3c 00 00 80       	or     eax,0x8000003c
 231:	ef                   	out    dx,eax
 232:	ba fc 0c 00 00       	mov    edx,0xcfc
 237:	ed                   	in     eax,dx
 238:	88 07                	mov    BYTE PTR [edi],al
 23a:	81 c9 04 00 00 80    	or     ecx,0x80000004
 240:	ba f8 0c 00 00       	mov    edx,0xcf8
 245:	89 c8                	mov    eax,ecx
 247:	ef                   	out    dx,eax
 248:	ba fc 0c 00 00       	mov    edx,0xcfc
 24d:	ed                   	in     eax,dx
 24e:	ba f8 0c 00 00       	mov    edx,0xcf8
 253:	89 04 24             	mov    DWORD PTR [esp],eax
 256:	89 c8                	mov    eax,ecx
 258:	ef                   	out    dx,eax
 259:	8b 04 24             	mov    eax,DWORD PTR [esp]
 25c:	ba fc 0c 00 00       	mov    edx,0xcfc
 261:	83 c8 04             	or     eax,0x4
 264:	ef                   	out    dx,eax
 265:	83 c4 14             	add    esp,0x14
 268:	89 d8                	mov    eax,ebx
 26a:	5b                   	pop    ebx
 26b:	5e                   	pop    esi
 26c:	5f                   	pop    edi
 26d:	c3                   	ret

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
  17:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	db 00                	fild   DWORD PTR [eax]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  2b:	08 85 02 46 0e 0c    	or     BYTE PTR [ebp+0xc0e4602],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  3b:	83 05 43 0e 20 02 88 	add    DWORD PTR ds:0x2200e43,0xffffff88
  42:	0a 0e                	or     cl,BYTE PTR [esi]
  44:	14 43                	adc    al,0x43
  46:	c3                   	ret
  47:	0e                   	push   cs
  48:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  4b:	0e                   	push   cs
  4c:	0c 41                	or     al,0x41
  4e:	c7                   	(bad)
  4f:	0e                   	push   cs
  50:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  53:	0e                   	push   cs
  54:	04 46                	add    al,0x46
  56:	0b 71 0e             	or     esi,DWORD PTR [ecx+0xe]
  59:	14 46                	adc    al,0x46
  5b:	c3                   	ret
  5c:	0e                   	push   cs
  5d:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  60:	0e                   	push   cs
  61:	0c 41                	or     al,0x41
  63:	c7                   	(bad)
  64:	0e                   	push   cs
  65:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  68:	0e                   	push   cs
  69:	04 00                	add    al,0x0
  6b:	00 10                	add    BYTE PTR [eax],dl
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 70 00             	add    BYTE PTR [eax+0x0],dh
  72:	00 00                	add    BYTE PTR [eax],al
  74:	e0 00                	loopne 76 <.eh_frame+0x76>
  76:	00 00                	add    BYTE PTR [eax],al
  78:	3f                   	aas
  79:	00 00                	add    BYTE PTR [eax],al
  7b:	00 00                	add    BYTE PTR [eax],al
  7d:	00 00                	add    BYTE PTR [eax],al
  7f:	00 10                	add    BYTE PTR [eax],dl
  81:	00 00                	add    BYTE PTR [eax],al
  83:	00 84 00 00 00 20 01 	add    BYTE PTR [eax+eax*1+0x1200000],al
  8a:	00 00                	add    BYTE PTR [eax],al
  8c:	2e 00 00             	add    BYTE PTR cs:[eax],al
  8f:	00 00                	add    BYTE PTR [eax],al
  91:	00 00                	add    BYTE PTR [eax],al
  93:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
  96:	00 00                	add    BYTE PTR [eax],al
  98:	98                   	cwde
  99:	00 00                	add    BYTE PTR [eax],al
  9b:	00 50 01             	add    BYTE PTR [eax+0x1],dl
  9e:	00 00                	add    BYTE PTR [eax],al
  a0:	4c                   	dec    esp
  a1:	00 00                	add    BYTE PTR [eax],al
  a3:	00 00                	add    BYTE PTR [eax],al
  a5:	41                   	inc    ecx
  a6:	0e                   	push   cs
  a7:	08 87 02 46 0e 0c    	or     BYTE PTR [edi+0xc0e4602],al
  ad:	86 03                	xchg   BYTE PTR [ebx],al
  af:	41                   	inc    ecx
  b0:	0e                   	push   cs
  b1:	10 83 04 02 41 c3    	adc    BYTE PTR [ebx-0x3cbefdfc],al
  b7:	0e                   	push   cs
  b8:	0c 41                	or     al,0x41
  ba:	c6                   	(bad)
  bb:	0e                   	push   cs
  bc:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  bf:	0e                   	push   cs
  c0:	04 00                	add    al,0x0
  c2:	00 00                	add    BYTE PTR [eax],al
  c4:	44                   	inc    esp
  c5:	00 00                	add    BYTE PTR [eax],al
  c7:	00 c8                	add    al,cl
  c9:	00 00                	add    BYTE PTR [eax],al
  cb:	00 a0 01 00 00 ce    	add    BYTE PTR [eax-0x31ffffff],ah
  d1:	00 00                	add    BYTE PTR [eax],al
  d3:	00 00                	add    BYTE PTR [eax],al
  d5:	41                   	inc    ecx
  d6:	0e                   	push   cs
  d7:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  dd:	86 03                	xchg   BYTE PTR [ebx],al
  df:	41                   	inc    ecx
  e0:	0e                   	push   cs
  e1:	10 83 04 43 0e 24    	adc    BYTE PTR [ebx+0x240e4304],al
  e7:	49                   	dec    ecx
  e8:	0e                   	push   cs
  e9:	28 45 0e             	sub    BYTE PTR [ebp+0xe],al
  ec:	2c 45                	sub    al,0x45
  ee:	0e                   	push   cs
  ef:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
  f2:	34 45                	xor    al,0x45
  f4:	0e                   	push   cs
  f5:	38 48 0e             	cmp    BYTE PTR [eax+0xe],cl
  f8:	24 02                	and    al,0x2
  fa:	9d                   	popf
  fb:	0e                   	push   cs
  fc:	10 43 c3             	adc    BYTE PTR [ebx-0x3d],al
  ff:	0e                   	push   cs
 100:	0c 41                	or     al,0x41
 102:	c6                   	(bad)
 103:	0e                   	push   cs
 104:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 107:	0e                   	push   cs
 108:	04 00                	add    al,0x0
	...
