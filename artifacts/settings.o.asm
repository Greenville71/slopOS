
settings.o:     file format elf32-i386


Disassembly of section .text:

00000000 <settings_create>:
   0:	a1 00 00 00 00       	mov    eax,ds:0x0
   5:	31 d2                	xor    edx,edx
   7:	83 f8 01             	cmp    eax,0x1
   a:	7f 1b                	jg     27 <settings_create+0x27>
   c:	c7 04 85 04 00 00 00 	mov    DWORD PTR [eax*4+0x4],0x0
  13:	00 00 00 00 
  17:	8d 50 01             	lea    edx,[eax+0x1]
  1a:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  20:	8d 14 85 04 00 00 00 	lea    edx,[eax*4+0x4]
  27:	89 d0                	mov    eax,edx
  29:	c3                   	ret
  2a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000030 <settings_draw>:
  30:	55                   	push   ebp
  31:	57                   	push   edi
  32:	56                   	push   esi
  33:	53                   	push   ebx
  34:	81 ec 8c 00 00 00    	sub    esp,0x8c
  3a:	8b ac 24 a0 00 00 00 	mov    ebp,DWORD PTR [esp+0xa0]
  41:	8b 45 68             	mov    eax,DWORD PTR [ebp+0x68]
  44:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  48:	85 c0                	test   eax,eax
  4a:	0f 84 8a 03 00 00    	je     3da <settings_draw+0x3aa>
  50:	8b 7d 04             	mov    edi,DWORD PTR [ebp+0x4]
  53:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
  56:	68 f4 d6 cd 00       	push   0xcdd6f4
  5b:	68 00 00 00 00       	push   0x0
  60:	8d 5e 10             	lea    ebx,[esi+0x10]
  63:	8d 47 2c             	lea    eax,[edi+0x2c]
  66:	83 c6 1c             	add    esi,0x1c
  69:	50                   	push   eax
  6a:	53                   	push   ebx
  6b:	e8 fc ff ff ff       	call   6c <settings_draw+0x3c>
  70:	68 5a 47 45 00       	push   0x45475a
  75:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  78:	83 e8 20             	sub    eax,0x20
  7b:	50                   	push   eax
  7c:	8d 47 48             	lea    eax,[edi+0x48]
  7f:	50                   	push   eax
  80:	53                   	push   ebx
  81:	e8 fc ff ff ff       	call   82 <settings_draw+0x52>
  86:	83 c4 20             	add    esp,0x20
  89:	8d 47 54             	lea    eax,[edi+0x54]
  8c:	68 fa b4 89 00       	push   0x89b4fa
  91:	68 10 00 00 00       	push   0x10
  96:	50                   	push   eax
  97:	53                   	push   ebx
  98:	e8 fc ff ff ff       	call   99 <settings_draw+0x69>
  9d:	8d 47 6a             	lea    eax,[edi+0x6a]
  a0:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  a4:	68 f4 d6 cd 00       	push   0xcdd6f4
  a9:	68 18 00 00 00       	push   0x18
  ae:	50                   	push   eax
  af:	56                   	push   esi
  b0:	e8 fc ff ff ff       	call   b1 <settings_draw+0x81>
  b5:	83 c4 20             	add    esp,0x20
  b8:	8d 47 7c             	lea    eax,[edi+0x7c]
  bb:	68 f4 d6 cd 00       	push   0xcdd6f4
  c0:	68 2d 00 00 00       	push   0x2d
  c5:	50                   	push   eax
  c6:	56                   	push   esi
  c7:	e8 fc ff ff ff       	call   c8 <settings_draw+0x98>
  cc:	8d 87 8e 00 00 00    	lea    eax,[edi+0x8e]
  d2:	68 c8 ad a6 00       	push   0xa6adc8
  d7:	68 41 00 00 00       	push   0x41
  dc:	50                   	push   eax
  dd:	56                   	push   esi
  de:	31 f6                	xor    esi,esi
  e0:	e8 fc ff ff ff       	call   e1 <settings_draw+0xb1>
  e5:	83 c4 20             	add    esp,0x20
  e8:	8d 87 aa 00 00 00    	lea    eax,[edi+0xaa]
  ee:	68 fa b4 89 00       	push   0x89b4fa
  f3:	68 5e 00 00 00       	push   0x5e
  f8:	50                   	push   eax
  f9:	53                   	push   ebx
  fa:	e8 fc ff ff ff       	call   fb <settings_draw+0xcb>
  ff:	83 c4 10             	add    esp,0x10
 102:	89 ac 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebp
 109:	8d af c0 00 00 00    	lea    ebp,[edi+0xc0]
 10f:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
 113:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
 117:	eb 43                	jmp    15c <settings_draw+0x12c>
 119:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 120:	ff 34 f5 04 00 00 00 	push   DWORD PTR [esi*8+0x4]
 127:	6a 08                	push   0x8
 129:	52                   	push   edx
 12a:	50                   	push   eax
 12b:	e8 fc ff ff ff       	call   12c <settings_draw+0xfc>
 130:	83 c4 10             	add    esp,0x10
 133:	b8 c8 ad a6 00       	mov    eax,0xa6adc8
 138:	83 c7 05             	add    edi,0x5
 13b:	83 c3 18             	add    ebx,0x18
 13e:	50                   	push   eax
 13f:	ff 34 f5 00 00 00 00 	push   DWORD PTR [esi*8+0x0]
 146:	83 c6 01             	add    esi,0x1
 149:	57                   	push   edi
 14a:	53                   	push   ebx
 14b:	e8 fc ff ff ff       	call   14c <settings_draw+0x11c>
 150:	83 c4 10             	add    esp,0x10
 153:	83 fe 07             	cmp    esi,0x7
 156:	0f 84 84 00 00 00    	je     1e0 <settings_draw+0x1b0>
 15c:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
 161:	89 f3                	mov    ebx,esi
 163:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
 167:	f7 e6                	mul    esi
 169:	89 d0                	mov    eax,edx
 16b:	83 e2 fe             	and    edx,0xfffffffe
 16e:	d1 e8                	shr    eax,1
 170:	01 c2                	add    edx,eax
 172:	8d 04 c0             	lea    eax,[eax+eax*8]
 175:	29 d3                	sub    ebx,edx
 177:	8d 7c 85 00          	lea    edi,[ebp+eax*4+0x0]
 17b:	69 db 82 00 00 00    	imul   ebx,ebx,0x82
 181:	03 5c 24 08          	add    ebx,DWORD PTR [esp+0x8]
 185:	8d 57 0c             	lea    edx,[edi+0xc]
 188:	8d 43 0a             	lea    eax,[ebx+0xa]
 18b:	39 31                	cmp    DWORD PTR [ecx],esi
 18d:	75 91                	jne    120 <settings_draw+0xf0>
 18f:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 193:	8d 4f fe             	lea    ecx,[edi-0x2]
 196:	83 ec 08             	sub    esp,0x8
 199:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 19d:	68 5a 47 45 00       	push   0x45475a
 1a2:	6a 08                	push   0x8
 1a4:	6a 1e                	push   0x1e
 1a6:	6a 7c                	push   0x7c
 1a8:	51                   	push   ecx
 1a9:	8d 4b fc             	lea    ecx,[ebx-0x4]
 1ac:	51                   	push   ecx
 1ad:	e8 fc ff ff ff       	call   1ae <settings_draw+0x17e>
 1b2:	83 c4 20             	add    esp,0x20
 1b5:	ff 34 f5 04 00 00 00 	push   DWORD PTR [esi*8+0x4]
 1bc:	6a 08                	push   0x8
 1be:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 1c2:	52                   	push   edx
 1c3:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
 1c7:	50                   	push   eax
 1c8:	e8 fc ff ff ff       	call   1c9 <settings_draw+0x199>
 1cd:	83 c4 10             	add    esp,0x10
 1d0:	b8 f4 d6 cd 00       	mov    eax,0xcdd6f4
 1d5:	e9 5e ff ff ff       	jmp    138 <settings_draw+0x108>
 1da:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 1e0:	8b ac 24 a0 00 00 00 	mov    ebp,DWORD PTR [esp+0xa0]
 1e7:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
 1eb:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
 1ef:	68 5a 47 45 00       	push   0x45475a
 1f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 1f7:	83 e8 20             	sub    eax,0x20
 1fa:	50                   	push   eax
 1fb:	8d 87 34 01 00 00    	lea    eax,[edi+0x134]
 201:	50                   	push   eax
 202:	53                   	push   ebx
 203:	e8 fc ff ff ff       	call   204 <settings_draw+0x1d4>
 208:	8d 87 40 01 00 00    	lea    eax,[edi+0x140]
 20e:	68 fa b4 89 00       	push   0x89b4fa
 213:	68 64 00 00 00       	push   0x64
 218:	50                   	push   eax
 219:	53                   	push   ebx
 21a:	e8 fc ff ff ff       	call   21b <settings_draw+0x1eb>
 21f:	83 c4 20             	add    esp,0x20
 222:	8d 87 56 01 00 00    	lea    eax,[edi+0x156]
 228:	68 f4 d6 cd 00       	push   0xcdd6f4
 22d:	68 6a 00 00 00       	push   0x6a
 232:	50                   	push   eax
 233:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
 237:	56                   	push   esi
 238:	e8 fc ff ff ff       	call   239 <settings_draw+0x209>
 23d:	8d 87 68 01 00 00    	lea    eax,[edi+0x168]
 243:	68 f4 d6 cd 00       	push   0xcdd6f4
 248:	68 76 00 00 00       	push   0x76
 24d:	50                   	push   eax
 24e:	56                   	push   esi
 24f:	e8 fc ff ff ff       	call   250 <settings_draw+0x220>
 254:	c7 44 24 70 55 73 65 	mov    DWORD PTR [esp+0x70],0x72657355
 25b:	72 
 25c:	c7 44 24 74 3a 20 00 	mov    DWORD PTR [esp+0x74],0x203a
 263:	00 
 264:	c7 44 24 78 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
 26b:	00 
 26c:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [esp+0x7c],0x0
 273:	00 
 274:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x0
 27b:	00 00 00 00 
 27f:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0x0
 286:	00 00 00 00 
 28a:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0x0
 291:	00 00 00 00 
 295:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0x0
 29c:	00 00 00 00 
 2a0:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0x0
 2a7:	00 00 00 00 
 2ab:	c7 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],0x0
 2b2:	00 00 00 00 
 2b6:	c7 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],0x0
 2bd:	00 00 00 00 
 2c1:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],0x0
 2c8:	00 00 00 00 
 2cc:	83 c4 18             	add    esp,0x18
 2cf:	68 00 00 00 00       	push   0x0
 2d4:	8d 5c 24 5c          	lea    ebx,[esp+0x5c]
 2d8:	53                   	push   ebx
 2d9:	e8 fc ff ff ff       	call   2da <settings_draw+0x2aa>
 2de:	8d 87 7a 01 00 00    	lea    eax,[edi+0x17a]
 2e4:	68 f4 d6 cd 00       	push   0xcdd6f4
 2e9:	53                   	push   ebx
 2ea:	50                   	push   eax
 2eb:	56                   	push   esi
 2ec:	e8 fc ff ff ff       	call   2ed <settings_draw+0x2bd>
 2f1:	83 c4 20             	add    esp,0x20
 2f4:	8d 87 8c 01 00 00    	lea    eax,[edi+0x18c]
 2fa:	81 c7 9e 01 00 00    	add    edi,0x19e
 300:	68 f4 d6 cd 00       	push   0xcdd6f4
 305:	68 8e 00 00 00       	push   0x8e
 30a:	50                   	push   eax
 30b:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
 30f:	56                   	push   esi
 310:	e8 fc ff ff ff       	call   311 <settings_draw+0x2e1>
 315:	c7 44 24 40 55 70 74 	mov    DWORD PTR [esp+0x40],0x69747055
 31c:	69 
 31d:	c7 44 24 44 6d 65 3a 	mov    DWORD PTR [esp+0x44],0x203a656d
 324:	20 
 325:	c7 44 24 48 00 00 00 	mov    DWORD PTR [esp+0x48],0x0
 32c:	00 
 32d:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
 334:	00 
 335:	c7 44 24 50 00 00 00 	mov    DWORD PTR [esp+0x50],0x0
 33c:	00 
 33d:	c7 44 24 54 00 00 00 	mov    DWORD PTR [esp+0x54],0x0
 344:	00 
 345:	c7 44 24 58 00 00 00 	mov    DWORD PTR [esp+0x58],0x0
 34c:	00 
 34d:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
 354:	00 
 355:	e8 fc ff ff ff       	call   356 <settings_draw+0x326>
 35a:	ba 1f 85 eb 51       	mov    edx,0x51eb851f
 35f:	83 c4 0c             	add    esp,0xc
 362:	f7 e2                	mul    edx
 364:	b8 89 88 88 88       	mov    eax,0x88888889
 369:	6a 0a                	push   0xa
 36b:	c1 ea 05             	shr    edx,0x5
 36e:	8d 74 24 30          	lea    esi,[esp+0x30]
 372:	89 d5                	mov    ebp,edx
 374:	f7 e2                	mul    edx
 376:	56                   	push   esi
 377:	c1 ea 05             	shr    edx,0x5
 37a:	52                   	push   edx
 37b:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
 37f:	e8 fc ff ff ff       	call   380 <settings_draw+0x350>
 384:	58                   	pop    eax
 385:	5a                   	pop    edx
 386:	56                   	push   esi
 387:	8d 5c 24 3c          	lea    ebx,[esp+0x3c]
 38b:	53                   	push   ebx
 38c:	e8 fc ff ff ff       	call   38d <settings_draw+0x35d>
 391:	59                   	pop    ecx
 392:	58                   	pop    eax
 393:	68 a3 00 00 00       	push   0xa3
 398:	53                   	push   ebx
 399:	e8 fc ff ff ff       	call   39a <settings_draw+0x36a>
 39e:	83 c4 0c             	add    esp,0xc
 3a1:	6a 0a                	push   0xa
 3a3:	56                   	push   esi
 3a4:	6b 54 24 18 3c       	imul   edx,DWORD PTR [esp+0x18],0x3c
 3a9:	29 d5                	sub    ebp,edx
 3ab:	55                   	push   ebp
 3ac:	e8 fc ff ff ff       	call   3ad <settings_draw+0x37d>
 3b1:	58                   	pop    eax
 3b2:	5a                   	pop    edx
 3b3:	56                   	push   esi
 3b4:	53                   	push   ebx
 3b5:	e8 fc ff ff ff       	call   3b6 <settings_draw+0x386>
 3ba:	59                   	pop    ecx
 3bb:	5e                   	pop    esi
 3bc:	68 a6 00 00 00       	push   0xa6
 3c1:	53                   	push   ebx
 3c2:	e8 fc ff ff ff       	call   3c3 <settings_draw+0x393>
 3c7:	68 f4 d6 cd 00       	push   0xcdd6f4
 3cc:	53                   	push   ebx
 3cd:	57                   	push   edi
 3ce:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 3d2:	e8 fc ff ff ff       	call   3d3 <settings_draw+0x3a3>
 3d7:	83 c4 20             	add    esp,0x20
 3da:	81 c4 8c 00 00 00    	add    esp,0x8c
 3e0:	5b                   	pop    ebx
 3e1:	5e                   	pop    esi
 3e2:	5f                   	pop    edi
 3e3:	5d                   	pop    ebp
 3e4:	c3                   	ret
 3e5:	8d 76 00             	lea    esi,[esi+0x0]
 3e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 3ef:	00 

