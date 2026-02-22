
physics.o:     file format elf32-i386


Disassembly of section .text:

00000000 <physics_create>:
   0:	55                   	push   ebp
   1:	31 ed                	xor    ebp,ebp
   3:	57                   	push   edi
   4:	56                   	push   esi
   5:	53                   	push   ebx
   6:	83 ec 4c             	sub    esp,0x4c
   9:	a1 00 00 00 00       	mov    eax,ds:0x0
   e:	83 f8 01             	cmp    eax,0x1
  11:	0f 8f c8 01 00 00    	jg     1df <physics_create+0x1df>
  17:	8d 50 01             	lea    edx,[eax+0x1]
  1a:	83 ec 04             	sub    esp,0x4
  1d:	69 c0 d0 03 00 00    	imul   eax,eax,0x3d0
  23:	68 d0 03 00 00       	push   0x3d0
  28:	6a 00                	push   0x0
  2a:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  30:	8d a8 20 00 00 00    	lea    ebp,[eax+0x20]
  36:	55                   	push   ebp
  37:	e8 fc ff ff ff       	call   38 <physics_create+0x38>
  3c:	c7 85 c0 03 00 00 19 	mov    DWORD PTR [ebp+0x3c0],0x19
  43:	00 00 00 
  46:	c7 85 c8 03 00 00 f4 	mov    DWORD PTR [ebp+0x3c8],0x1f4
  4d:	01 00 00 
  50:	c7 85 cc 03 00 00 5e 	mov    DWORD PTR [ebp+0x3cc],0x15e
  57:	01 00 00 
  5a:	e8 fc ff ff ff       	call   5b <physics_create+0x5b>
  5f:	8b 95 c0 03 00 00    	mov    edx,DWORD PTR [ebp+0x3c0]
  65:	c7 44 24 28 fa b4 89 	mov    DWORD PTR [esp+0x28],0x89b4fa
  6c:	00 
  6d:	c7 44 24 2c a8 8b f3 	mov    DWORD PTR [esp+0x2c],0xf38ba8
  74:	00 
  75:	c7 44 24 30 a1 e3 a6 	mov    DWORD PTR [esp+0x30],0xa6e3a1
  7c:	00 
  7d:	c7 44 24 34 87 b3 fa 	mov    DWORD PTR [esp+0x34],0xfab387
  84:	00 
  85:	c7 44 24 38 f7 a6 cb 	mov    DWORD PTR [esp+0x38],0xcba6f7
  8c:	00 
  8d:	c7 44 24 3c e7 c2 f5 	mov    DWORD PTR [esp+0x3c],0xf5c2e7
  94:	00 
  95:	c7 44 24 40 af e2 f9 	mov    DWORD PTR [esp+0x40],0xf9e2af
  9c:	00 
  9d:	c7 44 24 44 d5 e2 94 	mov    DWORD PTR [esp+0x44],0x94e2d5
  a4:	00 
  a5:	c7 44 24 48 fe dc 89 	mov    DWORD PTR [esp+0x48],0x89dcfe
  ac:	00 
  ad:	c7 44 24 4c cd cd f2 	mov    DWORD PTR [esp+0x4c],0xf2cdcd
  b4:	00 
  b5:	83 c4 10             	add    esp,0x10
  b8:	85 d2                	test   edx,edx
  ba:	0f 8e 1f 01 00 00    	jle    1df <physics_create+0x1df>
  c0:	35 ef be ad de       	xor    eax,0xdeadbeef
  c5:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  c9:	89 eb                	mov    ebx,ebp
  cb:	bf fa b4 89 00       	mov    edi,0x89b4fa
  d0:	89 c1                	mov    ecx,eax
  d2:	8b 85 c8 03 00 00    	mov    eax,DWORD PTR [ebp+0x3c8]
  d8:	31 f6                	xor    esi,esi
  da:	83 e8 14             	sub    eax,0x14
  dd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  e1:	8b 85 cc 03 00 00    	mov    eax,DWORD PTR [ebp+0x3cc]
  e7:	89 d5                	mov    ebp,edx
  e9:	83 e8 14             	sub    eax,0x14
  ec:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  f0:	eb 20                	jmp    112 <physics_create+0x112>
  f2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  f8:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  fd:	83 c3 18             	add    ebx,0x18
 100:	f7 e6                	mul    esi
 102:	c1 ea 03             	shr    edx,0x3
 105:	8d 04 92             	lea    eax,[edx+edx*4]
 108:	89 f2                	mov    edx,esi
 10a:	01 c0                	add    eax,eax
 10c:	29 c2                	sub    edx,eax
 10e:	8b 7c 94 18          	mov    edi,DWORD PTR [esp+edx*4+0x18]
 112:	89 c8                	mov    eax,ecx
 114:	89 7b 14             	mov    DWORD PTR [ebx+0x14],edi
 117:	c1 e0 0d             	shl    eax,0xd
 11a:	31 c8                	xor    eax,ecx
 11c:	89 c2                	mov    edx,eax
 11e:	c1 ea 11             	shr    edx,0x11
 121:	31 d0                	xor    eax,edx
 123:	89 c2                	mov    edx,eax
 125:	c1 e2 05             	shl    edx,0x5
 128:	31 c2                	xor    edx,eax
 12a:	83 e0 07             	and    eax,0x7
 12d:	89 d1                	mov    ecx,edx
 12f:	83 c0 04             	add    eax,0x4
 132:	c1 e1 0d             	shl    ecx,0xd
 135:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
 138:	31 d1                	xor    ecx,edx
 13a:	31 d2                	xor    edx,edx
 13c:	89 c8                	mov    eax,ecx
 13e:	c1 e8 11             	shr    eax,0x11
 141:	31 c1                	xor    ecx,eax
 143:	89 c8                	mov    eax,ecx
 145:	c1 e0 05             	shl    eax,0x5
 148:	31 c1                	xor    ecx,eax
 14a:	89 c8                	mov    eax,ecx
 14c:	f7 74 24 04          	div    DWORD PTR [esp+0x4]
 150:	89 c8                	mov    eax,ecx
 152:	c1 e0 0d             	shl    eax,0xd
 155:	31 c1                	xor    ecx,eax
 157:	89 c8                	mov    eax,ecx
 159:	c1 e8 11             	shr    eax,0x11
 15c:	31 c1                	xor    ecx,eax
 15e:	89 c8                	mov    eax,ecx
 160:	c1 e0 05             	shl    eax,0x5
 163:	31 c1                	xor    ecx,eax
 165:	89 c8                	mov    eax,ecx
 167:	83 c2 0a             	add    edx,0xa
 16a:	c1 e2 08             	shl    edx,0x8
 16d:	89 13                	mov    DWORD PTR [ebx],edx
 16f:	31 d2                	xor    edx,edx
 171:	f7 74 24 08          	div    DWORD PTR [esp+0x8]
 175:	89 c8                	mov    eax,ecx
 177:	c1 e0 0d             	shl    eax,0xd
 17a:	31 c1                	xor    ecx,eax
 17c:	89 c8                	mov    eax,ecx
 17e:	c1 e8 11             	shr    eax,0x11
 181:	31 c1                	xor    ecx,eax
 183:	89 c8                	mov    eax,ecx
 185:	83 c2 0a             	add    edx,0xa
 188:	c1 e2 08             	shl    edx,0x8
 18b:	c1 e0 05             	shl    eax,0x5
 18e:	83 c6 01             	add    esi,0x1
 191:	31 c1                	xor    ecx,eax
 193:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
 198:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
 19b:	f7 e1                	mul    ecx
 19d:	89 c8                	mov    eax,ecx
 19f:	c1 ea 02             	shr    edx,0x2
 1a2:	8d 14 52             	lea    edx,[edx+edx*2]
 1a5:	01 d2                	add    edx,edx
 1a7:	29 d0                	sub    eax,edx
 1a9:	89 ca                	mov    edx,ecx
 1ab:	83 e8 03             	sub    eax,0x3
 1ae:	c1 e2 0d             	shl    edx,0xd
 1b1:	31 ca                	xor    edx,ecx
 1b3:	c1 e0 08             	shl    eax,0x8
 1b6:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
 1b9:	89 d0                	mov    eax,edx
 1bb:	c1 e8 11             	shr    eax,0x11
 1be:	31 d0                	xor    eax,edx
 1c0:	89 c1                	mov    ecx,eax
 1c2:	c1 e1 05             	shl    ecx,0x5
 1c5:	31 c1                	xor    ecx,eax
 1c7:	83 e0 03             	and    eax,0x3
 1ca:	83 e8 02             	sub    eax,0x2
 1cd:	c1 e0 08             	shl    eax,0x8
 1d0:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
 1d3:	39 ee                	cmp    esi,ebp
 1d5:	0f 85 1d ff ff ff    	jne    f8 <physics_create+0xf8>
 1db:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
 1df:	83 c4 4c             	add    esp,0x4c
 1e2:	89 e8                	mov    eax,ebp
 1e4:	5b                   	pop    ebx
 1e5:	5e                   	pop    esi
 1e6:	5f                   	pop    edi
 1e7:	5d                   	pop    ebp
 1e8:	c3                   	ret
 1e9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000001f0 <physics_draw>:
 1f0:	55                   	push   ebp
 1f1:	57                   	push   edi
 1f2:	56                   	push   esi
 1f3:	53                   	push   ebx
 1f4:	83 ec 5c             	sub    esp,0x5c
 1f7:	8b 44 24 70          	mov    eax,DWORD PTR [esp+0x70]
 1fb:	8b 58 68             	mov    ebx,DWORD PTR [eax+0x68]
 1fe:	85 db                	test   ebx,ebx
 200:	0f 84 af 01 00 00    	je     3b5 <physics_draw+0x1c5>
 206:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
 209:	83 ec 08             	sub    esp,0x8
 20c:	8d 51 f0             	lea    edx,[ecx-0x10]
 20f:	89 93 c8 03 00 00    	mov    DWORD PTR [ebx+0x3c8],edx
 215:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
 218:	83 e9 44             	sub    ecx,0x44
 21b:	89 8b cc 03 00 00    	mov    DWORD PTR [ebx+0x3cc],ecx
 221:	8b 38                	mov    edi,DWORD PTR [eax]
 223:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 226:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
 22a:	83 c7 08             	add    edi,0x8
 22d:	83 c0 20             	add    eax,0x20
 230:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
 234:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
 238:	68 1b 11 11 00       	push   0x11111b
 23d:	6a 08                	push   0x8
 23f:	51                   	push   ecx
 240:	52                   	push   edx
 241:	50                   	push   eax
 242:	57                   	push   edi
 243:	e8 fc ff ff ff       	call   244 <physics_draw+0x54>
 248:	8b 83 c0 03 00 00    	mov    eax,DWORD PTR [ebx+0x3c0]
 24e:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
 252:	83 c4 20             	add    esp,0x20
 255:	80 bb c4 03 00 00 00 	cmp    BYTE PTR [ebx+0x3c4],0x0
 25c:	0f 84 5e 01 00 00    	je     3c0 <physics_draw+0x1d0>
 262:	85 c0                	test   eax,eax
 264:	0f 8e 44 03 00 00    	jle    5ae <physics_draw+0x3be>
 26a:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
 26e:	89 dd                	mov    ebp,ebx
 270:	31 ff                	xor    edi,edi
 272:	eb 16                	jmp    28a <physics_draw+0x9a>
 274:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 278:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 27c:	83 c7 01             	add    edi,0x1
 27f:	83 c5 18             	add    ebp,0x18
 282:	39 b8 c0 03 00 00    	cmp    DWORD PTR [eax+0x3c0],edi
 288:	7e 66                	jle    2f0 <physics_draw+0x100>
 28a:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
 28d:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
 290:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
 294:	85 c0                	test   eax,eax
 296:	8d b0 ff 00 00 00    	lea    esi,[eax+0xff]
 29c:	0f 49 f0             	cmovns esi,eax
 29f:	8d 82 ff 00 00 00    	lea    eax,[edx+0xff]
 2a5:	c1 fe 08             	sar    esi,0x8
 2a8:	03 74 24 14          	add    esi,DWORD PTR [esp+0x14]
 2ac:	85 d2                	test   edx,edx
 2ae:	ff 75 14             	push   DWORD PTR [ebp+0x14]
 2b1:	0f 49 c2             	cmovns eax,edx
 2b4:	ff 75 10             	push   DWORD PTR [ebp+0x10]
 2b7:	c1 f8 08             	sar    eax,0x8
 2ba:	8d 1c 08             	lea    ebx,[eax+ecx*1]
 2bd:	53                   	push   ebx
 2be:	56                   	push   esi
 2bf:	e8 fc ff ff ff       	call   2c0 <physics_draw+0xd0>
 2c4:	83 c4 10             	add    esp,0x10
 2c7:	83 7d 10 05          	cmp    DWORD PTR [ebp+0x10],0x5
 2cb:	7e ab                	jle    278 <physics_draw+0x88>
 2cd:	8d 43 fe             	lea    eax,[ebx-0x2]
 2d0:	83 ee 02             	sub    esi,0x2
 2d3:	68 ff ff ff 00       	push   0xffffff
 2d8:	6a 02                	push   0x2
 2da:	50                   	push   eax
 2db:	56                   	push   esi
 2dc:	e8 fc ff ff ff       	call   2dd <physics_draw+0xed>
 2e1:	83 c4 10             	add    esp,0x10
 2e4:	eb 92                	jmp    278 <physics_draw+0x88>
 2e6:	66 90                	xchg   ax,ax
 2e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2ef:	00 
 2f0:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
 2f4:	89 c3                	mov    ebx,eax
 2f6:	03 b0 cc 03 00 00    	add    esi,DWORD PTR [eax+0x3cc]
 2fc:	b8 0f 00 00 00       	mov    eax,0xf
 301:	83 c6 06             	add    esi,0x6
 304:	80 bb c4 03 00 00 00 	cmp    BYTE PTR [ebx+0x3c4],0x0
 30b:	74 05                	je     312 <physics_draw+0x122>
 30d:	b8 00 00 00 00       	mov    eax,0x0
 312:	68 c8 ad a6 00       	push   0xa6adc8
 317:	50                   	push   eax
 318:	56                   	push   esi
 319:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
 31d:	57                   	push   edi
 31e:	e8 fc ff ff ff       	call   31f <physics_draw+0x12f>
 323:	68 c8 ad a6 00       	push   0xa6adc8
 328:	68 1d 00 00 00       	push   0x1d
 32d:	56                   	push   esi
 32e:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
 332:	05 a8 00 00 00       	add    eax,0xa8
 337:	50                   	push   eax
 338:	e8 fc ff ff ff       	call   339 <physics_draw+0x149>
 33d:	c7 44 24 58 00 00 00 	mov    DWORD PTR [esp+0x58],0x0
 344:	00 
 345:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
 34c:	00 
 34d:	c7 44 24 60 00 00 00 	mov    DWORD PTR [esp+0x60],0x0
 354:	00 
 355:	c7 44 24 64 00 00 00 	mov    DWORD PTR [esp+0x64],0x0
 35c:	00 
 35d:	c7 44 24 68 00 00 00 	mov    DWORD PTR [esp+0x68],0x0
 364:	00 
 365:	c7 44 24 6c 00 00 00 	mov    DWORD PTR [esp+0x6c],0x0
 36c:	00 
 36d:	83 c4 1c             	add    esp,0x1c
 370:	6a 0a                	push   0xa
 372:	8d 6c 24 38          	lea    ebp,[esp+0x38]
 376:	55                   	push   ebp
 377:	ff b3 c0 03 00 00    	push   DWORD PTR [ebx+0x3c0]
 37d:	e8 fc ff ff ff       	call   37e <physics_draw+0x18e>
 382:	58                   	pop    eax
 383:	5a                   	pop    edx
 384:	55                   	push   ebp
 385:	8d 6c 24 44          	lea    ebp,[esp+0x44]
 389:	55                   	push   ebp
 38a:	e8 fc ff ff ff       	call   38b <physics_draw+0x19b>
 38f:	59                   	pop    ecx
 390:	58                   	pop    eax
 391:	68 38 00 00 00       	push   0x38
 396:	55                   	push   ebp
 397:	e8 fc ff ff ff       	call   398 <physics_draw+0x1a8>
 39c:	68 86 70 6c 00       	push   0x6c7086
 3a1:	55                   	push   ebp
 3a2:	56                   	push   esi
 3a3:	03 bb c8 03 00 00    	add    edi,DWORD PTR [ebx+0x3c8]
 3a9:	83 ef 78             	sub    edi,0x78
 3ac:	57                   	push   edi
 3ad:	e8 fc ff ff ff       	call   3ae <physics_draw+0x1be>
 3b2:	83 c4 20             	add    esp,0x20
 3b5:	83 c4 5c             	add    esp,0x5c
 3b8:	5b                   	pop    ebx
 3b9:	5e                   	pop    esi
 3ba:	5f                   	pop    edi
 3bb:	5d                   	pop    ebp
 3bc:	c3                   	ret
 3bd:	8d 76 00             	lea    esi,[esi+0x0]
 3c0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 3c4:	85 c0                	test   eax,eax
 3c6:	0f 8e cb 01 00 00    	jle    597 <physics_draw+0x3a7>
 3cc:	8b 83 c8 03 00 00    	mov    eax,DWORD PTR [ebx+0x3c8]
 3d2:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
 3d6:	89 df                	mov    edi,ebx
 3d8:	c1 e0 08             	shl    eax,0x8
 3db:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 3df:	8b 83 cc 03 00 00    	mov    eax,DWORD PTR [ebx+0x3cc]
 3e5:	c1 e0 08             	shl    eax,0x8
 3e8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
 3ec:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 3f0:	8d 04 40             	lea    eax,[eax+eax*2]
 3f3:	8d 04 c3             	lea    eax,[ebx+eax*8]
 3f6:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
 3fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 400:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
 403:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
 407:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
 40a:	8b 17                	mov    edx,DWORD PTR [edi]
 40c:	c1 e1 08             	shl    ecx,0x8
 40f:	8b 6f 04             	mov    ebp,DWORD PTR [edi+0x4]
 412:	29 ce                	sub    esi,ecx
 414:	8d 58 02             	lea    ebx,[eax+0x2]
 417:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
 41a:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
 41e:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
 422:	01 dd                	add    ebp,ebx
 424:	01 c2                	add    edx,eax
 426:	89 5f 0c             	mov    DWORD PTR [edi+0xc],ebx
 429:	29 ce                	sub    esi,ecx
 42b:	89 17                	mov    DWORD PTR [edi],edx
 42d:	89 6f 04             	mov    DWORD PTR [edi+0x4],ebp
 430:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 434:	39 d1                	cmp    ecx,edx
 436:	7e 17                	jle    44f <physics_draw+0x25f>
 438:	8d 34 c0             	lea    esi,[eax+eax*8]
 43b:	b8 67 66 66 66       	mov    eax,0x66666667
 440:	89 0f                	mov    DWORD PTR [edi],ecx
 442:	f7 ee                	imul   esi
 444:	c1 fe 1f             	sar    esi,0x1f
 447:	c1 fa 02             	sar    edx,0x2
 44a:	29 d6                	sub    esi,edx
 44c:	89 77 08             	mov    DWORD PTR [edi+0x8],esi
 44f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 453:	39 07                	cmp    DWORD PTR [edi],eax
 455:	7e 1a                	jle    471 <physics_draw+0x281>
 457:	89 07                	mov    DWORD PTR [edi],eax
 459:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
 45c:	8d 34 c0             	lea    esi,[eax+eax*8]
 45f:	b8 67 66 66 66       	mov    eax,0x66666667
 464:	f7 ee                	imul   esi
 466:	c1 fe 1f             	sar    esi,0x1f
 469:	c1 fa 02             	sar    edx,0x2
 46c:	29 d6                	sub    esi,edx
 46e:	89 77 08             	mov    DWORD PTR [edi+0x8],esi
 471:	39 e9                	cmp    ecx,ebp
 473:	7e 18                	jle    48d <physics_draw+0x29d>
 475:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
 478:	b8 67 66 66 66       	mov    eax,0x66666667
 47d:	8d 0c db             	lea    ecx,[ebx+ebx*8]
 480:	f7 e9                	imul   ecx
 482:	c1 f9 1f             	sar    ecx,0x1f
 485:	c1 fa 02             	sar    edx,0x2
 488:	29 d1                	sub    ecx,edx
 48a:	89 4f 0c             	mov    DWORD PTR [edi+0xc],ecx
 48d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 491:	39 47 04             	cmp    DWORD PTR [edi+0x4],eax
 494:	7e 1b                	jle    4b1 <physics_draw+0x2c1>
 496:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
 499:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
 49c:	8d 0c c0             	lea    ecx,[eax+eax*8]
 49f:	b8 67 66 66 66       	mov    eax,0x66666667
 4a4:	f7 e9                	imul   ecx
 4a6:	c1 f9 1f             	sar    ecx,0x1f
 4a9:	c1 fa 02             	sar    edx,0x2
 4ac:	29 d1                	sub    ecx,edx
 4ae:	89 4f 0c             	mov    DWORD PTR [edi+0xc],ecx
 4b1:	83 c7 18             	add    edi,0x18
 4b4:	3b 7c 24 24          	cmp    edi,DWORD PTR [esp+0x24]
 4b8:	0f 85 42 ff ff ff    	jne    400 <physics_draw+0x210>
 4be:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
 4c2:	83 7c 24 0c 01       	cmp    DWORD PTR [esp+0xc],0x1
 4c7:	0f 84 9d fd ff ff    	je     26a <physics_draw+0x7a>
 4cd:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
 4d1:	8d 73 18             	lea    esi,[ebx+0x18]
 4d4:	b8 01 00 00 00       	mov    eax,0x1
 4d9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 4e0:	8b 7e f8             	mov    edi,DWORD PTR [esi-0x8]
 4e3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 4e7:	89 f1                	mov    ecx,esi
 4e9:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 4ed:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
 4f1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 4f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 4ff:	00 
 500:	8b 6e e8             	mov    ebp,DWORD PTR [esi-0x18]
 503:	8b 7e ec             	mov    edi,DWORD PTR [esi-0x14]
 506:	89 ea                	mov    edx,ebp
 508:	2b 11                	sub    edx,DWORD PTR [ecx]
 50a:	89 fb                	mov    ebx,edi
 50c:	8d 82 ff 00 00 00    	lea    eax,[edx+0xff]
 512:	0f 49 c2             	cmovns eax,edx
 515:	c1 f8 08             	sar    eax,0x8
 518:	2b 59 04             	sub    ebx,DWORD PTR [ecx+0x4]
 51b:	8d 93 ff 00 00 00    	lea    edx,[ebx+0xff]
 521:	0f 49 d3             	cmovns edx,ebx
 524:	0f af c0             	imul   eax,eax
 527:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
 52b:	03 59 10             	add    ebx,DWORD PTR [ecx+0x10]
 52e:	0f af db             	imul   ebx,ebx
 531:	c1 fa 08             	sar    edx,0x8
 534:	0f af d2             	imul   edx,edx
 537:	01 d0                	add    eax,edx
 539:	39 d8                	cmp    eax,ebx
 53b:	7d 2d                	jge    56a <physics_draw+0x37a>
 53d:	85 c0                	test   eax,eax
 53f:	74 29                	je     56a <physics_draw+0x37a>
 541:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
 544:	8b 56 f0             	mov    edx,DWORD PTR [esi-0x10]
 547:	89 46 f0             	mov    DWORD PTR [esi-0x10],eax
 54a:	8b 59 0c             	mov    ebx,DWORD PTR [ecx+0xc]
 54d:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
 550:	8b 46 f4             	mov    eax,DWORD PTR [esi-0xc]
 553:	89 5e f4             	mov    DWORD PTR [esi-0xc],ebx
 556:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
 559:	03 6e f0             	add    ebp,DWORD PTR [esi-0x10]
 55c:	03 7e f4             	add    edi,DWORD PTR [esi-0xc]
 55f:	89 6e e8             	mov    DWORD PTR [esi-0x18],ebp
 562:	89 7e ec             	mov    DWORD PTR [esi-0x14],edi
 565:	01 11                	add    DWORD PTR [ecx],edx
 567:	01 41 04             	add    DWORD PTR [ecx+0x4],eax
 56a:	83 44 24 08 01       	add    DWORD PTR [esp+0x8],0x1
 56f:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
 573:	83 c1 18             	add    ecx,0x18
 576:	39 7c 24 08          	cmp    DWORD PTR [esp+0x8],edi
 57a:	7c 84                	jl     500 <physics_draw+0x310>
 57c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 580:	83 c6 18             	add    esi,0x18
 583:	83 c0 01             	add    eax,0x1
 586:	39 f8                	cmp    eax,edi
 588:	0f 85 52 ff ff ff    	jne    4e0 <physics_draw+0x2f0>
 58e:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
 592:	e9 d3 fc ff ff       	jmp    26a <physics_draw+0x7a>
 597:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
 59b:	03 b3 cc 03 00 00    	add    esi,DWORD PTR [ebx+0x3cc]
 5a1:	b8 0f 00 00 00       	mov    eax,0xf
 5a6:	83 c6 06             	add    esi,0x6
 5a9:	e9 64 fd ff ff       	jmp    312 <physics_draw+0x122>
 5ae:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
 5b2:	03 b3 cc 03 00 00    	add    esi,DWORD PTR [ebx+0x3cc]
 5b8:	83 c6 06             	add    esi,0x6
 5bb:	e9 4d fd ff ff       	jmp    30d <physics_draw+0x11d>

