
pcnet.o:     file format elf32-i386


Disassembly of section .text:

00000000 <pcnet_poll>:
   0:	8b 15 1c 00 00 00    	mov    edx,DWORD PTR ds:0x1c
   6:	85 d2                	test   edx,edx
   8:	74 76                	je     80 <pcnet_poll+0x80>
   a:	56                   	push   esi
   b:	53                   	push   ebx
   c:	31 db                	xor    ebx,ebx
   e:	83 ec 04             	sub    esp,0x4
  11:	eb 17                	jmp    2a <pcnet_poll+0x2a>
  13:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  18:	c7 46 04 00 06 00 80 	mov    DWORD PTR [esi+0x4],0x80000600
  1f:	83 c3 10             	add    ebx,0x10
  22:	81 fb 00 01 00 00    	cmp    ebx,0x100
  28:	74 46                	je     70 <pcnet_poll+0x70>
  2a:	8b 35 14 00 00 00    	mov    esi,DWORD PTR ds:0x14
  30:	01 de                	add    esi,ebx
  32:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  35:	85 c0                	test   eax,eax
  37:	78 e6                	js     1f <pcnet_poll+0x1f>
  39:	0f b7 46 08          	movzx  eax,WORD PTR [esi+0x8]
  3d:	66 25 ff 0f          	and    ax,0xfff
  41:	8d 50 ff             	lea    edx,[eax-0x1]
  44:	66 81 fa ff 05       	cmp    dx,0x5ff
  49:	77 cd                	ja     18 <pcnet_poll+0x18>
  4b:	83 ec 08             	sub    esp,0x8
  4e:	0f b7 c0             	movzx  eax,ax
  51:	50                   	push   eax
  52:	8d 04 5b             	lea    eax,[ebx+ebx*2]
  55:	c1 e0 05             	shl    eax,0x5
  58:	03 05 10 00 00 00    	add    eax,DWORD PTR ds:0x10
  5e:	50                   	push   eax
  5f:	e8 fc ff ff ff       	call   60 <pcnet_poll+0x60>
  64:	83 c4 10             	add    esp,0x10
  67:	eb af                	jmp    18 <pcnet_poll+0x18>
  69:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  70:	83 c4 04             	add    esp,0x4
  73:	5b                   	pop    ebx
  74:	5e                   	pop    esi
  75:	c3                   	ret
  76:	66 90                	xchg   ax,ax
  78:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  7f:	00 
  80:	c3                   	ret
  81:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  88:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  8f:	00 

00000090 <pcnet_send>:
  90:	53                   	push   ebx
  91:	83 ec 18             	sub    esp,0x18
  94:	8b 0d 1c 00 00 00    	mov    ecx,DWORD PTR ds:0x1c
  9a:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  9e:	85 c9                	test   ecx,ecx
  a0:	74 56                	je     f8 <pcnet_send+0x68>
  a2:	66 81 fa 00 06       	cmp    dx,0x600
  a7:	77 4f                	ja     f8 <pcnet_send+0x68>
  a9:	8b 0d 04 00 00 00    	mov    ecx,DWORD PTR ds:0x4
  af:	89 cb                	mov    ebx,ecx
  b1:	c1 e3 04             	shl    ebx,0x4
  b4:	03 1d 0c 00 00 00    	add    ebx,DWORD PTR ds:0xc
  ba:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  bd:	85 c0                	test   eax,eax
  bf:	79 41                	jns    102 <pcnet_send+0x72>
  c1:	a1 00 00 00 00       	mov    eax,ds:0x0
  c6:	39 c1                	cmp    ecx,eax
  c8:	74 2e                	je     f8 <pcnet_send+0x68>
  ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  d0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  d7:	00 
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 
  e0:	83 c0 01             	add    eax,0x1
  e3:	99                   	cdq
  e4:	c1 ea 1d             	shr    edx,0x1d
  e7:	01 d0                	add    eax,edx
  e9:	83 e0 07             	and    eax,0x7
  ec:	29 d0                	sub    eax,edx
  ee:	39 c1                	cmp    ecx,eax
  f0:	75 ee                	jne    e0 <pcnet_send+0x50>
  f2:	89 0d 00 00 00 00    	mov    DWORD PTR ds:0x0,ecx
  f8:	83 c4 18             	add    esp,0x18
  fb:	b8 ff ff ff ff       	mov    eax,0xffffffff
 100:	5b                   	pop    ebx
 101:	c3                   	ret
 102:	83 ec 04             	sub    esp,0x4
 105:	0f b7 c2             	movzx  eax,dx
 108:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 10c:	50                   	push   eax
 10d:	8d 04 49             	lea    eax,[ecx+ecx*2]
 110:	c1 e0 09             	shl    eax,0x9
 113:	03 05 08 00 00 00    	add    eax,DWORD PTR ds:0x8
 119:	ff 74 24 28          	push   DWORD PTR [esp+0x28]
 11d:	50                   	push   eax
 11e:	e8 fc ff ff ff       	call   11f <pcnet_send+0x8f>
 123:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 127:	b8 3c 00 00 00       	mov    eax,0x3c
 12c:	66 39 c2             	cmp    dx,ax
 12f:	0f 42 d0             	cmovb  edx,eax
 132:	a1 04 00 00 00       	mov    eax,ds:0x4
 137:	83 c4 10             	add    esp,0x10
 13a:	0f b7 d2             	movzx  edx,dx
 13d:	83 c0 01             	add    eax,0x1
 140:	81 ca 00 00 00 80    	or     edx,0x80000000
 146:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
 149:	99                   	cdq
 14a:	c1 ea 1d             	shr    edx,0x1d
 14d:	01 d0                	add    eax,edx
 14f:	83 e0 07             	and    eax,0x7
 152:	29 d0                	sub    eax,edx
 154:	a3 04 00 00 00       	mov    ds:0x4,eax
 159:	83 c4 18             	add    esp,0x18
 15c:	31 c0                	xor    eax,eax
 15e:	5b                   	pop    ebx
 15f:	c3                   	ret

