
calculator.o:     file format elf32-i386


Disassembly of section .text:

00000000 <process_key>:
   0:	55                   	push   ebp
   1:	57                   	push   edi
   2:	56                   	push   esi
   3:	89 d6                	mov    esi,edx
   5:	53                   	push   ebx
   6:	89 c3                	mov    ebx,eax
   8:	83 ec 2c             	sub    esp,0x2c
   b:	80 fa 39             	cmp    dl,0x39
   e:	0f 8f f4 00 00 00    	jg     108 <process_key+0x108>
  14:	80 fa 2f             	cmp    dl,0x2f
  17:	0f 8f 53 01 00 00    	jg     170 <process_key+0x170>
  1d:	80 fa 0a             	cmp    dl,0xa
  20:	0f 84 0a 02 00 00    	je     230 <process_key+0x230>
  26:	0f 8e 24 01 00 00    	jle    150 <process_key+0x150>
  2c:	8d 42 d6             	lea    eax,[edx-0x2a]
  2f:	3c 05                	cmp    al,0x5
  31:	0f 87 0d 01 00 00    	ja     144 <process_key+0x144>
  37:	ba 2b 00 00 00       	mov    edx,0x2b
  3c:	0f a3 c2             	bt     edx,eax
  3f:	0f 83 ff 00 00 00    	jae    144 <process_key+0x144>
  45:	0f be 0b             	movsx  ecx,BYTE PTR [ebx]
  48:	31 c0                	xor    eax,eax
  4a:	bd 01 00 00 00       	mov    ebp,0x1
  4f:	80 f9 2d             	cmp    cl,0x2d
  52:	75 0e                	jne    62 <process_key+0x62>
  54:	0f be 4b 01          	movsx  ecx,BYTE PTR [ebx+0x1]
  58:	b8 01 00 00 00       	mov    eax,0x1
  5d:	bd ff ff ff ff       	mov    ebp,0xffffffff
  62:	84 c9                	test   cl,cl
  64:	0f 84 de 02 00 00    	je     348 <process_key+0x348>
  6a:	8d 7c 03 01          	lea    edi,[ebx+eax*1+0x1]
  6e:	31 c0                	xor    eax,eax
  70:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  77:	00 
  78:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  7f:	00 
  80:	8d 51 d0             	lea    edx,[ecx-0x30]
  83:	80 fa 09             	cmp    dl,0x9
  86:	77 07                	ja     8f <process_key+0x8f>
  88:	8d 04 80             	lea    eax,[eax+eax*4]
  8b:	8d 44 41 d0          	lea    eax,[ecx+eax*2-0x30]
  8f:	0f be 0f             	movsx  ecx,BYTE PTR [edi]
  92:	83 c7 01             	add    edi,0x1
  95:	84 c9                	test   cl,cl
  97:	75 e7                	jne    80 <process_key+0x80>
  99:	89 e9                	mov    ecx,ebp
  9b:	0f af c8             	imul   ecx,eax
  9e:	0f b6 53 28          	movzx  edx,BYTE PTR [ebx+0x28]
  a2:	84 d2                	test   dl,dl
  a4:	74 23                	je     c9 <process_key+0xc9>
  a6:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  a9:	80 fa 2d             	cmp    dl,0x2d
  ac:	0f 84 ce 02 00 00    	je     380 <process_key+0x380>
  b2:	0f 8f 70 02 00 00    	jg     328 <process_key+0x328>
  b8:	80 fa 2a             	cmp    dl,0x2a
  bb:	0f 84 df 02 00 00    	je     3a0 <process_key+0x3a0>
  c1:	01 c8                	add    eax,ecx
  c3:	80 fa 2b             	cmp    dl,0x2b
  c6:	0f 44 c8             	cmove  ecx,eax
  c9:	83 ec 04             	sub    esp,0x4
  cc:	89 f0                	mov    eax,esi
  ce:	89 4b 24             	mov    DWORD PTR [ebx+0x24],ecx
  d1:	88 43 28             	mov    BYTE PTR [ebx+0x28],al
  d4:	c6 43 29 01          	mov    BYTE PTR [ebx+0x29],0x1
  d8:	6a 0a                	push   0xa
  da:	8d 74 24 08          	lea    esi,[esp+0x8]
  de:	56                   	push   esi
  df:	51                   	push   ecx
  e0:	e8 fc ff ff ff       	call   e1 <process_key+0xe1>
  e5:	59                   	pop    ecx
  e6:	5f                   	pop    edi
  e7:	56                   	push   esi
  e8:	53                   	push   ebx
  e9:	e8 fc ff ff ff       	call   ea <process_key+0xea>
  ee:	89 1c 24             	mov    DWORD PTR [esp],ebx
  f1:	e8 fc ff ff ff       	call   f2 <process_key+0xf2>
  f6:	89 f4                	mov    esp,esi
  f8:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  fb:	83 c4 2c             	add    esp,0x2c
  fe:	5b                   	pop    ebx
  ff:	5e                   	pop    esi
 100:	5f                   	pop    edi
 101:	5d                   	pop    ebp
 102:	c3                   	ret
 103:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 108:	80 fa 4e             	cmp    dl,0x4e
 10b:	0f 84 8f 00 00 00    	je     1a0 <process_key+0x1a0>
 111:	0f 8f 81 00 00 00    	jg     198 <process_key+0x198>
 117:	80 fa 3d             	cmp    dl,0x3d
 11a:	0f 84 10 01 00 00    	je     230 <process_key+0x230>
 120:	80 fa 43             	cmp    dl,0x43
 123:	75 1f                	jne    144 <process_key+0x144>
 125:	b9 30 00 00 00       	mov    ecx,0x30
 12a:	be 00 01 00 00       	mov    esi,0x100
 12f:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
 136:	66 89 0b             	mov    WORD PTR [ebx],cx
 139:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
 140:	66 89 73 28          	mov    WORD PTR [ebx+0x28],si
 144:	83 c4 2c             	add    esp,0x2c
 147:	5b                   	pop    ebx
 148:	5e                   	pop    esi
 149:	5f                   	pop    edi
 14a:	5d                   	pop    ebp
 14b:	c3                   	ret
 14c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 150:	80 fa 08             	cmp    dl,0x8
 153:	75 ef                	jne    144 <process_key+0x144>
 155:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
 158:	83 f8 01             	cmp    eax,0x1
 15b:	0f 8e 9f 01 00 00    	jle    300 <process_key+0x300>
 161:	8d 50 ff             	lea    edx,[eax-0x1]
 164:	89 53 20             	mov    DWORD PTR [ebx+0x20],edx
 167:	c6 44 03 ff 00       	mov    BYTE PTR [ebx+eax*1-0x1],0x0
 16c:	eb d6                	jmp    144 <process_key+0x144>
 16e:	66 90                	xchg   ax,ax
 170:	0f b7 05 00 00 00 00 	movzx  eax,WORD PTR ds:0x0
 177:	88 d0                	mov    al,dl
 179:	80 7b 29 00          	cmp    BYTE PTR [ebx+0x29],0x0
 17d:	0f 84 5d 01 00 00    	je     2e0 <process_key+0x2e0>
 183:	66 89 03             	mov    WORD PTR [ebx],ax
 186:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
 18d:	c6 43 29 00          	mov    BYTE PTR [ebx+0x29],0x0
 191:	eb b1                	jmp    144 <process_key+0x144>
 193:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 198:	80 fa 63             	cmp    dl,0x63
 19b:	74 88                	je     125 <process_key+0x125>
 19d:	eb a5                	jmp    144 <process_key+0x144>
 19f:	90                   	nop
 1a0:	0f be 03             	movsx  eax,BYTE PTR [ebx]
 1a3:	31 d2                	xor    edx,edx
 1a5:	bf 01 00 00 00       	mov    edi,0x1
 1aa:	3c 2d                	cmp    al,0x2d
 1ac:	75 0e                	jne    1bc <process_key+0x1bc>
 1ae:	0f be 43 01          	movsx  eax,BYTE PTR [ebx+0x1]
 1b2:	ba 01 00 00 00       	mov    edx,0x1
 1b7:	bf ff ff ff ff       	mov    edi,0xffffffff
 1bc:	84 c0                	test   al,al
 1be:	0f 84 9c 01 00 00    	je     360 <process_key+0x360>
 1c4:	8d 74 13 01          	lea    esi,[ebx+edx*1+0x1]
 1c8:	31 c9                	xor    ecx,ecx
 1ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 1d0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1d7:	00 
 1d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1df:	00 
 1e0:	8d 50 d0             	lea    edx,[eax-0x30]
 1e3:	80 fa 09             	cmp    dl,0x9
 1e6:	77 07                	ja     1ef <process_key+0x1ef>
 1e8:	8d 14 89             	lea    edx,[ecx+ecx*4]
 1eb:	8d 4c 50 d0          	lea    ecx,[eax+edx*2-0x30]
 1ef:	0f be 06             	movsx  eax,BYTE PTR [esi]
 1f2:	83 c6 01             	add    esi,0x1
 1f5:	84 c0                	test   al,al
 1f7:	75 e7                	jne    1e0 <process_key+0x1e0>
 1f9:	89 f8                	mov    eax,edi
 1fb:	0f af c1             	imul   eax,ecx
 1fe:	f7 d8                	neg    eax
 200:	83 ec 04             	sub    esp,0x4
 203:	6a 0a                	push   0xa
 205:	8d 74 24 08          	lea    esi,[esp+0x8]
 209:	56                   	push   esi
 20a:	50                   	push   eax
 20b:	e8 fc ff ff ff       	call   20c <process_key+0x20c>
 210:	58                   	pop    eax
 211:	5a                   	pop    edx
 212:	56                   	push   esi
 213:	53                   	push   ebx
 214:	e8 fc ff ff ff       	call   215 <process_key+0x215>
 219:	89 1c 24             	mov    DWORD PTR [esp],ebx
 21c:	e8 fc ff ff ff       	call   21d <process_key+0x21d>
 221:	89 f4                	mov    esp,esi
 223:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
 226:	83 c4 2c             	add    esp,0x2c
 229:	5b                   	pop    ebx
 22a:	5e                   	pop    esi
 22b:	5f                   	pop    edi
 22c:	5d                   	pop    ebp
 22d:	c3                   	ret
 22e:	66 90                	xchg   ax,ax
 230:	0f be 13             	movsx  edx,BYTE PTR [ebx]
 233:	31 c0                	xor    eax,eax
 235:	bf 01 00 00 00       	mov    edi,0x1
 23a:	80 fa 2d             	cmp    dl,0x2d
 23d:	75 0e                	jne    24d <process_key+0x24d>
 23f:	0f be 53 01          	movsx  edx,BYTE PTR [ebx+0x1]
 243:	b8 01 00 00 00       	mov    eax,0x1
 248:	bf ff ff ff ff       	mov    edi,0xffffffff
 24d:	84 d2                	test   dl,dl
 24f:	0f 84 fb 00 00 00    	je     350 <process_key+0x350>
 255:	8d 74 03 01          	lea    esi,[ebx+eax*1+0x1]
 259:	31 c0                	xor    eax,eax
 25b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 260:	8d 4a d0             	lea    ecx,[edx-0x30]
 263:	80 f9 09             	cmp    cl,0x9
 266:	77 07                	ja     26f <process_key+0x26f>
 268:	8d 04 80             	lea    eax,[eax+eax*4]
 26b:	8d 44 42 d0          	lea    eax,[edx+eax*2-0x30]
 26f:	0f be 16             	movsx  edx,BYTE PTR [esi]
 272:	83 c6 01             	add    esi,0x1
 275:	84 d2                	test   dl,dl
 277:	75 e7                	jne    260 <process_key+0x260>
 279:	0f af f8             	imul   edi,eax
 27c:	0f b6 53 28          	movzx  edx,BYTE PTR [ebx+0x28]
 280:	84 d2                	test   dl,dl
 282:	74 1f                	je     2a3 <process_key+0x2a3>
 284:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
 287:	80 fa 2d             	cmp    dl,0x2d
 28a:	0f 84 00 01 00 00    	je     390 <process_key+0x390>
 290:	7f 7e                	jg     310 <process_key+0x310>
 292:	80 fa 2a             	cmp    dl,0x2a
 295:	0f 84 d5 00 00 00    	je     370 <process_key+0x370>
 29b:	01 f8                	add    eax,edi
 29d:	80 fa 2b             	cmp    dl,0x2b
 2a0:	0f 44 f8             	cmove  edi,eax
 2a3:	83 ec 04             	sub    esp,0x4
 2a6:	bd 00 01 00 00       	mov    ebp,0x100
 2ab:	89 7b 24             	mov    DWORD PTR [ebx+0x24],edi
 2ae:	66 89 6b 28          	mov    WORD PTR [ebx+0x28],bp
 2b2:	6a 0a                	push   0xa
 2b4:	8d 74 24 08          	lea    esi,[esp+0x8]
 2b8:	56                   	push   esi
 2b9:	57                   	push   edi
 2ba:	e8 fc ff ff ff       	call   2bb <process_key+0x2bb>
 2bf:	58                   	pop    eax
 2c0:	5a                   	pop    edx
 2c1:	56                   	push   esi
 2c2:	53                   	push   ebx
 2c3:	e8 fc ff ff ff       	call   2c4 <process_key+0x2c4>
 2c8:	89 1c 24             	mov    DWORD PTR [esp],ebx
 2cb:	e8 fc ff ff ff       	call   2cc <process_key+0x2cc>
 2d0:	89 f4                	mov    esp,esi
 2d2:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
 2d5:	83 c4 2c             	add    esp,0x2c
 2d8:	5b                   	pop    ebx
 2d9:	5e                   	pop    esi
 2da:	5f                   	pop    edi
 2db:	5d                   	pop    ebp
 2dc:	c3                   	ret
 2dd:	8d 76 00             	lea    esi,[esi+0x0]
 2e0:	8b 53 20             	mov    edx,DWORD PTR [ebx+0x20]
 2e3:	83 fa 0b             	cmp    edx,0xb
 2e6:	0f 8f 58 fe ff ff    	jg     144 <process_key+0x144>
 2ec:	8d 4a 01             	lea    ecx,[edx+0x1]
 2ef:	89 4b 20             	mov    DWORD PTR [ebx+0x20],ecx
 2f2:	66 89 04 13          	mov    WORD PTR [ebx+edx*1],ax
 2f6:	e9 49 fe ff ff       	jmp    144 <process_key+0x144>
 2fb:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 300:	c6 03 30             	mov    BYTE PTR [ebx],0x30
 303:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
 30a:	e9 35 fe ff ff       	jmp    144 <process_key+0x144>
 30f:	90                   	nop
 310:	80 fa 2f             	cmp    dl,0x2f
 313:	75 8e                	jne    2a3 <process_key+0x2a3>
 315:	85 ff                	test   edi,edi
 317:	74 8a                	je     2a3 <process_key+0x2a3>
 319:	99                   	cdq
 31a:	f7 ff                	idiv   edi
 31c:	89 c7                	mov    edi,eax
 31e:	e9 80 ff ff ff       	jmp    2a3 <process_key+0x2a3>
 323:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 328:	80 fa 2f             	cmp    dl,0x2f
 32b:	0f 85 98 fd ff ff    	jne    c9 <process_key+0xc9>
 331:	85 c9                	test   ecx,ecx
 333:	0f 84 90 fd ff ff    	je     c9 <process_key+0xc9>
 339:	99                   	cdq
 33a:	f7 f9                	idiv   ecx
 33c:	89 c1                	mov    ecx,eax
 33e:	e9 86 fd ff ff       	jmp    c9 <process_key+0xc9>
 343:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 348:	31 c9                	xor    ecx,ecx
 34a:	e9 4f fd ff ff       	jmp    9e <process_key+0x9e>
 34f:	90                   	nop
 350:	31 ff                	xor    edi,edi
 352:	e9 25 ff ff ff       	jmp    27c <process_key+0x27c>
 357:	90                   	nop
 358:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 35f:	00 
 360:	31 c0                	xor    eax,eax
 362:	e9 99 fe ff ff       	jmp    200 <process_key+0x200>
 367:	90                   	nop
 368:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 36f:	00 
 370:	0f af f8             	imul   edi,eax
 373:	e9 2b ff ff ff       	jmp    2a3 <process_key+0x2a3>
 378:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 37f:	00 
 380:	29 c8                	sub    eax,ecx
 382:	89 c1                	mov    ecx,eax
 384:	e9 40 fd ff ff       	jmp    c9 <process_key+0xc9>
 389:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 390:	29 f8                	sub    eax,edi
 392:	89 c7                	mov    edi,eax
 394:	e9 0a ff ff ff       	jmp    2a3 <process_key+0x2a3>
 399:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 3a0:	0f af c8             	imul   ecx,eax
 3a3:	e9 21 fd ff ff       	jmp    c9 <process_key+0xc9>
 3a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3af:	00 

