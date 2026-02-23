
notepad.o:     file format elf32-i386


Disassembly of section .text:

00000000 <notepad_create>:
   0:	53                   	push   ebx
   1:	31 db                	xor    ebx,ebx
   3:	83 ec 08             	sub    esp,0x8
   6:	a1 00 00 00 00       	mov    eax,ds:0x0
   b:	83 f8 03             	cmp    eax,0x3
   e:	7f 32                	jg     42 <notepad_create+0x42>
  10:	8d 50 01             	lea    edx,[eax+0x1]
  13:	83 ec 04             	sub    esp,0x4
  16:	69 c0 14 80 00 00    	imul   eax,eax,0x8014
  1c:	68 14 80 00 00       	push   0x8014
  21:	6a 00                	push   0x0
  23:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  29:	8d 98 20 00 00 00    	lea    ebx,[eax+0x20]
  2f:	53                   	push   ebx
  30:	e8 fc ff ff ff       	call   31 <notepad_create+0x31>
  35:	83 c4 10             	add    esp,0x10
  38:	c7 83 00 80 00 00 01 	mov    DWORD PTR [ebx+0x8000],0x1
  3f:	00 00 00 
  42:	83 c4 08             	add    esp,0x8
  45:	89 d8                	mov    eax,ebx
  47:	5b                   	pop    ebx
  48:	c3                   	ret
  49:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000050 <notepad_draw>:
  50:	55                   	push   ebp
  51:	57                   	push   edi
  52:	56                   	push   esi
  53:	53                   	push   ebx
  54:	83 ec 7c             	sub    esp,0x7c
  57:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  5e:	8b 40 68             	mov    eax,DWORD PTR [eax+0x68]
  61:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  65:	85 c0                	test   eax,eax
  67:	0f 84 eb 02 00 00    	je     358 <notepad_draw+0x308>
  6d:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  74:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
  7b:	c7 44 24 1c ff 00 00 	mov    DWORD PTR [esp+0x1c],0xff
  82:	00 
  83:	8b 00                	mov    eax,DWORD PTR [eax]
  85:	8b 5a 0c             	mov    ebx,DWORD PTR [edx+0xc]
  88:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  8c:	8d 78 04             	lea    edi,[eax+0x4]
  8f:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  96:	89 d9                	mov    ecx,ebx
  98:	83 e9 24             	sub    ecx,0x24
  9b:	8d 53 eb             	lea    edx,[ebx-0x15]
  9e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  a1:	0f 49 d1             	cmovns edx,ecx
  a4:	89 04 24             	mov    DWORD PTR [esp],eax
  a7:	8d 70 20             	lea    esi,[eax+0x20]
  aa:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  b1:	c1 fa 04             	sar    edx,0x4
  b4:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  b8:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  bb:	3d 2f 08 00 00       	cmp    eax,0x82f
  c0:	0f 8e 23 03 00 00    	jle    3e9 <notepad_draw+0x399>
  c6:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  ca:	8b 81 04 80 00 00    	mov    eax,DWORD PTR [ecx+0x8004]
  d0:	8b 91 0c 80 00 00    	mov    edx,DWORD PTR [ecx+0x800c]
  d6:	39 d0                	cmp    eax,edx
  d8:	7d 08                	jge    e2 <notepad_draw+0x92>
  da:	89 81 0c 80 00 00    	mov    DWORD PTR [ecx+0x800c],eax
  e0:	89 c2                	mov    edx,eax
  e2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  e6:	01 ca                	add    edx,ecx
  e8:	39 d0                	cmp    eax,edx
  ea:	0f 8d e5 02 00 00    	jge    3d5 <notepad_draw+0x385>
  f0:	83 ec 0c             	sub    esp,0xc
  f3:	68 25 18 18 00       	push   0x181825
  f8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  fc:	c1 e0 04             	shl    eax,0x4
  ff:	50                   	push   eax
 100:	6a 24                	push   0x24
 102:	56                   	push   esi
 103:	57                   	push   edi
 104:	e8 fc ff ff ff       	call   105 <notepad_draw+0xb5>
 109:	83 c4 20             	add    esp,0x20
 10c:	83 fb 33             	cmp    ebx,0x33
 10f:	0f 8e 56 03 00 00    	jle    46b <notepad_draw+0x41b>
 115:	8d 44 24 30          	lea    eax,[esp+0x30]
 119:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 120:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 124:	8d 44 24 28          	lea    eax,[esp+0x28]
 128:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 12c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 130:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
 134:	8b 04 24             	mov    eax,DWORD PTR [esp]
 137:	03 81 0c 80 00 00    	add    eax,DWORD PTR [ecx+0x800c]
 13d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 141:	3b 81 00 80 00 00    	cmp    eax,DWORD PTR [ecx+0x8000]
 147:	0f 8d fb 00 00 00    	jge    248 <notepad_draw+0x1f8>
 14d:	83 ec 04             	sub    esp,0x4
 150:	6a 0a                	push   0xa
 152:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
 156:	53                   	push   ebx
 157:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 15b:	8d 47 01             	lea    eax,[edi+0x1]
 15e:	50                   	push   eax
 15f:	e8 fc ff ff ff       	call   160 <notepad_draw+0x110>
 164:	89 1c 24             	mov    DWORD PTR [esp],ebx
 167:	e8 fc ff ff ff       	call   168 <notepad_draw+0x118>
 16c:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
 170:	83 c4 10             	add    esp,0x10
 173:	b9 86 70 6c 00       	mov    ecx,0x6c7086
 178:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
 17f:	b8 f4 d6 cd 00       	mov    eax,0xcdd6f4
 184:	39 bd 04 80 00 00    	cmp    DWORD PTR [ebp+0x8004],edi
 18a:	0f 45 c1             	cmovne eax,ecx
 18d:	50                   	push   eax
 18e:	53                   	push   ebx
 18f:	56                   	push   esi
 190:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 194:	83 c0 24             	add    eax,0x24
 197:	29 d0                	sub    eax,edx
 199:	50                   	push   eax
 19a:	e8 fc ff ff ff       	call   19b <notepad_draw+0x14b>
 19f:	89 f8                	mov    eax,edi
 1a1:	c1 e0 08             	shl    eax,0x8
 1a4:	01 c5                	add    ebp,eax
 1a6:	89 2c 24             	mov    DWORD PTR [esp],ebp
 1a9:	e8 fc ff ff ff       	call   1aa <notepad_draw+0x15a>
 1ae:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
 1b2:	39 f8                	cmp    eax,edi
 1b4:	0f 4f c7             	cmovg  eax,edi
 1b7:	83 c4 10             	add    esp,0x10
 1ba:	89 c2                	mov    edx,eax
 1bc:	85 c0                	test   eax,eax
 1be:	7e 60                	jle    220 <notepad_draw+0x1d0>
 1c0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 1c4:	8d 58 2c             	lea    ebx,[eax+0x2c]
 1c7:	8d 3c d3             	lea    edi,[ebx+edx*8]
 1ca:	eb 0e                	jmp    1da <notepad_draw+0x18a>
 1cc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 1d0:	83 c3 08             	add    ebx,0x8
 1d3:	83 c5 01             	add    ebp,0x1
 1d6:	39 df                	cmp    edi,ebx
 1d8:	74 46                	je     220 <notepad_draw+0x1d0>
 1da:	68 f4 d6 cd 00       	push   0xcdd6f4
 1df:	68 00 00 00 00       	push   0x0
 1e4:	56                   	push   esi
 1e5:	53                   	push   ebx
 1e6:	e8 fc ff ff ff       	call   1e7 <notepad_draw+0x197>
 1eb:	0f b6 55 00          	movzx  edx,BYTE PTR [ebp+0x0]
 1ef:	83 c4 10             	add    esp,0x10
 1f2:	8d 4a e0             	lea    ecx,[edx-0x20]
 1f5:	80 f9 5e             	cmp    cl,0x5e
 1f8:	77 d6                	ja     1d0 <notepad_draw+0x180>
 1fa:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl
 1fe:	83 c5 01             	add    ebp,0x1
 201:	c6 44 24 29 00       	mov    BYTE PTR [esp+0x29],0x0
 206:	68 f4 d6 cd 00       	push   0xcdd6f4
 20b:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
 20f:	56                   	push   esi
 210:	53                   	push   ebx
 211:	83 c3 08             	add    ebx,0x8
 214:	e8 fc ff ff ff       	call   215 <notepad_draw+0x1c5>
 219:	83 c4 10             	add    esp,0x10
 21c:	39 df                	cmp    edi,ebx
 21e:	75 ba                	jne    1da <notepad_draw+0x18a>
 220:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 224:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
 228:	39 88 04 80 00 00    	cmp    DWORD PTR [eax+0x8004],ecx
 22e:	0f 84 2c 01 00 00    	je     360 <notepad_draw+0x310>
 234:	83 04 24 01          	add    DWORD PTR [esp],0x1
 238:	83 c6 10             	add    esi,0x10
 23b:	8b 04 24             	mov    eax,DWORD PTR [esp]
 23e:	39 44 24 14          	cmp    DWORD PTR [esp+0x14],eax
 242:	0f 8f e8 fe ff ff    	jg     130 <notepad_draw+0xe0>
 248:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 24c:	80 b8 10 80 00 00 00 	cmp    BYTE PTR [eax+0x8010],0x0
 253:	0f 85 d2 01 00 00    	jne    42b <notepad_draw+0x3db>
 259:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
 260:	83 ec 0c             	sub    esp,0xc
 263:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
 266:	03 70 04             	add    esi,DWORD PTR [eax+0x4]
 269:	68 25 18 18 00       	push   0x181825
 26e:	6a 11                	push   0x11
 270:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
 277:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 27a:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 27e:	83 e8 02             	sub    eax,0x2
 281:	50                   	push   eax
 282:	8d 46 ee             	lea    eax,[esi-0x12]
 285:	83 ee 11             	sub    esi,0x11
 288:	50                   	push   eax
 289:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [esp+0xac]
 290:	8b 00                	mov    eax,DWORD PTR [eax]
 292:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 296:	83 c0 01             	add    eax,0x1
 299:	50                   	push   eax
 29a:	e8 fc ff ff ff       	call   29b <notepad_draw+0x24b>
 29f:	c6 44 24 50 00       	mov    BYTE PTR [esp+0x50],0x0
 2a4:	83 c4 18             	add    esp,0x18
 2a7:	68 08 00 00 00       	push   0x8
 2ac:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
 2b0:	57                   	push   edi
 2b1:	e8 fc ff ff ff       	call   2b2 <notepad_draw+0x262>
 2b6:	83 c4 0c             	add    esp,0xc
 2b9:	6a 0a                	push   0xa
 2bb:	8d 5c 24 28          	lea    ebx,[esp+0x28]
 2bf:	53                   	push   ebx
 2c0:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
 2c4:	8b 85 04 80 00 00    	mov    eax,DWORD PTR [ebp+0x8004]
 2ca:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 2ce:	83 c0 01             	add    eax,0x1
 2d1:	50                   	push   eax
 2d2:	e8 fc ff ff ff       	call   2d3 <notepad_draw+0x283>
 2d7:	58                   	pop    eax
 2d8:	5a                   	pop    edx
 2d9:	53                   	push   ebx
 2da:	57                   	push   edi
 2db:	e8 fc ff ff ff       	call   2dc <notepad_draw+0x28c>
 2e0:	59                   	pop    ecx
 2e1:	58                   	pop    eax
 2e2:	68 0d 00 00 00       	push   0xd
 2e7:	57                   	push   edi
 2e8:	e8 fc ff ff ff       	call   2e9 <notepad_draw+0x299>
 2ed:	83 c4 0c             	add    esp,0xc
 2f0:	6a 0a                	push   0xa
 2f2:	8b 85 08 80 00 00    	mov    eax,DWORD PTR [ebp+0x8008]
 2f8:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
 2fc:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 300:	83 c0 01             	add    eax,0x1
 303:	50                   	push   eax
 304:	e8 fc ff ff ff       	call   305 <notepad_draw+0x2b5>
 309:	58                   	pop    eax
 30a:	5a                   	pop    edx
 30b:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
 30f:	57                   	push   edi
 310:	e8 fc ff ff ff       	call   311 <notepad_draw+0x2c1>
 315:	59                   	pop    ecx
 316:	58                   	pop    eax
 317:	68 14 00 00 00       	push   0x14
 31c:	57                   	push   edi
 31d:	e8 fc ff ff ff       	call   31e <notepad_draw+0x2ce>
 322:	83 c4 0c             	add    esp,0xc
 325:	6a 0a                	push   0xa
 327:	53                   	push   ebx
 328:	ff b5 00 80 00 00    	push   DWORD PTR [ebp+0x8000]
 32e:	e8 fc ff ff ff       	call   32f <notepad_draw+0x2df>
 333:	58                   	pop    eax
 334:	5a                   	pop    edx
 335:	53                   	push   ebx
 336:	57                   	push   edi
 337:	e8 fc ff ff ff       	call   338 <notepad_draw+0x2e8>
 33c:	68 c8 ad a6 00       	push   0xa6adc8
 341:	57                   	push   edi
 342:	56                   	push   esi
 343:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [esp+0xac]
 34a:	8b 00                	mov    eax,DWORD PTR [eax]
 34c:	83 c0 08             	add    eax,0x8
 34f:	50                   	push   eax
 350:	e8 fc ff ff ff       	call   351 <notepad_draw+0x301>
 355:	83 c4 20             	add    esp,0x20
 358:	83 c4 7c             	add    esp,0x7c
 35b:	5b                   	pop    ebx
 35c:	5e                   	pop    esi
 35d:	5f                   	pop    edi
 35e:	5d                   	pop    ebp
 35f:	c3                   	ret
 360:	e8 fc ff ff ff       	call   361 <notepad_draw+0x311>
 365:	ba cd cc cc cc       	mov    edx,0xcccccccd
 36a:	f7 e2                	mul    edx
 36c:	83 e2 20             	and    edx,0x20
 36f:	0f 85 89 00 00 00    	jne    3fe <notepad_draw+0x3ae>
 375:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 379:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 37d:	39 90 04 80 00 00    	cmp    DWORD PTR [eax+0x8004],edx
 383:	0f 85 ab fe ff ff    	jne    234 <notepad_draw+0x1e4>
 389:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 38d:	8b 94 24 90 00 00 00 	mov    edx,DWORD PTR [esp+0x90]
 394:	8d 58 2c             	lea    ebx,[eax+0x2c]
 397:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
 39e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 3a1:	03 02                	add    eax,DWORD PTR [edx]
 3a3:	83 e8 04             	sub    eax,0x4
 3a6:	39 c3                	cmp    ebx,eax
 3a8:	0f 8d 86 fe ff ff    	jge    234 <notepad_draw+0x1e4>
 3ae:	89 d7                	mov    edi,edx
 3b0:	6a 3c                	push   0x3c
 3b2:	68 44 32 31 00       	push   0x313244
 3b7:	56                   	push   esi
 3b8:	53                   	push   ebx
 3b9:	83 c3 01             	add    ebx,0x1
 3bc:	e8 fc ff ff ff       	call   3bd <notepad_draw+0x36d>
 3c1:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
 3c4:	03 07                	add    eax,DWORD PTR [edi]
 3c6:	83 c4 10             	add    esp,0x10
 3c9:	83 e8 04             	sub    eax,0x4
 3cc:	39 d8                	cmp    eax,ebx
 3ce:	7f e0                	jg     3b0 <notepad_draw+0x360>
 3d0:	e9 5f fe ff ff       	jmp    234 <notepad_draw+0x1e4>
 3d5:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
 3d9:	29 c8                	sub    eax,ecx
 3db:	83 c0 01             	add    eax,0x1
 3de:	89 82 0c 80 00 00    	mov    DWORD PTR [edx+0x800c],eax
 3e4:	e9 07 fd ff ff       	jmp    f0 <notepad_draw+0xa0>
 3e9:	8d 50 d7             	lea    edx,[eax-0x29]
 3ec:	83 e8 30             	sub    eax,0x30
 3ef:	0f 49 d0             	cmovns edx,eax
 3f2:	c1 fa 03             	sar    edx,0x3
 3f5:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
 3f9:	e9 c8 fc ff ff       	jmp    c6 <notepad_draw+0x76>
 3fe:	83 ec 0c             	sub    esp,0xc
 401:	68 fa b4 89 00       	push   0x89b4fa
 406:	6a 10                	push   0x10
 408:	6a 02                	push   0x2
 40a:	56                   	push   esi
 40b:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
 40f:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
 413:	8b 80 08 80 00 00    	mov    eax,DWORD PTR [eax+0x8008]
 419:	8d 44 c2 2c          	lea    eax,[edx+eax*8+0x2c]
 41d:	50                   	push   eax
 41e:	e8 fc ff ff ff       	call   41f <notepad_draw+0x3cf>
 423:	83 c4 20             	add    esp,0x20
 426:	e9 4a ff ff ff       	jmp    375 <notepad_draw+0x325>
 42b:	68 87 b3 fa 00       	push   0xfab387
 430:	68 02 00 00 00       	push   0x2
 435:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
 43c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 43f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 443:	83 c0 06             	add    eax,0x6
 446:	50                   	push   eax
 447:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [esp+0x9c]
 44e:	8b b4 24 9c 00 00 00 	mov    esi,DWORD PTR [esp+0x9c]
 455:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 458:	03 06                	add    eax,DWORD PTR [esi]
 45a:	83 e8 50             	sub    eax,0x50
 45d:	50                   	push   eax
 45e:	e8 fc ff ff ff       	call   45f <notepad_draw+0x40f>
 463:	83 c4 10             	add    esp,0x10
 466:	e9 ee fd ff ff       	jmp    259 <notepad_draw+0x209>
 46b:	8d 44 24 30          	lea    eax,[esp+0x30]
 46f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 473:	8d 44 24 28          	lea    eax,[esp+0x28]
 477:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 47b:	e9 c8 fd ff ff       	jmp    248 <notepad_draw+0x1f8>