00000160 <pcnet_get_mac>:
 160:	83 ec 10             	sub    esp,0x10
 163:	6a 06                	push   0x6
 165:	68 20 00 00 00       	push   0x20
 16a:	ff 74 24 1c          	push   DWORD PTR [esp+0x1c]
 16e:	e8 fc ff ff ff       	call   16f <pcnet_get_mac+0xf>
 173:	83 c4 1c             	add    esp,0x1c
 176:	c3                   	ret
 177:	90                   	nop
 178:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 17f:	00 

00000180 <pcnet_init>:
 180:	55                   	push   ebp
 181:	57                   	push   edi
 182:	56                   	push   esi
 183:	53                   	push   ebx
 184:	83 ec 34             	sub    esp,0x34
 187:	8d 44 24 1b          	lea    eax,[esp+0x1b]
 18b:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
 192:	00 
 193:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
 198:	50                   	push   eax
 199:	8d 44 24 20          	lea    eax,[esp+0x20]
 19d:	50                   	push   eax
 19e:	e8 fc ff ff ff       	call   19f <pcnet_init+0x1f>
 1a3:	83 c4 10             	add    esp,0x10
 1a6:	85 c0                	test   eax,eax
 1a8:	0f 84 de 02 00 00    	je     48c <pcnet_init+0x30c>
 1ae:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 1b2:	83 ec 0c             	sub    esp,0xc
 1b5:	6a 20                	push   0x20
 1b7:	a3 28 00 00 00       	mov    ds:0x28,eax
 1bc:	e8 fc ff ff ff       	call   1bd <pcnet_init+0x3d>
 1c1:	c7 04 24 00 01 00 00 	mov    DWORD PTR [esp],0x100
 1c8:	a3 18 00 00 00       	mov    ds:0x18,eax
 1cd:	e8 fc ff ff ff       	call   1ce <pcnet_init+0x4e>
 1d2:	c7 04 24 00 60 00 00 	mov    DWORD PTR [esp],0x6000
 1d9:	a3 14 00 00 00       	mov    ds:0x14,eax
 1de:	e8 fc ff ff ff       	call   1df <pcnet_init+0x5f>
 1e3:	c7 04 24 80 00 00 00 	mov    DWORD PTR [esp],0x80
 1ea:	a3 10 00 00 00       	mov    ds:0x10,eax
 1ef:	e8 fc ff ff ff       	call   1f0 <pcnet_init+0x70>
 1f4:	c7 04 24 00 30 00 00 	mov    DWORD PTR [esp],0x3000
 1fb:	a3 0c 00 00 00       	mov    ds:0xc,eax
 200:	e8 fc ff ff ff       	call   201 <pcnet_init+0x81>
 205:	8b 15 18 00 00 00    	mov    edx,DWORD PTR ds:0x18
 20b:	83 c4 10             	add    esp,0x10
 20e:	a3 08 00 00 00       	mov    ds:0x8,eax
 213:	85 d2                	test   edx,edx
 215:	0f 84 71 02 00 00    	je     48c <pcnet_init+0x30c>
 21b:	8b 35 14 00 00 00    	mov    esi,DWORD PTR ds:0x14
 221:	85 f6                	test   esi,esi
 223:	0f 84 63 02 00 00    	je     48c <pcnet_init+0x30c>
 229:	8b 1d 10 00 00 00    	mov    ebx,DWORD PTR ds:0x10
 22f:	85 db                	test   ebx,ebx
 231:	0f 84 55 02 00 00    	je     48c <pcnet_init+0x30c>
 237:	8b 0d 0c 00 00 00    	mov    ecx,DWORD PTR ds:0xc
 23d:	85 c9                	test   ecx,ecx
 23f:	0f 84 47 02 00 00    	je     48c <pcnet_init+0x30c>
 245:	85 c0                	test   eax,eax
 247:	0f 84 3f 02 00 00    	je     48c <pcnet_init+0x30c>
 24d:	83 ec 04             	sub    esp,0x4
 250:	6a 20                	push   0x20
 252:	6a 00                	push   0x0
 254:	52                   	push   edx
 255:	e8 fc ff ff ff       	call   256 <pcnet_init+0xd6>
 25a:	83 c4 0c             	add    esp,0xc
 25d:	68 00 01 00 00       	push   0x100
 262:	6a 00                	push   0x0
 264:	ff 35 14 00 00 00    	push   DWORD PTR ds:0x14
 26a:	e8 fc ff ff ff       	call   26b <pcnet_init+0xeb>
 26f:	83 c4 0c             	add    esp,0xc
 272:	68 80 00 00 00       	push   0x80
 277:	6a 00                	push   0x0
 279:	ff 35 0c 00 00 00    	push   DWORD PTR ds:0xc
 27f:	e8 fc ff ff ff       	call   280 <pcnet_init+0x100>
 284:	8b 3d 28 00 00 00    	mov    edi,DWORD PTR ds:0x28
 28a:	83 c4 10             	add    esp,0x10
 28d:	31 c9                	xor    ecx,ecx
 28f:	8d 77 12             	lea    esi,[edi+0x12]
 292:	8d 5f 10             	lea    ebx,[edi+0x10]
 295:	8d 76 00             	lea    esi,[esi+0x0]
 298:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 29f:	00 
 2a0:	8d 14 0f             	lea    edx,[edi+ecx*1]
 2a3:	ec                   	in     al,dx
 2a4:	88 81 20 00 00 00    	mov    BYTE PTR [ecx+0x20],al
 2aa:	83 c1 01             	add    ecx,0x1
 2ad:	83 f9 06             	cmp    ecx,0x6
 2b0:	75 ee                	jne    2a0 <pcnet_init+0x120>
 2b2:	8d 57 14             	lea    edx,[edi+0x14]
 2b5:	31 c0                	xor    eax,eax
 2b7:	66 ef                	out    dx,ax
 2b9:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
 2c0:	00 
 2c1:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 2c5:	3d e7 03 00 00       	cmp    eax,0x3e7
 2ca:	7f 2a                	jg     2f6 <pcnet_init+0x176>
 2cc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 2d0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2d7:	00 
 2d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2df:	00 
 2e0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 2e4:	83 c0 01             	add    eax,0x1
 2e7:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 2eb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 2ef:	3d e7 03 00 00       	cmp    eax,0x3e7
 2f4:	7e ea                	jle    2e0 <pcnet_init+0x160>
 2f6:	8b 3d 18 00 00 00    	mov    edi,DWORD PTR ds:0x18
 2fc:	31 c0                	xor    eax,eax
 2fe:	8b 15 14 00 00 00    	mov    edx,DWORD PTR ds:0x14
 304:	83 ec 04             	sub    esp,0x4
 307:	8b 2d 0c 00 00 00    	mov    ebp,DWORD PTR ds:0xc
 30d:	66 89 07             	mov    WORD PTR [edi],ax
 310:	0f b7 05 20 00 00 00 	movzx  eax,WORD PTR ds:0x20
 317:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 31b:	66 89 47 02          	mov    WORD PTR [edi+0x2],ax
 31f:	0f b7 05 22 00 00 00 	movzx  eax,WORD PTR ds:0x22
 326:	66 89 47 04          	mov    WORD PTR [edi+0x4],ax
 32a:	0f b7 05 24 00 00 00 	movzx  eax,WORD PTR ds:0x24
 331:	66 89 47 06          	mov    WORD PTR [edi+0x6],ax
 335:	8d 47 08             	lea    eax,[edi+0x8]
 338:	6a 08                	push   0x8
 33a:	6a 00                	push   0x0
 33c:	50                   	push   eax
 33d:	e8 fc ff ff ff       	call   33e <pcnet_init+0x1be>
 342:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 346:	89 6f 14             	mov    DWORD PTR [edi+0x14],ebp
 349:	b8 01 00 00 00       	mov    eax,0x1
 34e:	89 57 10             	mov    DWORD PTR [edi+0x10],edx
 351:	89 f2                	mov    edx,esi
 353:	66 ef                	out    dx,ax
 355:	89 f8                	mov    eax,edi
 357:	89 da                	mov    edx,ebx
 359:	66 ef                	out    dx,ax
 35b:	b8 02 00 00 00       	mov    eax,0x2
 360:	89 f2                	mov    edx,esi
 362:	66 ef                	out    dx,ax
 364:	89 f8                	mov    eax,edi
 366:	89 da                	mov    edx,ebx
 368:	c1 e8 10             	shr    eax,0x10
 36b:	66 ef                	out    dx,ax
 36d:	31 c0                	xor    eax,eax
 36f:	89 f2                	mov    edx,esi
 371:	66 ef                	out    dx,ax
 373:	b8 10 00 00 00       	mov    eax,0x10
 378:	89 da                	mov    edx,ebx
 37a:	66 ef                	out    dx,ax
 37c:	c7 44 24 28 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
 383:	00 
 384:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 388:	83 c4 10             	add    esp,0x10
 38b:	3d 9f 86 01 00       	cmp    eax,0x1869f
 390:	7e 1c                	jle    3ae <pcnet_init+0x22e>
 392:	eb 29                	jmp    3bd <pcnet_init+0x23d>
 394:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 398:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 39c:	83 c0 01             	add    eax,0x1
 39f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 3a3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 3a7:	3d 9f 86 01 00       	cmp    eax,0x1869f
 3ac:	7f 0f                	jg     3bd <pcnet_init+0x23d>
 3ae:	31 c0                	xor    eax,eax
 3b0:	89 f2                	mov    edx,esi
 3b2:	66 ef                	out    dx,ax
 3b4:	89 da                	mov    edx,ebx
 3b6:	66 ed                	in     ax,dx
 3b8:	f6 c4 01             	test   ah,0x1
 3bb:	74 db                	je     398 <pcnet_init+0x218>
 3bd:	31 c0                	xor    eax,eax
 3bf:	89 f2                	mov    edx,esi
 3c1:	66 ef                	out    dx,ax
 3c3:	b8 02 00 00 00       	mov    eax,0x2
 3c8:	89 da                	mov    edx,ebx
 3ca:	66 ef                	out    dx,ax
 3cc:	a1 14 00 00 00       	mov    eax,ds:0x14
 3d1:	8b 15 10 00 00 00    	mov    edx,DWORD PTR ds:0x10
 3d7:	8d 88 00 01 00 00    	lea    ecx,[eax+0x100]
 3dd:	eb 21                	jmp    400 <pcnet_init+0x280>
 3df:	90                   	nop
 3e0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3e7:	00 
 3e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3ef:	00 
 3f0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3f7:	00 
 3f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3ff:	00 
 400:	89 10                	mov    DWORD PTR [eax],edx
 402:	83 c0 10             	add    eax,0x10
 405:	81 c2 00 06 00 00    	add    edx,0x600
 40b:	c7 40 f4 00 06 00 80 	mov    DWORD PTR [eax-0xc],0x80000600
 412:	c7 40 f8 00 00 00 00 	mov    DWORD PTR [eax-0x8],0x0
 419:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [eax-0x4],0x0
 420:	39 c8                	cmp    eax,ecx
 422:	75 dc                	jne    400 <pcnet_init+0x280>
 424:	a1 0c 00 00 00       	mov    eax,ds:0xc
 429:	8b 15 08 00 00 00    	mov    edx,DWORD PTR ds:0x8
 42f:	8d 88 80 00 00 00    	lea    ecx,[eax+0x80]
 435:	8d 76 00             	lea    esi,[esi+0x0]
 438:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 43f:	00 
 440:	89 10                	mov    DWORD PTR [eax],edx
 442:	83 c0 10             	add    eax,0x10
 445:	81 c2 00 06 00 00    	add    edx,0x600
 44b:	c7 40 f4 00 00 00 00 	mov    DWORD PTR [eax-0xc],0x0
 452:	c7 40 f8 00 00 00 00 	mov    DWORD PTR [eax-0x8],0x0
 459:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [eax-0x4],0x0
 460:	39 c8                	cmp    eax,ecx
 462:	75 dc                	jne    440 <pcnet_init+0x2c0>
 464:	c7 05 04 00 00 00 00 	mov    DWORD PTR ds:0x4,0x0
 46b:	00 00 00 
 46e:	31 c0                	xor    eax,eax
 470:	c7 05 00 00 00 00 00 	mov    DWORD PTR ds:0x0,0x0
 477:	00 00 00 
 47a:	c7 05 1c 00 00 00 01 	mov    DWORD PTR ds:0x1c,0x1
 481:	00 00 00 
 484:	83 c4 2c             	add    esp,0x2c
 487:	5b                   	pop    ebx
 488:	5e                   	pop    esi
 489:	5f                   	pop    edi
 48a:	5d                   	pop    ebp
 48b:	c3                   	ret
 48c:	b8 ff ff ff ff       	mov    eax,0xffffffff
 491:	eb f1                	jmp    484 <pcnet_init+0x304>
 493:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 498:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 49f:	00 