000003b0 <calc_create>:
 3b0:	56                   	push   esi
 3b1:	31 f6                	xor    esi,esi
 3b3:	53                   	push   ebx
 3b4:	83 ec 04             	sub    esp,0x4
 3b7:	a1 00 00 00 00       	mov    eax,ds:0x0
 3bc:	83 f8 03             	cmp    eax,0x3
 3bf:	7f 3a                	jg     3fb <calc_create+0x4b>
 3c1:	6b d8 2c             	imul   ebx,eax,0x2c
 3c4:	83 ec 04             	sub    esp,0x4
 3c7:	8d 50 01             	lea    edx,[eax+0x1]
 3ca:	6a 2c                	push   0x2c
 3cc:	6a 00                	push   0x0
 3ce:	8d b3 20 00 00 00    	lea    esi,[ebx+0x20]
 3d4:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
 3da:	56                   	push   esi
 3db:	e8 fc ff ff ff       	call   3dc <calc_create+0x2c>
 3e0:	c6 83 20 00 00 00 30 	mov    BYTE PTR [ebx+0x20],0x30
 3e7:	83 c4 10             	add    esp,0x10
 3ea:	c7 83 40 00 00 00 01 	mov    DWORD PTR [ebx+0x40],0x1
 3f1:	00 00 00 
 3f4:	c6 83 49 00 00 00 01 	mov    BYTE PTR [ebx+0x49],0x1
 3fb:	83 c4 04             	add    esp,0x4
 3fe:	89 f0                	mov    eax,esi
 400:	5b                   	pop    ebx
 401:	5e                   	pop    esi
 402:	c3                   	ret
 403:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 408:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 40f:	00 