00000480 <notepad_on_key>:
 480:	57                   	push   edi
 481:	56                   	push   esi
 482:	53                   	push   ebx
 483:	83 ec 10             	sub    esp,0x10
 486:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
 48a:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
 48e:	8b 58 68             	mov    ebx,DWORD PTR [eax+0x68]
 491:	85 db                	test   ebx,ebx
 493:	74 40                	je     4d5 <notepad_on_key+0x55>
 495:	80 fa 0a             	cmp    dl,0xa
 498:	0f 8f 22 04 00 00    	jg     8c0 <notepad_on_key+0x440>
 49e:	80 fa f8             	cmp    dl,0xf8
 4a1:	7c 32                	jl     4d5 <notepad_on_key+0x55>
 4a3:	83 c2 08             	add    edx,0x8
 4a6:	80 fa 12             	cmp    dl,0x12
 4a9:	77 2a                	ja     4d5 <notepad_on_key+0x55>
 4ab:	0f b6 d2             	movzx  edx,dl
 4ae:	ff 24 95 00 00 00 00 	jmp    DWORD PTR [edx*4+0x0]
 4b5:	8d 76 00             	lea    esi,[esi+0x0]
 4b8:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 4be:	83 ec 0c             	sub    esp,0xc
 4c1:	c1 e0 08             	shl    eax,0x8
 4c4:	01 d8                	add    eax,ebx
 4c6:	50                   	push   eax
 4c7:	e8 fc ff ff ff       	call   4c8 <notepad_on_key+0x48>
 4cc:	83 c4 10             	add    esp,0x10
 4cf:	89 83 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],eax
 4d5:	83 c4 10             	add    esp,0x10
 4d8:	5b                   	pop    ebx
 4d9:	5e                   	pop    esi
 4da:	5f                   	pop    edi
 4db:	c3                   	ret
 4dc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 4e0:	8b b3 00 80 00 00    	mov    esi,DWORD PTR [ebx+0x8000]
 4e6:	83 fe 7f             	cmp    esi,0x7f
 4e9:	7f ea                	jg     4d5 <notepad_on_key+0x55>
 4eb:	8b 8b 04 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8004]
 4f1:	8d 41 01             	lea    eax,[ecx+0x1]
 4f4:	39 c6                	cmp    esi,eax
 4f6:	7e 40                	jle    538 <notepad_on_key+0xb8>
 4f8:	89 f2                	mov    edx,esi
 4fa:	c1 e2 08             	shl    edx,0x8
 4fd:	01 da                	add    edx,ebx
 4ff:	90                   	nop
 500:	83 ec 04             	sub    esp,0x4
 503:	89 d0                	mov    eax,edx
 505:	81 ea 00 01 00 00    	sub    edx,0x100
 50b:	83 ee 01             	sub    esi,0x1
 50e:	68 00 01 00 00       	push   0x100
 513:	52                   	push   edx
 514:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 518:	50                   	push   eax
 519:	e8 fc ff ff ff       	call   51a <notepad_on_key+0x9a>
 51e:	8b 8b 04 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8004]
 524:	83 c4 10             	add    esp,0x10
 527:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 52b:	8d 41 01             	lea    eax,[ecx+0x1]
 52e:	39 c6                	cmp    esi,eax
 530:	7f ce                	jg     500 <notepad_on_key+0x80>
 532:	8b b3 00 80 00 00    	mov    esi,DWORD PTR [ebx+0x8000]
 538:	c1 e1 08             	shl    ecx,0x8
 53b:	8d 56 01             	lea    edx,[esi+0x1]
 53e:	83 ec 0c             	sub    esp,0xc
 541:	c1 e0 08             	shl    eax,0x8
 544:	8d 34 0b             	lea    esi,[ebx+ecx*1]
 547:	89 93 00 80 00 00    	mov    DWORD PTR [ebx+0x8000],edx
 54d:	8d 3c 03             	lea    edi,[ebx+eax*1]
 550:	56                   	push   esi
 551:	e8 fc ff ff ff       	call   552 <notepad_on_key+0xd2>
 556:	8b 8b 08 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8008]
 55c:	83 c4 10             	add    esp,0x10
 55f:	29 c8                	sub    eax,ecx
 561:	85 c0                	test   eax,eax
 563:	0f 8f 7f 04 00 00    	jg     9e8 <notepad_on_key+0x568>
 569:	c6 07 00             	mov    BYTE PTR [edi],0x0
 56c:	83 83 04 80 00 00 01 	add    DWORD PTR [ebx+0x8004],0x1
 573:	c7 83 08 80 00 00 00 	mov    DWORD PTR [ebx+0x8008],0x0
 57a:	00 00 00 
 57d:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 584:	e9 4c ff ff ff       	jmp    4d5 <notepad_on_key+0x55>
 589:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 590:	8b 93 04 80 00 00    	mov    edx,DWORD PTR [ebx+0x8004]
 596:	83 ec 0c             	sub    esp,0xc
 599:	c1 e2 08             	shl    edx,0x8
 59c:	01 da                	add    edx,ebx
 59e:	52                   	push   edx
 59f:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 5a3:	e8 fc ff ff ff       	call   5a4 <notepad_on_key+0x124>
 5a8:	8b 8b 08 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8008]
 5ae:	83 c4 10             	add    esp,0x10
 5b1:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 5b5:	39 c1                	cmp    ecx,eax
 5b7:	0f 8c 03 04 00 00    	jl     9c0 <notepad_on_key+0x540>
 5bd:	8b bb 00 80 00 00    	mov    edi,DWORD PTR [ebx+0x8000]
 5c3:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 5c9:	8d 4f ff             	lea    ecx,[edi-0x1]
 5cc:	39 c8                	cmp    eax,ecx
 5ce:	0f 8d 01 ff ff ff    	jge    4d5 <notepad_on_key+0x55>
 5d4:	83 c0 01             	add    eax,0x1
 5d7:	83 ec 08             	sub    esp,0x8
 5da:	c1 e0 08             	shl    eax,0x8
 5dd:	01 d8                	add    eax,ebx
 5df:	50                   	push   eax
 5e0:	52                   	push   edx
 5e1:	e8 fc ff ff ff       	call   5e2 <notepad_on_key+0x162>
 5e6:	8b 93 04 80 00 00    	mov    edx,DWORD PTR [ebx+0x8004]
 5ec:	8b 83 00 80 00 00    	mov    eax,DWORD PTR [ebx+0x8000]
 5f2:	83 c4 10             	add    esp,0x10
 5f5:	8d 4a 01             	lea    ecx,[edx+0x1]
 5f8:	83 e8 01             	sub    eax,0x1
 5fb:	39 c1                	cmp    ecx,eax
 5fd:	7d 4b                	jge    64a <notepad_on_key+0x1ca>
 5ff:	c1 e2 08             	shl    edx,0x8
 602:	8d 94 13 00 01 00 00 	lea    edx,[ebx+edx*1+0x100]
 609:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 610:	83 c1 01             	add    ecx,0x1
 613:	83 ec 04             	sub    esp,0x4
 616:	89 d0                	mov    eax,edx
 618:	81 c2 00 01 00 00    	add    edx,0x100
 61e:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
 622:	68 00 01 00 00       	push   0x100
 627:	52                   	push   edx
 628:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 62c:	50                   	push   eax
 62d:	e8 fc ff ff ff       	call   62e <notepad_on_key+0x1ae>
 632:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
 636:	83 c4 10             	add    esp,0x10
 639:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 63d:	8b 83 00 80 00 00    	mov    eax,DWORD PTR [ebx+0x8000]
 643:	83 e8 01             	sub    eax,0x1
 646:	39 c1                	cmp    ecx,eax
 648:	7c c6                	jl     610 <notepad_on_key+0x190>
 64a:	89 83 00 80 00 00    	mov    DWORD PTR [ebx+0x8000],eax
 650:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 657:	e9 79 fe ff ff       	jmp    4d5 <notepad_on_key+0x55>
 65c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 660:	c7 83 08 80 00 00 00 	mov    DWORD PTR [ebx+0x8008],0x0
 667:	00 00 00 
 66a:	e9 66 fe ff ff       	jmp    4d5 <notepad_on_key+0x55>
 66f:	90                   	nop
 670:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 676:	83 ec 0c             	sub    esp,0xc
 679:	c1 e0 08             	shl    eax,0x8
 67c:	01 d8                	add    eax,ebx
 67e:	50                   	push   eax
 67f:	e8 fc ff ff ff       	call   680 <notepad_on_key+0x200>
 684:	83 c4 10             	add    esp,0x10
 687:	89 c2                	mov    edx,eax
 689:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 68f:	39 d0                	cmp    eax,edx
 691:	0f 8c a1 02 00 00    	jl     938 <notepad_on_key+0x4b8>
 697:	8b 83 00 80 00 00    	mov    eax,DWORD PTR [ebx+0x8000]
 69d:	8b 93 04 80 00 00    	mov    edx,DWORD PTR [ebx+0x8004]
 6a3:	83 e8 01             	sub    eax,0x1
 6a6:	39 c2                	cmp    edx,eax
 6a8:	0f 8d 27 fe ff ff    	jge    4d5 <notepad_on_key+0x55>
 6ae:	c7 83 08 80 00 00 00 	mov    DWORD PTR [ebx+0x8008],0x0
 6b5:	00 00 00 
 6b8:	83 c2 01             	add    edx,0x1
 6bb:	89 93 04 80 00 00    	mov    DWORD PTR [ebx+0x8004],edx
 6c1:	e9 0f fe ff ff       	jmp    4d5 <notepad_on_key+0x55>
 6c6:	66 90                	xchg   ax,ax
 6c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6cf:	00 
 6d0:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 6d6:	85 c0                	test   eax,eax
 6d8:	0f 8e c2 02 00 00    	jle    9a0 <notepad_on_key+0x520>
 6de:	83 e8 01             	sub    eax,0x1
 6e1:	89 83 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],eax
 6e7:	e9 e9 fd ff ff       	jmp    4d5 <notepad_on_key+0x55>
 6ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 6f0:	8b b3 00 80 00 00    	mov    esi,DWORD PTR [ebx+0x8000]
 6f6:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 6fc:	8d 56 ff             	lea    edx,[esi-0x1]
 6ff:	39 d0                	cmp    eax,edx
 701:	0f 8d ce fd ff ff    	jge    4d5 <notepad_on_key+0x55>
 707:	83 c0 01             	add    eax,0x1
 70a:	eb 15                	jmp    721 <notepad_on_key+0x2a1>
 70c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 710:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 716:	85 c0                	test   eax,eax
 718:	0f 8e b7 fd ff ff    	jle    4d5 <notepad_on_key+0x55>
 71e:	83 e8 01             	sub    eax,0x1
 721:	89 83 04 80 00 00    	mov    DWORD PTR [ebx+0x8004],eax
 727:	c1 e0 08             	shl    eax,0x8
 72a:	83 ec 0c             	sub    esp,0xc
 72d:	01 d8                	add    eax,ebx
 72f:	50                   	push   eax
 730:	e8 fc ff ff ff       	call   731 <notepad_on_key+0x2b1>
 735:	83 c4 10             	add    esp,0x10
 738:	39 83 08 80 00 00    	cmp    DWORD PTR [ebx+0x8008],eax
 73e:	0f 8e 91 fd ff ff    	jle    4d5 <notepad_on_key+0x55>
 744:	89 83 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],eax
 74a:	e9 86 fd ff ff       	jmp    4d5 <notepad_on_key+0x55>
 74f:	90                   	nop
 750:	8b b3 08 80 00 00    	mov    esi,DWORD PTR [ebx+0x8008]
 756:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 75c:	85 f6                	test   esi,esi
 75e:	0f 8f ec 01 00 00    	jg     950 <notepad_on_key+0x4d0>
 764:	85 c0                	test   eax,eax
 766:	0f 8e 69 fd ff ff    	jle    4d5 <notepad_on_key+0x55>
 76c:	83 e8 01             	sub    eax,0x1
 76f:	83 ec 0c             	sub    esp,0xc
 772:	c1 e0 08             	shl    eax,0x8
 775:	01 d8                	add    eax,ebx
 777:	50                   	push   eax
 778:	e8 fc ff ff ff       	call   779 <notepad_on_key+0x2f9>
 77d:	5a                   	pop    edx
 77e:	59                   	pop    ecx
 77f:	89 c7                	mov    edi,eax
 781:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 787:	c1 e0 08             	shl    eax,0x8
 78a:	8d 14 03             	lea    edx,[ebx+eax*1]
 78d:	8d 84 03 00 ff ff ff 	lea    eax,[ebx+eax*1-0x100]
 794:	52                   	push   edx
 795:	50                   	push   eax
 796:	e8 fc ff ff ff       	call   797 <notepad_on_key+0x317>
 79b:	8b 83 00 80 00 00    	mov    eax,DWORD PTR [ebx+0x8000]
 7a1:	8b 8b 04 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8004]
 7a7:	83 c4 10             	add    esp,0x10
 7aa:	83 e8 01             	sub    eax,0x1
 7ad:	39 c1                	cmp    ecx,eax
 7af:	7d 4f                	jge    800 <notepad_on_key+0x380>
 7b1:	89 ca                	mov    edx,ecx
 7b3:	c1 e2 08             	shl    edx,0x8
 7b6:	01 da                	add    edx,ebx
 7b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 7bf:	00 
 7c0:	83 c1 01             	add    ecx,0x1
 7c3:	83 ec 04             	sub    esp,0x4
 7c6:	89 d0                	mov    eax,edx
 7c8:	81 c2 00 01 00 00    	add    edx,0x100
 7ce:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
 7d2:	68 00 01 00 00       	push   0x100
 7d7:	52                   	push   edx
 7d8:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 7dc:	50                   	push   eax
 7dd:	e8 fc ff ff ff       	call   7de <notepad_on_key+0x35e>
 7e2:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
 7e6:	83 c4 10             	add    esp,0x10
 7e9:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 7ed:	8b 83 00 80 00 00    	mov    eax,DWORD PTR [ebx+0x8000]
 7f3:	83 e8 01             	sub    eax,0x1
 7f6:	39 c1                	cmp    ecx,eax
 7f8:	7c c6                	jl     7c0 <notepad_on_key+0x340>
 7fa:	8b 8b 04 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8004]
 800:	83 e9 01             	sub    ecx,0x1
 803:	89 83 00 80 00 00    	mov    DWORD PTR [ebx+0x8000],eax
 809:	89 8b 04 80 00 00    	mov    DWORD PTR [ebx+0x8004],ecx
 80f:	89 bb 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],edi
 815:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 81c:	e9 b4 fc ff ff       	jmp    4d5 <notepad_on_key+0x55>
 821:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 828:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 82e:	bf 04 00 00 00       	mov    edi,0x4
 833:	3d fd 00 00 00       	cmp    eax,0xfd
 838:	7f 70                	jg     8aa <notepad_on_key+0x42a>
 83a:	8b 93 04 80 00 00    	mov    edx,DWORD PTR [ebx+0x8004]
 840:	83 ec 0c             	sub    esp,0xc
 843:	c1 e2 08             	shl    edx,0x8
 846:	01 da                	add    edx,ebx
 848:	52                   	push   edx
 849:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 84d:	e8 fc ff ff ff       	call   84e <notepad_on_key+0x3ce>
 852:	83 c4 10             	add    esp,0x10
 855:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 859:	3d fd 00 00 00       	cmp    eax,0xfd
 85e:	7f 4a                	jg     8aa <notepad_on_key+0x42a>
 860:	8b 8b 08 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8008]
 866:	83 ec 04             	sub    esp,0x4
 869:	89 fe                	mov    esi,edi
 86b:	29 c8                	sub    eax,ecx
 86d:	83 c0 01             	add    eax,0x1
 870:	50                   	push   eax
 871:	8d 04 0a             	lea    eax,[edx+ecx*1]
 874:	50                   	push   eax
 875:	8d 44 0a 01          	lea    eax,[edx+ecx*1+0x1]
 879:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 87d:	50                   	push   eax
 87e:	e8 fc ff ff ff       	call   87f <notepad_on_key+0x3ff>
 883:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 889:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 88d:	83 c4 10             	add    esp,0x10
 890:	c6 04 02 20          	mov    BYTE PTR [edx+eax*1],0x20
 894:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 89a:	83 c0 01             	add    eax,0x1
 89d:	83 ee 01             	sub    esi,0x1
 8a0:	89 83 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],eax
 8a6:	89 f7                	mov    edi,esi
 8a8:	75 89                	jne    833 <notepad_on_key+0x3b3>
 8aa:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 8b1:	e9 1f fc ff ff       	jmp    4d5 <notepad_on_key+0x55>
 8b6:	66 90                	xchg   ax,ax
 8b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 8bf:	00 
 8c0:	8d 42 e0             	lea    eax,[edx-0x20]
 8c3:	3c 5e                	cmp    al,0x5e
 8c5:	0f 87 0a fc ff ff    	ja     4d5 <notepad_on_key+0x55>
 8cb:	8b 8b 04 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8004]
 8d1:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8d5:	83 ec 0c             	sub    esp,0xc
 8d8:	c1 e1 08             	shl    ecx,0x8
 8db:	8d 04 0b             	lea    eax,[ebx+ecx*1]
 8de:	50                   	push   eax
 8df:	89 c7                	mov    edi,eax
 8e1:	e8 fc ff ff ff       	call   8e2 <notepad_on_key+0x462>
 8e6:	83 c4 10             	add    esp,0x10
 8e9:	3d fd 00 00 00       	cmp    eax,0xfd
 8ee:	0f 8f e1 fb ff ff    	jg     4d5 <notepad_on_key+0x55>
 8f4:	8b 8b 08 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8008]
 8fa:	83 ec 04             	sub    esp,0x4
 8fd:	29 c8                	sub    eax,ecx
 8ff:	83 c0 01             	add    eax,0x1
 902:	50                   	push   eax
 903:	8d 04 0f             	lea    eax,[edi+ecx*1]
 906:	50                   	push   eax
 907:	8d 44 0f 01          	lea    eax,[edi+ecx*1+0x1]
 90b:	50                   	push   eax
 90c:	e8 fc ff ff ff       	call   90d <notepad_on_key+0x48d>
 911:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 917:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 91b:	83 c4 10             	add    esp,0x10
 91e:	88 14 07             	mov    BYTE PTR [edi+eax*1],dl
 921:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 928:	83 83 08 80 00 00 01 	add    DWORD PTR [ebx+0x8008],0x1
 92f:	e9 a1 fb ff ff       	jmp    4d5 <notepad_on_key+0x55>
 934:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 938:	83 c0 01             	add    eax,0x1
 93b:	89 83 08 80 00 00    	mov    DWORD PTR [ebx+0x8008],eax
 941:	e9 8f fb ff ff       	jmp    4d5 <notepad_on_key+0x55>
 946:	66 90                	xchg   ax,ax
 948:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 94f:	00 
 950:	c1 e0 08             	shl    eax,0x8
 953:	83 ec 0c             	sub    esp,0xc
 956:	8d 14 03             	lea    edx,[ebx+eax*1]
 959:	52                   	push   edx
 95a:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 95e:	e8 fc ff ff ff       	call   95f <notepad_on_key+0x4df>
 963:	8b 8b 08 80 00 00    	mov    ecx,DWORD PTR [ebx+0x8008]
 969:	83 c4 0c             	add    esp,0xc
 96c:	29 c8                	sub    eax,ecx
 96e:	83 c0 01             	add    eax,0x1
 971:	50                   	push   eax
 972:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 976:	8d 04 0a             	lea    eax,[edx+ecx*1]
 979:	50                   	push   eax
 97a:	8d 44 0a ff          	lea    eax,[edx+ecx*1-0x1]
 97e:	50                   	push   eax
 97f:	e8 fc ff ff ff       	call   980 <notepad_on_key+0x500>
 984:	83 ab 08 80 00 00 01 	sub    DWORD PTR [ebx+0x8008],0x1
 98b:	83 c4 10             	add    esp,0x10
 98e:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 995:	e9 3b fb ff ff       	jmp    4d5 <notepad_on_key+0x55>
 99a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 9a0:	8b 83 04 80 00 00    	mov    eax,DWORD PTR [ebx+0x8004]
 9a6:	85 c0                	test   eax,eax
 9a8:	0f 8e 27 fb ff ff    	jle    4d5 <notepad_on_key+0x55>
 9ae:	83 e8 01             	sub    eax,0x1
 9b1:	83 ec 0c             	sub    esp,0xc
 9b4:	89 83 04 80 00 00    	mov    DWORD PTR [ebx+0x8004],eax
 9ba:	e9 02 fb ff ff       	jmp    4c1 <notepad_on_key+0x41>
 9bf:	90                   	nop
 9c0:	83 ec 04             	sub    esp,0x4
 9c3:	29 c8                	sub    eax,ecx
 9c5:	50                   	push   eax
 9c6:	8d 44 0a 01          	lea    eax,[edx+ecx*1+0x1]
 9ca:	01 d1                	add    ecx,edx
 9cc:	50                   	push   eax
 9cd:	51                   	push   ecx
 9ce:	e8 fc ff ff ff       	call   9cf <notepad_on_key+0x54f>
 9d3:	c6 83 10 80 00 00 01 	mov    BYTE PTR [ebx+0x8010],0x1
 9da:	83 c4 10             	add    esp,0x10
 9dd:	e9 f3 fa ff ff       	jmp    4d5 <notepad_on_key+0x55>
 9e2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 9e8:	83 ec 04             	sub    esp,0x4
 9eb:	01 f1                	add    ecx,esi
 9ed:	50                   	push   eax
 9ee:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 9f2:	51                   	push   ecx
 9f3:	57                   	push   edi
 9f4:	e8 fc ff ff ff       	call   9f5 <notepad_on_key+0x575>
 9f9:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 9fd:	83 c4 10             	add    esp,0x10
 a00:	c6 04 17 00          	mov    BYTE PTR [edi+edx*1],0x0
 a04:	8b 83 08 80 00 00    	mov    eax,DWORD PTR [ebx+0x8008]
 a0a:	c6 04 06 00          	mov    BYTE PTR [esi+eax*1],0x0
 a0e:	e9 59 fb ff ff       	jmp    56c <notepad_on_key+0xec>

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	3f                   	aas
   1:	00 5b 6d             	add    BYTE PTR [ebx+0x6d],bl
   4:	6f                   	outs   dx,DWORD PTR ds:[esi]
   5:	64 5d                	fs pop ebp
   7:	00 20                	add    BYTE PTR [eax],ah
   9:	4c                   	dec    esp
   a:	6e                   	outs   dx,BYTE PTR ds:[esi]
   b:	20 00                	and    BYTE PTR [eax],al
   d:	2c 20                	sub    al,0x20
   f:	43                   	inc    ebx
  10:	6f                   	outs   dx,DWORD PTR ds:[esi]
  11:	6c                   	ins    BYTE PTR es:[edi],dx
  12:	20 00                	and    BYTE PTR [eax],al
  14:	20 20                	and    BYTE PTR [eax],ah
  16:	4c                   	dec    esp
  17:	69 6e 65 73 3a 20 00 	imul   ebp,DWORD PTR [esi+0x65],0x203a73

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	90                   	nop
   1:	05 00 00 b8 04       	add    eax,0x4b80000
   6:	00 00                	add    BYTE PTR [eax],al
   8:	60                   	pusha
   9:	06                   	push   es
   a:	00 00                	add    BYTE PTR [eax],al
   c:	70 06                	jo     14 <.rodata+0x14>
   e:	00 00                	add    BYTE PTR [eax],al
  10:	d0 06                	rol    BYTE PTR [esi],1
  12:	00 00                	add    BYTE PTR [eax],al
  14:	f0 06                	lock push es
  16:	00 00                	add    BYTE PTR [eax],al
  18:	10 07                	adc    BYTE PTR [edi],al
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	d5 04                	aad    0x4
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	d5 04                	aad    0x4
  22:	00 00                	add    BYTE PTR [eax],al
  24:	d5 04                	aad    0x4
  26:	00 00                	add    BYTE PTR [eax],al
  28:	d5 04                	aad    0x4
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	d5 04                	aad    0x4
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	d5 04                	aad    0x4
  32:	00 00                	add    BYTE PTR [eax],al
  34:	d5 04                	aad    0x4
  36:	00 00                	add    BYTE PTR [eax],al
  38:	d5 04                	aad    0x4
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	d5 04                	aad    0x4
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	50                   	push   eax
  41:	07                   	pop    es
  42:	00 00                	add    BYTE PTR [eax],al
  44:	28 08                	sub    BYTE PTR [eax],cl
  46:	00 00                	add    BYTE PTR [eax],al
  48:	e0 04                	loopne 4e <pads+0x2e>
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
  17:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	49                   	dec    ecx
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 83 02 45 0e 10    	or     BYTE PTR [ebx+0x100e4502],al
  31:	50                   	push   eax
  32:	0e                   	push   cs
  33:	14 4b                	adc    al,0x4b
  35:	0e                   	push   cs
  36:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
  39:	1c 4d                	sbb    al,0x4d
  3b:	0e                   	push   cs
  3c:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  3f:	10 4d 0e             	adc    BYTE PTR [ebp+0xe],cl
  42:	08 43 c3             	or     BYTE PTR [ebx-0x3d],al
  45:	0e                   	push   cs
  46:	04 00                	add    al,0x0
  48:	a8 01                	test   al,0x1
  4a:	00 00                	add    BYTE PTR [eax],al
  4c:	4c                   	dec    esp
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  52:	00 00                	add    BYTE PTR [eax],al
  54:	30 04 00             	xor    BYTE PTR [eax+eax*1],al
  57:	00 00                	add    BYTE PTR [eax],al
  59:	41                   	inc    ecx
  5a:	0e                   	push   cs
  5b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  61:	87 03                	xchg   DWORD PTR [ebx],eax
  63:	41                   	inc    ecx
  64:	0e                   	push   cs
  65:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  6b:	83 05 43 0e 90 01 02 	add    DWORD PTR ds:0x1900e43,0x2
  72:	9c                   	pushf
  73:	0e                   	push   cs
  74:	9c                   	pushf
  75:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  78:	a0 01 48 0e a4       	mov    al,ds:0xa40e4801
  7d:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  80:	a8 01                	test   al,0x1
  82:	41                   	inc    ecx
  83:	0e                   	push   cs
  84:	ac                   	lods   al,BYTE PTR ds:[esi]
  85:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  88:	b0 01                	mov    al,0x1
  8a:	48                   	dec    eax
  8b:	0e                   	push   cs
  8c:	90                   	nop
  8d:	01 02                	add    DWORD PTR [edx],eax
  8f:	44                   	inc    esp
  90:	0e                   	push   cs
  91:	94                   	xchg   esp,eax
  92:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  95:	98                   	cwde
  96:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  99:	9c                   	pushf
  9a:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
  9d:	a0 01 54 0e 90       	mov    al,ds:0x900e5401
  a2:	01 5b 0e             	add    DWORD PTR [ebx+0xe],ebx
  a5:	94                   	xchg   esp,eax
  a6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  a9:	98                   	cwde
  aa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  ad:	9c                   	pushf
  ae:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
  b1:	a0 01 60 0e 90       	mov    al,ds:0x900e6001
  b6:	01 65 0e             	add    DWORD PTR [ebp+0xe],esp
  b9:	94                   	xchg   esp,eax
  ba:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  bd:	98                   	cwde
  be:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  c1:	9c                   	pushf
  c2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  c5:	a0 01 4c 0e 90       	mov    al,ds:0x900e4c01
  ca:	01 59 0e             	add    DWORD PTR [ecx+0xe],ebx
  cd:	94                   	xchg   esp,eax
  ce:	01 44 0e 98          	add    DWORD PTR [esi+ecx*1-0x68],eax
  d2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  d5:	9c                   	pushf
  d6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  d9:	a0 01 4b 0e 90       	mov    al,ds:0x900e4b01
  de:	01 02                	add    DWORD PTR [edx],eax
  e0:	47                   	inc    edi
  e1:	0e                   	push   cs
  e2:	9c                   	pushf
  e3:	01 4b 0e             	add    DWORD PTR [ebx+0xe],ecx
  e6:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
  eb:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
  ee:	a8 01                	test   al,0x1
  f0:	47                   	inc    edi
  f1:	0e                   	push   cs
  f2:	ac                   	lods   al,BYTE PTR ds:[esi]
  f3:	01 51 0e             	add    DWORD PTR [ecx+0xe],edx
  f6:	b0 01                	mov    al,0x1
  f8:	4d                   	dec    ebp
  f9:	0e                   	push   cs
  fa:	98                   	cwde
  fb:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  fe:	9c                   	pushf
  ff:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 102:	a0 01 48 0e 94       	mov    al,ds:0x940e4801
 107:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 10a:	98                   	cwde
 10b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 10e:	9c                   	pushf
 10f:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
 112:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 117:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 11a:	98                   	cwde
 11b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 11e:	9c                   	pushf
 11f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 122:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 127:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 12a:	98                   	cwde
 12b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 12e:	9c                   	pushf
 12f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 132:	a0 01 48 0e 94       	mov    al,ds:0x940e4801
 137:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 13a:	98                   	cwde
 13b:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 13e:	9c                   	pushf
 13f:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 142:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 147:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 14a:	98                   	cwde
 14b:	01 44 0e 9c          	add    DWORD PTR [esi+ecx*1-0x64],eax
 14f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 152:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 157:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 15a:	98                   	cwde
 15b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 15e:	9c                   	pushf
 15f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 162:	a0 01 48 0e 94       	mov    al,ds:0x940e4801
 167:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 16a:	98                   	cwde
 16b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 16e:	9c                   	pushf
 16f:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 172:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 177:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 17a:	98                   	cwde
 17b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 17e:	9c                   	pushf
 17f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 182:	a0 01 4a 0e a4       	mov    al,ds:0xa40e4a01
 187:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 18a:	a8 01                	test   al,0x1
 18c:	41                   	inc    ecx
 18d:	0e                   	push   cs
 18e:	ac                   	lods   al,BYTE PTR ds:[esi]
 18f:	01 4d 0e             	add    DWORD PTR [ebp+0xe],ecx
 192:	b0 01                	mov    al,0x1
 194:	48                   	dec    eax
 195:	0e                   	push   cs
 196:	90                   	nop
 197:	01 43 0a             	add    DWORD PTR [ebx+0xa],eax
 19a:	0e                   	push   cs
 19b:	14 41                	adc    al,0x41
 19d:	c3                   	ret
 19e:	0e                   	push   cs
 19f:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1a2:	0e                   	push   cs
 1a3:	0c 41                	or     al,0x41
 1a5:	c7                   	(bad)
 1a6:	0e                   	push   cs
 1a7:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1aa:	0e                   	push   cs
 1ab:	04 41                	add    al,0x41
 1ad:	0b 02                	or     eax,DWORD PTR [edx]
 1af:	52                   	push   edx
 1b0:	0e                   	push   cs
 1b1:	94                   	xchg   esp,eax
 1b2:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1b5:	98                   	cwde
 1b6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1b9:	9c                   	pushf
 1ba:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1bd:	a0 01 50 0e 90       	mov    al,ds:0x900e5001
 1c2:	01 78 0e             	add    DWORD PTR [eax+0xe],edi
 1c5:	9c                   	pushf
 1c6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1c9:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
 1ce:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 1d1:	a8 01                	test   al,0x1
 1d3:	41                   	inc    ecx
 1d4:	0e                   	push   cs
 1d5:	ac                   	lods   al,BYTE PTR ds:[esi]
 1d6:	01 53 0e             	add    DWORD PTR [ebx+0xe],edx
 1d9:	b0 01                	mov    al,0x1
 1db:	48                   	dec    eax
 1dc:	0e                   	push   cs
 1dd:	90                   	nop
 1de:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 1e1:	94                   	xchg   esp,eax
 1e2:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1e5:	98                   	cwde
 1e6:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
 1e9:	9c                   	pushf
 1ea:	01 57 0e             	add    DWORD PTR [edi+0xe],edx
 1ed:	a0 01 48 0e 90       	mov    al,ds:0x900e4801
 1f2:	01 00                	add    DWORD PTR [eax],eax
 1f4:	1c 01                	sbb    al,0x1
 1f6:	00 00                	add    BYTE PTR [eax],al
 1f8:	f8                   	clc
 1f9:	01 00                	add    DWORD PTR [eax],eax
 1fb:	00 80 04 00 00 93    	add    BYTE PTR [eax-0x6cfffffc],al
 201:	05 00 00 00 41       	add    eax,0x41000000
 206:	0e                   	push   cs
 207:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 20d:	86 03                	xchg   BYTE PTR [ebx],al
 20f:	41                   	inc    ecx
 210:	0e                   	push   cs
 211:	10 83 04 43 0e 20    	adc    BYTE PTR [ebx+0x200e4304],al
 217:	7b 0e                	jnp    227 <.eh_frame+0x227>
 219:	2c 46                	sub    al,0x46
 21b:	0e                   	push   cs
 21c:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 21f:	20 49 0a             	and    BYTE PTR [ecx+0xa],cl
 222:	0e                   	push   cs
 223:	10 41 c3             	adc    BYTE PTR [ecx-0x3d],al
 226:	0e                   	push   cs
 227:	0c 41                	or     al,0x41
 229:	c6                   	(bad)
 22a:	0e                   	push   cs
 22b:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 22e:	0e                   	push   cs
 22f:	04 45                	add    al,0x45
 231:	0b 63 0e             	or     esp,DWORD PTR [ebx+0xe]
 234:	24 50                	and    al,0x50
 236:	0e                   	push   cs
 237:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
 23a:	2c 45                	sub    al,0x45
 23c:	0e                   	push   cs
 23d:	30 4e 0e             	xor    BYTE PTR [esi+0xe],cl
 240:	20 5a 0e             	and    BYTE PTR [edx+0xe],bl
 243:	2c 50                	sub    al,0x50
 245:	0e                   	push   cs
 246:	30 4e 0e             	xor    BYTE PTR [esi+0xe],cl
 249:	20 7a 0e             	and    BYTE PTR [edx+0xe],bh
 24c:	2c 46                	sub    al,0x46
 24e:	0e                   	push   cs
 24f:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 252:	20 69 0e             	and    BYTE PTR [ecx+0xe],ch
 255:	28 46 0e             	sub    BYTE PTR [esi+0xe],al
 258:	2c 41                	sub    al,0x41
 25a:	0e                   	push   cs
 25b:	30 54 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],dl
 25f:	61                   	popa
 260:	0e                   	push   cs
 261:	24 51                	and    al,0x51
 263:	0e                   	push   cs
 264:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
 267:	2c 45                	sub    al,0x45
 269:	0e                   	push   cs
 26a:	30 4c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],cl
 26e:	02 40 0e             	add    al,BYTE PTR [eax+0xe]
 271:	2c 46                	sub    al,0x46
 273:	0e                   	push   cs
 274:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 277:	20 02                	and    BYTE PTR [edx],al
 279:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
 27a:	0e                   	push   cs
 27b:	2c 43                	sub    al,0x43
 27d:	0e                   	push   cs
 27e:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 281:	20 7a 0e             	and    BYTE PTR [edx+0xe],bh
 284:	2c 46                	sub    al,0x46
 286:	0e                   	push   cs
 287:	30 46 0e             	xor    BYTE PTR [esi+0xe],al
 28a:	2c 41                	sub    al,0x41
 28c:	0e                   	push   cs
 28d:	28 56 0e             	sub    BYTE PTR [esi+0xe],dl
 290:	2c 41                	sub    al,0x41
 292:	0e                   	push   cs
 293:	30 54 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],dl
 297:	5c                   	pop    esp
 298:	0e                   	push   cs
 299:	24 51                	and    al,0x51
 29b:	0e                   	push   cs
 29c:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
 29f:	2c 45                	sub    al,0x45
 2a1:	0e                   	push   cs
 2a2:	30 4c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],cl
 2a6:	02 5a 0e             	add    bl,BYTE PTR [edx+0xe]
 2a9:	2c 46                	sub    al,0x46
 2ab:	0e                   	push   cs
 2ac:	30 4c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],cl
 2b0:	54                   	push   esp
 2b1:	0e                   	push   cs
 2b2:	24 48                	and    al,0x48
 2b4:	0e                   	push   cs
 2b5:	28 44 0e 2c          	sub    BYTE PTR [esi+ecx*1+0x2c],al
 2b9:	49                   	dec    ecx
 2ba:	0e                   	push   cs
 2bb:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 2be:	20 02                	and    BYTE PTR [edx],al
 2c0:	48                   	dec    eax
 2c1:	0e                   	push   cs
 2c2:	2c 47                	sub    al,0x47
 2c4:	0e                   	push   cs
 2c5:	30 4a 0e             	xor    BYTE PTR [edx+0xe],cl
 2c8:	20 54 0e 24          	and    BYTE PTR [esi+ecx*1+0x24],dl
 2cc:	46                   	inc    esi
 2cd:	0e                   	push   cs
 2ce:	28 44 0e 2c          	sub    BYTE PTR [esi+ecx*1+0x2c],al
 2d2:	45                   	inc    ebp
 2d3:	0e                   	push   cs
 2d4:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 2d7:	20 78 0e             	and    BYTE PTR [eax+0xe],bh
 2da:	2c 44                	sub    al,0x44
 2dc:	0e                   	push   cs
 2dd:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 2e0:	24 46                	and    al,0x46
 2e2:	0e                   	push   cs
 2e3:	28 48 0e             	sub    BYTE PTR [eax+0xe],cl
 2e6:	2c 45                	sub    al,0x45
 2e8:	0e                   	push   cs
 2e9:	30 4f 0e             	xor    BYTE PTR [edi+0xe],cl
 2ec:	20 66 0a             	and    BYTE PTR [esi+0xa],ah
 2ef:	0e                   	push   cs
 2f0:	2c 4c                	sub    al,0x4c
 2f2:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 2f5:	24 43                	and    al,0x43
 2f7:	0e                   	push   cs
 2f8:	28 47 0e             	sub    BYTE PTR [edi+0xe],al
 2fb:	2c 41                	sub    al,0x41
 2fd:	0e                   	push   cs
 2fe:	30 4f 0e             	xor    BYTE PTR [edi+0xe],cl
 301:	20 4e 0e             	and    BYTE PTR [esi+0xe],cl
 304:	24 43                	and    al,0x43
 306:	0e                   	push   cs
 307:	28 45 0e             	sub    BYTE PTR [ebp+0xe],al
 30a:	2c 41                	sub    al,0x41
 30c:	0e                   	push   cs
 30d:	30 4c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],cl
 311:	00 00                	add    BYTE PTR [eax],al
	...
