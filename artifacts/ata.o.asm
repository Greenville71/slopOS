
ata.o:     file format elf32-i386


Disassembly of section .text:

00000000 <ata_init>:
   0:	53                   	push   ebx
   1:	ba f6 03 00 00       	mov    edx,0x3f6
   6:	31 c0                	xor    eax,eax
   8:	ee                   	out    dx,al
   9:	ba f7 01 00 00       	mov    edx,0x1f7
   e:	ec                   	in     al,dx
   f:	ec                   	in     al,dx
  10:	ec                   	in     al,dx
  11:	ec                   	in     al,dx
  12:	b8 a0 ff ff ff       	mov    eax,0xffffffa0
  17:	ba f6 01 00 00       	mov    edx,0x1f6
  1c:	ee                   	out    dx,al
  1d:	ba f7 01 00 00       	mov    edx,0x1f7
  22:	ec                   	in     al,dx
  23:	ec                   	in     al,dx
  24:	ec                   	in     al,dx
  25:	ec                   	in     al,dx
  26:	ba f2 01 00 00       	mov    edx,0x1f2
  2b:	31 c0                	xor    eax,eax
  2d:	ee                   	out    dx,al
  2e:	ba f3 01 00 00       	mov    edx,0x1f3
  33:	ee                   	out    dx,al
  34:	ba f4 01 00 00       	mov    edx,0x1f4
  39:	ee                   	out    dx,al
  3a:	ba f5 01 00 00       	mov    edx,0x1f5
  3f:	ee                   	out    dx,al
  40:	b8 ec ff ff ff       	mov    eax,0xffffffec
  45:	ba f7 01 00 00       	mov    edx,0x1f7
  4a:	ee                   	out    dx,al
  4b:	ec                   	in     al,dx
  4c:	ec                   	in     al,dx
  4d:	ec                   	in     al,dx
  4e:	ec                   	in     al,dx
  4f:	ec                   	in     al,dx
  50:	84 c0                	test   al,al
  52:	74 1a                	je     6e <ata_init+0x6e>
  54:	b9 10 27 00 00       	mov    ecx,0x2710
  59:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  60:	ec                   	in     al,dx
  61:	84 c0                	test   al,al
  63:	79 18                	jns    7d <ata_init+0x7d>
  65:	31 c0                	xor    eax,eax
  67:	e6 80                	out    0x80,al
  69:	83 e9 01             	sub    ecx,0x1
  6c:	75 f2                	jne    60 <ata_init+0x60>
  6e:	31 d2                	xor    edx,edx
  70:	b8 ff ff ff ff       	mov    eax,0xffffffff
  75:	5b                   	pop    ebx
  76:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  7c:	c3                   	ret
  7d:	b9 10 27 00 00       	mov    ecx,0x2710
  82:	ba f7 01 00 00       	mov    edx,0x1f7
  87:	90                   	nop
  88:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  8f:	00 
  90:	ec                   	in     al,dx
  91:	a8 01                	test   al,0x1
  93:	75 d9                	jne    6e <ata_init+0x6e>
  95:	83 e0 08             	and    eax,0x8
  98:	75 09                	jne    a3 <ata_init+0xa3>
  9a:	e6 80                	out    0x80,al
  9c:	83 e9 01             	sub    ecx,0x1
  9f:	75 ef                	jne    90 <ata_init+0x90>
  a1:	eb cb                	jmp    6e <ata_init+0x6e>
  a3:	b9 00 01 00 00       	mov    ecx,0x100
  a8:	ba f0 01 00 00       	mov    edx,0x1f0
  ad:	8d 76 00             	lea    esi,[esi+0x0]
  b0:	66 ed                	in     ax,dx
  b2:	66 ed                	in     ax,dx
  b4:	83 e9 02             	sub    ecx,0x2
  b7:	75 f7                	jne    b0 <ata_init+0xb0>
  b9:	ba 01 00 00 00       	mov    edx,0x1
  be:	31 c0                	xor    eax,eax
  c0:	5b                   	pop    ebx
  c1:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  c7:	c3                   	ret
  c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  cf:	00 

000000d0 <ata_ready>:
  d0:	a1 00 00 00 00       	mov    eax,ds:0x0
  d5:	c3                   	ret
  d6:	66 90                	xchg   ax,ax
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 