00000410 <calc_draw>:
 410:	55                   	push   ebp
 411:	57                   	push   edi
 412:	56                   	push   esi
 413:	53                   	push   ebx
 414:	83 ec 3c             	sub    esp,0x3c
 417:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
 41b:	8b 58 68             	mov    ebx,DWORD PTR [eax+0x68]
 41e:	85 db                	test   ebx,ebx
 420:	0f 84 5a 01 00 00    	je     580 <calc_draw+0x170>
 426:	8b 38                	mov    edi,DWORD PTR [eax]
 428:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
 42b:	83 ec 08             	sub    esp,0x8
 42e:	68 44 32 31 00       	push   0x313244
 433:	8d 45 24             	lea    eax,[ebp+0x24]
 436:	8d 77 0c             	lea    esi,[edi+0xc]
 439:	6a 06                	push   0x6
 43b:	6a 28                	push   0x28
 43d:	68 d4 00 00 00       	push   0xd4
 442:	50                   	push   eax
 443:	56                   	push   esi
 444:	e8 fc ff ff ff       	call   445 <calc_draw+0x35>
 449:	83 c4 20             	add    esp,0x20
 44c:	8d 55 30             	lea    edx,[ebp+0x30]
 44f:	89 f9                	mov    ecx,edi
 451:	68 f4 d6 cd 00       	push   0xcdd6f4
 456:	53                   	push   ebx
 457:	52                   	push   edx
 458:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
 45b:	c1 e0 03             	shl    eax,0x3
 45e:	29 c1                	sub    ecx,eax
 460:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 464:	8d 81 d8 00 00 00    	lea    eax,[ecx+0xd8]
 46a:	50                   	push   eax
 46b:	e8 fc ff ff ff       	call   46c <calc_draw+0x5c>
 470:	0f b6 43 28          	movzx  eax,BYTE PTR [ebx+0x28]
 474:	83 c4 10             	add    esp,0x10
 477:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
 47b:	84 c0                	test   al,al
 47d:	0f 85 0d 01 00 00    	jne    590 <calc_draw+0x180>
 483:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
 487:	8d 4d 54             	lea    ecx,[ebp+0x54]
 48a:	b8 43 00 00 00       	mov    eax,0x43
 48f:	31 ed                	xor    ebp,ebp
 491:	89 ca                	mov    edx,ecx
 493:	31 c9                	xor    ecx,ecx
 495:	8d 7a 0a             	lea    edi,[edx+0xa]
 498:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
 49c:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
 4a0:	89 e9                	mov    ecx,ebp
 4a2:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
 4a6:	31 ed                	xor    ebp,ebp
 4a8:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 4ac:	3c 20                	cmp    al,0x20
 4ae:	74 6c                	je     51c <calc_draw+0x10c>
 4b0:	8b bc a9 00 00 00 00 	mov    edi,DWORD PTR [ecx+ebp*4+0x0]
 4b7:	83 fd 03             	cmp    ebp,0x3
 4ba:	0f 84 85 00 00 00    	je     545 <calc_draw+0x135>
 4c0:	83 7c 24 14 01       	cmp    DWORD PTR [esp+0x14],0x1
 4c5:	bb f4 d6 cd 00       	mov    ebx,0xcdd6f4
 4ca:	19 c0                	sbb    eax,eax
 4cc:	25 2c 29 27 00       	and    eax,0x27292c
 4d1:	05 44 32 31 00       	add    eax,0x313244
 4d6:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 4da:	83 ec 08             	sub    esp,0x8
 4dd:	50                   	push   eax
 4de:	6a 06                	push   0x6
 4e0:	6a 24                	push   0x24
 4e2:	6a 32                	push   0x32
 4e4:	ff 74 24 28          	push   DWORD PTR [esp+0x28]
 4e8:	56                   	push   esi
 4e9:	e8 fc ff ff ff       	call   4ea <calc_draw+0xda>
 4ee:	83 c4 14             	add    esp,0x14
 4f1:	57                   	push   edi
 4f2:	e8 fc ff ff ff       	call   4f3 <calc_draw+0xe3>
 4f7:	53                   	push   ebx
 4f8:	8d 1c c5 00 00 00 00 	lea    ebx,[eax*8+0x0]
 4ff:	b8 32 00 00 00       	mov    eax,0x32
 504:	57                   	push   edi
 505:	29 d8                	sub    eax,ebx
 507:	ff 74 24 30          	push   DWORD PTR [esp+0x30]
 50b:	d1 f8                	sar    eax,1
 50d:	01 f0                	add    eax,esi
 50f:	50                   	push   eax
 510:	e8 fc ff ff ff       	call   511 <calc_draw+0x101>
 515:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 519:	83 c4 20             	add    esp,0x20
 51c:	83 c5 01             	add    ebp,0x1
 51f:	83 fd 04             	cmp    ebp,0x4
 522:	74 34                	je     558 <calc_draw+0x148>
 524:	8b 84 a9 00 00 00 00 	mov    eax,DWORD PTR [ecx+ebp*4+0x0]
 52b:	83 c6 36             	add    esi,0x36
 52e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 531:	3c 20                	cmp    al,0x20
 533:	74 e7                	je     51c <calc_draw+0x10c>
 535:	8b bc a9 00 00 00 00 	mov    edi,DWORD PTR [ecx+ebp*4+0x0]
 53c:	83 fd 03             	cmp    ebp,0x3
 53f:	0f 85 7b ff ff ff    	jne    4c0 <calc_draw+0xb0>
 545:	bb ff ff ff 00       	mov    ebx,0xffffff
 54a:	b8 fa b4 89 00       	mov    eax,0x89b4fa
 54f:	eb 85                	jmp    4d6 <calc_draw+0xc6>
 551:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 558:	89 cd                	mov    ebp,ecx
 55a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 55e:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 562:	83 c1 01             	add    ecx,0x1
 565:	83 f9 05             	cmp    ecx,0x5
 568:	74 16                	je     580 <calc_draw+0x170>
 56a:	8b 85 10 00 00 00    	mov    eax,DWORD PTR [ebp+0x10]
 570:	83 c2 28             	add    edx,0x28
 573:	83 c5 10             	add    ebp,0x10
 576:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 579:	e9 17 ff ff ff       	jmp    495 <calc_draw+0x85>
 57e:	66 90                	xchg   ax,ax
 580:	83 c4 3c             	add    esp,0x3c
 583:	5b                   	pop    ebx
 584:	5e                   	pop    esi
 585:	5f                   	pop    edi
 586:	5d                   	pop    ebp
 587:	c3                   	ret
 588:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 58f:	00 
 590:	88 44 24 2e          	mov    BYTE PTR [esp+0x2e],al
 594:	83 c7 14             	add    edi,0x14
 597:	c6 44 24 2f 00       	mov    BYTE PTR [esp+0x2f],0x0
 59c:	68 86 70 6c 00       	push   0x6c7086
 5a1:	8d 44 24 32          	lea    eax,[esp+0x32]
 5a5:	50                   	push   eax
 5a6:	52                   	push   edx
 5a7:	57                   	push   edi
 5a8:	e8 fc ff ff ff       	call   5a9 <calc_draw+0x199>
 5ad:	83 c4 10             	add    esp,0x10
 5b0:	e9 ce fe ff ff       	jmp    483 <calc_draw+0x73>
 5b5:	8d 76 00             	lea    esi,[esi+0x0]
 5b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 5bf:	00 