000003f0 <settings_on_mouse>:
 3f0:	55                   	push   ebp
 3f1:	57                   	push   edi
 3f2:	56                   	push   esi
 3f3:	53                   	push   ebx
 3f4:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 3f8:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
 3fc:	8b 78 68             	mov    edi,DWORD PTR [eax+0x68]
 3ff:	85 ff                	test   edi,edi
 401:	74 75                	je     478 <settings_on_mouse+0x88>
 403:	80 7c 24 20 01       	cmp    BYTE PTR [esp+0x20],0x1
 408:	75 6e                	jne    478 <settings_on_mouse+0x88>
 40a:	31 c9                	xor    ecx,ecx
 40c:	be ab aa aa aa       	mov    esi,0xaaaaaaab
 411:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 418:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 41f:	00 
 420:	89 c8                	mov    eax,ecx
 422:	89 cd                	mov    ebp,ecx
 424:	f7 e6                	mul    esi
 426:	89 d0                	mov    eax,edx
 428:	83 e2 fe             	and    edx,0xfffffffe
 42b:	d1 e8                	shr    eax,1
 42d:	01 c2                	add    edx,eax
 42f:	29 d5                	sub    ebp,edx
 431:	69 d5 82 00 00 00    	imul   edx,ebp,0x82
 437:	8d 6a 18             	lea    ebp,[edx+0x18]
 43a:	39 dd                	cmp    ebp,ebx
 43c:	7f 32                	jg     470 <settings_on_mouse+0x80>
 43e:	81 c2 93 00 00 00    	add    edx,0x93
 444:	39 da                	cmp    edx,ebx
 446:	7c 28                	jl     470 <settings_on_mouse+0x80>
 448:	8d 04 c0             	lea    eax,[eax+eax*8]
 44b:	c1 e0 02             	shl    eax,0x2
 44e:	8d 90 b4 00 00 00    	lea    edx,[eax+0xb4]
 454:	3b 54 24 1c          	cmp    edx,DWORD PTR [esp+0x1c]
 458:	7f 16                	jg     470 <settings_on_mouse+0x80>
 45a:	05 d1 00 00 00       	add    eax,0xd1
 45f:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
 463:	7c 0b                	jl     470 <settings_on_mouse+0x80>
 465:	89 0f                	mov    DWORD PTR [edi],ecx
 467:	90                   	nop
 468:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 46f:	00 
 470:	83 c1 01             	add    ecx,0x1
 473:	83 f9 07             	cmp    ecx,0x7
 476:	75 a8                	jne    420 <settings_on_mouse+0x30>
 478:	5b                   	pop    ebx
 479:	5e                   	pop    esi
 47a:	5f                   	pop    edi
 47b:	5d                   	pop    ebp
 47c:	c3                   	ret

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	53                   	push   ebx
   1:	79 73                	jns    76 <.rodata.str1.1+0x76>
   3:	74 65                	je     6a <.rodata.str1.1+0x6a>
   5:	6d                   	ins    DWORD PTR es:[edi],dx
   6:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
   9:	74 74                	je     7f <.rodata.str1.1+0x7f>
   b:	69 6e 67 73 00 44 69 	imul   ebp,DWORD PTR [esi+0x67],0x69440073
  12:	73 70                	jae    84 <.rodata.str1.1+0x84>
  14:	6c                   	ins    BYTE PTR es:[edi],dx
  15:	61                   	popa
  16:	79 00                	jns    18 <.rodata.str1.1+0x18>
  18:	52                   	push   edx
  19:	65 73 6f             	gs jae 8b <.rodata.str1.1+0x8b>
  1c:	6c                   	ins    BYTE PTR es:[edi],dx
  1d:	75 74                	jne    93 <.rodata.str1.1+0x93>
  1f:	69 6f 6e 3a 20 31 30 	imul   ebp,DWORD PTR [edi+0x6e],0x3031203a
  26:	32 34 78             	xor    dh,BYTE PTR [eax+edi*2]
  29:	37                   	aaa
  2a:	36 38 00             	cmp    BYTE PTR ss:[eax],al
  2d:	43                   	inc    ebx
  2e:	6f                   	outs   dx,DWORD PTR ds:[esi]
  2f:	6c                   	ins    BYTE PTR es:[edi],dx
  30:	6f                   	outs   dx,DWORD PTR ds:[esi]
  31:	72 20                	jb     53 <.rodata.str1.1+0x53>
  33:	64 65 70 74          	fs gs jo ab <.rodata.str1.1+0xab>
  37:	68 3a 20 33 32       	push   0x3233203a
  3c:	2d 62 69 74 00       	sub    eax,0x746962
  41:	52                   	push   edx
  42:	65 66 72 65          	gs data16 jb ab <.rodata.str1.1+0xab>
  46:	73 68                	jae    b0 <.rodata.str1.1+0xb0>
  48:	3a 20                	cmp    ah,BYTE PTR [eax]
  4a:	7e 33                	jle    7f <.rodata.str1.1+0x7f>
  4c:	30 20                	xor    BYTE PTR [eax],ah
  4e:	66 70 73             	data16 jo c4 <.rodata.str1.1+0xc4>
  51:	20 28                	and    BYTE PTR [eax],ch
  53:	76 73                	jbe    c8 <.rodata.str1.1+0xc8>
  55:	79 6e                	jns    c5 <.rodata.str1.1+0xc5>
  57:	63 20                	arpl   WORD PTR [eax],esp
  59:	6f                   	outs   dx,DWORD PTR ds:[esi]
  5a:	66 66 29 00          	data16 sub WORD PTR [eax],ax
  5e:	54                   	push   esp
  5f:	68 65 6d 65 00       	push   0x656d65
  64:	41                   	inc    ecx
  65:	62 6f 75             	bound  ebp,QWORD PTR [edi+0x75]
  68:	74 00                	je     6a <.rodata.str1.1+0x6a>
  6a:	53                   	push   ebx
  6b:	6c                   	ins    BYTE PTR es:[edi],dx
  6c:	6f                   	outs   dx,DWORD PTR ds:[esi]
  6d:	70 4f                	jo     be <.rodata.str1.1+0xbe>
  6f:	53                   	push   ebx
  70:	20 76 30             	and    BYTE PTR [esi+0x30],dh
  73:	2e 33 00             	xor    eax,DWORD PTR cs:[eax]
  76:	4b                   	dec    ebx
  77:	65 72 6e             	gs jb  e8 <.rodata.str1.1+0xe8>
  7a:	65 6c                	gs ins BYTE PTR es:[edi],dx
  7c:	3a 20                	cmp    ah,BYTE PTR [eax]
  7e:	53                   	push   ebx
  7f:	6c                   	ins    BYTE PTR es:[edi],dx
  80:	6f                   	outs   dx,DWORD PTR ds:[esi]
  81:	70 4b                	jo     ce <.rodata.str1.1+0xce>
  83:	65 72 6e             	gs jb  f4 <settings_draw+0xc4>
  86:	65 6c                	gs ins BYTE PTR es:[edi],dx
  88:	20 69 36             	and    BYTE PTR [ecx+0x36],ch
  8b:	38 36                	cmp    BYTE PTR [esi],dh
  8d:	00 52 41             	add    BYTE PTR [edx+0x41],dl
  90:	4d                   	dec    ebp
  91:	20 46 53             	and    BYTE PTR [esi+0x53],al
  94:	3a 20                	cmp    ah,BYTE PTR [eax]
  96:	35 31 32 20 4b       	xor    eax,0x4b203231
  9b:	69 42 20 70 6f 6f 6c 	imul   eax,DWORD PTR [edx+0x20],0x6c6f6f70
  a2:	00 6d 20             	add    BYTE PTR [ebp+0x20],ch
  a5:	00 73 00             	add    BYTE PTR [ebx+0x0],dh
  a8:	43                   	inc    ebx
  a9:	61                   	popa
  aa:	74 70                	je     11c <settings_draw+0xec>
  ac:	70 75                	jo     123 <settings_draw+0xf3>
  ae:	63 63 69             	arpl   WORD PTR [ebx+0x69],esp
  b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
  b2:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
  b5:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
  b8:	00 52 6f             	add    BYTE PTR [edx+0x6f],dl
  bb:	73 65                	jae    122 <settings_draw+0xf2>
  bd:	20 50 69             	and    BYTE PTR [eax+0x69],dl
  c0:	6e                   	outs   dx,BYTE PTR ds:[esi]
  c1:	65 00 44 72 61       	add    BYTE PTR gs:[edx+esi*2+0x61],al
  c6:	63 75 6c             	arpl   WORD PTR [ebp+0x6c],esi
  c9:	61                   	popa
  ca:	00 4e 6f             	add    BYTE PTR [esi+0x6f],cl
  cd:	72 64                	jb     133 <settings_draw+0x103>
  cf:	00 53 6f             	add    BYTE PTR [ebx+0x6f],dl
  d2:	6c                   	ins    BYTE PTR es:[edi],dx
  d3:	61                   	popa
  d4:	72 69                	jb     13f <settings_draw+0x10f>
  d6:	7a 65                	jp     13d <settings_draw+0x10d>
  d8:	64 00 45 6d          	add    BYTE PTR fs:[ebp+0x6d],al
  dc:	65 72 61             	gs jb  140 <settings_draw+0x110>
  df:	6c                   	ins    BYTE PTR es:[edi],dx
  e0:	64 00 50 65          	add    BYTE PTR fs:[eax+0x65],dl
  e4:	61                   	popa
  e5:	63 68 20             	arpl   WORD PTR [eax+0x20],ebp
  e8:	46                   	inc    esi
  e9:	75 7a                	jne    165 <settings_draw+0x135>
  eb:	7a 00                	jp     ed <settings_draw+0xbd>

