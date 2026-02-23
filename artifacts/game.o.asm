
game.o:     file format elf32-i386


Disassembly of section .text:

00000000 <game_reset>:
   0:	53                   	push   ebx
   1:	8b 50 54             	mov    edx,DWORD PTR [eax+0x54]
   4:	89 c1                	mov    ecx,eax
   6:	c7 41 0c 00 02 00 00 	mov    DWORD PTR [ecx+0xc],0x200
   d:	8d 59 50             	lea    ebx,[ecx+0x50]
  10:	89 d0                	mov    eax,edx
  12:	c7 41 10 00 fd ff ff 	mov    DWORD PTR [ecx+0x10],0xfffffd00
  19:	c1 e8 1f             	shr    eax,0x1f
  1c:	c6 41 50 00          	mov    BYTE PTR [ecx+0x50],0x0
  20:	01 d0                	add    eax,edx
  22:	8d 51 1e             	lea    edx,[ecx+0x1e]
  25:	d1 f8                	sar    eax,1
  27:	89 01                	mov    DWORD PTR [ecx],eax
  29:	c1 e0 08             	shl    eax,0x8
  2c:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  2f:	8b 41 58             	mov    eax,DWORD PTR [ecx+0x58]
  32:	83 e8 32             	sub    eax,0x32
  35:	c1 e0 08             	shl    eax,0x8
  38:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  3b:	8d 42 f6             	lea    eax,[edx-0xa]
  3e:	66 90                	xchg   ax,ax
  40:	c6 00 01             	mov    BYTE PTR [eax],0x1
  43:	83 c0 02             	add    eax,0x2
  46:	c6 40 ff 01          	mov    BYTE PTR [eax-0x1],0x1
  4a:	39 d0                	cmp    eax,edx
  4c:	75 f2                	jne    40 <game_reset+0x40>
  4e:	8d 50 0a             	lea    edx,[eax+0xa]
  51:	39 da                	cmp    edx,ebx
  53:	75 e6                	jne    3b <game_reset+0x3b>
  55:	c7 41 48 00 00 00 00 	mov    DWORD PTR [ecx+0x48],0x0
  5c:	5b                   	pop    ebx
  5d:	c7 41 4c 03 00 00 00 	mov    DWORD PTR [ecx+0x4c],0x3
  64:	c6 41 51 00          	mov    BYTE PTR [ecx+0x51],0x0
  68:	c3                   	ret
  69:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000070 <game_create>:
  70:	53                   	push   ebx
  71:	31 db                	xor    ebx,ebx
  73:	83 ec 08             	sub    esp,0x8
  76:	a1 00 00 00 00       	mov    eax,ds:0x0
  7b:	83 f8 01             	cmp    eax,0x1
  7e:	7f 37                	jg     b7 <game_create+0x47>
  80:	8d 50 01             	lea    edx,[eax+0x1]
  83:	83 ec 04             	sub    esp,0x4
  86:	6b c0 5c             	imul   eax,eax,0x5c
  89:	6a 5c                	push   0x5c
  8b:	6a 00                	push   0x0
  8d:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  93:	8d 98 20 00 00 00    	lea    ebx,[eax+0x20]
  99:	53                   	push   ebx
  9a:	e8 fc ff ff ff       	call   9b <game_create+0x2b>
  9f:	89 d8                	mov    eax,ebx
  a1:	c7 43 54 90 01 00 00 	mov    DWORD PTR [ebx+0x54],0x190
  a8:	c7 43 58 54 01 00 00 	mov    DWORD PTR [ebx+0x58],0x154
  af:	e8 4c ff ff ff       	call   0 <game_reset>
  b4:	83 c4 10             	add    esp,0x10
  b7:	83 c4 08             	add    esp,0x8
  ba:	89 d8                	mov    eax,ebx
  bc:	5b                   	pop    ebx
  bd:	c3                   	ret
  be:	66 90                	xchg   ax,ax

