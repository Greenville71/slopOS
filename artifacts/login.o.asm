
login.o:     file format elf32-i386


Disassembly of section .text:

00000000 <login_screen>:
   0:	55                   	push   ebp
   1:	57                   	push   edi
   2:	56                   	push   esi
   3:	53                   	push   ebx
   4:	81 ec 0c 01 00 00    	sub    esp,0x10c
   a:	e8 fc ff ff ff       	call   b <login_screen+0xb>
   f:	89 c7                	mov    edi,eax
  11:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  15:	e8 fc ff ff ff       	call   16 <login_screen+0x16>
  1a:	c6 44 24 60 00       	mov    BYTE PTR [esp+0x60],0x0
  1f:	89 c3                	mov    ebx,eax
  21:	8d 87 84 fe ff ff    	lea    eax,[edi-0x17c]
  27:	c1 e8 1f             	shr    eax,0x1f
  2a:	8d 84 38 84 fe ff ff 	lea    eax,[eax+edi*1-0x17c]
  31:	31 ff                	xor    edi,edi
  33:	d1 f8                	sar    eax,1
  35:	89 c1                	mov    ecx,eax
  37:	8d 83 fc fe ff ff    	lea    eax,[ebx-0x104]
  3d:	c1 e8 1f             	shr    eax,0x1f
  40:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
  44:	8d 84 18 fc fe ff ff 	lea    eax,[eax+ebx*1-0x104]
  4b:	d1 f8                	sar    eax,1
  4d:	89 c2                	mov    edx,eax
  4f:	8d 40 18             	lea    eax,[eax+0x18]
  52:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  56:	8d 81 a2 00 00 00    	lea    eax,[ecx+0xa2]
  5c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  60:	8d 42 2c             	lea    eax,[edx+0x2c]
  63:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  67:	8d 81 b6 00 00 00    	lea    eax,[ecx+0xb6]
  6d:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  71:	8d 42 60             	lea    eax,[edx+0x60]
  74:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  78:	8d 81 86 00 00 00    	lea    eax,[ecx+0x86]
  7e:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  82:	8d 41 28             	lea    eax,[ecx+0x28]
  85:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  89:	8d 82 82 00 00 00    	lea    eax,[edx+0x82]
  8f:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  93:	8d 82 8c 00 00 00    	lea    eax,[edx+0x8c]
  99:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  9d:	8d 41 34             	lea    eax,[ecx+0x34]
  a0:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  a4:	8d 42 70             	lea    eax,[edx+0x70]
  a7:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  ab:	8d 41 2c             	lea    eax,[ecx+0x2c]
  ae:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  b2:	8d 82 c3 00 00 00    	lea    eax,[edx+0xc3]
  b8:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  bc:	8d 82 cd 00 00 00    	lea    eax,[edx+0xcd]
  c2:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  c6:	8d 81 a6 00 00 00    	lea    eax,[ecx+0xa6]
  cc:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  d0:	8d 82 f0 00 00 00    	lea    eax,[edx+0xf0]
  d6:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  da:	8d 41 6e             	lea    eax,[ecx+0x6e]
  dd:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  e1:	8d 42 01             	lea    eax,[edx+0x1]
  e4:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  e8:	89 c8                	mov    eax,ecx
  ea:	29 d0                	sub    eax,edx
  ec:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  f0:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  f4:	31 ed                	xor    ebp,ebp
  f6:	31 f6                	xor    esi,esi
  f8:	85 db                	test   ebx,ebx
  fa:	7e 57                	jle    153 <login_screen+0x153>
  fc:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
 100:	8b 7c 24 5c          	mov    edi,DWORD PTR [esp+0x5c]
 104:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 108:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 10f:	00 
 110:	89 e8                	mov    eax,ebp
 112:	99                   	cdq
 113:	f7 fb                	idiv   ebx
 115:	8d 48 0c             	lea    ecx,[eax+0xc]
 118:	8d 44 2d 00          	lea    eax,[ebp+ebp*1+0x0]
 11c:	83 c5 0f             	add    ebp,0xf
 11f:	99                   	cdq
 120:	c1 e1 08             	shl    ecx,0x8
 123:	f7 fb                	idiv   ebx
 125:	83 c0 19             	add    eax,0x19
 128:	09 c1                	or     ecx,eax
 12a:	8d 04 76             	lea    eax,[esi+esi*2]
 12d:	c1 e0 02             	shl    eax,0x2
 130:	99                   	cdq
 131:	f7 fb                	idiv   ebx
 133:	83 c0 0e             	add    eax,0xe
 136:	c1 e0 10             	shl    eax,0x10
 139:	09 c1                	or     ecx,eax
 13b:	51                   	push   ecx
 13c:	57                   	push   edi
 13d:	56                   	push   esi
 13e:	83 c6 01             	add    esi,0x1
 141:	6a 00                	push   0x0
 143:	e8 fc ff ff ff       	call   144 <login_screen+0x144>
 148:	83 c4 10             	add    esp,0x10
 14b:	39 f3                	cmp    ebx,esi
 14d:	75 c1                	jne    110 <login_screen+0x110>
 14f:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
 153:	8b 6c 24 54          	mov    ebp,DWORD PTR [esp+0x54]
 157:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
 15b:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
 15f:	bb 18 18 00 00       	mov    ebx,0x1818
 164:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 168:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 16f:	00 
 170:	83 ec 08             	sub    esp,0x8
 173:	8d 14 2e             	lea    edx,[esi+ebp*1]
 176:	53                   	push   ebx
 177:	6a 10                	push   0x10
 179:	68 04 01 00 00       	push   0x104
 17e:	68 7c 01 00 00       	push   0x17c
 183:	55                   	push   ebp
 184:	83 c5 01             	add    ebp,0x1
 187:	52                   	push   edx
 188:	e8 fc ff ff ff       	call   189 <login_screen+0x189>
 18d:	83 c4 20             	add    esp,0x20
 190:	81 eb 04 04 00 00    	sub    ebx,0x404
 196:	75 d8                	jne    170 <login_screen+0x170>
 198:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
 19c:	83 ec 08             	sub    esp,0x8
 19f:	be cd cc cc cc       	mov    esi,0xcccccccd
 1a4:	68 2e 1e 1e 00       	push   0x1e1e2e
 1a9:	6a 10                	push   0x10
 1ab:	68 04 01 00 00       	push   0x104
 1b0:	68 7c 01 00 00       	push   0x17c
 1b5:	ff 74 24 28          	push   DWORD PTR [esp+0x28]
 1b9:	ff 74 24 74          	push   DWORD PTR [esp+0x74]
 1bd:	e8 fc ff ff ff       	call   1be <login_screen+0x1be>
 1c2:	83 c4 18             	add    esp,0x18
 1c5:	68 fa b4 89 00       	push   0x89b4fa
 1ca:	6a 0e                	push   0xe
 1cc:	6a 38                	push   0x38
 1ce:	6a 38                	push   0x38
 1d0:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 1d4:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 1d8:	e8 fc ff ff ff       	call   1d9 <login_screen+0x1d9>
 1dd:	83 c4 20             	add    esp,0x20
 1e0:	68 ff ff ff 00       	push   0xffffff
 1e5:	68 00 00 00 00       	push   0x0
 1ea:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 1ee:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 1f2:	e8 fc ff ff ff       	call   1f3 <login_screen+0x1f3>
 1f7:	68 f4 d6 cd 00       	push   0xcdd6f4
 1fc:	68 02 00 00 00       	push   0x2
 201:	ff 74 24 3c          	push   DWORD PTR [esp+0x3c]
 205:	ff 74 24 44          	push   DWORD PTR [esp+0x44]
 209:	e8 fc ff ff ff       	call   20a <login_screen+0x20a>
 20e:	83 c4 18             	add    esp,0x18
 211:	68 44 32 31 00       	push   0x313244
 216:	6a 08                	push   0x8
 218:	6a 24                	push   0x24
 21a:	68 2c 01 00 00       	push   0x12c
 21f:	ff 74 24 60          	push   DWORD PTR [esp+0x60]
 223:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
 227:	e8 fc ff ff ff       	call   228 <login_screen+0x228>
 22c:	83 c4 20             	add    esp,0x20
 22f:	68 f4 d6 cd 00       	push   0xcdd6f4
 234:	8d 44 24 64          	lea    eax,[esp+0x64]
 238:	50                   	push   eax
 239:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 23d:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
 241:	e8 fc ff ff ff       	call   242 <login_screen+0x242>
 246:	e8 fc ff ff ff       	call   247 <login_screen+0x247>
 24b:	83 c4 10             	add    esp,0x10
 24e:	f7 e6                	mul    esi
 250:	83 e2 20             	and    edx,0x20
 253:	0f 85 e7 01 00 00    	jne    440 <login_screen+0x440>
 259:	68 c8 ad a6 00       	push   0xa6adc8
 25e:	68 0f 00 00 00       	push   0xf
 263:	ff 74 24 38          	push   DWORD PTR [esp+0x38]
 267:	ff 74 24 40          	push   DWORD PTR [esp+0x40]
 26b:	e8 fc ff ff ff       	call   26c <login_screen+0x26c>
 270:	58                   	pop    eax
 271:	5a                   	pop    edx
 272:	68 fa b4 89 00       	push   0x89b4fa
 277:	6a 08                	push   0x8
 279:	6a 24                	push   0x24
 27b:	68 2c 01 00 00       	push   0x12c
 280:	ff 74 24 64          	push   DWORD PTR [esp+0x64]
 284:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
 288:	e8 fc ff ff ff       	call   289 <login_screen+0x289>
 28d:	83 c4 20             	add    esp,0x20
 290:	68 ff ff ff 00       	push   0xffffff
 295:	68 18 00 00 00       	push   0x18
 29a:	ff 74 24 40          	push   DWORD PTR [esp+0x40]
 29e:	ff 74 24 48          	push   DWORD PTR [esp+0x48]
 2a2:	e8 fc ff ff ff       	call   2a3 <login_screen+0x2a3>
 2a7:	68 86 70 6c 00       	push   0x6c7086
 2ac:	68 1f 00 00 00       	push   0x1f
 2b1:	ff 74 24 58          	push   DWORD PTR [esp+0x58]
 2b5:	ff 74 24 60          	push   DWORD PTR [esp+0x60]
 2b9:	e8 fc ff ff ff       	call   2ba <login_screen+0x2ba>
 2be:	83 c4 20             	add    esp,0x20
 2c1:	e8 fc ff ff ff       	call   2c2 <login_screen+0x2c2>
 2c6:	66 90                	xchg   ax,ax
 2c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2cf:	00 
 2d0:	e8 fc ff ff ff       	call   2d1 <login_screen+0x2d1>
 2d5:	84 c0                	test   al,al
 2d7:	74 37                	je     310 <login_screen+0x310>
 2d9:	e8 fc ff ff ff       	call   2da <login_screen+0x2da>
 2de:	3c 0a                	cmp    al,0xa
 2e0:	74 5e                	je     340 <login_screen+0x340>
 2e2:	3c 08                	cmp    al,0x8
 2e4:	74 42                	je     328 <login_screen+0x328>
 2e6:	8d 50 e0             	lea    edx,[eax-0x20]
 2e9:	80 fa 5e             	cmp    dl,0x5e
 2ec:	77 e2                	ja     2d0 <login_screen+0x2d0>
 2ee:	83 ff 13             	cmp    edi,0x13
 2f1:	7f dd                	jg     2d0 <login_screen+0x2d0>
 2f3:	88 44 3c 60          	mov    BYTE PTR [esp+edi*1+0x60],al
 2f7:	c6 44 3c 61 00       	mov    BYTE PTR [esp+edi*1+0x61],0x0
 2fc:	83 c7 01             	add    edi,0x1
 2ff:	e8 fc ff ff ff       	call   300 <login_screen+0x300>
 304:	84 c0                	test   al,al
 306:	75 d1                	jne    2d9 <login_screen+0x2d9>
 308:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 30f:	00 
 310:	83 ec 0c             	sub    esp,0xc
 313:	6a 10                	push   0x10
 315:	e8 fc ff ff ff       	call   316 <login_screen+0x316>
 31a:	83 c4 10             	add    esp,0x10
 31d:	e9 d2 fd ff ff       	jmp    f4 <login_screen+0xf4>
 322:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 328:	85 ff                	test   edi,edi
 32a:	7e a4                	jle    2d0 <login_screen+0x2d0>
 32c:	83 ef 01             	sub    edi,0x1
 32f:	c6 44 3c 60 00       	mov    BYTE PTR [esp+edi*1+0x60],0x0
 334:	eb 9a                	jmp    2d0 <login_screen+0x2d0>
 336:	66 90                	xchg   ax,ax
 338:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 33f:	00 
 340:	85 ff                	test   edi,edi
 342:	0f 84 28 01 00 00    	je     470 <login_screen+0x470>
 348:	83 ec 04             	sub    esp,0x4
 34b:	6a 1f                	push   0x1f
 34d:	8d 44 24 68          	lea    eax,[esp+0x68]
 351:	50                   	push   eax
 352:	68 00 00 00 00       	push   0x0
 357:	e8 fc ff ff ff       	call   358 <login_screen+0x358>
 35c:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0x6d6f682f
 363:	2f 68 6f 6d 
 367:	c7 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],0x2f65
 36e:	65 2f 00 00 
 372:	c7 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],0x0
 379:	00 00 00 00 
 37d:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],0x0
 384:	00 00 00 00 
 388:	c7 84 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],0x0
 38f:	00 00 00 00 
 393:	c7 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],0x0
 39a:	00 00 00 00 
 39e:	c7 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],0x0
 3a5:	00 00 00 00 
 3a9:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],0x0
 3b0:	00 00 00 00 
 3b4:	c7 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],0x0
 3bb:	00 00 00 00 
 3bf:	c7 84 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],0x0
 3c6:	00 00 00 00 
 3ca:	c7 84 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],0x0
 3d1:	00 00 00 00 
 3d5:	c7 84 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],0x0
 3dc:	00 00 00 00 
 3e0:	c7 84 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],0x0
 3e7:	00 00 00 00 
 3eb:	c7 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],0x0
 3f2:	00 00 00 00 
 3f6:	c7 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],0x0
 3fd:	00 00 00 00 
 401:	c7 84 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],0x0
 408:	00 00 00 00 
 40c:	5f                   	pop    edi
 40d:	5d                   	pop    ebp
 40e:	68 00 00 00 00       	push   0x0
 413:	8d 9c 24 8c 00 00 00 	lea    ebx,[esp+0x8c]
 41a:	53                   	push   ebx
 41b:	e8 fc ff ff ff       	call   41c <login_screen+0x41c>
 420:	89 1c 24             	mov    DWORD PTR [esp],ebx
 423:	e8 fc ff ff ff       	call   424 <login_screen+0x424>
 428:	83 c4 10             	add    esp,0x10
 42b:	85 c0                	test   eax,eax
 42d:	74 61                	je     490 <login_screen+0x490>
 42f:	81 c4 0c 01 00 00    	add    esp,0x10c
 435:	5b                   	pop    ebx
 436:	5e                   	pop    esi
 437:	5f                   	pop    edi
 438:	5d                   	pop    ebp
 439:	c3                   	ret
 43a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 440:	83 ec 0c             	sub    esp,0xc
 443:	68 fa b4 89 00       	push   0x89b4fa
 448:	6a 14                	push   0x14
 44a:	6a 02                	push   0x2
 44c:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 450:	05 8a 00 00 00       	add    eax,0x8a
 455:	50                   	push   eax
 456:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 45a:	8d 04 f8             	lea    eax,[eax+edi*8]
 45d:	50                   	push   eax
 45e:	e8 fc ff ff ff       	call   45f <login_screen+0x45f>
 463:	83 c4 20             	add    esp,0x20
 466:	e9 ee fd ff ff       	jmp    259 <login_screen+0x259>
 46b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 470:	83 ec 08             	sub    esp,0x8
 473:	68 37 00 00 00       	push   0x37
 478:	8d 44 24 6c          	lea    eax,[esp+0x6c]
 47c:	50                   	push   eax
 47d:	e8 fc ff ff ff       	call   47e <login_screen+0x47e>
 482:	83 c4 10             	add    esp,0x10
 485:	e9 be fe ff ff       	jmp    348 <login_screen+0x348>
 48a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 490:	83 ec 0c             	sub    esp,0xc
 493:	53                   	push   ebx
 494:	e8 fc ff ff ff       	call   495 <login_screen+0x495>
 499:	58                   	pop    eax
 49a:	5a                   	pop    edx
 49b:	53                   	push   ebx
 49c:	8d 9c 24 cc 00 00 00 	lea    ebx,[esp+0xcc]
 4a3:	53                   	push   ebx
 4a4:	e8 fc ff ff ff       	call   4a5 <login_screen+0x4a5>
 4a9:	59                   	pop    ecx
 4aa:	5e                   	pop    esi
 4ab:	68 3c 00 00 00       	push   0x3c
 4b0:	53                   	push   ebx
 4b1:	e8 fc ff ff ff       	call   4b2 <login_screen+0x4b2>
 4b6:	c7 04 24 49 00 00 00 	mov    DWORD PTR [esp],0x49
 4bd:	e8 fc ff ff ff       	call   4be <login_screen+0x4be>
 4c2:	83 c4 0c             	add    esp,0xc
 4c5:	50                   	push   eax
 4c6:	68 49 00 00 00       	push   0x49
 4cb:	53                   	push   ebx
 4cc:	e8 fc ff ff ff       	call   4cd <login_screen+0x4cd>
 4d1:	83 c4 10             	add    esp,0x10
 4d4:	81 c4 0c 01 00 00    	add    esp,0x10c
 4da:	5b                   	pop    ebx
 4db:	5e                   	pop    esi
 4dc:	5f                   	pop    edi
 4dd:	5d                   	pop    ebp
 4de:	c3                   	ret