000005c0 <physics_on_key>:
 5c0:	55                   	push   ebp
 5c1:	57                   	push   edi
 5c2:	56                   	push   esi
 5c3:	53                   	push   ebx
 5c4:	83 ec 4c             	sub    esp,0x4c
 5c7:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
 5cb:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
 5cf:	8b 5a 68             	mov    ebx,DWORD PTR [edx+0x68]
 5d2:	85 db                	test   ebx,ebx
 5d4:	74 18                	je     5ee <physics_on_key+0x2e>
 5d6:	3c 2d                	cmp    al,0x2d
 5d8:	0f 84 d2 01 00 00    	je     7b0 <physics_on_key+0x1f0>
 5de:	7e 20                	jle    600 <physics_on_key+0x40>
 5e0:	89 c2                	mov    edx,eax
 5e2:	83 e2 df             	and    edx,0xffffffdf
 5e5:	80 fa 52             	cmp    dl,0x52
 5e8:	74 46                	je     630 <physics_on_key+0x70>
 5ea:	3c 3d                	cmp    al,0x3d
 5ec:	74 1a                	je     608 <physics_on_key+0x48>
 5ee:	83 c4 4c             	add    esp,0x4c
 5f1:	5b                   	pop    ebx
 5f2:	5e                   	pop    esi
 5f3:	5f                   	pop    edi
 5f4:	5d                   	pop    ebp
 5f5:	c3                   	ret
 5f6:	66 90                	xchg   ax,ax
 5f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 5ff:	00 
 600:	3c 20                	cmp    al,0x20
 602:	74 1c                	je     620 <physics_on_key+0x60>
 604:	3c 2b                	cmp    al,0x2b
 606:	75 e6                	jne    5ee <physics_on_key+0x2e>
 608:	8b 83 c0 03 00 00    	mov    eax,DWORD PTR [ebx+0x3c0]
 60e:	83 f8 27             	cmp    eax,0x27
 611:	7f db                	jg     5ee <physics_on_key+0x2e>
 613:	83 c0 01             	add    eax,0x1
 616:	89 83 c0 03 00 00    	mov    DWORD PTR [ebx+0x3c0],eax
 61c:	eb d0                	jmp    5ee <physics_on_key+0x2e>
 61e:	66 90                	xchg   ax,ax
 620:	80 b3 c4 03 00 00 01 	xor    BYTE PTR [ebx+0x3c4],0x1
 627:	83 c4 4c             	add    esp,0x4c
 62a:	5b                   	pop    ebx
 62b:	5e                   	pop    esi
 62c:	5f                   	pop    edi
 62d:	5d                   	pop    ebp
 62e:	c3                   	ret
 62f:	90                   	nop
 630:	8b b3 c0 03 00 00    	mov    esi,DWORD PTR [ebx+0x3c0]
 636:	8b bb c8 03 00 00    	mov    edi,DWORD PTR [ebx+0x3c8]
 63c:	8b ab cc 03 00 00    	mov    ebp,DWORD PTR [ebx+0x3cc]
 642:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 646:	e8 fc ff ff ff       	call   647 <physics_on_key+0x87>
 64b:	c7 44 24 18 fa b4 89 	mov    DWORD PTR [esp+0x18],0x89b4fa
 652:	00 
 653:	c7 44 24 1c a8 8b f3 	mov    DWORD PTR [esp+0x1c],0xf38ba8
 65a:	00 
 65b:	c7 44 24 20 a1 e3 a6 	mov    DWORD PTR [esp+0x20],0xa6e3a1
 662:	00 
 663:	c7 44 24 24 87 b3 fa 	mov    DWORD PTR [esp+0x24],0xfab387
 66a:	00 
 66b:	c7 44 24 28 f7 a6 cb 	mov    DWORD PTR [esp+0x28],0xcba6f7
 672:	00 
 673:	c7 44 24 2c e7 c2 f5 	mov    DWORD PTR [esp+0x2c],0xf5c2e7
 67a:	00 
 67b:	c7 44 24 30 af e2 f9 	mov    DWORD PTR [esp+0x30],0xf9e2af
 682:	00 
 683:	c7 44 24 34 d5 e2 94 	mov    DWORD PTR [esp+0x34],0x94e2d5
 68a:	00 
 68b:	c7 44 24 38 fe dc 89 	mov    DWORD PTR [esp+0x38],0x89dcfe
 692:	00 
 693:	c7 44 24 3c cd cd f2 	mov    DWORD PTR [esp+0x3c],0xf2cdcd
 69a:	00 
 69b:	85 f6                	test   esi,esi
 69d:	0f 8e 4b ff ff ff    	jle    5ee <physics_on_key+0x2e>
 6a3:	89 c1                	mov    ecx,eax
 6a5:	8d 47 ec             	lea    eax,[edi-0x14]
 6a8:	83 ed 14             	sub    ebp,0x14
 6ab:	bf fa b4 89 00       	mov    edi,0x89b4fa
 6b0:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 6b4:	31 f6                	xor    esi,esi
 6b6:	eb 22                	jmp    6da <physics_on_key+0x11a>
 6b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6bf:	00 
 6c0:	b8 cd cc cc cc       	mov    eax,0xcccccccd
 6c5:	83 c3 18             	add    ebx,0x18
 6c8:	f7 e6                	mul    esi
 6ca:	c1 ea 03             	shr    edx,0x3
 6cd:	8d 04 92             	lea    eax,[edx+edx*4]
 6d0:	89 f2                	mov    edx,esi
 6d2:	01 c0                	add    eax,eax
 6d4:	29 c2                	sub    edx,eax
 6d6:	8b 7c 94 18          	mov    edi,DWORD PTR [esp+edx*4+0x18]
 6da:	89 c8                	mov    eax,ecx
 6dc:	89 7b 14             	mov    DWORD PTR [ebx+0x14],edi
 6df:	c1 e0 0d             	shl    eax,0xd
 6e2:	31 c8                	xor    eax,ecx
 6e4:	89 c2                	mov    edx,eax
 6e6:	c1 ea 11             	shr    edx,0x11
 6e9:	31 d0                	xor    eax,edx
 6eb:	89 c2                	mov    edx,eax
 6ed:	c1 e2 05             	shl    edx,0x5
 6f0:	31 c2                	xor    edx,eax
 6f2:	83 e0 07             	and    eax,0x7
 6f5:	89 d1                	mov    ecx,edx
 6f7:	83 c0 04             	add    eax,0x4
 6fa:	c1 e1 0d             	shl    ecx,0xd
 6fd:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
 700:	31 d1                	xor    ecx,edx
 702:	31 d2                	xor    edx,edx
 704:	89 c8                	mov    eax,ecx
 706:	c1 e8 11             	shr    eax,0x11
 709:	31 c1                	xor    ecx,eax
 70b:	89 c8                	mov    eax,ecx
 70d:	c1 e0 05             	shl    eax,0x5
 710:	31 c1                	xor    ecx,eax
 712:	89 c8                	mov    eax,ecx
 714:	f7 74 24 0c          	div    DWORD PTR [esp+0xc]
 718:	89 c8                	mov    eax,ecx
 71a:	c1 e0 0d             	shl    eax,0xd
 71d:	31 c1                	xor    ecx,eax
 71f:	89 c8                	mov    eax,ecx
 721:	c1 e8 11             	shr    eax,0x11
 724:	31 c1                	xor    ecx,eax
 726:	89 c8                	mov    eax,ecx
 728:	c1 e0 05             	shl    eax,0x5
 72b:	31 c1                	xor    ecx,eax
 72d:	89 c8                	mov    eax,ecx
 72f:	83 c2 0a             	add    edx,0xa
 732:	c1 e2 08             	shl    edx,0x8
 735:	89 13                	mov    DWORD PTR [ebx],edx
 737:	31 d2                	xor    edx,edx
 739:	f7 f5                	div    ebp
 73b:	89 c8                	mov    eax,ecx
 73d:	c1 e0 0d             	shl    eax,0xd
 740:	31 c1                	xor    ecx,eax
 742:	89 c8                	mov    eax,ecx
 744:	c1 e8 11             	shr    eax,0x11
 747:	31 c1                	xor    ecx,eax
 749:	89 c8                	mov    eax,ecx
 74b:	83 c2 0a             	add    edx,0xa
 74e:	c1 e2 08             	shl    edx,0x8
 751:	c1 e0 05             	shl    eax,0x5
 754:	83 c6 01             	add    esi,0x1
 757:	31 c1                	xor    ecx,eax
 759:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
 75e:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
 761:	f7 e1                	mul    ecx
 763:	89 c8                	mov    eax,ecx
 765:	c1 ea 02             	shr    edx,0x2
 768:	8d 14 52             	lea    edx,[edx+edx*2]
 76b:	01 d2                	add    edx,edx
 76d:	29 d0                	sub    eax,edx
 76f:	89 ca                	mov    edx,ecx
 771:	83 e8 03             	sub    eax,0x3
 774:	c1 e2 0d             	shl    edx,0xd
 777:	31 ca                	xor    edx,ecx
 779:	c1 e0 08             	shl    eax,0x8
 77c:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
 77f:	89 d0                	mov    eax,edx
 781:	c1 e8 11             	shr    eax,0x11
 784:	31 d0                	xor    eax,edx
 786:	89 c1                	mov    ecx,eax
 788:	c1 e1 05             	shl    ecx,0x5
 78b:	31 c1                	xor    ecx,eax
 78d:	83 e0 03             	and    eax,0x3
 790:	83 e8 02             	sub    eax,0x2
 793:	c1 e0 08             	shl    eax,0x8
 796:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
 799:	39 74 24 08          	cmp    DWORD PTR [esp+0x8],esi
 79d:	0f 85 1d ff ff ff    	jne    6c0 <physics_on_key+0x100>
 7a3:	83 c4 4c             	add    esp,0x4c
 7a6:	5b                   	pop    ebx
 7a7:	5e                   	pop    esi
 7a8:	5f                   	pop    edi
 7a9:	5d                   	pop    ebp
 7aa:	c3                   	ret
 7ab:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 7b0:	8b 83 c0 03 00 00    	mov    eax,DWORD PTR [ebx+0x3c0]
 7b6:	83 f8 01             	cmp    eax,0x1
 7b9:	0f 8e 2f fe ff ff    	jle    5ee <physics_on_key+0x2e>
 7bf:	83 e8 01             	sub    eax,0x1
 7c2:	89 83 c0 03 00 00    	mov    DWORD PTR [ebx+0x3c0],eax
 7c8:	e9 21 fe ff ff       	jmp    5ee <physics_on_key+0x2e>

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	5b                   	pop    ebx
   1:	53                   	push   ebx
   2:	50                   	push   eax
   3:	41                   	inc    ecx
   4:	43                   	inc    ebx
   5:	45                   	inc    ebp
   6:	5d                   	pop    ebp
   7:	20 52 65             	and    BYTE PTR [edx+0x65],dl
   a:	73 75                	jae    81 <pstates+0x61>
   c:	6d                   	ins    DWORD PTR es:[edi],dx
   d:	65 00 5b 53          	add    BYTE PTR gs:[ebx+0x53],bl
  11:	50                   	push   eax
  12:	41                   	inc    ecx
  13:	43                   	inc    ebx
  14:	45                   	inc    ebp
  15:	5d                   	pop    ebp
  16:	20 50 61             	and    BYTE PTR [eax+0x61],dl
  19:	75 73                	jne    8e <pstates+0x6e>
  1b:	65 00 5b 52          	add    BYTE PTR gs:[ebx+0x52],bl
  1f:	5d                   	pop    ebp
  20:	20 52 65             	and    BYTE PTR [edx+0x65],dl
  23:	73 65                	jae    8a <pstates+0x6a>
  25:	74 20                	je     47 <pstates+0x27>
  27:	20 5b 2b             	and    BYTE PTR [ebx+0x2b],bl
  2a:	2f                   	das
  2b:	2d 5d 20 50 61       	sub    eax,0x6150205d
  30:	72 74                	jb     a6 <pstates+0x86>
  32:	69 63 6c 65 73 00 20 	imul   esp,DWORD PTR [ebx+0x6c],0x20007365
  39:	70 61                	jo     9c <pstates+0x7c>
  3b:	72 74                	jb     b1 <pstates+0x91>
  3d:	69                   	.byte 0x69
  3e:	63 6c 65 73          	arpl   WORD PTR [ebp+eiz*2+0x73],ebp
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
  17:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	e9 01 00 00 00       	jmp    2a <.eh_frame+0x2a>
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 85 02 43 0e 0c    	or     BYTE PTR [ebp+0xc0e4302],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  3b:	83 05 43 0e 60 54 0e 	add    DWORD PTR ds:0x54600e43,0xe
  42:	64 4b                	fs dec ebx
  44:	0e                   	push   cs
  45:	68 42 0e 6c 4d       	push   0x4d6c0e42
  4a:	0e                   	push   cs
  4b:	70 02                	jo     4f <.eh_frame+0x4f>
  4d:	81 0e 60 03 2a 01    	or     DWORD PTR [esi],0x12a0360
  53:	0e                   	push   cs
  54:	14 43                	adc    al,0x43
  56:	c3                   	ret
  57:	0e                   	push   cs
  58:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  5b:	0e                   	push   cs
  5c:	0c 41                	or     al,0x41
  5e:	c7                   	(bad)
  5f:	0e                   	push   cs
  60:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  63:	0e                   	push   cs
  64:	04 00                	add    al,0x0
  66:	00 00                	add    BYTE PTR [eax],al
  68:	d0 00                	rol    BYTE PTR [eax],1
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	6c                   	ins    BYTE PTR es:[edi],dx
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 f0                	add    al,dh
  71:	01 00                	add    DWORD PTR [eax],eax
  73:	00 d0                	add    al,dl
  75:	03 00                	add    eax,DWORD PTR [eax]
  77:	00 00                	add    BYTE PTR [eax],al
  79:	41                   	inc    ecx
  7a:	0e                   	push   cs
  7b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  81:	87 03                	xchg   DWORD PTR [ebx],eax
  83:	41                   	inc    ecx
  84:	0e                   	push   cs
  85:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  8b:	83 05 43 0e 70 55 0e 	add    DWORD PTR ds:0x55700e43,0xe
  92:	78 71                	js     105 <.eh_frame+0x105>
  94:	0e                   	push   cs
  95:	7c 42                	jl     d9 <.eh_frame+0xd9>
  97:	0e                   	push   cs
  98:	80 01 41             	add    BYTE PTR [ecx],0x41
  9b:	0e                   	push   cs
  9c:	84 01                	test   BYTE PTR [ecx],al
  9e:	41                   	inc    ecx
  9f:	0e                   	push   cs
  a0:	88 01                	mov    BYTE PTR [ecx],al
  a2:	41                   	inc    ecx
  a3:	0e                   	push   cs
  a4:	8c 01                	mov    WORD PTR [ecx],es
  a6:	41                   	inc    ecx
  a7:	0e                   	push   cs
  a8:	90                   	nop
  a9:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
  ac:	70 02                	jo     b0 <.eh_frame+0xb0>
  ae:	5c                   	pop    esp
  af:	0e                   	push   cs
  b0:	74 46                	je     f8 <.eh_frame+0xf8>
  b2:	0e                   	push   cs
  b3:	78 47                	js     fc <.eh_frame+0xfc>
  b5:	0e                   	push   cs
  b6:	7c 41                	jl     f9 <.eh_frame+0xf9>
  b8:	0e                   	push   cs
  b9:	80 01 48             	add    BYTE PTR [ecx],0x48
  bc:	0e                   	push   cs
  bd:	70 51                	jo     110 <.eh_frame+0x110>
  bf:	0e                   	push   cs
  c0:	74 42                	je     104 <.eh_frame+0x104>
  c2:	0e                   	push   cs
  c3:	78 41                	js     106 <.eh_frame+0x106>
  c5:	0e                   	push   cs
  c6:	7c 41                	jl     109 <.eh_frame+0x109>
  c8:	0e                   	push   cs
  c9:	80 01 48             	add    BYTE PTR [ecx],0x48
  cc:	0e                   	push   cs
  cd:	70 73                	jo     142 <.eh_frame+0x142>
  cf:	0e                   	push   cs
  d0:	74 41                	je     113 <.eh_frame+0x113>
  d2:	0e                   	push   cs
  d3:	78 41                	js     116 <.eh_frame+0x116>
  d5:	0e                   	push   cs
  d6:	7c 45                	jl     11d <.eh_frame+0x11d>
  d8:	0e                   	push   cs
  d9:	80 01 4a             	add    BYTE PTR [ecx],0x4a
  dc:	0e                   	push   cs
  dd:	84 01                	test   BYTE PTR [ecx],al
  df:	45                   	inc    ebp
  e0:	0e                   	push   cs
  e1:	88 01                	mov    BYTE PTR [ecx],al
  e3:	41                   	inc    ecx
  e4:	0e                   	push   cs
  e5:	8c 01                	mov    WORD PTR [ecx],es
  e7:	4a                   	dec    edx
  e8:	0e                   	push   cs
  e9:	90                   	nop
  ea:	01 78 0e             	add    DWORD PTR [eax+0xe],edi
  ed:	74 42                	je     131 <.eh_frame+0x131>
  ef:	0e                   	push   cs
  f0:	78 45                	js     137 <.eh_frame+0x137>
  f2:	0e                   	push   cs
  f3:	7c 46                	jl     13b <.eh_frame+0x13b>
  f5:	0e                   	push   cs
  f6:	80 01 46             	add    BYTE PTR [ecx],0x46
  f9:	0e                   	push   cs
  fa:	7c 41                	jl     13d <.eh_frame+0x13d>
  fc:	0e                   	push   cs
  fd:	78 41                	js     140 <.eh_frame+0x140>
  ff:	0e                   	push   cs
 100:	7c 45                	jl     147 <.eh_frame+0x147>
 102:	0e                   	push   cs
 103:	80 01 46             	add    BYTE PTR [ecx],0x46
 106:	0e                   	push   cs
 107:	7c 41                	jl     14a <.eh_frame+0x14a>
 109:	0e                   	push   cs
 10a:	78 45                	js     151 <.eh_frame+0x151>
 10c:	0e                   	push   cs
 10d:	7c 41                	jl     150 <.eh_frame+0x150>
 10f:	0e                   	push   cs
 110:	80 01 4a             	add    BYTE PTR [ecx],0x4a
 113:	0e                   	push   cs
 114:	84 01                	test   BYTE PTR [ecx],al
 116:	41                   	inc    ecx
 117:	0e                   	push   cs
 118:	88 01                	mov    BYTE PTR [ecx],al
 11a:	41                   	inc    ecx
 11b:	0e                   	push   cs
 11c:	8c 01                	mov    WORD PTR [ecx],es
 11e:	4a                   	dec    edx
 11f:	0e                   	push   cs
 120:	90                   	nop
 121:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 124:	70 43                	jo     169 <.eh_frame+0x169>
 126:	0a 0e                	or     cl,BYTE PTR [esi]
 128:	14 41                	adc    al,0x41
 12a:	c3                   	ret
 12b:	0e                   	push   cs
 12c:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 12f:	0e                   	push   cs
 130:	0c 41                	or     al,0x41
 132:	c7                   	(bad)
 133:	0e                   	push   cs
 134:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 137:	0e                   	push   cs
 138:	04 44                	add    al,0x44
 13a:	0b 00                	or     eax,DWORD PTR [eax]
 13c:	68 00 00 00 40       	push   0x40000000
 141:	01 00                	add    DWORD PTR [eax],eax
 143:	00 c0                	add    al,al
 145:	05 00 00 0d 02       	add    eax,0x20d0000
 14a:	00 00                	add    BYTE PTR [eax],al
 14c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 14f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 155:	87 03                	xchg   DWORD PTR [ebx],eax
 157:	41                   	inc    ecx
 158:	0e                   	push   cs
 159:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 15f:	83 05 43 0e 60 6a 0a 	add    DWORD PTR ds:0x6a600e43,0xa
 166:	0e                   	push   cs
 167:	14 41                	adc    al,0x41
 169:	c3                   	ret
 16a:	0e                   	push   cs
 16b:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 16e:	0e                   	push   cs
 16f:	0c 41                	or     al,0x41
 171:	c7                   	(bad)
 172:	0e                   	push   cs
 173:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 176:	0e                   	push   cs
 177:	04 4b                	add    al,0x4b
 179:	0b 6a 0a             	or     ebp,DWORD PTR [edx+0xa]
 17c:	0e                   	push   cs
 17d:	14 41                	adc    al,0x41
 17f:	c3                   	ret
 180:	0e                   	push   cs
 181:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 184:	0e                   	push   cs
 185:	0c 41                	or     al,0x41
 187:	c7                   	(bad)
 188:	0e                   	push   cs
 189:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 18c:	0e                   	push   cs
 18d:	04 42                	add    al,0x42
 18f:	0b 03                	or     eax,DWORD PTR [ebx]
 191:	76 01                	jbe    194 <.eh_frame+0x194>
 193:	0a 0e                	or     cl,BYTE PTR [esi]
 195:	14 41                	adc    al,0x41
 197:	c3                   	ret
 198:	0e                   	push   cs
 199:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 19c:	0e                   	push   cs
 19d:	0c 41                	or     al,0x41
 19f:	c7                   	(bad)
 1a0:	0e                   	push   cs
 1a1:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1a4:	0e                   	push   cs
 1a5:	04 46                	add    al,0x46
 1a7:	0b                   	.byte 0xb