Disassembly of section .rodata:

00000000 <themes>:
   0:	a8 00                	test   al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	fa                   	cli
   5:	b4 89                	mov    ah,0x89
   7:	00 b9 00 00 00 f7    	add    BYTE PTR [ecx-0x9000000],bh
   d:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
   e:	cb                   	retf
   f:	00 c3                	add    bl,al
  11:	00 00                	add    BYTE PTR [eax],al
  13:	00 e7                	add    bh,ah
  15:	c2 f5 00             	ret    0xf5
  18:	cb                   	retf
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 ec                	add    ah,ch
  1d:	c7                   	(bad)
  1e:	74 00                	je     20 <themes+0x20>
  20:	d0 00                	rol    BYTE PTR [eax],1
  22:	00 00                	add    BYTE PTR [eax],al
  24:	af                   	scas   eax,DWORD PTR es:[edi]
  25:	e2 f9                	loop   20 <themes+0x20>
  27:	00 da                	add    dl,bl
  29:	00 00                	add    BYTE PTR [eax],al
  2b:	00 a1 e3 a6 00 e2    	add    BYTE PTR [ecx-0x1dff591d],ah
  31:	00 00                	add    BYTE PTR [eax],al
  33:	00                   	.byte 0
  34:	87                   	.byte 0x87
  35:	b3 fa                	mov    bl,0xfa
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
  17:	00 10                	add    BYTE PTR [eax],dl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	2a 00                	sub    al,BYTE PTR [eax]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 00                	add    BYTE PTR [eax],al
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	00 02                	add    BYTE PTR [edx],al
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	30 00                	xor    BYTE PTR [eax],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	b5 03                	mov    ch,0x3
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  3f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  45:	87 03                	xchg   DWORD PTR [ebx],eax
  47:	41                   	inc    ecx
  48:	0e                   	push   cs
  49:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  4f:	83 05 46 0e a0 01 61 	add    DWORD PTR ds:0x1a00e46,0x61
  56:	0e                   	push   cs
  57:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  58:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  5b:	a8 01                	test   al,0x1
  5d:	4a                   	dec    edx
  5e:	0e                   	push   cs
  5f:	ac                   	lods   al,BYTE PTR ds:[esi]
  60:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  63:	b0 01                	mov    al,0x1
  65:	4a                   	dec    edx
  66:	0e                   	push   cs
  67:	b4 01                	mov    ah,0x1
  69:	47                   	inc    edi
  6a:	0e                   	push   cs
  6b:	b8 01 44 0e bc       	mov    eax,0xbc0e4401
  70:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  73:	c0 01 48             	rol    BYTE PTR [ecx],0x48
  76:	0e                   	push   cs
  77:	a0 01 48 0e a4       	mov    al,ds:0xa40e4801
  7c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  7f:	a8 01                	test   al,0x1
  81:	41                   	inc    ecx
  82:	0e                   	push   cs
  83:	ac                   	lods   al,BYTE PTR ds:[esi]
  84:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  87:	b0 01                	mov    al,0x1
  89:	51                   	push   ecx
  8a:	0e                   	push   cs
  8b:	b4 01                	mov    ah,0x1
  8d:	45                   	inc    ebp
  8e:	0e                   	push   cs
  8f:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
  94:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  97:	c0 01 48             	rol    BYTE PTR [ecx],0x48
  9a:	0e                   	push   cs
  9b:	a0 01 48 0e a4       	mov    al,ds:0xa40e4801
  a0:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  a3:	a8 01                	test   al,0x1
  a5:	41                   	inc    ecx
  a6:	0e                   	push   cs
  a7:	ac                   	lods   al,BYTE PTR ds:[esi]
  a8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  ab:	b0 01                	mov    al,0x1
  ad:	50                   	push   eax
  ae:	0e                   	push   cs
  af:	b4 01                	mov    ah,0x1
  b1:	45                   	inc    ebp
  b2:	0e                   	push   cs
  b3:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
  b8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  bb:	c0 01 4a             	rol    BYTE PTR [ecx],0x4a
  be:	0e                   	push   cs
  bf:	a0 01 4b 0e a4       	mov    al,ds:0xa40e4b01
  c4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
  c7:	a8 01                	test   al,0x1
  c9:	41                   	inc    ecx
  ca:	0e                   	push   cs
  cb:	ac                   	lods   al,BYTE PTR ds:[esi]
  cc:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  cf:	b0 01                	mov    al,0x1
  d1:	48                   	dec    eax
  d2:	0e                   	push   cs
  d3:	a0 01 65 0e a4       	mov    al,ds:0xa40e6501
  d8:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  db:	a8 01                	test   al,0x1
  dd:	41                   	inc    ecx
  de:	0e                   	push   cs
  df:	ac                   	lods   al,BYTE PTR ds:[esi]
  e0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  e3:	b0 01                	mov    al,0x1
  e5:	48                   	dec    eax
  e6:	0e                   	push   cs
  e7:	a0 01 4c 0e a4       	mov    al,ds:0xa40e4c01
  ec:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
  ef:	a8 01                	test   al,0x1
  f1:	44                   	inc    esp
  f2:	0e                   	push   cs
  f3:	ac                   	lods   al,BYTE PTR ds:[esi]
  f4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
  f7:	b0 01                	mov    al,0x1
  f9:	48                   	dec    eax
  fa:	0e                   	push   cs
  fb:	a0 01 02 46 0e       	mov    al,ds:0xe460201
 100:	a8 01                	test   al,0x1
 102:	49                   	dec    ecx
 103:	0e                   	push   cs
 104:	ac                   	lods   al,BYTE PTR ds:[esi]
 105:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 108:	b0 01                	mov    al,0x1
 10a:	42                   	inc    edx
 10b:	0e                   	push   cs
 10c:	b4 01                	mov    ah,0x1
 10e:	42                   	inc    edx
 10f:	0e                   	push   cs
 110:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 115:	01 44 0e c0          	add    DWORD PTR [esi+ecx*1-0x40],eax
 119:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 11c:	a0 01 47 0e a4       	mov    al,ds:0xa40e4701
 121:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 124:	a8 01                	test   al,0x1
 126:	45                   	inc    ebp
 127:	0e                   	push   cs
 128:	ac                   	lods   al,BYTE PTR ds:[esi]
 129:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 12c:	b0 01                	mov    al,0x1
 12e:	48                   	dec    eax
 12f:	0e                   	push   cs
 130:	a0 01 64 0e a4       	mov    al,ds:0xa40e6401
 135:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
 138:	a8 01                	test   al,0x1
 13a:	47                   	inc    edi
 13b:	0e                   	push   cs
 13c:	ac                   	lods   al,BYTE PTR ds:[esi]
 13d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 140:	b0 01                	mov    al,0x1
 142:	50                   	push   eax
 143:	0e                   	push   cs
 144:	b4 01                	mov    ah,0x1
 146:	45                   	inc    ebp
 147:	0e                   	push   cs
 148:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 14d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 150:	c0 01 48             	rol    BYTE PTR [ecx],0x48
 153:	0e                   	push   cs
 154:	a0 01 4b 0e a4       	mov    al,ds:0xa40e4b01
 159:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 15c:	a8 01                	test   al,0x1
 15e:	41                   	inc    ecx
 15f:	0e                   	push   cs
 160:	ac                   	lods   al,BYTE PTR ds:[esi]
 161:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 164:	b0 01                	mov    al,0x1
 166:	50                   	push   eax
 167:	0e                   	push   cs
 168:	b4 01                	mov    ah,0x1
 16a:	45                   	inc    ebp
 16b:	0e                   	push   cs
 16c:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 171:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 174:	c0 01 02             	rol    BYTE PTR [ecx],0x2
 177:	80 0e a8             	or     BYTE PTR [esi],0xa8
 17a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 17d:	ac                   	lods   al,BYTE PTR ds:[esi]
 17e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 181:	b0 01                	mov    al,0x1
 183:	50                   	push   eax
 184:	0e                   	push   cs
 185:	b4 01                	mov    ah,0x1
 187:	41                   	inc    ecx
 188:	0e                   	push   cs
 189:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 18e:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 191:	c0 01 48             	rol    BYTE PTR [ecx],0x48
 194:	0e                   	push   cs
 195:	a0 01 51 0e a4       	mov    al,ds:0xa40e5101
 19a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 19d:	a8 01                	test   al,0x1
 19f:	41                   	inc    ecx
 1a0:	0e                   	push   cs
 1a1:	ac                   	lods   al,BYTE PTR ds:[esi]
 1a2:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1a5:	b0 01                	mov    al,0x1
 1a7:	02 52 0e             	add    dl,BYTE PTR [edx+0xe]
 1aa:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 1ab:	01 49 0e             	add    DWORD PTR [ecx+0xe],ecx
 1ae:	a8 01                	test   al,0x1
 1b0:	4c                   	dec    esp
 1b1:	0e                   	push   cs
 1b2:	ac                   	lods   al,BYTE PTR ds:[esi]
 1b3:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 1b7:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 1ba:	ac                   	lods   al,BYTE PTR ds:[esi]
 1bb:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1be:	a8 01                	test   al,0x1
 1c0:	41                   	inc    ecx
 1c1:	0e                   	push   cs
 1c2:	ac                   	lods   al,BYTE PTR ds:[esi]
 1c3:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1c6:	b0 01                	mov    al,0x1
 1c8:	46                   	inc    esi
 1c9:	0e                   	push   cs
 1ca:	ac                   	lods   al,BYTE PTR ds:[esi]
 1cb:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1ce:	a8 01                	test   al,0x1
 1d0:	45                   	inc    ebp
 1d1:	0e                   	push   cs
 1d2:	ac                   	lods   al,BYTE PTR ds:[esi]
 1d3:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1d6:	b0 01                	mov    al,0x1
 1d8:	48                   	dec    eax
 1d9:	0e                   	push   cs
 1da:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 1db:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 1de:	a8 01                	test   al,0x1
 1e0:	41                   	inc    ecx
 1e1:	0e                   	push   cs
 1e2:	ac                   	lods   al,BYTE PTR ds:[esi]
 1e3:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 1e6:	b0 01                	mov    al,0x1
 1e8:	46                   	inc    esi
 1e9:	0e                   	push   cs
 1ea:	ac                   	lods   al,BYTE PTR ds:[esi]
 1eb:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1ee:	a8 01                	test   al,0x1
 1f0:	41                   	inc    ecx
 1f1:	0e                   	push   cs
 1f2:	ac                   	lods   al,BYTE PTR ds:[esi]
 1f3:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1f6:	b0 01                	mov    al,0x1
 1f8:	46                   	inc    esi
 1f9:	0e                   	push   cs
 1fa:	ac                   	lods   al,BYTE PTR ds:[esi]
 1fb:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1fe:	a8 01                	test   al,0x1
 200:	45                   	inc    ebp
 201:	0e                   	push   cs
 202:	ac                   	lods   al,BYTE PTR ds:[esi]
 203:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 206:	b0 01                	mov    al,0x1
 208:	4a                   	dec    edx
 209:	0e                   	push   cs
 20a:	b4 01                	mov    ah,0x1
 20c:	41                   	inc    ecx
 20d:	0e                   	push   cs
 20e:	b8 01 41 0e bc       	mov    eax,0xbc0e4101
 213:	01 44 0e c0          	add    DWORD PTR [esi+ecx*1-0x40],eax
 217:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 21a:	a0 01 46 0e 14       	mov    al,ds:0x140e4601
 21f:	41                   	inc    ecx
 220:	c3                   	ret
 221:	0e                   	push   cs
 222:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 225:	0e                   	push   cs
 226:	0c 41                	or     al,0x41
 228:	c7                   	(bad)
 229:	0e                   	push   cs
 22a:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 22d:	0e                   	push   cs
 22e:	04 00                	add    al,0x0
 230:	34 00                	xor    al,0x0
 232:	00 00                	add    BYTE PTR [eax],al
 234:	34 02                	xor    al,0x2
 236:	00 00                	add    BYTE PTR [eax],al
 238:	f0 03 00             	lock add eax,DWORD PTR [eax]
 23b:	00 8d 00 00 00 00    	add    BYTE PTR [ebp+0x0],cl
 241:	41                   	inc    ecx
 242:	0e                   	push   cs
 243:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 249:	87 03                	xchg   DWORD PTR [ebx],eax
 24b:	41                   	inc    ecx
 24c:	0e                   	push   cs
 24d:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 253:	83 05 02 85 c3 0e 10 	add    DWORD PTR ds:0xec38502,0x10
 25a:	41                   	inc    ecx
 25b:	c6                   	(bad)
 25c:	0e                   	push   cs
 25d:	0c 41                	or     al,0x41
 25f:	c7                   	(bad)
 260:	0e                   	push   cs
 261:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 264:	0e                   	push   cs
 265:	04 00                	add    al,0x0
	...