000004a0 <pcnet_ready>:
 4a0:	a1 1c 00 00 00       	mov    eax,ds:0x1c
 4a5:	c3                   	ret

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
  17:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	81 00 00 00 00 4b    	add    DWORD PTR [eax],0x4b000000
  2a:	0e                   	push   cs
  2b:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
  31:	83 03 45             	add    DWORD PTR [ebx],0x45
  34:	0e                   	push   cs
  35:	10 7d 0e             	adc    BYTE PTR [ebp+0xe],bh
  38:	18 44 0e 1c          	sbb    BYTE PTR [esi+ecx*1+0x1c],al
  3c:	4d                   	dec    ebp
  3d:	0e                   	push   cs
  3e:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  41:	10 4c 0e 0c          	adc    BYTE PTR [esi+ecx*1+0xc],cl
  45:	41                   	inc    ecx
  46:	c3                   	ret
  47:	0e                   	push   cs
  48:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  4b:	0e                   	push   cs
  4c:	04 00                	add    al,0x0
  4e:	00 00                	add    BYTE PTR [eax],al
  50:	38 00                	cmp    BYTE PTR [eax],al
  52:	00 00                	add    BYTE PTR [eax],al
  54:	54                   	push   esp
  55:	00 00                	add    BYTE PTR [eax],al
  57:	00 90 00 00 00 d0    	add    BYTE PTR [eax-0x30000000],dl
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 00                	add    BYTE PTR [eax],al
  61:	41                   	inc    ecx
  62:	0e                   	push   cs
  63:	08 83 02 43 0e 20    	or     BYTE PTR [ebx+0x200e4302],al
  69:	02 67 0a             	add    ah,BYTE PTR [edi+0xa]
  6c:	0e                   	push   cs
  6d:	08 46 c3             	or     BYTE PTR [esi-0x3d],al
  70:	0e                   	push   cs
  71:	04 41                	add    al,0x41
  73:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
  76:	24 48                	and    al,0x48
  78:	0e                   	push   cs
  79:	28 50 0e             	sub    BYTE PTR [eax+0xe],dl
  7c:	2c 41                	sub    al,0x41
  7e:	0e                   	push   cs
  7f:	30 5c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],bl
  83:	62 0e                	bound  ecx,QWORD PTR [esi]
  85:	08 43 c3             	or     BYTE PTR [ebx-0x3d],al
  88:	0e                   	push   cs
  89:	04 00                	add    al,0x0
  8b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  8e:	00 00                	add    BYTE PTR [eax],al
  90:	90                   	nop
  91:	00 00                	add    BYTE PTR [eax],al
  93:	00 60 01             	add    BYTE PTR [eax+0x1],ah
  96:	00 00                	add    BYTE PTR [eax],al
  98:	17                   	pop    ss
  99:	00 00                	add    BYTE PTR [eax],al
  9b:	00 00                	add    BYTE PTR [eax],al
  9d:	43                   	inc    ebx
  9e:	0e                   	push   cs
  9f:	14 42                	adc    al,0x42
  a1:	0e                   	push   cs
  a2:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  a5:	1c 44                	sbb    al,0x44
  a7:	0e                   	push   cs
  a8:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  ab:	04 88                	add    al,0x88
  ad:	00 00                	add    BYTE PTR [eax],al
  af:	00 b0 00 00 00 80    	add    BYTE PTR [eax-0x80000000],dh
  b5:	01 00                	add    DWORD PTR [eax],eax
  b7:	00 13                	add    BYTE PTR [ebx],dl
  b9:	03 00                	add    eax,DWORD PTR [eax]
  bb:	00 00                	add    BYTE PTR [eax],al
  bd:	41                   	inc    ecx
  be:	0e                   	push   cs
  bf:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  c5:	87 03                	xchg   DWORD PTR [ebx],eax
  c7:	41                   	inc    ecx
  c8:	0e                   	push   cs
  c9:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  cf:	83 05 43 0e 48 52 0e 	add    DWORD PTR ds:0x52480e43,0xe
  d6:	4c                   	dec    esp
  d7:	45                   	inc    ebp
  d8:	0e                   	push   cs
  d9:	50                   	push   eax
  da:	48                   	dec    eax
  db:	0e                   	push   cs
  dc:	40                   	inc    eax
  dd:	4f                   	dec    edi
  de:	0e                   	push   cs
  df:	4c                   	dec    esp
  e0:	42                   	inc    edx
  e1:	0e                   	push   cs
  e2:	50                   	push   eax
  e3:	02 57 0e             	add    dl,BYTE PTR [edi+0xe]
  e6:	40                   	inc    eax
  e7:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  ea:	44                   	inc    esp
  eb:	42                   	inc    edx
  ec:	0e                   	push   cs
  ed:	48                   	dec    eax
  ee:	42                   	inc    edx
  ef:	0e                   	push   cs
  f0:	4c                   	dec    esp
  f1:	41                   	inc    ecx
  f2:	0e                   	push   cs
  f3:	50                   	push   eax
  f4:	48                   	dec    eax
  f5:	0e                   	push   cs
  f6:	44                   	inc    esp
  f7:	45                   	inc    ebp
  f8:	0e                   	push   cs
  f9:	48                   	dec    eax
  fa:	42                   	inc    edx
  fb:	0e                   	push   cs
  fc:	4c                   	dec    esp
  fd:	46                   	inc    esi
  fe:	0e                   	push   cs
  ff:	50                   	push   eax
 100:	48                   	dec    eax
 101:	0e                   	push   cs
 102:	44                   	inc    esp
 103:	45                   	inc    ebp
 104:	0e                   	push   cs
 105:	48                   	dec    eax
 106:	42                   	inc    edx
 107:	0e                   	push   cs
 108:	4c                   	dec    esp
 109:	46                   	inc    esi
 10a:	0e                   	push   cs
 10b:	50                   	push   eax
 10c:	4e                   	dec    esi
 10d:	0e                   	push   cs
 10e:	40                   	inc    eax
 10f:	02 7a 0e             	add    bh,BYTE PTR [edx+0xe]
 112:	44                   	inc    esp
 113:	73 0e                	jae    123 <.eh_frame+0x123>
 115:	48                   	dec    eax
 116:	42                   	inc    edx
 117:	0e                   	push   cs
 118:	4c                   	dec    esp
 119:	41                   	inc    ecx
 11a:	0e                   	push   cs
 11b:	50                   	push   eax
 11c:	02 4e 0e             	add    cl,BYTE PTR [esi+0xe]
 11f:	40                   	inc    eax
 120:	02 fc                	add    bh,ah
 122:	0a 0e                	or     cl,BYTE PTR [esi]
 124:	14 41                	adc    al,0x41
 126:	c3                   	ret
 127:	0e                   	push   cs
 128:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 12b:	0e                   	push   cs
 12c:	0c 41                	or     al,0x41
 12e:	c7                   	(bad)
 12f:	0e                   	push   cs
 130:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 133:	0e                   	push   cs
 134:	04 41                	add    al,0x41
 136:	0b 00                	or     eax,DWORD PTR [eax]
 138:	10 00                	adc    BYTE PTR [eax],al
 13a:	00 00                	add    BYTE PTR [eax],al
 13c:	3c 01                	cmp    al,0x1
 13e:	00 00                	add    BYTE PTR [eax],al
 140:	a0 04 00 00 06       	mov    al,ds:0x6000004
 145:	00 00                	add    BYTE PTR [eax],al
 147:	00 00                	add    BYTE PTR [eax],al
 149:	00 00                	add    BYTE PTR [eax],al
	...