000005c0 <calc_on_key>:
 5c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 5c4:	8b 40 68             	mov    eax,DWORD PTR [eax+0x68]
 5c7:	85 c0                	test   eax,eax
 5c9:	74 0d                	je     5d8 <calc_on_key+0x18>
 5cb:	0f be 54 24 08       	movsx  edx,BYTE PTR [esp+0x8]
 5d0:	e9 2b fa ff ff       	jmp    0 <process_key>
 5d5:	8d 76 00             	lea    esi,[esi+0x0]
 5d8:	c3                   	ret
 5d9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000005e0 <calc_on_mouse>:
 5e0:	55                   	push   ebp
 5e1:	57                   	push   edi
 5e2:	56                   	push   esi
 5e3:	53                   	push   ebx
 5e4:	83 ec 1c             	sub    esp,0x1c
 5e7:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 5eb:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
 5ef:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 5f3:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
 5f7:	8b 78 68             	mov    edi,DWORD PTR [eax+0x68]
 5fa:	85 ff                	test   edi,edi
 5fc:	0f 84 c6 00 00 00    	je     6c8 <calc_on_mouse+0xe8>
 602:	80 7c 24 3c 01       	cmp    BYTE PTR [esp+0x3c],0x1
 607:	0f 85 bb 00 00 00    	jne    6c8 <calc_on_mouse+0xe8>
 60d:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
 611:	31 f6                	xor    esi,esi
 613:	bd 38 00 00 00       	mov    ebp,0x38
 618:	b9 43 00 00 00       	mov    ecx,0x43
 61d:	39 6c 24 08          	cmp    DWORD PTR [esp+0x8],ebp
 621:	8d 3c b5 00 00 00 00 	lea    edi,[esi*4+0x0]
 628:	ba 3d 00 00 00       	mov    edx,0x3d
 62d:	0f 9d 44 24 07       	setge  BYTE PTR [esp+0x7]
 632:	31 c0                	xor    eax,eax
 634:	80 f9 20             	cmp    cl,0x20
 637:	74 17                	je     650 <calc_on_mouse+0x70>
 639:	8d 4a cf             	lea    ecx,[edx-0x31]
 63c:	39 cb                	cmp    ebx,ecx
 63e:	7c 10                	jl     650 <calc_on_mouse+0x70>
 640:	39 d3                	cmp    ebx,edx
 642:	7f 0c                	jg     650 <calc_on_mouse+0x70>
 644:	80 7c 24 07 00       	cmp    BYTE PTR [esp+0x7],0x0
 649:	75 55                	jne    6a0 <calc_on_mouse+0xc0>
 64b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 650:	83 c0 01             	add    eax,0x1
 653:	83 f8 04             	cmp    eax,0x4
 656:	74 28                	je     680 <calc_on_mouse+0xa0>
 658:	8b 8c 87 00 00 00 00 	mov    ecx,DWORD PTR [edi+eax*4+0x0]
 65f:	83 c2 36             	add    edx,0x36
 662:	0f b6 09             	movzx  ecx,BYTE PTR [ecx]
 665:	80 f9 20             	cmp    cl,0x20
 668:	75 cf                	jne    639 <calc_on_mouse+0x59>
 66a:	83 c0 01             	add    eax,0x1
 66d:	83 f8 04             	cmp    eax,0x4
 670:	75 e6                	jne    658 <calc_on_mouse+0x78>
 672:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 678:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 67f:	00 
 680:	83 c6 04             	add    esi,0x4
 683:	83 fe 14             	cmp    esi,0x14
 686:	74 40                	je     6c8 <calc_on_mouse+0xe8>
 688:	8b 04 b5 00 00 00 00 	mov    eax,DWORD PTR [esi*4+0x0]
 68f:	83 c5 28             	add    ebp,0x28
 692:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
 695:	e9 83 ff ff ff       	jmp    61d <calc_on_mouse+0x3d>
 69a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 6a0:	8d 4d 23             	lea    ecx,[ebp+0x23]
 6a3:	39 4c 24 08          	cmp    DWORD PTR [esp+0x8],ecx
 6a7:	7f a7                	jg     650 <calc_on_mouse+0x70>
 6a9:	0f be 94 30 50 00 00 	movsx  edx,BYTE PTR [eax+esi*1+0x50]
 6b0:	00 
 6b1:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 6b5:	83 c4 1c             	add    esp,0x1c
 6b8:	5b                   	pop    ebx
 6b9:	5e                   	pop    esi
 6ba:	5f                   	pop    edi
 6bb:	5d                   	pop    ebp
 6bc:	e9 3f f9 ff ff       	jmp    0 <process_key>
 6c1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 6c8:	83 c4 1c             	add    esp,0x1c
 6cb:	5b                   	pop    ebx
 6cc:	5e                   	pop    esi
 6cd:	5f                   	pop    edi
 6ce:	5d                   	pop    ebp
 6cf:	c3                   	ret

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	43                   	inc    ebx
   1:	00 2b                	add    BYTE PTR [ebx],ch
   3:	2f                   	das
   4:	2d 00 25 00 2f       	sub    eax,0x2f002500
   9:	00 37                	add    BYTE PTR [edi],dh
   b:	00 38                	add    BYTE PTR [eax],bh
   d:	00 39                	add    BYTE PTR [ecx],bh
   f:	00 2a                	add    BYTE PTR [edx],ch
  11:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
  14:	35 00 36 00 2d       	xor    eax,0x2d003600
  19:	00 31                	add    BYTE PTR [ecx],dh
  1b:	00 32                	add    BYTE PTR [edx],dh
  1d:	00 33                	add    BYTE PTR [ebx],dh
  1f:	00 2b                	add    BYTE PTR [ebx],ch
  21:	00 30                	add    BYTE PTR [eax],dh
  23:	00 2e                	add    BYTE PTR [esi],ch
  25:	00 20                	add    BYTE PTR [eax],ah
  27:	00                   	.byte 0
  28:	3d                   	.byte 0x3d
	...