000000c0 <game_draw>:
  c0:	55                   	push   ebp
  c1:	57                   	push   edi
  c2:	56                   	push   esi
  c3:	53                   	push   ebx
  c4:	81 ec 8c 00 00 00    	sub    esp,0x8c
  ca:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  d1:	8b 79 68             	mov    edi,DWORD PTR [ecx+0x68]
  d4:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  d8:	85 ff                	test   edi,edi
  da:	0f 84 98 03 00 00    	je     478 <game_draw+0x3b8>
  e0:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  e3:	83 ec 08             	sub    esp,0x8
  e6:	89 fe                	mov    esi,edi
  e8:	83 e8 10             	sub    eax,0x10
  eb:	89 47 54             	mov    DWORD PTR [edi+0x54],eax
  ee:	8b 59 0c             	mov    ebx,DWORD PTR [ecx+0xc]
  f1:	8d 53 c0             	lea    edx,[ebx-0x40]
  f4:	89 57 58             	mov    DWORD PTR [edi+0x58],edx
  f7:	8b 19                	mov    ebx,DWORD PTR [ecx]
  f9:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  fc:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
 100:	83 c3 08             	add    ebx,0x8
 103:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
 107:	83 c1 20             	add    ecx,0x20
 10a:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
 10e:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
 112:	68 1b 11 11 00       	push   0x11111b
 117:	6a 08                	push   0x8
 119:	52                   	push   edx
 11a:	50                   	push   eax
 11b:	51                   	push   ecx
 11c:	53                   	push   ebx
 11d:	e8 fc ff ff ff       	call   11e <game_draw+0x5e>
 122:	8b 7f 54             	mov    edi,DWORD PTR [edi+0x54]
 125:	b8 67 66 66 66       	mov    eax,0x66666667
 12a:	83 c4 20             	add    esp,0x20
 12d:	8d 4f ec             	lea    ecx,[edi-0x14]
 130:	f7 e9                	imul   ecx
 132:	c1 f9 1f             	sar    ecx,0x1f
 135:	8d 46 1e             	lea    eax,[esi+0x1e]
 138:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
 13c:	c1 fa 02             	sar    edx,0x2
 13f:	89 d3                	mov    ebx,edx
 141:	29 cb                	sub    ebx,ecx
 143:	80 7e 50 00          	cmp    BYTE PTR [esi+0x50],0x0
 147:	0f 84 6e 01 00 00    	je     2bb <game_draw+0x1fb>
 14d:	0f b6 46 51          	movzx  eax,BYTE PTR [esi+0x51]
 151:	84 c0                	test   al,al
 153:	0f 85 62 01 00 00    	jne    2bb <game_draw+0x1fb>
 159:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
 15c:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
 15f:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
 163:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
 167:	03 4e 04             	add    ecx,DWORD PTR [esi+0x4]
 16a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 16e:	03 56 08             	add    edx,DWORD PTR [esi+0x8]
 171:	85 c9                	test   ecx,ecx
 173:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
 176:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
 179:	8d b1 ff 00 00 00    	lea    esi,[ecx+0xff]
 17f:	0f 49 f1             	cmovns esi,ecx
 182:	89 f5                	mov    ebp,esi
 184:	8d b2 ff 00 00 00    	lea    esi,[edx+0xff]
 18a:	c1 fd 08             	sar    ebp,0x8
 18d:	85 d2                	test   edx,edx
 18f:	0f 49 f2             	cmovns esi,edx
 192:	c1 fe 08             	sar    esi,0x8
 195:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
 199:	81 f9 ff 04 00 00    	cmp    ecx,0x4ff
 19f:	7f 14                	jg     1b5 <game_draw+0xf5>
 1a1:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
 1a5:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
 1a9:	f7 d9                	neg    ecx
 1ab:	c7 46 04 00 04 00 00 	mov    DWORD PTR [esi+0x4],0x400
 1b2:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
 1b5:	83 ef 04             	sub    edi,0x4
 1b8:	39 fd                	cmp    ebp,edi
 1ba:	7c 0d                	jl     1c9 <game_draw+0x109>
 1bc:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 1c0:	c1 e7 08             	shl    edi,0x8
 1c3:	f7 59 0c             	neg    DWORD PTR [ecx+0xc]
 1c6:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
 1c9:	81 fa ff 04 00 00    	cmp    edx,0x4ff
 1cf:	7f 14                	jg     1e5 <game_draw+0x125>
 1d1:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
 1d5:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 1d9:	f7 da                	neg    edx
 1db:	c7 41 08 00 04 00 00 	mov    DWORD PTR [ecx+0x8],0x400
 1e2:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
 1e5:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 1e9:	8b 4f 58             	mov    ecx,DWORD PTR [edi+0x58]
 1ec:	8b 37                	mov    esi,DWORD PTR [edi]
 1ee:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
 1f2:	8d 51 e2             	lea    edx,[ecx-0x1e]
 1f5:	89 74 24 3c          	mov    DWORD PTR [esp+0x3c],esi
 1f9:	39 54 24 10          	cmp    DWORD PTR [esp+0x10],edx
 1fd:	0f 8d b2 03 00 00    	jge    5b5 <game_draw+0x4f5>
 203:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 207:	88 44 24 3b          	mov    BYTE PTR [esp+0x3b],al
 20b:	8d 77 1e             	lea    esi,[edi+0x1e]
 20e:	83 c7 50             	add    edi,0x50
 211:	89 74 24 2c          	mov    DWORD PTR [esp+0x2c],esi
 215:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
 219:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
 21d:	bf 1e 00 00 00       	mov    edi,0x1e
 222:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
 226:	39 7c 24 10          	cmp    DWORD PTR [esp+0x10],edi
 22a:	8d 46 f6             	lea    eax,[esi-0xa]
 22d:	ba 0a 00 00 00       	mov    edx,0xa
 232:	0f 9d 44 24 08       	setge  BYTE PTR [esp+0x8]
 237:	90                   	nop
 238:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 23f:	00 
 240:	8d 0c 1a             	lea    ecx,[edx+ebx*1]
 243:	80 38 00             	cmp    BYTE PTR [eax],0x0
 246:	74 18                	je     260 <game_draw+0x1a0>
 248:	39 d5                	cmp    ebp,edx
 24a:	7c 14                	jl     260 <game_draw+0x1a0>
 24c:	39 cd                	cmp    ebp,ecx
 24e:	7f 10                	jg     260 <game_draw+0x1a0>
 250:	80 7c 24 08 00       	cmp    BYTE PTR [esp+0x8],0x0
 255:	0f 85 ad 02 00 00    	jne    508 <game_draw+0x448>
 25b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 260:	83 c0 01             	add    eax,0x1
 263:	89 ca                	mov    edx,ecx
 265:	39 f0                	cmp    eax,esi
 267:	75 d7                	jne    240 <game_draw+0x180>
 269:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
 26d:	8d 70 0a             	lea    esi,[eax+0xa]
 270:	83 c7 13             	add    edi,0x13
 273:	3b 74 24 1c          	cmp    esi,DWORD PTR [esp+0x1c]
 277:	75 a9                	jne    222 <game_draw+0x162>
 279:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
 27d:	0f b6 44 24 3b       	movzx  eax,BYTE PTR [esp+0x3b]
 282:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 286:	39 54 24 10          	cmp    DWORD PTR [esp+0x10],edx
 28a:	0f 8d da 02 00 00    	jge    56a <game_draw+0x4aa>
 290:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
 294:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
 298:	8d 56 f6             	lea    edx,[esi-0xa]
 29b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 2a0:	0a 02                	or     al,BYTE PTR [edx]
 2a2:	83 c2 02             	add    edx,0x2
 2a5:	0a 42 ff             	or     al,BYTE PTR [edx-0x1]
 2a8:	39 f2                	cmp    edx,esi
 2aa:	75 f4                	jne    2a0 <game_draw+0x1e0>
 2ac:	8d 72 0a             	lea    esi,[edx+0xa]
 2af:	39 fe                	cmp    esi,edi
 2b1:	75 e5                	jne    298 <game_draw+0x1d8>
 2b3:	84 c0                	test   al,al
 2b5:	0f 84 76 02 00 00    	je     531 <game_draw+0x471>
 2bb:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
 2bf:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 2c3:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
 2c7:	83 c1 13             	add    ecx,0x13
 2ca:	83 c0 3e             	add    eax,0x3e
 2cd:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
 2d1:	8d 4b fe             	lea    ecx,[ebx-0x2]
 2d4:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
 2d8:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 2dc:	31 c0                	xor    eax,eax
 2de:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
 2e2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 2e6:	8d 77 f6             	lea    esi,[edi-0xa]
 2e9:	89 e8                	mov    eax,ebp
 2eb:	89 dd                	mov    ebp,ebx
 2ed:	89 c3                	mov    ebx,eax
 2ef:	90                   	nop
 2f0:	80 3e 00             	cmp    BYTE PTR [esi],0x0
 2f3:	74 23                	je     318 <game_draw+0x258>
 2f5:	83 ec 08             	sub    esp,0x8
 2f8:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 2fc:	ff 34 85 00 00 00 00 	push   DWORD PTR [eax*4+0x0]
 303:	6a 03                	push   0x3
 305:	6a 10                	push   0x10
 307:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 30b:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 30f:	53                   	push   ebx
 310:	e8 fc ff ff ff       	call   311 <game_draw+0x251>
 315:	83 c4 20             	add    esp,0x20
 318:	83 c6 01             	add    esi,0x1
 31b:	01 eb                	add    ebx,ebp
 31d:	39 f7                	cmp    edi,esi
 31f:	75 cf                	jne    2f0 <game_draw+0x230>
 321:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 325:	83 44 24 0c 13       	add    DWORD PTR [esp+0xc],0x13
 32a:	89 eb                	mov    ebx,ebp
 32c:	83 c7 0a             	add    edi,0xa
 32f:	83 c0 01             	add    eax,0x1
 332:	83 f8 05             	cmp    eax,0x5
 335:	75 a7                	jne    2de <game_draw+0x21e>
 337:	83 ec 08             	sub    esp,0x8
 33a:	68 fe be b4 00       	push   0xb4befe
 33f:	6a 04                	push   0x4
 341:	6a 0a                	push   0xa
 343:	6a 3c                	push   0x3c
 345:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
 349:	8b 74 24 38          	mov    esi,DWORD PTR [esp+0x38]
 34d:	8b 45 58             	mov    eax,DWORD PTR [ebp+0x58]
 350:	8d 44 30 e2          	lea    eax,[eax+esi*1-0x1e]
 354:	50                   	push   eax
 355:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
 359:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
 35c:	8d 44 18 e2          	lea    eax,[eax+ebx*1-0x1e]
 360:	50                   	push   eax
 361:	e8 fc ff ff ff       	call   362 <game_draw+0x2a2>
 366:	83 c4 20             	add    esp,0x20
 369:	68 ff ff ff 00       	push   0xffffff
 36e:	6a 04                	push   0x4
 370:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
 373:	85 d2                	test   edx,edx
 375:	8d 82 ff 00 00 00    	lea    eax,[edx+0xff]
 37b:	0f 49 c2             	cmovns eax,edx
 37e:	c1 f8 08             	sar    eax,0x8
 381:	01 f0                	add    eax,esi
 383:	50                   	push   eax
 384:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
 387:	85 d2                	test   edx,edx
 389:	8d 82 ff 00 00 00    	lea    eax,[edx+0xff]
 38f:	0f 49 c2             	cmovns eax,edx
 392:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
 396:	c1 f8 08             	sar    eax,0x8
 399:	01 d8                	add    eax,ebx
 39b:	50                   	push   eax
 39c:	e8 fc ff ff ff       	call   39d <game_draw+0x2dd>
 3a1:	c6 44 24 70 00       	mov    BYTE PTR [esp+0x70],0x0
 3a6:	58                   	pop    eax
 3a7:	5a                   	pop    edx
 3a8:	68 00 00 00 00       	push   0x0
 3ad:	8d 74 24 6c          	lea    esi,[esp+0x6c]
 3b1:	56                   	push   esi
 3b2:	e8 fc ff ff ff       	call   3b3 <game_draw+0x2f3>
 3b7:	83 c4 0c             	add    esp,0xc
 3ba:	6a 0a                	push   0xa
 3bc:	8d 5c 24 50          	lea    ebx,[esp+0x50]
 3c0:	53                   	push   ebx
 3c1:	ff 75 48             	push   DWORD PTR [ebp+0x48]
 3c4:	e8 fc ff ff ff       	call   3c5 <game_draw+0x305>
 3c9:	59                   	pop    ecx
 3ca:	5f                   	pop    edi
 3cb:	53                   	push   ebx
 3cc:	56                   	push   esi
 3cd:	e8 fc ff ff ff       	call   3ce <game_draw+0x30e>
 3d2:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
 3d6:	68 f4 d6 cd 00       	push   0xcdd6f4
 3db:	56                   	push   esi
 3dc:	83 c7 28             	add    edi,0x28
 3df:	57                   	push   edi
 3e0:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
 3e4:	83 c0 10             	add    eax,0x10
 3e7:	50                   	push   eax
 3e8:	e8 fc ff ff ff       	call   3e9 <game_draw+0x329>
 3ed:	c7 44 24 70 4c 69 76 	mov    DWORD PTR [esp+0x70],0x6576694c
 3f4:	65 
 3f5:	c7 44 24 74 73 3a 20 	mov    DWORD PTR [esp+0x74],0x203a73
 3fc:	00 
 3fd:	c7 44 24 78 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
 404:	00 
 405:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [esp+0x7c],0x0
 40c:	00 
 40d:	83 c4 1c             	add    esp,0x1c
 410:	6a 0a                	push   0xa
 412:	53                   	push   ebx
 413:	ff 75 4c             	push   DWORD PTR [ebp+0x4c]
 416:	e8 fc ff ff ff       	call   417 <game_draw+0x357>
 41b:	58                   	pop    eax
 41c:	5a                   	pop    edx
 41d:	53                   	push   ebx
 41e:	8d 5c 24 5c          	lea    ebx,[esp+0x5c]
 422:	53                   	push   ebx
 423:	e8 fc ff ff ff       	call   424 <game_draw+0x364>
 428:	68 a8 8b f3 00       	push   0xf38ba8
 42d:	53                   	push   ebx
 42e:	57                   	push   edi
 42f:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 433:	03 45 54             	add    eax,DWORD PTR [ebp+0x54]
 436:	83 e8 50             	sub    eax,0x50
 439:	50                   	push   eax
 43a:	e8 fc ff ff ff       	call   43b <game_draw+0x37b>
 43f:	8b 45 58             	mov    eax,DWORD PTR [ebp+0x58]
 442:	83 c4 20             	add    esp,0x20
 445:	80 7d 51 00          	cmp    BYTE PTR [ebp+0x51],0x0
 449:	75 38                	jne    483 <game_draw+0x3c3>
 44b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 44f:	80 79 50 00          	cmp    BYTE PTR [ecx+0x50],0x0
 453:	0f 84 a7 01 00 00    	je     600 <game_draw+0x540>
 459:	68 c8 ad a6 00       	push   0xa6adc8
 45e:	68 00 00 00 00       	push   0x0
 463:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
 467:	8d 44 01 06          	lea    eax,[ecx+eax*1+0x6]
 46b:	50                   	push   eax
 46c:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 470:	e8 fc ff ff ff       	call   471 <game_draw+0x3b1>
 475:	83 c4 10             	add    esp,0x10
 478:	81 c4 8c 00 00 00    	add    esp,0x8c
 47e:	5b                   	pop    ebx
 47f:	5e                   	pop    esi
 480:	5f                   	pop    edi
 481:	5d                   	pop    ebp
 482:	c3                   	ret
 483:	89 c2                	mov    edx,eax
 485:	83 ec 08             	sub    esp,0x8
 488:	c1 ea 1f             	shr    edx,0x1f
 48b:	68 44 32 31 00       	push   0x313244
 490:	01 d0                	add    eax,edx
 492:	6a 0c                	push   0xc
 494:	6a 28                	push   0x28
 496:	d1 f8                	sar    eax,1
 498:	68 a0 00 00 00       	push   0xa0
 49d:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
 4a1:	8d 44 03 ec          	lea    eax,[ebx+eax*1-0x14]
 4a5:	50                   	push   eax
 4a6:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
 4aa:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
 4ae:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
 4b1:	89 d0                	mov    eax,edx
 4b3:	c1 e8 1f             	shr    eax,0x1f
 4b6:	01 d0                	add    eax,edx
 4b8:	d1 f8                	sar    eax,1
 4ba:	8d 44 06 b0          	lea    eax,[esi+eax*1-0x50]
 4be:	50                   	push   eax
 4bf:	e8 fc ff ff ff       	call   4c0 <game_draw+0x400>
 4c4:	83 c4 20             	add    esp,0x20
 4c7:	68 a8 8b f3 00       	push   0xf38ba8
 4cc:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
 4cf:	68 08 00 00 00       	push   0x8
 4d4:	89 d0                	mov    eax,edx
 4d6:	c1 e8 1f             	shr    eax,0x1f
 4d9:	01 d0                	add    eax,edx
 4db:	d1 f8                	sar    eax,1
 4dd:	8d 44 03 f8          	lea    eax,[ebx+eax*1-0x8]
 4e1:	50                   	push   eax
 4e2:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
 4e5:	89 d0                	mov    eax,edx
 4e7:	c1 e8 1f             	shr    eax,0x1f
 4ea:	01 d0                	add    eax,edx
 4ec:	d1 f8                	sar    eax,1
 4ee:	8d 44 06 d0          	lea    eax,[esi+eax*1-0x30]
 4f2:	50                   	push   eax
 4f3:	e8 fc ff ff ff       	call   4f4 <game_draw+0x434>
 4f8:	8b 47 58             	mov    eax,DWORD PTR [edi+0x58]
 4fb:	83 c4 10             	add    esp,0x10
 4fe:	e9 56 ff ff ff       	jmp    459 <game_draw+0x399>
 503:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 508:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
 50c:	8d 57 10             	lea    edx,[edi+0x10]
 50f:	39 54 24 10          	cmp    DWORD PTR [esp+0x10],edx
 513:	0f 8f 47 fd ff ff    	jg     260 <game_draw+0x1a0>
 519:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 51d:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 521:	c6 00 00             	mov    BYTE PTR [eax],0x0
 524:	29 f2                	sub    edx,esi
 526:	f7 5f 10             	neg    DWORD PTR [edi+0x10]
 529:	01 57 48             	add    DWORD PTR [edi+0x48],edx
 52c:	e9 2f fd ff ff       	jmp    260 <game_draw+0x1a0>
 531:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 535:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 539:	81 40 48 f4 01 00 00 	add    DWORD PTR [eax+0x48],0x1f4
 540:	8d 41 f6             	lea    eax,[ecx-0xa]
 543:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 548:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 54f:	00 
 550:	c6 00 01             	mov    BYTE PTR [eax],0x1
 553:	83 c0 02             	add    eax,0x2
 556:	c6 40 ff 01          	mov    BYTE PTR [eax-0x1],0x1
 55a:	39 c1                	cmp    ecx,eax
 55c:	75 f2                	jne    550 <game_draw+0x490>
 55e:	83 c1 0a             	add    ecx,0xa
 561:	39 d1                	cmp    ecx,edx
 563:	75 db                	jne    540 <game_draw+0x480>
 565:	e9 51 fd ff ff       	jmp    2bb <game_draw+0x1fb>
 56a:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 56e:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
 571:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 575:	83 ea 01             	sub    edx,0x1
 578:	89 57 4c             	mov    DWORD PTR [edi+0x4c],edx
 57b:	85 d2                	test   edx,edx
 57d:	0f 8e be 00 00 00    	jle    641 <game_draw+0x581>
 583:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
 587:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 58b:	c1 e2 08             	shl    edx,0x8
 58e:	c7 47 0c 00 02 00 00 	mov    DWORD PTR [edi+0xc],0x200
 595:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
 598:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 59c:	c7 47 10 00 fd ff ff 	mov    DWORD PTR [edi+0x10],0xfffffd00
 5a3:	83 ea 32             	sub    edx,0x32
 5a6:	c6 47 50 00          	mov    BYTE PTR [edi+0x50],0x0
 5aa:	c1 e2 08             	shl    edx,0x8
 5ad:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
 5b0:	e9 db fc ff ff       	jmp    290 <game_draw+0x1d0>
 5b5:	8d 51 ec             	lea    edx,[ecx-0x14]
 5b8:	39 54 24 10          	cmp    DWORD PTR [esp+0x10],edx
 5bc:	0f 8f 41 fc ff ff    	jg     203 <game_draw+0x143>
 5c2:	8d 56 e2             	lea    edx,[esi-0x1e]
 5c5:	39 d5                	cmp    ebp,edx
 5c7:	0f 8c 36 fc ff ff    	jl     203 <game_draw+0x143>
 5cd:	8d 56 1e             	lea    edx,[esi+0x1e]
 5d0:	39 d5                	cmp    ebp,edx
 5d2:	0f 8f 2b fc ff ff    	jg     203 <game_draw+0x143>
 5d8:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
 5db:	85 d2                	test   edx,edx
 5dd:	0f 8e 20 fc ff ff    	jle    203 <game_draw+0x143>
 5e3:	f7 da                	neg    edx
 5e5:	89 57 10             	mov    DWORD PTR [edi+0x10],edx
 5e8:	89 ea                	mov    edx,ebp
 5ea:	29 f2                	sub    edx,esi
 5ec:	c1 e2 05             	shl    edx,0x5
 5ef:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
 5f2:	e9 0c fc ff ff       	jmp    203 <game_draw+0x143>
 5f7:	90                   	nop
 5f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 5ff:	00 
 600:	89 c2                	mov    edx,eax
 602:	68 c8 ad a6 00       	push   0xa6adc8
 607:	c1 ea 1f             	shr    edx,0x1f
 60a:	68 12 00 00 00       	push   0x12
 60f:	01 d0                	add    eax,edx
 611:	d1 f8                	sar    eax,1
 613:	03 44 24 28          	add    eax,DWORD PTR [esp+0x28]
 617:	50                   	push   eax
 618:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
 61c:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
 620:	8b 53 54             	mov    edx,DWORD PTR [ebx+0x54]
 623:	89 d0                	mov    eax,edx
 625:	c1 e8 1f             	shr    eax,0x1f
 628:	01 d0                	add    eax,edx
 62a:	d1 f8                	sar    eax,1
 62c:	8d 44 01 b8          	lea    eax,[ecx+eax*1-0x48]
 630:	50                   	push   eax
 631:	e8 fc ff ff ff       	call   632 <game_draw+0x572>
 636:	8b 43 58             	mov    eax,DWORD PTR [ebx+0x58]
 639:	83 c4 10             	add    esp,0x10
 63c:	e9 18 fe ff ff       	jmp    459 <game_draw+0x399>
 641:	c6 47 51 01          	mov    BYTE PTR [edi+0x51],0x1
 645:	e9 46 fc ff ff       	jmp    290 <game_draw+0x1d0>
 64a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000650 <game_on_key>:
 650:	53                   	push   ebx
 651:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 655:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
 659:	8b 40 68             	mov    eax,DWORD PTR [eax+0x68]
 65c:	85 c0                	test   eax,eax
 65e:	74 17                	je     677 <game_on_key+0x27>
 660:	80 fa fc             	cmp    dl,0xfc
 663:	74 1b                	je     680 <game_on_key+0x30>
 665:	80 fa fb             	cmp    dl,0xfb
 668:	74 2e                	je     698 <game_on_key+0x48>
 66a:	80 fa 20             	cmp    dl,0x20
 66d:	74 51                	je     6c0 <game_on_key+0x70>
 66f:	83 e2 df             	and    edx,0xffffffdf
 672:	80 fa 52             	cmp    dl,0x52
 675:	74 39                	je     6b0 <game_on_key+0x60>
 677:	5b                   	pop    ebx
 678:	c3                   	ret
 679:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 680:	8b 08                	mov    ecx,DWORD PTR [eax]
 682:	8d 51 f0             	lea    edx,[ecx-0x10]
 685:	b9 1e 00 00 00       	mov    ecx,0x1e
 68a:	39 ca                	cmp    edx,ecx
 68c:	0f 4c d1             	cmovl  edx,ecx
 68f:	89 10                	mov    DWORD PTR [eax],edx
 691:	5b                   	pop    ebx
 692:	c3                   	ret
 693:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 698:	8b 08                	mov    ecx,DWORD PTR [eax]
 69a:	8b 50 54             	mov    edx,DWORD PTR [eax+0x54]
 69d:	83 c1 10             	add    ecx,0x10
 6a0:	8d 5a e3             	lea    ebx,[edx-0x1d]
 6a3:	83 ea 1e             	sub    edx,0x1e
 6a6:	39 d9                	cmp    ecx,ebx
 6a8:	0f 4c d1             	cmovl  edx,ecx
 6ab:	89 10                	mov    DWORD PTR [eax],edx
 6ad:	5b                   	pop    ebx
 6ae:	c3                   	ret
 6af:	90                   	nop
 6b0:	5b                   	pop    ebx
 6b1:	e9 4a f9 ff ff       	jmp    0 <game_reset>
 6b6:	66 90                	xchg   ax,ax
 6b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6bf:	00 
 6c0:	80 78 51 00          	cmp    BYTE PTR [eax+0x51],0x0
 6c4:	75 ea                	jne    6b0 <game_on_key+0x60>
 6c6:	c6 40 50 01          	mov    BYTE PTR [eax+0x50],0x1
 6ca:	5b                   	pop    ebx
 6cb:	c3                   	ret

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	53                   	push   ebx
   1:	63 6f 72             	arpl   WORD PTR [edi+0x72],ebp
   4:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
   7:	00 47 41             	add    BYTE PTR [edi+0x41],al
   a:	4d                   	dec    ebp
   b:	45                   	inc    ebp
   c:	20 4f 56             	and    BYTE PTR [edi+0x56],cl
   f:	45                   	inc    ebp
  10:	52                   	push   edx
  11:	00 53 50             	add    BYTE PTR [ebx+0x50],dl
  14:	41                   	inc    ecx
  15:	43                   	inc    ebx
  16:	45                   	inc    ebp
  17:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
  1b:	6c                   	ins    BYTE PTR es:[edi],dx
  1c:	61                   	popa
  1d:	75 6e                	jne    8d <game_create+0x1d>
  1f:	63 68 00             	arpl   WORD PTR [eax+0x0],ebp

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	5b                   	pop    ebx
   1:	4c                   	dec    esp
   2:	45                   	inc    ebp
   3:	46                   	inc    esi
   4:	54                   	push   esp
   5:	2f                   	das
   6:	52                   	push   edx
   7:	49                   	dec    ecx
   8:	47                   	inc    edi
   9:	48                   	dec    eax
   a:	54                   	push   esp
   b:	5d                   	pop    ebp
   c:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
   f:	76 65                	jbe    76 <game_create+0x6>
  11:	20 20                	and    BYTE PTR [eax],ah
  13:	5b                   	pop    ebx
  14:	53                   	push   ebx
  15:	50                   	push   eax
  16:	41                   	inc    ecx
  17:	43                   	inc    ebx
  18:	45                   	inc    ebp
  19:	5d                   	pop    ebp
  1a:	20 4c 61 75          	and    BYTE PTR [ecx+eiz*2+0x75],cl
  1e:	6e                   	outs   dx,BYTE PTR ds:[esi]
  1f:	63 68 20             	arpl   WORD PTR [eax+0x20],ebp
  22:	20 5b 52             	and    BYTE PTR [ebx+0x52],bl
  25:	5d                   	pop    ebp
  26:	20 52 65             	and    BYTE PTR [edx+0x65],dl
  29:	73 65                	jae    90 <game_create+0x20>
  2b:	74 00                	je     2d <gstates+0xd>