000000e0 <ata_read_sectors>:
  e0:	55                   	push   ebp
  e1:	57                   	push   edi
  e2:	56                   	push   esi
  e3:	53                   	push   ebx
  e4:	83 ec 04             	sub    esp,0x4
  e7:	8b 15 00 00 00 00    	mov    edx,DWORD PTR ds:0x0
  ed:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  f1:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  f5:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  f9:	85 d2                	test   edx,edx
  fb:	74 43                	je     140 <ata_read_sectors+0x60>
  fd:	85 c9                	test   ecx,ecx
  ff:	74 3f                	je     140 <ata_read_sectors+0x60>
 101:	8d 7c 05 00          	lea    edi,[ebp+eax*1+0x0]
 105:	81 c1 00 02 00 00    	add    ecx,0x200
 10b:	89 3c 24             	mov    DWORD PTR [esp],edi
 10e:	85 c0                	test   eax,eax
 110:	0f 84 08 01 00 00    	je     21e <ata_read_sectors+0x13e>
 116:	66 90                	xchg   ax,ax
 118:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 11f:	00 
 120:	bb 10 27 00 00       	mov    ebx,0x2710
 125:	bf f7 01 00 00       	mov    edi,0x1f7
 12a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 130:	89 fa                	mov    edx,edi
 132:	ec                   	in     al,dx
 133:	84 c0                	test   al,al
 135:	79 16                	jns    14d <ata_read_sectors+0x6d>
 137:	31 c0                	xor    eax,eax
 139:	e6 80                	out    0x80,al
 13b:	83 eb 01             	sub    ebx,0x1
 13e:	75 f0                	jne    130 <ata_read_sectors+0x50>
 140:	83 c4 04             	add    esp,0x4
 143:	b8 ff ff ff ff       	mov    eax,0xffffffff
 148:	5b                   	pop    ebx
 149:	5e                   	pop    esi
 14a:	5f                   	pop    edi
 14b:	5d                   	pop    ebp
 14c:	c3                   	ret
 14d:	ba f6 03 00 00       	mov    edx,0x3f6
 152:	31 c0                	xor    eax,eax
 154:	ee                   	out    dx,al
 155:	89 fa                	mov    edx,edi
 157:	ec                   	in     al,dx
 158:	ec                   	in     al,dx
 159:	ec                   	in     al,dx
 15a:	ec                   	in     al,dx
 15b:	89 e8                	mov    eax,ebp
 15d:	ba f6 01 00 00       	mov    edx,0x1f6
 162:	c1 e8 18             	shr    eax,0x18
 165:	83 e0 0f             	and    eax,0xf
 168:	83 c8 e0             	or     eax,0xffffffe0
 16b:	ee                   	out    dx,al
 16c:	89 e8                	mov    eax,ebp
 16e:	ba f5 01 00 00       	mov    edx,0x1f5
 173:	c1 e8 10             	shr    eax,0x10
 176:	ee                   	out    dx,al
 177:	89 e8                	mov    eax,ebp
 179:	ba f4 01 00 00       	mov    edx,0x1f4
 17e:	c1 e8 08             	shr    eax,0x8
 181:	ee                   	out    dx,al
 182:	ba f3 01 00 00       	mov    edx,0x1f3
 187:	89 e8                	mov    eax,ebp
 189:	ee                   	out    dx,al
 18a:	b8 01 00 00 00       	mov    eax,0x1
 18f:	ba f2 01 00 00       	mov    edx,0x1f2
 194:	ee                   	out    dx,al
 195:	b8 20 00 00 00       	mov    eax,0x20
 19a:	89 fa                	mov    edx,edi
 19c:	ee                   	out    dx,al
 19d:	bb 10 27 00 00       	mov    ebx,0x2710
 1a2:	ba f7 01 00 00       	mov    edx,0x1f7
 1a7:	90                   	nop
 1a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1af:	00 
 1b0:	ec                   	in     al,dx
 1b1:	84 c0                	test   al,al
 1b3:	79 0b                	jns    1c0 <ata_read_sectors+0xe0>
 1b5:	31 c0                	xor    eax,eax
 1b7:	e6 80                	out    0x80,al
 1b9:	83 eb 01             	sub    ebx,0x1
 1bc:	75 f2                	jne    1b0 <ata_read_sectors+0xd0>
 1be:	eb 80                	jmp    140 <ata_read_sectors+0x60>
 1c0:	bb 10 27 00 00       	mov    ebx,0x2710
 1c5:	ba f7 01 00 00       	mov    edx,0x1f7
 1ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 1d0:	ec                   	in     al,dx
 1d1:	a8 01                	test   al,0x1
 1d3:	0f 85 67 ff ff ff    	jne    140 <ata_read_sectors+0x60>
 1d9:	83 e0 08             	and    eax,0x8
 1dc:	75 0c                	jne    1ea <ata_read_sectors+0x10a>
 1de:	e6 80                	out    0x80,al
 1e0:	83 eb 01             	sub    ebx,0x1
 1e3:	75 eb                	jne    1d0 <ata_read_sectors+0xf0>
 1e5:	e9 56 ff ff ff       	jmp    140 <ata_read_sectors+0x60>
 1ea:	8d 99 00 fe ff ff    	lea    ebx,[ecx-0x200]
 1f0:	ba f0 01 00 00       	mov    edx,0x1f0
 1f5:	8d 76 00             	lea    esi,[esi+0x0]
 1f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1ff:	00 
 200:	66 ed                	in     ax,dx
 202:	66 89 03             	mov    WORD PTR [ebx],ax
 205:	83 c3 02             	add    ebx,0x2
 208:	39 d9                	cmp    ecx,ebx
 20a:	75 f4                	jne    200 <ata_read_sectors+0x120>
 20c:	83 c5 01             	add    ebp,0x1
 20f:	81 c1 00 02 00 00    	add    ecx,0x200
 215:	3b 2c 24             	cmp    ebp,DWORD PTR [esp]
 218:	0f 85 02 ff ff ff    	jne    120 <ata_read_sectors+0x40>
 21e:	83 c4 04             	add    esp,0x4
 221:	31 c0                	xor    eax,eax
 223:	5b                   	pop    ebx
 224:	5e                   	pop    esi
 225:	5f                   	pop    edi
 226:	5d                   	pop    ebp
 227:	c3                   	ret
 228:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 22f:	00 