Disassembly of section .rodata:

00000000 <btn_labels>:
   0:	00 00                	add    BYTE PTR [eax],al
   2:	00 00                	add    BYTE PTR [eax],al
   4:	02 00                	add    al,BYTE PTR [eax]
   6:	00 00                	add    BYTE PTR [eax],al
   8:	06                   	push   es
   9:	00 00                	add    BYTE PTR [eax],al
   b:	00 08                	add    BYTE PTR [eax],cl
   d:	00 00                	add    BYTE PTR [eax],al
   f:	00 0a                	add    BYTE PTR [edx],cl
  11:	00 00                	add    BYTE PTR [eax],al
  13:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
  16:	00 00                	add    BYTE PTR [eax],al
  18:	0e                   	push   cs
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 10                	add    BYTE PTR [eax],dl
  1d:	00 00                	add    BYTE PTR [eax],al
  1f:	00 12                	add    BYTE PTR [edx],dl
  21:	00 00                	add    BYTE PTR [eax],al
  23:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
  26:	00 00                	add    BYTE PTR [eax],al
  28:	16                   	push   ss
  29:	00 00                	add    BYTE PTR [eax],al
  2b:	00 18                	add    BYTE PTR [eax],bl
  2d:	00 00                	add    BYTE PTR [eax],al
  2f:	00 1a                	add    BYTE PTR [edx],bl
  31:	00 00                	add    BYTE PTR [eax],al
  33:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  36:	00 00                	add    BYTE PTR [eax],al
  38:	1e                   	push   ds
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	00 20                	add    BYTE PTR [eax],ah
  3d:	00 00                	add    BYTE PTR [eax],al
  3f:	00 22                	add    BYTE PTR [edx],ah
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
  46:	00 00                	add    BYTE PTR [eax],al
  48:	26 00 00             	add    BYTE PTR es:[eax],al
  4b:	00 28                	add    BYTE PTR [eax],ch
  4d:	00 00                	add    BYTE PTR [eax],al
	...