Disassembly of section .rodata:

00000000 <brick_colors>:
   0:	a8 8b                	test   al,0x8b
   2:	f3 00 87 b3 fa 00 af 	repz add BYTE PTR [edi-0x50ff054d],al
   9:	e2 f9                	loop   4 <brick_colors+0x4>
   b:	00 a1 e3 a6 00 fa    	add    BYTE PTR [ecx-0x5ff591d],ah
  11:	b4 89                	mov    ah,0x89
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
  17:	00 18                	add    BYTE PTR [eax],bl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	69 00 00 00 00 41    	imul   eax,DWORD PTR [eax],0x41000000
  2a:	0e                   	push   cs
  2b:	08 83 02 02 5c c3    	or     BYTE PTR [ebx-0x3ca3fdfe],al
  31:	0e                   	push   cs
  32:	04 00                	add    al,0x0
  34:	2c 00                	sub    al,0x0
  36:	00 00                	add    BYTE PTR [eax],al
  38:	38 00                	cmp    BYTE PTR [eax],al
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	70 00                	jo     3e <.eh_frame+0x3e>
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	4e                   	dec    esi
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 00                	add    BYTE PTR [eax],al
  45:	41                   	inc    ecx
  46:	0e                   	push   cs
  47:	08 83 02 45 0e 10    	or     BYTE PTR [ebx+0x100e4502],al
  4d:	50                   	push   eax
  4e:	0e                   	push   cs
  4f:	14 45                	adc    al,0x45
  51:	0e                   	push   cs
  52:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
  55:	1c 4d                	sbb    al,0x4d
  57:	0e                   	push   cs
  58:	20 5d 0e             	and    BYTE PTR [ebp+0xe],bl
  5b:	10 43 0e             	adc    BYTE PTR [ebx+0xe],al
  5e:	08 43 c3             	or     BYTE PTR [ebx-0x3d],al
  61:	0e                   	push   cs
  62:	04 00                	add    al,0x0
  64:	80 01 00             	add    BYTE PTR [ecx],0x0
  67:	00 68 00             	add    BYTE PTR [eax+0x0],ch
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	c0 00 00             	rol    BYTE PTR [eax],0x0
  6f:	00 8a 05 00 00 00    	add    BYTE PTR [edx+0x5],cl
  75:	41                   	inc    ecx
  76:	0e                   	push   cs
  77:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  7d:	87 03                	xchg   DWORD PTR [ebx],eax
  7f:	41                   	inc    ecx
  80:	0e                   	push   cs
  81:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  87:	83 05 46 0e a0 01 5c 	add    DWORD PTR ds:0x1a00e46,0x5c
  8e:	0e                   	push   cs
  8f:	a8 01                	test   al,0x1
  91:	71 0e                	jno    a1 <.eh_frame+0xa1>
  93:	ac                   	lods   al,BYTE PTR ds:[esi]
  94:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  97:	b0 01                	mov    al,0x1
  99:	41                   	inc    ecx
  9a:	0e                   	push   cs
  9b:	b4 01                	mov    ah,0x1
  9d:	41                   	inc    ecx
  9e:	0e                   	push   cs
  9f:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
  a4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  a7:	c0 01 50             	rol    BYTE PTR [ecx],0x50
  aa:	0e                   	push   cs
  ab:	a0 01 03 cb 01       	mov    al,ds:0x1cb0301
  b0:	0e                   	push   cs
  b1:	a8 01                	test   al,0x1
  b3:	4b                   	dec    ebx
  b4:	0e                   	push   cs
  b5:	ac                   	lods   al,BYTE PTR ds:[esi]
  b6:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  b9:	b0 01                	mov    al,0x1
  bb:	42                   	inc    edx
  bc:	0e                   	push   cs
  bd:	b4 01                	mov    ah,0x1
  bf:	44                   	inc    esp
  c0:	0e                   	push   cs
  c1:	b8 01 44 0e bc       	mov    eax,0xbc0e4401
  c6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  c9:	c0 01 48             	rol    BYTE PTR [ecx],0x48
  cc:	0e                   	push   cs
  cd:	a0 01 62 0e a8       	mov    al,ds:0xa80e6201
  d2:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  d5:	ac                   	lods   al,BYTE PTR ds:[esi]
  d6:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  d9:	b0 01                	mov    al,0x1
  db:	42                   	inc    edx
  dc:	0e                   	push   cs
  dd:	b4 01                	mov    ah,0x1
  df:	42                   	inc    edx
  e0:	0e                   	push   cs
  e1:	b8 01 50 0e bc       	mov    eax,0xbc0e5001
  e6:	01 4c 0e c0          	add    DWORD PTR [esi+ecx*1-0x40],ecx
  ea:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
  ed:	a0 01 45 0e a4       	mov    al,ds:0xa40e4501
  f2:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  f5:	a8 01                	test   al,0x1
  f7:	54                   	push   esp
  f8:	0e                   	push   cs
  f9:	ac                   	lods   al,BYTE PTR ds:[esi]
  fa:	01 58 0e             	add    DWORD PTR [eax+0xe],ebx
  fd:	b0 01                	mov    al,0x1
  ff:	4b                   	dec    ebx
 100:	0e                   	push   cs
 101:	ac                   	lods   al,BYTE PTR ds:[esi]
 102:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 105:	a8 01                	test   al,0x1
 107:	45                   	inc    ebp
 108:	0e                   	push   cs
 109:	ac                   	lods   al,BYTE PTR ds:[esi]
 10a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 10d:	b0 01                	mov    al,0x1
 10f:	48                   	dec    eax
 110:	0e                   	push   cs
 111:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 112:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 115:	a8 01                	test   al,0x1
 117:	45                   	inc    ebp
 118:	0e                   	push   cs
 119:	ac                   	lods   al,BYTE PTR ds:[esi]
 11a:	01 43 0e             	add    DWORD PTR [ebx+0xe],eax
 11d:	b0 01                	mov    al,0x1
 11f:	46                   	inc    esi
 120:	0e                   	push   cs
 121:	ac                   	lods   al,BYTE PTR ds:[esi]
 122:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 125:	a8 01                	test   al,0x1
 127:	41                   	inc    ecx
 128:	0e                   	push   cs
 129:	ac                   	lods   al,BYTE PTR ds:[esi]
 12a:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 12d:	b0 01                	mov    al,0x1
 12f:	4e                   	dec    esi
 130:	0e                   	push   cs
 131:	b4 01                	mov    ah,0x1
 133:	41                   	inc    ecx
 134:	0e                   	push   cs
 135:	b8 01 44 0e bc       	mov    eax,0xbc0e4401
 13a:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 13d:	c0 01 68             	rol    BYTE PTR [ecx],0x68
 140:	0e                   	push   cs
 141:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 142:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 145:	a8 01                	test   al,0x1
 147:	41                   	inc    ecx
 148:	0e                   	push   cs
 149:	ac                   	lods   al,BYTE PTR ds:[esi]
 14a:	01 43 0e             	add    DWORD PTR [ebx+0xe],eax
 14d:	b0 01                	mov    al,0x1
 14f:	46                   	inc    esi
 150:	0e                   	push   cs
 151:	ac                   	lods   al,BYTE PTR ds:[esi]
 152:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 155:	a8 01                	test   al,0x1
 157:	41                   	inc    ecx
 158:	0e                   	push   cs
 159:	ac                   	lods   al,BYTE PTR ds:[esi]
 15a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 15d:	b0 01                	mov    al,0x1
 15f:	4a                   	dec    edx
 160:	0e                   	push   cs
 161:	b4 01                	mov    ah,0x1
 163:	41                   	inc    ecx
 164:	0e                   	push   cs
 165:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 16a:	01 4b 0e             	add    DWORD PTR [ebx+0xe],ecx
 16d:	c0 01 4b             	rol    BYTE PTR [ecx],0x4b
 170:	0e                   	push   cs
 171:	a0 01 59 0e a4       	mov    al,ds:0xa40e5901
 176:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 179:	a8 01                	test   al,0x1
 17b:	49                   	dec    ecx
 17c:	0e                   	push   cs
 17d:	ac                   	lods   al,BYTE PTR ds:[esi]
 17e:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 182:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 185:	a0 01 46 0a 0e       	mov    al,ds:0xe0a4601
 18a:	14 41                	adc    al,0x41
 18c:	c3                   	ret
 18d:	0e                   	push   cs
 18e:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 191:	0e                   	push   cs
 192:	0c 41                	or     al,0x41
 194:	c7                   	(bad)
 195:	0e                   	push   cs
 196:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 199:	0e                   	push   cs
 19a:	04 41                	add    al,0x41
 19c:	0b 45 0e             	or     eax,DWORD PTR [ebp+0xe]
 19f:	a8 01                	test   al,0x1
 1a1:	48                   	dec    eax
 1a2:	0e                   	push   cs
 1a3:	ac                   	lods   al,BYTE PTR ds:[esi]
 1a4:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 1a8:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 1ab:	b4 01                	mov    ah,0x1
 1ad:	47                   	inc    edi
 1ae:	0e                   	push   cs
 1af:	b8 01 49 0e bc       	mov    eax,0xbc0e4901
 1b4:	01 59 0e             	add    DWORD PTR [ecx+0xe],ebx
 1b7:	c0 01 48             	rol    BYTE PTR [ecx],0x48
 1ba:	0e                   	push   cs
 1bb:	a0 01 45 0e a4       	mov    al,ds:0xa40e4501
 1c0:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 1c3:	a8 01                	test   al,0x1
 1c5:	4e                   	dec    esi
 1c6:	0e                   	push   cs
 1c7:	ac                   	lods   al,BYTE PTR ds:[esi]
 1c8:	01 51 0e             	add    DWORD PTR [ecx+0xe],edx
 1cb:	b0 01                	mov    al,0x1
 1cd:	4b                   	dec    ebx
 1ce:	0e                   	push   cs
 1cf:	a0 01 03 09 01       	mov    al,ds:0x1090301
 1d4:	0e                   	push   cs
 1d5:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 1d6:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 1d9:	a8 01                	test   al,0x1
 1db:	49                   	dec    ecx
 1dc:	0e                   	push   cs
 1dd:	ac                   	lods   al,BYTE PTR ds:[esi]
 1de:	01 59 0e             	add    DWORD PTR [ecx+0xe],ebx
 1e1:	b0 01                	mov    al,0x1
 1e3:	4b                   	dec    ebx
 1e4:	0e                   	push   cs
 1e5:	a0 01 00 34 00       	mov    al,ds:0x340001
 1ea:	00 00                	add    BYTE PTR [eax],al
 1ec:	ec                   	in     al,dx
 1ed:	01 00                	add    DWORD PTR [eax],eax
 1ef:	00 50 06             	add    BYTE PTR [eax+0x6],dl
 1f2:	00 00                	add    BYTE PTR [eax],al
 1f4:	7c 00                	jl     1f6 <.eh_frame+0x1f6>
 1f6:	00 00                	add    BYTE PTR [eax],al
 1f8:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 1fb:	08 83 02 67 0a c3    	or     BYTE PTR [ebx-0x3cf598fe],al
 201:	0e                   	push   cs
 202:	04 48                	add    al,0x48
 204:	0b 52 0a             	or     edx,DWORD PTR [edx+0xa]
 207:	c3                   	ret
 208:	0e                   	push   cs
 209:	04 46                	add    al,0x46
 20b:	0b 56 0a             	or     edx,DWORD PTR [esi+0xa]
 20e:	c3                   	ret
 20f:	0e                   	push   cs
 210:	04 42                	add    al,0x42
 212:	0b 41 0a             	or     eax,DWORD PTR [ecx+0xa]
 215:	c3                   	ret
 216:	0e                   	push   cs
 217:	04 4f                	add    al,0x4f
 219:	0b 4b c3             	or     ecx,DWORD PTR [ebx-0x3d]
 21c:	0e                   	push   cs
 21d:	04 00                	add    al,0x0
	...
