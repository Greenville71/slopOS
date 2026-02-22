
font.o:     file format elf32-i386


Disassembly of section .rodata:

00000000 <font_8x16>:
	...
  10:	00 00                	add    BYTE PTR [eax],al
  12:	18 3c 3c             	sbb    BYTE PTR [esp+edi*1],bh
  15:	3c 18                	cmp    al,0x18
  17:	18 18                	sbb    BYTE PTR [eax],bl
  19:	00 18                	add    BYTE PTR [eax],bl
  1b:	18 00                	sbb    BYTE PTR [eax],al
  1d:	00 00                	add    BYTE PTR [eax],al
  1f:	00 00                	add    BYTE PTR [eax],al
  21:	66 66 66 24 00       	data16 data16 data16 and al,0x0
	...
  32:	00 6c 6c fe          	add    BYTE PTR [esp+ebp*2-0x2],ch
  36:	6c                   	ins    BYTE PTR es:[edi],dx
  37:	6c                   	ins    BYTE PTR es:[edi],dx
  38:	6c                   	ins    BYTE PTR es:[edi],dx
  39:	fe                   	(bad)
  3a:	6c                   	ins    BYTE PTR es:[edi],dx
  3b:	6c                   	ins    BYTE PTR es:[edi],dx
  3c:	00 00                	add    BYTE PTR [eax],al
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	18 18                	sbb    BYTE PTR [eax],bl
  42:	7c c6                	jl     a <font_8x16+0xa>
  44:	c2 c0 7c             	ret    0x7cc0
  47:	06                   	push   es
  48:	06                   	push   es
  49:	86 c6                	xchg   dh,al
  4b:	7c 18                	jl     65 <font_8x16+0x65>
  4d:	18 00                	sbb    BYTE PTR [eax],al
  4f:	00 00                	add    BYTE PTR [eax],al
  51:	00 00                	add    BYTE PTR [eax],al
  53:	00 c2                	add    dl,al
  55:	c6                   	(bad)
  56:	0c 18                	or     al,0x18
  58:	30 60 c6             	xor    BYTE PTR [eax-0x3a],ah
  5b:	86 00                	xchg   BYTE PTR [eax],al
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 00                	add    BYTE PTR [eax],al
  61:	00 38                	add    BYTE PTR [eax],bh
  63:	6c                   	ins    BYTE PTR es:[edi],dx
  64:	6c                   	ins    BYTE PTR es:[edi],dx
  65:	38 76 dc             	cmp    BYTE PTR [esi-0x24],dh
  68:	cc                   	int3
  69:	cc                   	int3
  6a:	cc                   	int3
  6b:	76 00                	jbe    6d <font_8x16+0x6d>
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	30 30                	xor    BYTE PTR [eax],dh
  73:	30 60 00             	xor    BYTE PTR [eax+0x0],ah
	...
  82:	0c 18                	or     al,0x18
  84:	30 30                	xor    BYTE PTR [eax],dh
  86:	30 30                	xor    BYTE PTR [eax],dh
  88:	30 30                	xor    BYTE PTR [eax],dh
  8a:	18 0c 00             	sbb    BYTE PTR [eax+eax*1],cl
  8d:	00 00                	add    BYTE PTR [eax],al
  8f:	00 00                	add    BYTE PTR [eax],al
  91:	00 30                	add    BYTE PTR [eax],dh
  93:	18 0c 0c             	sbb    BYTE PTR [esp+ecx*1],cl
  96:	0c 0c                	or     al,0xc
  98:	0c 0c                	or     al,0xc
  9a:	18 30                	sbb    BYTE PTR [eax],dh
	...
  a4:	00 66 3c             	add    BYTE PTR [esi+0x3c],ah
  a7:	ff                   	(bad)
  a8:	3c 66                	cmp    al,0x66
	...
  b2:	00 00                	add    BYTE PTR [eax],al
  b4:	00 18                	add    BYTE PTR [eax],bl
  b6:	18 7e 18             	sbb    BYTE PTR [esi+0x18],bh
  b9:	18 00                	sbb    BYTE PTR [eax],al
	...
  c7:	00 00                	add    BYTE PTR [eax],al
  c9:	18 18                	sbb    BYTE PTR [eax],bl
  cb:	18 30                	sbb    BYTE PTR [eax],dh
	...
  d5:	00 00                	add    BYTE PTR [eax],al
  d7:	fe 00                	inc    BYTE PTR [eax]
	...
  e9:	00 18                	add    BYTE PTR [eax],bl
  eb:	18 00                	sbb    BYTE PTR [eax],al
  ed:	00 00                	add    BYTE PTR [eax],al
  ef:	00 00                	add    BYTE PTR [eax],al
  f1:	00 00                	add    BYTE PTR [eax],al
  f3:	00 02                	add    BYTE PTR [edx],al
  f5:	06                   	push   es
  f6:	0c 18                	or     al,0x18
  f8:	30 60 c0             	xor    BYTE PTR [eax-0x40],ah
  fb:	80 00 00             	add    BYTE PTR [eax],0x0
  fe:	00 00                	add    BYTE PTR [eax],al
 100:	00 00                	add    BYTE PTR [eax],al
 102:	7c c6                	jl     ca <font_8x16+0xca>
 104:	c6                   	(bad)
 105:	ce                   	into
 106:	de f6                	fdivrp st(6),st
 108:	e6 c6                	out    0xc6,al
 10a:	c6                   	(bad)
 10b:	7c 00                	jl     10d <font_8x16+0x10d>
 10d:	00 00                	add    BYTE PTR [eax],al
 10f:	00 00                	add    BYTE PTR [eax],al
 111:	00 18                	add    BYTE PTR [eax],bl
 113:	38 78 18             	cmp    BYTE PTR [eax+0x18],bh
 116:	18 18                	sbb    BYTE PTR [eax],bl
 118:	18 18                	sbb    BYTE PTR [eax],bl
 11a:	18 7e 00             	sbb    BYTE PTR [esi+0x0],bh
 11d:	00 00                	add    BYTE PTR [eax],al
 11f:	00 00                	add    BYTE PTR [eax],al
 121:	00 7c c6 06          	add    BYTE PTR [esi+eax*8+0x6],bh
 125:	0c 18                	or     al,0x18
 127:	30 60 c0             	xor    BYTE PTR [eax-0x40],ah
 12a:	c6                   	(bad)
 12b:	fe 00                	inc    BYTE PTR [eax]
 12d:	00 00                	add    BYTE PTR [eax],al
 12f:	00 00                	add    BYTE PTR [eax],al
 131:	00 7c c6 06          	add    BYTE PTR [esi+eax*8+0x6],bh
 135:	06                   	push   es
 136:	3c 06                	cmp    al,0x6
 138:	06                   	push   es
 139:	06                   	push   es
 13a:	c6                   	(bad)
 13b:	7c 00                	jl     13d <font_8x16+0x13d>
 13d:	00 00                	add    BYTE PTR [eax],al
 13f:	00 00                	add    BYTE PTR [eax],al
 141:	00 0c 1c             	add    BYTE PTR [esp+ebx*1],cl
 144:	3c 6c                	cmp    al,0x6c
 146:	cc                   	int3
 147:	fe 0c 0c             	dec    BYTE PTR [esp+ecx*1]
 14a:	0c 1e                	or     al,0x1e
 14c:	00 00                	add    BYTE PTR [eax],al
 14e:	00 00                	add    BYTE PTR [eax],al
 150:	00 00                	add    BYTE PTR [eax],al
 152:	fe c0                	inc    al
 154:	c0 c0 fc             	rol    al,0xfc
 157:	06                   	push   es
 158:	06                   	push   es
 159:	06                   	push   es
 15a:	c6                   	(bad)
 15b:	7c 00                	jl     15d <font_8x16+0x15d>
 15d:	00 00                	add    BYTE PTR [eax],al
 15f:	00 00                	add    BYTE PTR [eax],al
 161:	00 38                	add    BYTE PTR [eax],bh
 163:	60                   	pusha
 164:	c0 c0 fc             	rol    al,0xfc
 167:	c6 c6 c6             	mov    dh,0xc6
 16a:	c6                   	(bad)
 16b:	7c 00                	jl     16d <font_8x16+0x16d>
 16d:	00 00                	add    BYTE PTR [eax],al
 16f:	00 00                	add    BYTE PTR [eax],al
 171:	00 fe                	add    dh,bh
 173:	c6 06 06             	mov    BYTE PTR [esi],0x6
 176:	0c 18                	or     al,0x18
 178:	30 30                	xor    BYTE PTR [eax],dh
 17a:	30 30                	xor    BYTE PTR [eax],dh
 17c:	00 00                	add    BYTE PTR [eax],al
 17e:	00 00                	add    BYTE PTR [eax],al
 180:	00 00                	add    BYTE PTR [eax],al
 182:	7c c6                	jl     14a <font_8x16+0x14a>
 184:	c6 c6 7c             	mov    dh,0x7c
 187:	c6 c6 c6             	mov    dh,0xc6
 18a:	c6                   	(bad)
 18b:	7c 00                	jl     18d <font_8x16+0x18d>
 18d:	00 00                	add    BYTE PTR [eax],al
 18f:	00 00                	add    BYTE PTR [eax],al
 191:	00 7c c6 c6          	add    BYTE PTR [esi+eax*8-0x3a],bh
 195:	c6                   	(bad)
 196:	7e 06                	jle    19e <font_8x16+0x19e>
 198:	06                   	push   es
 199:	06                   	push   es
 19a:	0c 78                	or     al,0x78
	...
 1a4:	18 18                	sbb    BYTE PTR [eax],bl
 1a6:	00 00                	add    BYTE PTR [eax],al
 1a8:	00 18                	add    BYTE PTR [eax],bl
 1aa:	18 00                	sbb    BYTE PTR [eax],al
	...
 1b4:	18 18                	sbb    BYTE PTR [eax],bl
 1b6:	00 00                	add    BYTE PTR [eax],al
 1b8:	00 18                	add    BYTE PTR [eax],bl
 1ba:	18 30                	sbb    BYTE PTR [eax],dh
 1bc:	00 00                	add    BYTE PTR [eax],al
 1be:	00 00                	add    BYTE PTR [eax],al
 1c0:	00 00                	add    BYTE PTR [eax],al
 1c2:	00 06                	add    BYTE PTR [esi],al
 1c4:	0c 18                	or     al,0x18
 1c6:	30 60 30             	xor    BYTE PTR [eax+0x30],ah
 1c9:	18 0c 06             	sbb    BYTE PTR [esi+eax*1],cl
	...
 1d4:	00 7e 00             	add    BYTE PTR [esi+0x0],bh
 1d7:	00 7e 00             	add    BYTE PTR [esi+0x0],bh
	...
 1e2:	00 60 30             	add    BYTE PTR [eax+0x30],ah
 1e5:	18 0c 06             	sbb    BYTE PTR [esi+eax*1],cl
 1e8:	0c 18                	or     al,0x18
 1ea:	30 60 00             	xor    BYTE PTR [eax+0x0],ah
 1ed:	00 00                	add    BYTE PTR [eax],al
 1ef:	00 00                	add    BYTE PTR [eax],al
 1f1:	00 7c c6 c6          	add    BYTE PTR [esi+eax*8-0x3a],bh
 1f5:	0c 18                	or     al,0x18
 1f7:	18 18                	sbb    BYTE PTR [eax],bl
 1f9:	00 18                	add    BYTE PTR [eax],bl
 1fb:	18 00                	sbb    BYTE PTR [eax],al
 1fd:	00 00                	add    BYTE PTR [eax],al
 1ff:	00 00                	add    BYTE PTR [eax],al
 201:	00 00                	add    BYTE PTR [eax],al
 203:	7c c6                	jl     1cb <font_8x16+0x1cb>
 205:	c6                   	(bad)
 206:	de de                	(bad)
 208:	de dc                	(bad)
 20a:	c0 7c 00 00 00       	sar    BYTE PTR [eax+eax*1+0x0],0x0
 20f:	00 00                	add    BYTE PTR [eax],al
 211:	00 10                	add    BYTE PTR [eax],dl
 213:	38 6c c6 c6          	cmp    BYTE PTR [esi+eax*8-0x3a],ch
 217:	fe c6                	inc    dh
 219:	c6 c6 c6             	mov    dh,0xc6
 21c:	00 00                	add    BYTE PTR [eax],al
 21e:	00 00                	add    BYTE PTR [eax],al
 220:	00 00                	add    BYTE PTR [eax],al
 222:	fc                   	cld
 223:	66 66 66 7c 66       	data16 data16 data16 jl 28e <font_8x16+0x28e>
 228:	66 66 66 fc          	data16 data16 data16 cld
 22c:	00 00                	add    BYTE PTR [eax],al
 22e:	00 00                	add    BYTE PTR [eax],al
 230:	00 00                	add    BYTE PTR [eax],al
 232:	3c 66                	cmp    al,0x66
 234:	c2 c0 c0             	ret    0xc0c0
 237:	c0 c0 c2             	rol    al,0xc2
 23a:	66 3c 00             	data16 cmp al,0x0
 23d:	00 00                	add    BYTE PTR [eax],al
 23f:	00 00                	add    BYTE PTR [eax],al
 241:	00 f8                	add    al,bh
 243:	6c                   	ins    BYTE PTR es:[edi],dx
 244:	66 66 66 66 66 66 6c 	data16 data16 data16 data16 data16 data16 ins BYTE PTR es:[edi],dx
 24b:	f8                   	clc
 24c:	00 00                	add    BYTE PTR [eax],al
 24e:	00 00                	add    BYTE PTR [eax],al
 250:	00 00                	add    BYTE PTR [eax],al
 252:	fe                   	(bad)
 253:	66 62 68 78          	bound  bp,DWORD PTR [eax+0x78]
 257:	68 60 62 66 fe       	push   0xfe666260
 25c:	00 00                	add    BYTE PTR [eax],al
 25e:	00 00                	add    BYTE PTR [eax],al
 260:	00 00                	add    BYTE PTR [eax],al
 262:	fe                   	(bad)
 263:	66 62 68 78          	bound  bp,DWORD PTR [eax+0x78]
 267:	68 60 60 60 f0       	push   0xf0606060
 26c:	00 00                	add    BYTE PTR [eax],al
 26e:	00 00                	add    BYTE PTR [eax],al
 270:	00 00                	add    BYTE PTR [eax],al
 272:	3c 66                	cmp    al,0x66
 274:	c2 c0 c0             	ret    0xc0c0
 277:	de c6                	faddp  st(6),st
 279:	c6                   	(bad)
 27a:	66 3a 00             	data16 cmp al,BYTE PTR [eax]
 27d:	00 00                	add    BYTE PTR [eax],al
 27f:	00 00                	add    BYTE PTR [eax],al
 281:	00 c6                	add    dh,al
 283:	c6 c6 c6             	mov    dh,0xc6
 286:	fe c6                	inc    dh
 288:	c6 c6 c6             	mov    dh,0xc6
 28b:	c6 00 00             	mov    BYTE PTR [eax],0x0
 28e:	00 00                	add    BYTE PTR [eax],al
 290:	00 00                	add    BYTE PTR [eax],al
 292:	3c 18                	cmp    al,0x18
 294:	18 18                	sbb    BYTE PTR [eax],bl
 296:	18 18                	sbb    BYTE PTR [eax],bl
 298:	18 18                	sbb    BYTE PTR [eax],bl
 29a:	18 3c 00             	sbb    BYTE PTR [eax+eax*1],bh
 29d:	00 00                	add    BYTE PTR [eax],al
 29f:	00 00                	add    BYTE PTR [eax],al
 2a1:	00 1e                	add    BYTE PTR [esi],bl
 2a3:	0c 0c                	or     al,0xc
 2a5:	0c 0c                	or     al,0xc
 2a7:	0c cc                	or     al,0xcc
 2a9:	cc                   	int3
 2aa:	cc                   	int3
 2ab:	78 00                	js     2ad <font_8x16+0x2ad>
 2ad:	00 00                	add    BYTE PTR [eax],al
 2af:	00 00                	add    BYTE PTR [eax],al
 2b1:	00 e6                	add    dh,ah
 2b3:	66 66 6c             	data16 data16 ins BYTE PTR es:[edi],dx
 2b6:	78 78                	js     330 <font_8x16+0x330>
 2b8:	6c                   	ins    BYTE PTR es:[edi],dx
 2b9:	66 66 e6 00          	data16 data16 out 0x0,al
 2bd:	00 00                	add    BYTE PTR [eax],al
 2bf:	00 00                	add    BYTE PTR [eax],al
 2c1:	00 f0                	add    al,dh
 2c3:	60                   	pusha
 2c4:	60                   	pusha
 2c5:	60                   	pusha
 2c6:	60                   	pusha
 2c7:	60                   	pusha
 2c8:	60                   	pusha
 2c9:	62 66 fe             	bound  esp,QWORD PTR [esi-0x2]
 2cc:	00 00                	add    BYTE PTR [eax],al
 2ce:	00 00                	add    BYTE PTR [eax],al
 2d0:	00 00                	add    BYTE PTR [eax],al
 2d2:	c6                   	(bad)
 2d3:	ee                   	out    dx,al
 2d4:	fe                   	(bad)
 2d5:	fe                   	(bad)
 2d6:	d6                   	salc
 2d7:	c6 c6 c6             	mov    dh,0xc6
 2da:	c6 c6 00             	mov    dh,0x0
 2dd:	00 00                	add    BYTE PTR [eax],al
 2df:	00 00                	add    BYTE PTR [eax],al
 2e1:	00 c6                	add    dh,al
 2e3:	e6 f6                	out    0xf6,al
 2e5:	fe                   	(bad)
 2e6:	de ce                	fmulp  st(6),st
 2e8:	c6 c6 c6             	mov    dh,0xc6
 2eb:	c6 00 00             	mov    BYTE PTR [eax],0x0
 2ee:	00 00                	add    BYTE PTR [eax],al
 2f0:	00 00                	add    BYTE PTR [eax],al
 2f2:	7c c6                	jl     2ba <font_8x16+0x2ba>
 2f4:	c6 c6 c6             	mov    dh,0xc6
 2f7:	c6 c6 c6             	mov    dh,0xc6
 2fa:	c6                   	(bad)
 2fb:	7c 00                	jl     2fd <font_8x16+0x2fd>
 2fd:	00 00                	add    BYTE PTR [eax],al
 2ff:	00 00                	add    BYTE PTR [eax],al
 301:	00 fc                	add    ah,bh
 303:	66 66 66 7c 60       	data16 data16 data16 jl 368 <font_8x16+0x368>
 308:	60                   	pusha
 309:	60                   	pusha
 30a:	60                   	pusha
 30b:	f0 00 00             	lock add BYTE PTR [eax],al
 30e:	00 00                	add    BYTE PTR [eax],al
 310:	00 00                	add    BYTE PTR [eax],al
 312:	7c c6                	jl     2da <font_8x16+0x2da>
 314:	c6 c6 c6             	mov    dh,0xc6
 317:	c6 c6 d6             	mov    dh,0xd6
 31a:	de 7c 0c 0e          	fidivr WORD PTR [esp+ecx*1+0xe]
 31e:	00 00                	add    BYTE PTR [eax],al
 320:	00 00                	add    BYTE PTR [eax],al
 322:	fc                   	cld
 323:	66 66 66 7c 6c       	data16 data16 data16 jl 394 <font_8x16+0x394>
 328:	66 66 66 e6 00       	data16 data16 data16 out 0x0,al
 32d:	00 00                	add    BYTE PTR [eax],al
 32f:	00 00                	add    BYTE PTR [eax],al
 331:	00 7c c6 c6          	add    BYTE PTR [esi+eax*8-0x3a],bh
 335:	60                   	pusha
 336:	38 0c 06             	cmp    BYTE PTR [esi+eax*1],cl
 339:	c6 c6 7c             	mov    dh,0x7c
 33c:	00 00                	add    BYTE PTR [eax],al
 33e:	00 00                	add    BYTE PTR [eax],al
 340:	00 00                	add    BYTE PTR [eax],al
 342:	ff                   	call   (bad)
 343:	db 99 18 18 18 18    	fistp  DWORD PTR [ecx+0x18181818]
 349:	18 18                	sbb    BYTE PTR [eax],bl
 34b:	3c 00                	cmp    al,0x0
 34d:	00 00                	add    BYTE PTR [eax],al
 34f:	00 00                	add    BYTE PTR [eax],al
 351:	00 c6                	add    dh,al
 353:	c6 c6 c6             	mov    dh,0xc6
 356:	c6 c6 c6             	mov    dh,0xc6
 359:	c6 c6 7c             	mov    dh,0x7c
 35c:	00 00                	add    BYTE PTR [eax],al
 35e:	00 00                	add    BYTE PTR [eax],al
 360:	00 00                	add    BYTE PTR [eax],al
 362:	c6 c6 c6             	mov    dh,0xc6
 365:	c6 c6 c6             	mov    dh,0xc6
 368:	c6                   	(bad)
 369:	6c                   	ins    BYTE PTR es:[edi],dx
 36a:	38 10                	cmp    BYTE PTR [eax],dl
 36c:	00 00                	add    BYTE PTR [eax],al
 36e:	00 00                	add    BYTE PTR [eax],al
 370:	00 00                	add    BYTE PTR [eax],al
 372:	c6 c6 c6             	mov    dh,0xc6
 375:	c6                   	(bad)
 376:	d6                   	salc
 377:	d6                   	salc
 378:	d6                   	salc
 379:	fe                   	(bad)
 37a:	ee                   	out    dx,al
 37b:	6c                   	ins    BYTE PTR es:[edi],dx
 37c:	00 00                	add    BYTE PTR [eax],al
 37e:	00 00                	add    BYTE PTR [eax],al
 380:	00 00                	add    BYTE PTR [eax],al
 382:	c6 c6 6c             	mov    dh,0x6c
 385:	7c 38                	jl     3bf <font_8x16+0x3bf>
 387:	38 7c 6c c6          	cmp    BYTE PTR [esp+ebp*2-0x3a],bh
 38b:	c6 00 00             	mov    BYTE PTR [eax],0x0
 38e:	00 00                	add    BYTE PTR [eax],al
 390:	00 00                	add    BYTE PTR [eax],al
 392:	c6 c6 c6             	mov    dh,0xc6
 395:	6c                   	ins    BYTE PTR es:[edi],dx
 396:	38 18                	cmp    BYTE PTR [eax],bl
 398:	18 18                	sbb    BYTE PTR [eax],bl
 39a:	18 3c 00             	sbb    BYTE PTR [eax+eax*1],bh
 39d:	00 00                	add    BYTE PTR [eax],al
 39f:	00 00                	add    BYTE PTR [eax],al
 3a1:	00 fe                	add    dh,bh
 3a3:	c6 86 0c 18 30 60 c2 	mov    BYTE PTR [esi+0x6030180c],0xc2
 3aa:	c6                   	(bad)
 3ab:	fe 00                	inc    BYTE PTR [eax]
 3ad:	00 00                	add    BYTE PTR [eax],al
 3af:	00 00                	add    BYTE PTR [eax],al
 3b1:	00 3c 30             	add    BYTE PTR [eax+esi*1],bh
 3b4:	30 30                	xor    BYTE PTR [eax],dh
 3b6:	30 30                	xor    BYTE PTR [eax],dh
 3b8:	30 30                	xor    BYTE PTR [eax],dh
 3ba:	30 3c 00             	xor    BYTE PTR [eax+eax*1],bh
 3bd:	00 00                	add    BYTE PTR [eax],al
 3bf:	00 00                	add    BYTE PTR [eax],al
 3c1:	00 00                	add    BYTE PTR [eax],al
 3c3:	80 c0 e0             	add    al,0xe0
 3c6:	70 38                	jo     400 <font_8x16+0x400>
 3c8:	1c 0e                	sbb    al,0xe
 3ca:	06                   	push   es
 3cb:	02 00                	add    al,BYTE PTR [eax]
 3cd:	00 00                	add    BYTE PTR [eax],al
 3cf:	00 00                	add    BYTE PTR [eax],al
 3d1:	00 3c 0c             	add    BYTE PTR [esp+ecx*1],bh
 3d4:	0c 0c                	or     al,0xc
 3d6:	0c 0c                	or     al,0xc
 3d8:	0c 0c                	or     al,0xc
 3da:	0c 3c                	or     al,0x3c
 3dc:	00 00                	add    BYTE PTR [eax],al
 3de:	00 00                	add    BYTE PTR [eax],al
 3e0:	10 38                	adc    BYTE PTR [eax],bh
 3e2:	6c                   	ins    BYTE PTR es:[edi],dx
 3e3:	c6 00 00             	mov    BYTE PTR [eax],0x0
	...
 3fa:	00 00                	add    BYTE PTR [eax],al
 3fc:	00 ff                	add    bh,bh
 3fe:	00 00                	add    BYTE PTR [eax],al
 400:	30 30                	xor    BYTE PTR [eax],dh
 402:	18 00                	sbb    BYTE PTR [eax],al
	...
 414:	00 78 0c             	add    BYTE PTR [eax+0xc],bh
 417:	7c cc                	jl     3e5 <font_8x16+0x3e5>
 419:	cc                   	int3
 41a:	cc                   	int3
 41b:	76 00                	jbe    41d <font_8x16+0x41d>
 41d:	00 00                	add    BYTE PTR [eax],al
 41f:	00 00                	add    BYTE PTR [eax],al
 421:	00 e0                	add    al,ah
 423:	60                   	pusha
 424:	60                   	pusha
 425:	78 6c                	js     493 <font_8x16+0x493>
 427:	66 66 66 66 7c 00    	data16 data16 data16 data16 jl 42d <font_8x16+0x42d>
	...
 435:	7c c6                	jl     3fd <font_8x16+0x3fd>
 437:	c0 c0 c0             	rol    al,0xc0
 43a:	c6                   	(bad)
 43b:	7c 00                	jl     43d <font_8x16+0x43d>
 43d:	00 00                	add    BYTE PTR [eax],al
 43f:	00 00                	add    BYTE PTR [eax],al
 441:	00 1c 0c             	add    BYTE PTR [esp+ecx*1],bl
 444:	0c 3c                	or     al,0x3c
 446:	6c                   	ins    BYTE PTR es:[edi],dx
 447:	cc                   	int3
 448:	cc                   	int3
 449:	cc                   	int3
 44a:	cc                   	int3
 44b:	76 00                	jbe    44d <font_8x16+0x44d>
	...
 455:	7c c6                	jl     41d <font_8x16+0x41d>
 457:	fe c0                	inc    al
 459:	c0 c6 7c             	rol    dh,0x7c
 45c:	00 00                	add    BYTE PTR [eax],al
 45e:	00 00                	add    BYTE PTR [eax],al
 460:	00 00                	add    BYTE PTR [eax],al
 462:	1c 36                	sbb    al,0x36
 464:	32 30                	xor    dh,BYTE PTR [eax]
 466:	78 30                	js     498 <font_8x16+0x498>
 468:	30 30                	xor    BYTE PTR [eax],dh
 46a:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
	...
 475:	76 cc                	jbe    443 <font_8x16+0x443>
 477:	cc                   	int3
 478:	cc                   	int3
 479:	cc                   	int3
 47a:	cc                   	int3
 47b:	7c 0c                	jl     489 <font_8x16+0x489>
 47d:	cc                   	int3
 47e:	78 00                	js     480 <font_8x16+0x480>
 480:	00 00                	add    BYTE PTR [eax],al
 482:	e0 60                	loopne 4e4 <font_8x16+0x4e4>
 484:	60                   	pusha
 485:	6c                   	ins    BYTE PTR es:[edi],dx
 486:	76 66                	jbe    4ee <font_8x16+0x4ee>
 488:	66 66 66 e6 00       	data16 data16 data16 out 0x0,al
 48d:	00 00                	add    BYTE PTR [eax],al
 48f:	00 00                	add    BYTE PTR [eax],al
 491:	00 18                	add    BYTE PTR [eax],bl
 493:	18 00                	sbb    BYTE PTR [eax],al
 495:	38 18                	cmp    BYTE PTR [eax],bl
 497:	18 18                	sbb    BYTE PTR [eax],bl
 499:	18 18                	sbb    BYTE PTR [eax],bl
 49b:	3c 00                	cmp    al,0x0
 49d:	00 00                	add    BYTE PTR [eax],al
 49f:	00 00                	add    BYTE PTR [eax],al
 4a1:	00 06                	add    BYTE PTR [esi],al
 4a3:	06                   	push   es
 4a4:	00 0e                	add    BYTE PTR [esi],cl
 4a6:	06                   	push   es
 4a7:	06                   	push   es
 4a8:	06                   	push   es
 4a9:	06                   	push   es
 4aa:	06                   	push   es
 4ab:	06                   	push   es
 4ac:	66 66 3c 00          	data16 data16 cmp al,0x0
 4b0:	00 00                	add    BYTE PTR [eax],al
 4b2:	e0 60                	loopne 514 <font_8x16+0x514>
 4b4:	60                   	pusha
 4b5:	66 6c                	data16 ins BYTE PTR es:[edi],dx
 4b7:	78 78                	js     531 <font_8x16+0x531>
 4b9:	6c                   	ins    BYTE PTR es:[edi],dx
 4ba:	66 e6 00             	data16 out 0x0,al
 4bd:	00 00                	add    BYTE PTR [eax],al
 4bf:	00 00                	add    BYTE PTR [eax],al
 4c1:	00 38                	add    BYTE PTR [eax],bh
 4c3:	18 18                	sbb    BYTE PTR [eax],bl
 4c5:	18 18                	sbb    BYTE PTR [eax],bl
 4c7:	18 18                	sbb    BYTE PTR [eax],bl
 4c9:	18 18                	sbb    BYTE PTR [eax],bl
 4cb:	3c 00                	cmp    al,0x0
	...
 4d5:	ec                   	in     al,dx
 4d6:	fe                   	(bad)
 4d7:	d6                   	salc
 4d8:	d6                   	salc
 4d9:	d6                   	salc
 4da:	d6                   	salc
 4db:	c6 00 00             	mov    BYTE PTR [eax],0x0
 4de:	00 00                	add    BYTE PTR [eax],al
 4e0:	00 00                	add    BYTE PTR [eax],al
 4e2:	00 00                	add    BYTE PTR [eax],al
 4e4:	00 dc                	add    ah,bl
 4e6:	66 66 66 66 66 66 00 	data16 data16 data16 data16 data16 data16 add BYTE PTR [eax],al
 4ed:	00 
 4ee:	00 00                	add    BYTE PTR [eax],al
 4f0:	00 00                	add    BYTE PTR [eax],al
 4f2:	00 00                	add    BYTE PTR [eax],al
 4f4:	00 7c c6 c6          	add    BYTE PTR [esi+eax*8-0x3a],bh
 4f8:	c6 c6 c6             	mov    dh,0xc6
 4fb:	7c 00                	jl     4fd <font_8x16+0x4fd>
	...
 505:	dc 66 66             	fsub   QWORD PTR [esi+0x66]
 508:	66 66 66 7c 60       	data16 data16 data16 jl 56d <font_8x16+0x56d>
 50d:	60                   	pusha
 50e:	f0 00 00             	lock add BYTE PTR [eax],al
 511:	00 00                	add    BYTE PTR [eax],al
 513:	00 00                	add    BYTE PTR [eax],al
 515:	76 cc                	jbe    4e3 <font_8x16+0x4e3>
 517:	cc                   	int3
 518:	cc                   	int3
 519:	cc                   	int3
 51a:	cc                   	int3
 51b:	7c 0c                	jl     529 <font_8x16+0x529>
 51d:	0c 1e                	or     al,0x1e
 51f:	00 00                	add    BYTE PTR [eax],al
 521:	00 00                	add    BYTE PTR [eax],al
 523:	00 00                	add    BYTE PTR [eax],al
 525:	dc 76 66             	fdiv   QWORD PTR [esi+0x66]
 528:	60                   	pusha
 529:	60                   	pusha
 52a:	60                   	pusha
 52b:	f0 00 00             	lock add BYTE PTR [eax],al
 52e:	00 00                	add    BYTE PTR [eax],al
 530:	00 00                	add    BYTE PTR [eax],al
 532:	00 00                	add    BYTE PTR [eax],al
 534:	00 7c c6 60          	add    BYTE PTR [esi+eax*8+0x60],bh
 538:	38 0c c6             	cmp    BYTE PTR [esi+eax*8],cl
 53b:	7c 00                	jl     53d <font_8x16+0x53d>
 53d:	00 00                	add    BYTE PTR [eax],al
 53f:	00 00                	add    BYTE PTR [eax],al
 541:	00 10                	add    BYTE PTR [eax],dl
 543:	30 30                	xor    BYTE PTR [eax],dh
 545:	fc                   	cld
 546:	30 30                	xor    BYTE PTR [eax],dh
 548:	30 30                	xor    BYTE PTR [eax],dh
 54a:	36 1c 00             	ss sbb al,0x0
	...
 555:	cc                   	int3
 556:	cc                   	int3
 557:	cc                   	int3
 558:	cc                   	int3
 559:	cc                   	int3
 55a:	cc                   	int3
 55b:	76 00                	jbe    55d <font_8x16+0x55d>
	...
 565:	c6 c6 c6             	mov    dh,0xc6
 568:	c6 c6 6c             	mov    dh,0x6c
 56b:	38 00                	cmp    BYTE PTR [eax],al
	...
 575:	c6 c6 d6             	mov    dh,0xd6
 578:	d6                   	salc
 579:	d6                   	salc
 57a:	fe                   	(bad)
 57b:	6c                   	ins    BYTE PTR es:[edi],dx
	...
 584:	00 c6                	add    dh,al
 586:	6c                   	ins    BYTE PTR es:[edi],dx
 587:	38 38                	cmp    BYTE PTR [eax],bh
 589:	38 6c c6 00          	cmp    BYTE PTR [esi+eax*8+0x0],ch
	...
 595:	c6 c6 c6             	mov    dh,0xc6
 598:	c6 c6 c6             	mov    dh,0xc6
 59b:	7e 06                	jle    5a3 <font_8x16+0x5a3>
 59d:	0c f8                	or     al,0xf8
 59f:	00 00                	add    BYTE PTR [eax],al
 5a1:	00 00                	add    BYTE PTR [eax],al
 5a3:	00 00                	add    BYTE PTR [eax],al
 5a5:	fe cc                	dec    ah
 5a7:	18 30                	sbb    BYTE PTR [eax],dh
 5a9:	60                   	pusha
 5aa:	c6                   	(bad)
 5ab:	fe 00                	inc    BYTE PTR [eax]
 5ad:	00 00                	add    BYTE PTR [eax],al
 5af:	00 00                	add    BYTE PTR [eax],al
 5b1:	00 0e                	add    BYTE PTR [esi],cl
 5b3:	18 18                	sbb    BYTE PTR [eax],bl
 5b5:	18 70 18             	sbb    BYTE PTR [eax+0x18],dh
 5b8:	18 18                	sbb    BYTE PTR [eax],bl
 5ba:	18 0e                	sbb    BYTE PTR [esi],cl
 5bc:	00 00                	add    BYTE PTR [eax],al
 5be:	00 00                	add    BYTE PTR [eax],al
 5c0:	00 00                	add    BYTE PTR [eax],al
 5c2:	18 18                	sbb    BYTE PTR [eax],bl
 5c4:	18 18                	sbb    BYTE PTR [eax],bl
 5c6:	00 18                	add    BYTE PTR [eax],bl
 5c8:	18 18                	sbb    BYTE PTR [eax],bl
 5ca:	18 18                	sbb    BYTE PTR [eax],bl
 5cc:	00 00                	add    BYTE PTR [eax],al
 5ce:	00 00                	add    BYTE PTR [eax],al
 5d0:	00 00                	add    BYTE PTR [eax],al
 5d2:	70 18                	jo     5ec <font_8x16+0x5ec>
 5d4:	18 18                	sbb    BYTE PTR [eax],bl
 5d6:	0e                   	push   cs
 5d7:	18 18                	sbb    BYTE PTR [eax],bl
 5d9:	18 18                	sbb    BYTE PTR [eax],bl
 5db:	70 00                	jo     5dd <font_8x16+0x5dd>
 5dd:	00 00                	add    BYTE PTR [eax],al
 5df:	00 00                	add    BYTE PTR [eax],al
 5e1:	00 76 dc             	add    BYTE PTR [esi-0x24],dh
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