00000050 <btn_chars>:
  50:	43                   	inc    ebx
  51:	4e                   	dec    esi
  52:	25 2f 37 38 39       	and    eax,0x3938372f
  57:	2a 34 35 36 2d 31 32 	sub    dh,BYTE PTR [esi*1+0x32312d36]
  5e:	33 2b                	xor    ebp,DWORD PTR [ebx]
  60:	30 2e                	xor    BYTE PTR [esi],ch
  62:	20                   	.byte 0x20
  63:	3d                   	.byte 0x3d

Disassembly of section .rodata.cst2:

00000000 <.rodata.cst2>:
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
  17:	00 d0                	add    al,dl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	a8 03                	test   al,0x3
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  2b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 43 0e 14    	adc    BYTE PTR [esi+0x140e4304],al
  3b:	83 05 45 0e 40 02 c1 	add    DWORD PTR ds:0x2400e45,0xffffffc1
  42:	0e                   	push   cs
  43:	44                   	inc    esp
  44:	4e                   	dec    esi
  45:	0e                   	push   cs
  46:	48                   	dec    eax
  47:	45                   	inc    ebp
  48:	0e                   	push   cs
  49:	4c                   	dec    esp
  4a:	41                   	inc    ecx
  4b:	0e                   	push   cs
  4c:	50                   	push   eax
  4d:	46                   	inc    esi
  4e:	0e                   	push   cs
  4f:	4c                   	dec    esp
  50:	41                   	inc    ecx
  51:	0e                   	push   cs
  52:	48                   	dec    eax
  53:	41                   	inc    ecx
  54:	0e                   	push   cs
  55:	4c                   	dec    esp
  56:	41                   	inc    ecx
  57:	0e                   	push   cs
  58:	50                   	push   eax
  59:	4f                   	dec    edi
  5a:	0e                   	push   cs
  5b:	40                   	inc    eax
  5c:	46                   	inc    esi
  5d:	0a 0e                	or     cl,BYTE PTR [esi]
  5f:	14 41                	adc    al,0x41
  61:	c3                   	ret
  62:	0e                   	push   cs
  63:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  66:	0e                   	push   cs
  67:	0c 41                	or     al,0x41
  69:	c7                   	(bad)
  6a:	0e                   	push   cs
  6b:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  6e:	0e                   	push   cs
  6f:	04 46                	add    al,0x46
  71:	0b 7f 0a             	or     edi,DWORD PTR [edi+0xa]
  74:	0e                   	push   cs
  75:	14 41                	adc    al,0x41
  77:	c3                   	ret
  78:	0e                   	push   cs
  79:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  7c:	0e                   	push   cs
  7d:	0c 41                	or     al,0x41
  7f:	c7                   	(bad)
  80:	0e                   	push   cs
  81:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  84:	0e                   	push   cs
  85:	04 45                	add    al,0x45
  87:	0b 02                	or     eax,DWORD PTR [edx]
  89:	b3 0e                	mov    bl,0xe
  8b:	44                   	inc    esp
  8c:	42                   	inc    edx
  8d:	0e                   	push   cs
  8e:	48                   	dec    eax
  8f:	45                   	inc    ebp
  90:	0e                   	push   cs
  91:	4c                   	dec    esp
  92:	41                   	inc    ecx
  93:	0e                   	push   cs
  94:	50                   	push   eax
  95:	46                   	inc    esi
  96:	0e                   	push   cs
  97:	4c                   	dec    esp
  98:	41                   	inc    ecx
  99:	0e                   	push   cs
  9a:	48                   	dec    eax
  9b:	41                   	inc    ecx
  9c:	0e                   	push   cs
  9d:	4c                   	dec    esp
  9e:	41                   	inc    ecx
  9f:	0e                   	push   cs
  a0:	50                   	push   eax
  a1:	4f                   	dec    edi
  a2:	0e                   	push   cs
  a3:	40                   	inc    eax
  a4:	46                   	inc    esi
  a5:	0a 0e                	or     cl,BYTE PTR [esi]
  a7:	14 41                	adc    al,0x41
  a9:	c3                   	ret
  aa:	0e                   	push   cs
  ab:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  ae:	0e                   	push   cs
  af:	0c 41                	or     al,0x41
  b1:	c7                   	(bad)
  b2:	0e                   	push   cs
  b3:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  b6:	0e                   	push   cs
  b7:	04 43                	add    al,0x43
  b9:	0b 02                	or     eax,DWORD PTR [edx]
  bb:	76 0e                	jbe    cb <.eh_frame+0xcb>
  bd:	44                   	inc    esp
  be:	4e                   	dec    esi
  bf:	0e                   	push   cs
  c0:	48                   	dec    eax
  c1:	45                   	inc    ebp
  c2:	0e                   	push   cs
  c3:	4c                   	dec    esp
  c4:	41                   	inc    ecx
  c5:	0e                   	push   cs
  c6:	50                   	push   eax
  c7:	46                   	inc    esi
  c8:	0e                   	push   cs
  c9:	4c                   	dec    esp
  ca:	41                   	inc    ecx
  cb:	0e                   	push   cs
  cc:	48                   	dec    eax
  cd:	41                   	inc    ecx
  ce:	0e                   	push   cs
  cf:	4c                   	dec    esp
  d0:	41                   	inc    ecx
  d1:	0e                   	push   cs
  d2:	50                   	push   eax
  d3:	4f                   	dec    edi
  d4:	0e                   	push   cs
  d5:	40                   	inc    eax
  d6:	46                   	inc    esi
  d7:	0a 0e                	or     cl,BYTE PTR [esi]
  d9:	14 41                	adc    al,0x41
  db:	c3                   	ret
  dc:	0e                   	push   cs
  dd:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  e0:	0e                   	push   cs
  e1:	0c 41                	or     al,0x41
  e3:	c7                   	(bad)
  e4:	0e                   	push   cs
  e5:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  e8:	0e                   	push   cs
  e9:	04 44                	add    al,0x44
  eb:	0b 34 00             	or     esi,DWORD PTR [eax+eax*1]
  ee:	00 00                	add    BYTE PTR [eax],al
  f0:	f0 00 00             	lock add BYTE PTR [eax],al
  f3:	00 b0 03 00 00 53    	add    BYTE PTR [eax+0x53000003],dh
  f9:	00 00                	add    BYTE PTR [eax],al
  fb:	00 00                	add    BYTE PTR [eax],al
  fd:	41                   	inc    ecx
  fe:	0e                   	push   cs
  ff:	08 86 02 43 0e 0c    	or     BYTE PTR [esi+0xc0e4302],al
 105:	83 03 43             	add    DWORD PTR [ebx],0x43
 108:	0e                   	push   cs
 109:	10 50 0e             	adc    BYTE PTR [eax+0xe],dl
 10c:	14 45                	adc    al,0x45
 10e:	0e                   	push   cs
 10f:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 112:	1c 4d                	sbb    al,0x4d
 114:	0e                   	push   cs
 115:	20 4f 0e             	and    BYTE PTR [edi+0xe],cl
 118:	10 54 0e 0c          	adc    BYTE PTR [esi+ecx*1+0xc],dl
 11c:	43                   	inc    ebx
 11d:	c3                   	ret
 11e:	0e                   	push   cs
 11f:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 122:	0e                   	push   cs
 123:	04 9c                	add    al,0x9c
 125:	00 00                	add    BYTE PTR [eax],al
 127:	00 28                	add    BYTE PTR [eax],ch
 129:	01 00                	add    DWORD PTR [eax],eax
 12b:	00 10                	add    BYTE PTR [eax],dl
 12d:	04 00                	add    al,0x0
 12f:	00 a5 01 00 00 00    	add    BYTE PTR [ebp+0x1],ah
 135:	41                   	inc    ecx
 136:	0e                   	push   cs
 137:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 13d:	87 03                	xchg   DWORD PTR [ebx],eax
 13f:	41                   	inc    ecx
 140:	0e                   	push   cs
 141:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 147:	83 05 43 0e 50 57 0e 	add    DWORD PTR ds:0x57500e43,0xe
 14e:	58                   	pop    eax
 14f:	45                   	inc    ebp
 150:	0e                   	push   cs
 151:	5c                   	pop    esp
 152:	48                   	dec    eax
 153:	0e                   	push   cs
 154:	60                   	pusha
 155:	42                   	inc    edx
 156:	0e                   	push   cs
 157:	64 45                	fs inc ebp
 159:	0e                   	push   cs
 15a:	68 41 0e 6c 41       	push   0x416c0e41
 15f:	0e                   	push   cs
 160:	70 48                	jo     1aa <.eh_frame+0x1aa>
 162:	0e                   	push   cs
 163:	50                   	push   eax
 164:	4a                   	dec    edx
 165:	0e                   	push   cs
 166:	54                   	push   esp
 167:	41                   	inc    ecx
 168:	0e                   	push   cs
 169:	58                   	pop    eax
 16a:	41                   	inc    ecx
 16b:	0e                   	push   cs
 16c:	5c                   	pop    esp
 16d:	53                   	push   ebx
 16e:	0e                   	push   cs
 16f:	60                   	pusha
 170:	4c                   	dec    esp
 171:	0e                   	push   cs
 172:	50                   	push   eax
 173:	02 66 0e             	add    ah,BYTE PTR [esi+0xe]
 176:	58                   	pop    eax
 177:	41                   	inc    ecx
 178:	0e                   	push   cs
 179:	5c                   	pop    esp
 17a:	42                   	inc    edx
 17b:	0e                   	push   cs
 17c:	60                   	pusha
 17d:	42                   	inc    edx
 17e:	0e                   	push   cs
 17f:	64 42                	fs inc edx
 181:	0e                   	push   cs
 182:	68 44 0e 6c 41       	push   0x416c0e44
 187:	0e                   	push   cs
 188:	70 48                	jo     1d2 <.eh_frame+0x1d2>
 18a:	0e                   	push   cs
 18b:	5c                   	pop    esp
 18c:	41                   	inc    ecx
 18d:	0e                   	push   cs
 18e:	60                   	pusha
 18f:	46                   	inc    esi
 190:	0e                   	push   cs
 191:	64 4d                	fs dec ebp
 193:	0e                   	push   cs
 194:	68 46 0e 6c 45       	push   0x456c0e46
 199:	0e                   	push   cs
 19a:	70 4c                	jo     1e8 <.eh_frame+0x1e8>
 19c:	0e                   	push   cs
 19d:	50                   	push   eax
 19e:	02 67 0a             	add    ah,BYTE PTR [edi+0xa]
 1a1:	0e                   	push   cs
 1a2:	14 41                	adc    al,0x41
 1a4:	c3                   	ret
 1a5:	0e                   	push   cs
 1a6:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1a9:	0e                   	push   cs
 1aa:	0c 41                	or     al,0x41
 1ac:	c7                   	(bad)
 1ad:	0e                   	push   cs
 1ae:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1b1:	0e                   	push   cs
 1b2:	04 49                	add    al,0x49
 1b4:	0b 51 0e             	or     edx,DWORD PTR [ecx+0xe]
 1b7:	54                   	push   esp
 1b8:	45                   	inc    ebp
 1b9:	0e                   	push   cs
 1ba:	58                   	pop    eax
 1bb:	41                   	inc    ecx
 1bc:	0e                   	push   cs
 1bd:	5c                   	pop    esp
 1be:	41                   	inc    ecx
 1bf:	0e                   	push   cs
 1c0:	60                   	pusha
 1c1:	48                   	dec    eax
 1c2:	0e                   	push   cs
 1c3:	50                   	push   eax
 1c4:	10 00                	adc    BYTE PTR [eax],al
 1c6:	00 00                	add    BYTE PTR [eax],al
 1c8:	c8 01 00 00          	enter  0x1,0x0
 1cc:	c0 05 00 00 19 00 00 	rol    BYTE PTR ds:0x190000,0x0
 1d3:	00 00                	add    BYTE PTR [eax],al
 1d5:	00 00                	add    BYTE PTR [eax],al
 1d7:	00 50 00             	add    BYTE PTR [eax+0x0],dl
 1da:	00 00                	add    BYTE PTR [eax],al
 1dc:	dc 01                	fadd   QWORD PTR [ecx]
 1de:	00 00                	add    BYTE PTR [eax],al
 1e0:	e0 05                	loopne 1e7 <.eh_frame+0x1e7>
 1e2:	00 00                	add    BYTE PTR [eax],al
 1e4:	f0 00 00             	lock add BYTE PTR [eax],al
 1e7:	00 00                	add    BYTE PTR [eax],al
 1e9:	41                   	inc    ecx
 1ea:	0e                   	push   cs
 1eb:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 1f1:	87 03                	xchg   DWORD PTR [ebx],eax
 1f3:	41                   	inc    ecx
 1f4:	0e                   	push   cs
 1f5:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 1fb:	83 05 43 0e 30 02 d1 	add    DWORD PTR ds:0x2300e43,0xffffffd1
 202:	0a 0e                	or     cl,BYTE PTR [esi]
 204:	14 41                	adc    al,0x41
 206:	c3                   	ret
 207:	0e                   	push   cs
 208:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 20b:	0e                   	push   cs
 20c:	0c 41                	or     al,0x41
 20e:	c7                   	(bad)
 20f:	0e                   	push   cs
 210:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 213:	0e                   	push   cs
 214:	04 4c                	add    al,0x4c
 216:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 219:	14 41                	adc    al,0x41
 21b:	c3                   	ret
 21c:	0e                   	push   cs
 21d:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 220:	0e                   	push   cs
 221:	0c 41                	or     al,0x41
 223:	c7                   	(bad)
 224:	0e                   	push   cs
 225:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 228:	0e                   	push   cs
 229:	04 00                	add    al,0x0
	...