00000230 <ata_write_sectors>:
 230:	55                   	push   ebp
 231:	57                   	push   edi
 232:	56                   	push   esi
 233:	53                   	push   ebx
 234:	83 ec 04             	sub    esp,0x4
 237:	8b 15 00 00 00 00    	mov    edx,DWORD PTR ds:0x0
 23d:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
 241:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 245:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
 249:	85 d2                	test   edx,edx
 24b:	74 46                	je     293 <ata_write_sectors+0x63>
 24d:	85 c9                	test   ecx,ecx
 24f:	74 42                	je     293 <ata_write_sectors+0x63>
 251:	85 c0                	test   eax,eax
 253:	0f 84 0c 01 00 00    	je     365 <ata_write_sectors+0x135>
 259:	01 e8                	add    eax,ebp
 25b:	81 c1 00 02 00 00    	add    ecx,0x200
 261:	89 04 24             	mov    DWORD PTR [esp],eax
 264:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 268:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 26f:	00 
 270:	bb 10 27 00 00       	mov    ebx,0x2710
 275:	8d 76 00             	lea    esi,[esi+0x0]
 278:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 27f:	00 
 280:	ba f7 01 00 00       	mov    edx,0x1f7
 285:	ec                   	in     al,dx
 286:	84 c0                	test   al,al
 288:	79 16                	jns    2a0 <ata_write_sectors+0x70>
 28a:	31 c0                	xor    eax,eax
 28c:	e6 80                	out    0x80,al
 28e:	83 eb 01             	sub    ebx,0x1
 291:	75 ed                	jne    280 <ata_write_sectors+0x50>
 293:	83 c4 04             	add    esp,0x4
 296:	b8 ff ff ff ff       	mov    eax,0xffffffff
 29b:	5b                   	pop    ebx
 29c:	5e                   	pop    esi
 29d:	5f                   	pop    edi
 29e:	5d                   	pop    ebp
 29f:	c3                   	ret
 2a0:	ba f6 03 00 00       	mov    edx,0x3f6
 2a5:	31 c0                	xor    eax,eax
 2a7:	ee                   	out    dx,al
 2a8:	ba f7 01 00 00       	mov    edx,0x1f7
 2ad:	ec                   	in     al,dx
 2ae:	ec                   	in     al,dx
 2af:	ec                   	in     al,dx
 2b0:	ec                   	in     al,dx
 2b1:	89 e8                	mov    eax,ebp
 2b3:	ba f6 01 00 00       	mov    edx,0x1f6
 2b8:	c1 e8 18             	shr    eax,0x18
 2bb:	83 e0 0f             	and    eax,0xf
 2be:	83 c8 e0             	or     eax,0xffffffe0
 2c1:	ee                   	out    dx,al
 2c2:	89 e8                	mov    eax,ebp
 2c4:	ba f5 01 00 00       	mov    edx,0x1f5
 2c9:	c1 e8 10             	shr    eax,0x10
 2cc:	ee                   	out    dx,al
 2cd:	89 e8                	mov    eax,ebp
 2cf:	ba f4 01 00 00       	mov    edx,0x1f4
 2d4:	c1 e8 08             	shr    eax,0x8
 2d7:	ee                   	out    dx,al
 2d8:	ba f3 01 00 00       	mov    edx,0x1f3
 2dd:	89 e8                	mov    eax,ebp
 2df:	ee                   	out    dx,al
 2e0:	b8 01 00 00 00       	mov    eax,0x1
 2e5:	ba f2 01 00 00       	mov    edx,0x1f2
 2ea:	ee                   	out    dx,al
 2eb:	b8 30 00 00 00       	mov    eax,0x30
 2f0:	ba f7 01 00 00       	mov    edx,0x1f7
 2f5:	ee                   	out    dx,al
 2f6:	bb 10 27 00 00       	mov    ebx,0x2710
 2fb:	ba f7 01 00 00       	mov    edx,0x1f7
 300:	ec                   	in     al,dx
 301:	a8 01                	test   al,0x1
 303:	75 8e                	jne    293 <ata_write_sectors+0x63>
 305:	83 e0 08             	and    eax,0x8
 308:	75 09                	jne    313 <ata_write_sectors+0xe3>
 30a:	e6 80                	out    0x80,al
 30c:	83 eb 01             	sub    ebx,0x1
 30f:	75 ef                	jne    300 <ata_write_sectors+0xd0>
 311:	eb 80                	jmp    293 <ata_write_sectors+0x63>
 313:	8d 99 00 fe ff ff    	lea    ebx,[ecx-0x200]
 319:	ba f0 01 00 00       	mov    edx,0x1f0
 31e:	66 90                	xchg   ax,ax
 320:	0f b7 03             	movzx  eax,WORD PTR [ebx]
 323:	66 ef                	out    dx,ax
 325:	83 c3 02             	add    ebx,0x2
 328:	39 d9                	cmp    ecx,ebx
 32a:	75 f4                	jne    320 <ata_write_sectors+0xf0>
 32c:	bb 10 27 00 00       	mov    ebx,0x2710
 331:	ba f7 01 00 00       	mov    edx,0x1f7
 336:	66 90                	xchg   ax,ax
 338:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 33f:	00 
 340:	ec                   	in     al,dx
 341:	84 c0                	test   al,al
 343:	79 0e                	jns    353 <ata_write_sectors+0x123>
 345:	31 c0                	xor    eax,eax
 347:	e6 80                	out    0x80,al
 349:	83 eb 01             	sub    ebx,0x1
 34c:	75 f2                	jne    340 <ata_write_sectors+0x110>
 34e:	e9 40 ff ff ff       	jmp    293 <ata_write_sectors+0x63>
 353:	83 c5 01             	add    ebp,0x1
 356:	81 c1 00 02 00 00    	add    ecx,0x200
 35c:	3b 2c 24             	cmp    ebp,DWORD PTR [esp]
 35f:	0f 85 0b ff ff ff    	jne    270 <ata_write_sectors+0x40>
 365:	83 c4 04             	add    esp,0x4
 368:	31 c0                	xor    eax,eax
 36a:	5b                   	pop    ebx
 36b:	5e                   	pop    esi
 36c:	5f                   	pop    edi
 36d:	5d                   	pop    ebp
 36e:	c3                   	ret

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
  17:	00 20                	add    BYTE PTR [eax],ah
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	c8 00 00 00          	enter  0x0,0x0
  28:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  2b:	08 83 02 02 75 0a    	or     BYTE PTR [ebx+0xa750202],al
  31:	c3                   	ret
  32:	0e                   	push   cs
  33:	04 47                	add    al,0x47
  35:	0b 02                	or     eax,DWORD PTR [edx]
  37:	44                   	inc    esp
  38:	c3                   	ret
  39:	0e                   	push   cs
  3a:	04 00                	add    al,0x0
  3c:	10 00                	adc    BYTE PTR [eax],al
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	40                   	inc    eax
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 d0                	add    al,dl
  45:	00 00                	add    BYTE PTR [eax],al
  47:	00 06                	add    BYTE PTR [esi],al
  49:	00 00                	add    BYTE PTR [eax],al
  4b:	00 00                	add    BYTE PTR [eax],al
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  52:	00 00                	add    BYTE PTR [eax],al
  54:	54                   	push   esp
  55:	00 00                	add    BYTE PTR [eax],al
  57:	00 e0                	add    al,ah
  59:	00 00                	add    BYTE PTR [eax],al
  5b:	00 48 01             	add    BYTE PTR [eax+0x1],cl
  5e:	00 00                	add    BYTE PTR [eax],al
  60:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  63:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  69:	87 03                	xchg   DWORD PTR [ebx],eax
  6b:	41                   	inc    ecx
  6c:	0e                   	push   cs
  6d:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  73:	83 05 43 0e 18 02 5c 	add    DWORD PTR ds:0x2180e43,0x5c
  7a:	0a 0e                	or     cl,BYTE PTR [esi]
  7c:	14 46                	adc    al,0x46
  7e:	c3                   	ret
  7f:	0e                   	push   cs
  80:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  83:	0e                   	push   cs
  84:	0c 41                	or     al,0x41
  86:	c7                   	(bad)
  87:	0e                   	push   cs
  88:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  8b:	0e                   	push   cs
  8c:	04 41                	add    al,0x41
  8e:	0b 02                	or     eax,DWORD PTR [edx]
  90:	d4 0e                	aam    0xe
  92:	14 43                	adc    al,0x43
  94:	c3                   	ret
  95:	0e                   	push   cs
  96:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  99:	0e                   	push   cs
  9a:	0c 41                	or     al,0x41
  9c:	c7                   	(bad)
  9d:	0e                   	push   cs
  9e:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  a1:	0e                   	push   cs
  a2:	04 00                	add    al,0x0
  a4:	50                   	push   eax
  a5:	00 00                	add    BYTE PTR [eax],al
  a7:	00 a8 00 00 00 30    	add    BYTE PTR [eax+0x30000000],ch
  ad:	02 00                	add    al,BYTE PTR [eax]
  af:	00 3f                	add    BYTE PTR [edi],bh
  b1:	01 00                	add    DWORD PTR [eax],eax
  b3:	00 00                	add    BYTE PTR [eax],al
  b5:	41                   	inc    ecx
  b6:	0e                   	push   cs
  b7:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  bd:	87 03                	xchg   DWORD PTR [ebx],eax
  bf:	41                   	inc    ecx
  c0:	0e                   	push   cs
  c1:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  c7:	83 05 43 0e 18 02 5f 	add    DWORD PTR ds:0x2180e43,0x5f
  ce:	0a 0e                	or     cl,BYTE PTR [esi]
  d0:	14 46                	adc    al,0x46
  d2:	c3                   	ret
  d3:	0e                   	push   cs
  d4:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  d7:	0e                   	push   cs
  d8:	0c 41                	or     al,0x41
  da:	c7                   	(bad)
  db:	0e                   	push   cs
  dc:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  df:	0e                   	push   cs
  e0:	04 41                	add    al,0x41
  e2:	0b 02                	or     eax,DWORD PTR [edx]
  e4:	c8 0e 14 43          	enter  0x140e,0x43
  e8:	c3                   	ret
  e9:	0e                   	push   cs
  ea:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  ed:	0e                   	push   cs
  ee:	0c 41                	or     al,0x41
  f0:	c7                   	(bad)
  f1:	0e                   	push   cs
  f2:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  f5:	0e                   	push   cs
  f6:	04 00                	add    al,0x0