Disassembly of section .data:

00000000 <current_user>:
   0:	75 73                	jne    75 <current_user+0x75>
   2:	65 72 00             	gs jb  5 <current_user+0x5>
	...

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	53                   	push   ebx
   1:	00 57 65             	add    BYTE PTR [edi+0x65],dl
   4:	6c                   	ins    BYTE PTR es:[edi],dx
   5:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
   8:	65 20 62 61          	and    BYTE PTR gs:[edx+0x61],ah
   c:	63 6b 00             	arpl   WORD PTR [ebx+0x0],ebp
   f:	55                   	push   ebp
  10:	73 65                	jae    77 <login_screen+0x77>
  12:	72 6e                	jb     82 <login_screen+0x82>
  14:	61                   	popa
  15:	6d                   	ins    DWORD PTR es:[edi],dx
  16:	65 00 4c 6f 67       	add    BYTE PTR gs:[edi+ebp*2+0x67],cl
  1b:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  1e:	00 50 72             	add    BYTE PTR [eax+0x72],dl
  21:	65 73 73             	gs jae 97 <login_screen+0x97>
  24:	20 45 6e             	and    BYTE PTR [ebp+0x6e],al
  27:	74 65                	je     8e <login_screen+0x8e>
  29:	72 20                	jb     4b <.rodata.str1.1+0x4b>
  2b:	74 6f                	je     9c <login_screen+0x9c>
  2d:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
  30:	6e                   	outs   dx,BYTE PTR ds:[esi]
  31:	74 69                	je     9c <login_screen+0x9c>
  33:	6e                   	outs   dx,BYTE PTR ds:[esi]
  34:	75 65                	jne    9b <login_screen+0x9b>
  36:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
  39:	65 72 00             	gs jb  3c <.rodata.str1.1+0x3c>
  3c:	2f                   	das
  3d:	77 65                	ja     a4 <login_screen+0xa4>
  3f:	6c                   	ins    BYTE PTR es:[edi],dx
  40:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
  43:	65 2e 74 78          	gs cs je bf <login_screen+0xbf>
  47:	74 00                	je     49 <.rodata.str1.1+0x49>
  49:	57                   	push   edi
  4a:	65 6c                	gs ins BYTE PTR es:[edi],dx
  4c:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
  4f:	65 20 74 6f 20       	and    BYTE PTR gs:[edi+ebp*2+0x20],dh
  54:	53                   	push   ebx
  55:	6c                   	ins    BYTE PTR es:[edi],dx
  56:	6f                   	outs   dx,DWORD PTR ds:[esi]
  57:	70 4f                	jo     a8 <login_screen+0xa8>
  59:	53                   	push   ebx
  5a:	21 0a                	and    DWORD PTR [edx],ecx
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
  17:	00 08                	add    BYTE PTR [eax],cl
  19:	02 00                	add    al,BYTE PTR [eax]
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	df 04 00             	fild   WORD PTR [eax+eax*1]
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  3b:	83 05 46 0e a0 02 03 	add    DWORD PTR ds:0x2a00e46,0x3
  42:	32 01                	xor    al,BYTE PTR [ecx]
  44:	0e                   	push   cs
  45:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  46:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
  49:	a8 02                	test   al,0x2
  4b:	41                   	inc    ecx
  4c:	0e                   	push   cs
  4d:	ac                   	lods   al,BYTE PTR ds:[esi]
  4e:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
  51:	b0 02                	mov    al,0x2
  53:	48                   	dec    eax
  54:	0e                   	push   cs
  55:	a0 02 68 0e a8       	mov    al,ds:0xa80e6802
  5a:	02 44 0e ac          	add    al,BYTE PTR [esi+ecx*1-0x54]
  5e:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  61:	b0 02                	mov    al,0x2
  63:	45                   	inc    ebp
  64:	0e                   	push   cs
  65:	b4 02                	mov    ah,0x2
  67:	45                   	inc    ebp
  68:	0e                   	push   cs
  69:	b8 02 41 0e bc       	mov    eax,0xbc0e4102
  6e:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
  72:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
  75:	a0 02 4f 0e a8       	mov    al,ds:0xa80e4f02
  7a:	02 4a 0e             	add    cl,BYTE PTR [edx+0xe]
  7d:	ac                   	lods   al,BYTE PTR ds:[esi]
  7e:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  81:	b0 02                	mov    al,0x2
  83:	45                   	inc    ebp
  84:	0e                   	push   cs
  85:	b4 02                	mov    ah,0x2
  87:	45                   	inc    ebp
  88:	0e                   	push   cs
  89:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
  8e:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
  92:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
  95:	a8 02                	test   al,0x2
  97:	45                   	inc    ebp
  98:	0e                   	push   cs
  99:	ac                   	lods   al,BYTE PTR ds:[esi]
  9a:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  9d:	b0 02                	mov    al,0x2
  9f:	42                   	inc    edx
  a0:	0e                   	push   cs
  a1:	b4 02                	mov    ah,0x2
  a3:	42                   	inc    edx
  a4:	0e                   	push   cs
  a5:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
  aa:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
  ae:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
  b1:	a0 02 45 0e a4       	mov    al,ds:0xa40e4502
  b6:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
  b9:	a8 02                	test   al,0x2
  bb:	44                   	inc    esp
  bc:	0e                   	push   cs
  bd:	ac                   	lods   al,BYTE PTR ds:[esi]
  be:	02 44 0e b0          	add    al,BYTE PTR [esi+ecx*1-0x50]
  c2:	02 4a 0e             	add    cl,BYTE PTR [edx+0xe]
  c5:	b4 02                	mov    ah,0x2
  c7:	45                   	inc    ebp
  c8:	0e                   	push   cs
  c9:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
  ce:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
  d2:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
  d5:	a8 02                	test   al,0x2
  d7:	45                   	inc    ebp
  d8:	0e                   	push   cs
  d9:	ac                   	lods   al,BYTE PTR ds:[esi]
  da:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  dd:	b0 02                	mov    al,0x2
  df:	42                   	inc    edx
  e0:	0e                   	push   cs
  e1:	b4 02                	mov    ah,0x2
  e3:	45                   	inc    ebp
  e4:	0e                   	push   cs
  e5:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
  ea:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
  ee:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
  f1:	a0 02 45 0e a4       	mov    al,ds:0xa40e4502
  f6:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
  f9:	a8 02                	test   al,0x2
  fb:	44                   	inc    esp
  fc:	0e                   	push   cs
  fd:	ac                   	lods   al,BYTE PTR ds:[esi]
  fe:	02 44 0e b0          	add    al,BYTE PTR [esi+ecx*1-0x50]
 102:	02 4d 0e             	add    cl,BYTE PTR [ebp+0xe]
 105:	a0 02 50 0e a4       	mov    al,ds:0xa40e5002
 10a:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 10d:	a8 02                	test   al,0x2
 10f:	44                   	inc    esp
 110:	0e                   	push   cs
 111:	ac                   	lods   al,BYTE PTR ds:[esi]
 112:	02 44 0e b0          	add    al,BYTE PTR [esi+ecx*1-0x50]
 116:	02 46 0e             	add    al,BYTE PTR [esi+0xe]
 119:	ac                   	lods   al,BYTE PTR ds:[esi]
 11a:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 11d:	a8 02                	test   al,0x2
 11f:	45                   	inc    ebp
 120:	0e                   	push   cs
 121:	ac                   	lods   al,BYTE PTR ds:[esi]
 122:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
 125:	b0 02                	mov    al,0x2
 127:	42                   	inc    edx
 128:	0e                   	push   cs
 129:	b4 02                	mov    ah,0x2
 12b:	45                   	inc    ebp
 12c:	0e                   	push   cs
 12d:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
 132:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
 136:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 139:	a0 02 45 0e a4       	mov    al,ds:0xa40e4502
 13e:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 141:	a8 02                	test   al,0x2
 143:	44                   	inc    esp
 144:	0e                   	push   cs
 145:	ac                   	lods   al,BYTE PTR ds:[esi]
 146:	02 44 0e b0          	add    al,BYTE PTR [esi+ecx*1-0x50]
 14a:	02 4a 0e             	add    cl,BYTE PTR [edx+0xe]
 14d:	b4 02                	mov    ah,0x2
 14f:	45                   	inc    ebp
 150:	0e                   	push   cs
 151:	b8 02 44 0e bc       	mov    eax,0xbc0e4402
 156:	02 44 0e c0          	add    al,BYTE PTR [esi+ecx*1-0x40]
 15a:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 15d:	a0 02 02 52 0e       	mov    al,ds:0xe520202
 162:	ac                   	lods   al,BYTE PTR ds:[esi]
 163:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
 166:	b0 02                	mov    al,0x2
 168:	48                   	dec    eax
 169:	0e                   	push   cs
 16a:	a0 02 6e 0e a4       	mov    al,ds:0xa40e6e02
 16f:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
 172:	a8 02                	test   al,0x2
 174:	45                   	inc    ebp
 175:	0e                   	push   cs
 176:	ac                   	lods   al,BYTE PTR ds:[esi]
 177:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 17a:	b0 02                	mov    al,0x2
 17c:	02 b6 0e ac 02 41    	add    dh,BYTE PTR [esi+0x4102ac0e]
 182:	0e                   	push   cs
 183:	a8 02                	test   al,0x2
 185:	45                   	inc    ebp
 186:	0e                   	push   cs
 187:	ac                   	lods   al,BYTE PTR ds:[esi]
 188:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 18b:	b0 02                	mov    al,0x2
 18d:	50                   	push   eax
 18e:	0e                   	push   cs
 18f:	a0 02 4a 0a 0e       	mov    al,ds:0xe0a4a02
 194:	14 41                	adc    al,0x41
 196:	c3                   	ret
 197:	0e                   	push   cs
 198:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 19b:	0e                   	push   cs
 19c:	0c 41                	or     al,0x41
 19e:	c7                   	(bad)
 19f:	0e                   	push   cs
 1a0:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1a3:	0e                   	push   cs
 1a4:	04 47                	add    al,0x47
 1a6:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 1a9:	ac                   	lods   al,BYTE PTR ds:[esi]
 1aa:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 1ad:	b0 02                	mov    al,0x2
 1af:	42                   	inc    edx
 1b0:	0e                   	push   cs
 1b1:	b4 02                	mov    ah,0x2
 1b3:	42                   	inc    edx
 1b4:	0e                   	push   cs
 1b5:	b8 02 4a 0e bc       	mov    eax,0xbc0e4a02
 1ba:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 1bd:	c0 02 48             	rol    BYTE PTR [edx],0x48
 1c0:	0e                   	push   cs
 1c1:	a0 02 4d 0e a8       	mov    al,ds:0xa80e4d02
 1c6:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 1c9:	ac                   	lods   al,BYTE PTR ds:[esi]
 1ca:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 1cd:	b0 02                	mov    al,0x2
 1cf:	48                   	dec    eax
 1d0:	0e                   	push   cs
 1d1:	a0 02 4e 0e ac       	mov    al,ds:0xac0e4e02
 1d6:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 1d9:	b0 02                	mov    al,0x2
 1db:	46                   	inc    esi
 1dc:	0e                   	push   cs
 1dd:	ac                   	lods   al,BYTE PTR ds:[esi]
 1de:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 1e1:	a8 02                	test   al,0x2
 1e3:	41                   	inc    ecx
 1e4:	0e                   	push   cs
 1e5:	ac                   	lods   al,BYTE PTR ds:[esi]
 1e6:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 1e9:	b0 02                	mov    al,0x2
 1eb:	46                   	inc    esi
 1ec:	0e                   	push   cs
 1ed:	ac                   	lods   al,BYTE PTR ds:[esi]
 1ee:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 1f1:	a8 02                	test   al,0x2
 1f3:	45                   	inc    ebp
 1f4:	0e                   	push   cs
 1f5:	ac                   	lods   al,BYTE PTR ds:[esi]
 1f6:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 1f9:	b0 02                	mov    al,0x2
 1fb:	54                   	push   esp
 1fc:	0e                   	push   cs
 1fd:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 1fe:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 201:	a8 02                	test   al,0x2
 203:	45                   	inc    ebp
 204:	0e                   	push   cs
 205:	ac                   	lods   al,BYTE PTR ds:[esi]
 206:	02 41 0e             	add    al,BYTE PTR [ecx+0xe]
 209:	b0 02                	mov    al,0x2
 20b:	48                   	dec    eax
 20c:	0e                   	push   cs
 20d:	a0 02 46 0e 14       	mov    al,ds:0x140e4602
 212:	41                   	inc    ecx
 213:	c3                   	ret
 214:	0e                   	push   cs
 215:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 218:	0e                   	push   cs
 219:	0c 41                	or     al,0x41
 21b:	c7                   	(bad)
 21c:	0e                   	push   cs
 21d:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 220:	0e                   	push   cs
 221:	04 00                	add    al,0x0
	...
