
fs.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fs_exists>:
   0:	56                   	push   esi
   1:	53                   	push   ebx
   2:	bb 20 00 08 00       	mov    ebx,0x80020
   7:	83 ec 04             	sub    esp,0x4
   a:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
   e:	eb 1b                	jmp    2b <fs_exists+0x2b>
  10:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  17:	00 
  18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  1f:	00 
  20:	83 c3 48             	add    ebx,0x48
  23:	81 fb 20 24 08 00    	cmp    ebx,0x82420
  29:	74 22                	je     4d <fs_exists+0x4d>
  2b:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
  2f:	74 ef                	je     20 <fs_exists+0x20>
  31:	83 ec 08             	sub    esp,0x8
  34:	56                   	push   esi
  35:	53                   	push   ebx
  36:	e8 fc ff ff ff       	call   37 <fs_exists+0x37>
  3b:	83 c4 10             	add    esp,0x10
  3e:	85 c0                	test   eax,eax
  40:	75 de                	jne    20 <fs_exists+0x20>
  42:	83 c4 04             	add    esp,0x4
  45:	b8 01 00 00 00       	mov    eax,0x1
  4a:	5b                   	pop    ebx
  4b:	5e                   	pop    esi
  4c:	c3                   	ret
  4d:	83 c4 04             	add    esp,0x4
  50:	31 c0                	xor    eax,eax
  52:	5b                   	pop    ebx
  53:	5e                   	pop    esi
  54:	c3                   	ret
  55:	8d 76 00             	lea    esi,[esi+0x0]
  58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  5f:	00 

00000060 <fs_size>:
  60:	57                   	push   edi
  61:	56                   	push   esi
  62:	31 f6                	xor    esi,esi
  64:	53                   	push   ebx
  65:	bb 20 00 08 00       	mov    ebx,0x80020
  6a:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  6e:	eb 1e                	jmp    8e <fs_size+0x2e>
  70:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  77:	00 
  78:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  7f:	00 
  80:	83 c6 01             	add    esi,0x1
  83:	83 c3 48             	add    ebx,0x48
  86:	81 fe 80 00 00 00    	cmp    esi,0x80
  8c:	74 25                	je     b3 <fs_size+0x53>
  8e:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
  92:	74 ec                	je     80 <fs_size+0x20>
  94:	83 ec 08             	sub    esp,0x8
  97:	57                   	push   edi
  98:	53                   	push   ebx
  99:	e8 fc ff ff ff       	call   9a <fs_size+0x3a>
  9e:	83 c4 10             	add    esp,0x10
  a1:	85 c0                	test   eax,eax
  a3:	75 db                	jne    80 <fs_size+0x20>
  a5:	8d 04 f6             	lea    eax,[esi+esi*8]
  a8:	5b                   	pop    ebx
  a9:	5e                   	pop    esi
  aa:	8b 04 c5 60 00 08 00 	mov    eax,DWORD PTR [eax*8+0x80060]
  b1:	5f                   	pop    edi
  b2:	c3                   	ret
  b3:	5b                   	pop    ebx
  b4:	31 c0                	xor    eax,eax
  b6:	5e                   	pop    esi
  b7:	5f                   	pop    edi
  b8:	c3                   	ret
  b9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000000c0 <fs_mkdir>:
  c0:	57                   	push   edi
  c1:	56                   	push   esi
  c2:	31 f6                	xor    esi,esi
  c4:	53                   	push   ebx
  c5:	bb 20 00 08 00       	mov    ebx,0x80020
  ca:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  ce:	eb 1e                	jmp    ee <fs_mkdir+0x2e>
  d0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  d7:	00 
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 
  e0:	83 c6 01             	add    esi,0x1
  e3:	83 c3 48             	add    ebx,0x48
  e6:	81 fe 80 00 00 00    	cmp    esi,0x80
  ec:	74 20                	je     10e <fs_mkdir+0x4e>
  ee:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
  f2:	74 ec                	je     e0 <fs_mkdir+0x20>
  f4:	83 ec 08             	sub    esp,0x8
  f7:	57                   	push   edi
  f8:	53                   	push   ebx
  f9:	e8 fc ff ff ff       	call   fa <fs_mkdir+0x3a>
  fe:	83 c4 10             	add    esp,0x10
 101:	85 c0                	test   eax,eax
 103:	75 db                	jne    e0 <fs_mkdir+0x20>
 105:	5b                   	pop    ebx
 106:	b8 ff ff ff ff       	mov    eax,0xffffffff
 10b:	5e                   	pop    esi
 10c:	5f                   	pop    edi
 10d:	c3                   	ret
 10e:	ba 65 00 08 00       	mov    edx,0x80065
 113:	31 c0                	xor    eax,eax
 115:	eb 16                	jmp    12d <fs_mkdir+0x6d>
 117:	90                   	nop
 118:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 11f:	00 
 120:	83 c0 01             	add    eax,0x1
 123:	83 c2 48             	add    edx,0x48
 126:	3d 80 00 00 00       	cmp    eax,0x80
 12b:	74 d8                	je     105 <fs_mkdir+0x45>
 12d:	80 3a 00             	cmp    BYTE PTR [edx],0x0
 130:	75 ee                	jne    120 <fs_mkdir+0x60>
 132:	8d 34 c0             	lea    esi,[eax+eax*8]
 135:	83 ec 04             	sub    esp,0x4
 138:	8d 1c f5 20 00 08 00 	lea    ebx,[esi*8+0x80020]
 13f:	6a 3b                	push   0x3b
 141:	57                   	push   edi
 142:	53                   	push   ebx
 143:	e8 fc ff ff ff       	call   144 <fs_mkdir+0x84>
 148:	83 c4 10             	add    esp,0x10
 14b:	b8 01 01 00 00       	mov    eax,0x101
 150:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
 157:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
 15e:	66 89 04 f5 64 00 08 	mov    WORD PTR [esi*8+0x80064],ax
 165:	00 
 166:	31 c0                	xor    eax,eax
 168:	5b                   	pop    ebx
 169:	5e                   	pop    esi
 16a:	5f                   	pop    edi
 16b:	c3                   	ret
 16c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000170 <fs_write>:
 170:	55                   	push   ebp
 171:	31 ed                	xor    ebp,ebp
 173:	57                   	push   edi
 174:	56                   	push   esi
 175:	53                   	push   ebx
 176:	bb 20 00 08 00       	mov    ebx,0x80020
 17b:	83 ec 1c             	sub    esp,0x1c
 17e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 182:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 186:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
 18a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 18e:	eb 22                	jmp    1b2 <fs_write+0x42>
 190:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 197:	00 
 198:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 19f:	00 
 1a0:	83 c5 01             	add    ebp,0x1
 1a3:	83 c3 48             	add    ebx,0x48
 1a6:	81 fd 80 00 00 00    	cmp    ebp,0x80
 1ac:	0f 84 88 00 00 00    	je     23a <fs_write+0xca>
 1b2:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
 1b6:	74 e8                	je     1a0 <fs_write+0x30>
 1b8:	83 ec 08             	sub    esp,0x8
 1bb:	56                   	push   esi
 1bc:	53                   	push   ebx
 1bd:	e8 fc ff ff ff       	call   1be <fs_write+0x4e>
 1c2:	83 c4 10             	add    esp,0x10
 1c5:	89 c1                	mov    ecx,eax
 1c7:	85 c0                	test   eax,eax
 1c9:	75 d5                	jne    1a0 <fs_write+0x30>
 1cb:	8d 44 ed 00          	lea    eax,[ebp+ebp*8+0x0]
 1cf:	80 3c c5 64 00 08 00 	cmp    BYTE PTR [eax*8+0x80064],0x0
 1d6:	00 
 1d7:	75 7a                	jne    253 <fs_write+0xe3>
 1d9:	8b 15 00 00 00 00    	mov    edx,DWORD PTR ds:0x0
 1df:	8d 1c 3a             	lea    ebx,[edx+edi*1]
 1e2:	81 fb 00 00 08 00    	cmp    ebx,0x80000
 1e8:	77 69                	ja     253 <fs_write+0xe3>
 1ea:	89 14 c5 5c 00 08 00 	mov    DWORD PTR [eax*8+0x8005c],edx
 1f1:	89 3c c5 60 00 08 00 	mov    DWORD PTR [eax*8+0x80060],edi
 1f8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 1fc:	85 c0                	test   eax,eax
 1fe:	74 04                	je     204 <fs_write+0x94>
 200:	85 ff                	test   edi,edi
 202:	75 10                	jne    214 <fs_write+0xa4>
 204:	89 1d 00 00 00 00    	mov    DWORD PTR ds:0x0,ebx
 20a:	83 c4 1c             	add    esp,0x1c
 20d:	89 c8                	mov    eax,ecx
 20f:	5b                   	pop    ebx
 210:	5e                   	pop    esi
 211:	5f                   	pop    edi
 212:	5d                   	pop    ebp
 213:	c3                   	ret
 214:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 218:	81 c2 20 00 00 00    	add    edx,0x20
 21e:	83 ec 04             	sub    esp,0x4
 221:	57                   	push   edi
 222:	50                   	push   eax
 223:	52                   	push   edx
 224:	e8 fc ff ff ff       	call   225 <fs_write+0xb5>
 229:	03 3d 00 00 00 00    	add    edi,DWORD PTR ds:0x0
 22f:	83 c4 10             	add    esp,0x10
 232:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
 236:	89 fb                	mov    ebx,edi
 238:	eb ca                	jmp    204 <fs_write+0x94>
 23a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 23e:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
 242:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
 246:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
 24a:	83 c4 1c             	add    esp,0x1c
 24d:	5b                   	pop    ebx
 24e:	5e                   	pop    esi
 24f:	5f                   	pop    edi
 250:	5d                   	pop    ebp
 251:	eb 0d                	jmp    260 <fs_create>
 253:	b9 ff ff ff ff       	mov    ecx,0xffffffff
 258:	eb b0                	jmp    20a <fs_write+0x9a>
 25a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000260 <fs_create>:
 260:	55                   	push   ebp
 261:	31 ed                	xor    ebp,ebp
 263:	57                   	push   edi
 264:	56                   	push   esi
 265:	53                   	push   ebx
 266:	bb 20 00 08 00       	mov    ebx,0x80020
 26b:	83 ec 1c             	sub    esp,0x1c
 26e:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 272:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 276:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
 27a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 27e:	eb 0e                	jmp    28e <fs_create+0x2e>
 280:	83 c5 01             	add    ebp,0x1
 283:	83 c3 48             	add    ebx,0x48
 286:	81 fd 80 00 00 00    	cmp    ebp,0x80
 28c:	74 33                	je     2c1 <fs_create+0x61>
 28e:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
 292:	74 ec                	je     280 <fs_create+0x20>
 294:	83 ec 08             	sub    esp,0x8
 297:	56                   	push   esi
 298:	53                   	push   ebx
 299:	e8 fc ff ff ff       	call   29a <fs_create+0x3a>
 29e:	83 c4 10             	add    esp,0x10
 2a1:	85 c0                	test   eax,eax
 2a3:	75 db                	jne    280 <fs_create+0x20>
 2a5:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 2a9:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
 2ad:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
 2b1:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
 2b5:	83 c4 1c             	add    esp,0x1c
 2b8:	5b                   	pop    ebx
 2b9:	5e                   	pop    esi
 2ba:	5f                   	pop    edi
 2bb:	5d                   	pop    ebp
 2bc:	e9 af fe ff ff       	jmp    170 <fs_write>
 2c1:	a1 00 00 00 00       	mov    eax,ds:0x0
 2c6:	01 f8                	add    eax,edi
 2c8:	3d 00 00 08 00       	cmp    eax,0x80000
 2cd:	0f 87 87 00 00 00    	ja     35a <fs_create+0xfa>
 2d3:	ba 65 00 08 00       	mov    edx,0x80065
 2d8:	31 c0                	xor    eax,eax
 2da:	eb 11                	jmp    2ed <fs_create+0x8d>
 2dc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 2e0:	83 c0 01             	add    eax,0x1
 2e3:	83 c2 48             	add    edx,0x48
 2e6:	3d 80 00 00 00       	cmp    eax,0x80
 2eb:	74 6d                	je     35a <fs_create+0xfa>
 2ed:	80 3a 00             	cmp    BYTE PTR [edx],0x0
 2f0:	75 ee                	jne    2e0 <fs_create+0x80>
 2f2:	83 ec 04             	sub    esp,0x4
 2f5:	6a 3b                	push   0x3b
 2f7:	56                   	push   esi
 2f8:	8d 34 c0             	lea    esi,[eax+eax*8]
 2fb:	8d 1c f5 20 00 08 00 	lea    ebx,[esi*8+0x80020]
 302:	53                   	push   ebx
 303:	e8 fc ff ff ff       	call   304 <fs_create+0xa4>
 308:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
 30c:	89 7b 40             	mov    DWORD PTR [ebx+0x40],edi
 30f:	83 c4 10             	add    esp,0x10
 312:	a1 00 00 00 00       	mov    eax,ds:0x0
 317:	ba 00 01 00 00       	mov    edx,0x100
 31c:	89 43 3c             	mov    DWORD PTR [ebx+0x3c],eax
 31f:	66 89 14 f5 64 00 08 	mov    WORD PTR [esi*8+0x80064],dx
 326:	00 
 327:	85 c9                	test   ecx,ecx
 329:	74 04                	je     32f <fs_create+0xcf>
 32b:	85 ff                	test   edi,edi
 32d:	75 11                	jne    340 <fs_create+0xe0>
 32f:	01 f8                	add    eax,edi
 331:	a3 00 00 00 00       	mov    ds:0x0,eax
 336:	83 c4 1c             	add    esp,0x1c
 339:	31 c0                	xor    eax,eax
 33b:	5b                   	pop    ebx
 33c:	5e                   	pop    esi
 33d:	5f                   	pop    edi
 33e:	5d                   	pop    ebp
 33f:	c3                   	ret
 340:	83 ec 04             	sub    esp,0x4
 343:	05 20 00 00 00       	add    eax,0x20
 348:	57                   	push   edi
 349:	51                   	push   ecx
 34a:	50                   	push   eax
 34b:	e8 fc ff ff ff       	call   34c <fs_create+0xec>
 350:	a1 00 00 00 00       	mov    eax,ds:0x0
 355:	83 c4 10             	add    esp,0x10
 358:	eb d5                	jmp    32f <fs_create+0xcf>
 35a:	83 c4 1c             	add    esp,0x1c
 35d:	b8 ff ff ff ff       	mov    eax,0xffffffff
 362:	5b                   	pop    ebx
 363:	5e                   	pop    esi
 364:	5f                   	pop    edi
 365:	5d                   	pop    ebp
 366:	c3                   	ret
 367:	90                   	nop
 368:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 36f:	00 

00000370 <fs_init>:
 370:	83 ec 10             	sub    esp,0x10
 373:	68 00 24 00 00       	push   0x2400
 378:	6a 00                	push   0x0
 37a:	68 20 00 08 00       	push   0x80020
 37f:	e8 fc ff ff ff       	call   380 <fs_init+0x10>
 384:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 38b:	c7 05 00 00 00 00 00 	mov    DWORD PTR ds:0x0,0x0
 392:	00 00 00 
 395:	e8 fc ff ff ff       	call   396 <fs_init+0x26>
 39a:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
 3a1:	e8 fc ff ff ff       	call   3a2 <fs_init+0x32>
 3a6:	c7 04 24 11 00 00 00 	mov    DWORD PTR [esp],0x11
 3ad:	e8 fc ff ff ff       	call   3ae <fs_init+0x3e>
 3b2:	c7 04 24 16 00 00 00 	mov    DWORD PTR [esp],0x16
 3b9:	e8 fc ff ff ff       	call   3ba <fs_init+0x4a>
 3be:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 3c5:	e8 fc ff ff ff       	call   3c6 <fs_init+0x56>
 3ca:	83 c4 0c             	add    esp,0xc
 3cd:	50                   	push   eax
 3ce:	68 00 00 00 00       	push   0x0
 3d3:	68 1b 00 00 00       	push   0x1b
 3d8:	e8 fc ff ff ff       	call   3d9 <fs_init+0x69>
 3dd:	c7 04 24 25 00 00 00 	mov    DWORD PTR [esp],0x25
 3e4:	e8 fc ff ff ff       	call   3e5 <fs_init+0x75>
 3e9:	83 c4 0c             	add    esp,0xc
 3ec:	50                   	push   eax
 3ed:	68 25 00 00 00       	push   0x25
 3f2:	68 2c 00 00 00       	push   0x2c
 3f7:	e8 fc ff ff ff       	call   3f8 <fs_init+0x88>
 3fc:	c7 04 24 38 00 00 00 	mov    DWORD PTR [esp],0x38
 403:	e8 fc ff ff ff       	call   404 <fs_init+0x94>
 408:	83 c4 0c             	add    esp,0xc
 40b:	50                   	push   eax
 40c:	68 38 00 00 00       	push   0x38
 411:	68 3a 00 00 00       	push   0x3a
 416:	e8 fc ff ff ff       	call   417 <fs_init+0xa7>
 41b:	c7 04 24 78 00 00 00 	mov    DWORD PTR [esp],0x78
 422:	e8 fc ff ff ff       	call   423 <fs_init+0xb3>
 427:	83 c4 0c             	add    esp,0xc
 42a:	50                   	push   eax
 42b:	68 78 00 00 00       	push   0x78
 430:	68 4b 00 00 00       	push   0x4b
 435:	e8 fc ff ff ff       	call   436 <fs_init+0xc6>
 43a:	c7 04 24 1c 01 00 00 	mov    DWORD PTR [esp],0x11c
 441:	e8 fc ff ff ff       	call   442 <fs_init+0xd2>
 446:	83 c4 0c             	add    esp,0xc
 449:	50                   	push   eax
 44a:	68 1c 01 00 00       	push   0x11c
 44f:	68 61 00 00 00       	push   0x61
 454:	e8 fc ff ff ff       	call   455 <fs_init+0xe5>
 459:	83 c4 1c             	add    esp,0x1c
 45c:	c3                   	ret
 45d:	8d 76 00             	lea    esi,[esi+0x0]

00000460 <fs_read>:
 460:	57                   	push   edi
 461:	56                   	push   esi
 462:	31 f6                	xor    esi,esi
 464:	53                   	push   ebx
 465:	bb 20 00 08 00       	mov    ebx,0x80020
 46a:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
 46e:	eb 1e                	jmp    48e <fs_read+0x2e>
 470:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 477:	00 
 478:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 47f:	00 
 480:	83 c6 01             	add    esi,0x1
 483:	83 c3 48             	add    ebx,0x48
 486:	81 fe 80 00 00 00    	cmp    esi,0x80
 48c:	74 52                	je     4e0 <fs_read+0x80>
 48e:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
 492:	74 ec                	je     480 <fs_read+0x20>
 494:	83 ec 08             	sub    esp,0x8
 497:	57                   	push   edi
 498:	53                   	push   ebx
 499:	e8 fc ff ff ff       	call   49a <fs_read+0x3a>
 49e:	83 c4 10             	add    esp,0x10
 4a1:	85 c0                	test   eax,eax
 4a3:	75 db                	jne    480 <fs_read+0x20>
 4a5:	8d 04 f6             	lea    eax,[esi+esi*8]
 4a8:	8d 04 c5 20 00 08 00 	lea    eax,[eax*8+0x80020]
 4af:	80 78 44 00          	cmp    BYTE PTR [eax+0x44],0x0
 4b3:	75 2b                	jne    4e0 <fs_read+0x80>
 4b5:	8b 58 40             	mov    ebx,DWORD PTR [eax+0x40]
 4b8:	39 5c 24 18          	cmp    DWORD PTR [esp+0x18],ebx
 4bc:	0f 46 5c 24 18       	cmovbe ebx,DWORD PTR [esp+0x18]
 4c1:	83 ec 04             	sub    esp,0x4
 4c4:	53                   	push   ebx
 4c5:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
 4c8:	05 20 00 00 00       	add    eax,0x20
 4cd:	50                   	push   eax
 4ce:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
 4d2:	e8 fc ff ff ff       	call   4d3 <fs_read+0x73>
 4d7:	89 d8                	mov    eax,ebx
 4d9:	83 c4 10             	add    esp,0x10
 4dc:	5b                   	pop    ebx
 4dd:	5e                   	pop    esi
 4de:	5f                   	pop    edi
 4df:	c3                   	ret
 4e0:	b8 ff ff ff ff       	mov    eax,0xffffffff
 4e5:	eb f5                	jmp    4dc <fs_read+0x7c>
 4e7:	90                   	nop
 4e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 4ef:	00 

000004f0 <fs_delete>:
 4f0:	57                   	push   edi
 4f1:	56                   	push   esi
 4f2:	31 f6                	xor    esi,esi
 4f4:	53                   	push   ebx
 4f5:	bb 20 00 08 00       	mov    ebx,0x80020
 4fa:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
 4fe:	eb 0e                	jmp    50e <fs_delete+0x1e>
 500:	83 c6 01             	add    esi,0x1
 503:	83 c3 48             	add    ebx,0x48
 506:	81 fe 80 00 00 00    	cmp    esi,0x80
 50c:	74 26                	je     534 <fs_delete+0x44>
 50e:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
 512:	74 ec                	je     500 <fs_delete+0x10>
 514:	83 ec 08             	sub    esp,0x8
 517:	57                   	push   edi
 518:	53                   	push   ebx
 519:	e8 fc ff ff ff       	call   51a <fs_delete+0x2a>
 51e:	83 c4 10             	add    esp,0x10
 521:	85 c0                	test   eax,eax
 523:	75 db                	jne    500 <fs_delete+0x10>
 525:	8d 14 f6             	lea    edx,[esi+esi*8]
 528:	c6 04 d5 65 00 08 00 	mov    BYTE PTR [edx*8+0x80065],0x0
 52f:	00 
 530:	5b                   	pop    ebx
 531:	5e                   	pop    esi
 532:	5f                   	pop    edi
 533:	c3                   	ret
 534:	5b                   	pop    ebx
 535:	b8 ff ff ff ff       	mov    eax,0xffffffff
 53a:	5e                   	pop    esi
 53b:	5f                   	pop    edi
 53c:	c3                   	ret
 53d:	8d 76 00             	lea    esi,[esi+0x0]

00000540 <fs_list>:
 540:	55                   	push   ebp
 541:	57                   	push   edi
 542:	56                   	push   esi
 543:	53                   	push   ebx
 544:	83 ec 28             	sub    esp,0x28
 547:	ff 74 24 3c          	push   DWORD PTR [esp+0x3c]
 54b:	e8 fc ff ff ff       	call   54c <fs_list+0xc>
 550:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
 554:	83 c4 10             	add    esp,0x10
 557:	85 d2                	test   edx,edx
 559:	0f 8e cb 00 00 00    	jle    62a <fs_list+0xea>
 55f:	89 c6                	mov    esi,eax
 561:	bb 20 00 08 00       	mov    ebx,0x80020
 566:	31 ff                	xor    edi,edi
 568:	31 ed                	xor    ebp,ebp
 56a:	eb 20                	jmp    58c <fs_list+0x4c>
 56c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 570:	83 c5 01             	add    ebp,0x1
 573:	83 c3 48             	add    ebx,0x48
 576:	81 fd 80 00 00 00    	cmp    ebp,0x80
 57c:	0f 84 9c 00 00 00    	je     61e <fs_list+0xde>
 582:	3b 7c 24 38          	cmp    edi,DWORD PTR [esp+0x38]
 586:	0f 8d 92 00 00 00    	jge    61e <fs_list+0xde>
 58c:	80 7b 45 00          	cmp    BYTE PTR [ebx+0x45],0x0
 590:	74 de                	je     570 <fs_list+0x30>
 592:	83 ec 04             	sub    esp,0x4
 595:	56                   	push   esi
 596:	ff 74 24 38          	push   DWORD PTR [esp+0x38]
 59a:	53                   	push   ebx
 59b:	e8 fc ff ff ff       	call   59c <fs_list+0x5c>
 5a0:	83 c4 10             	add    esp,0x10
 5a3:	85 c0                	test   eax,eax
 5a5:	75 c9                	jne    570 <fs_list+0x30>
 5a7:	0f b6 0c 33          	movzx  ecx,BYTE PTR [ebx+esi*1]
 5ab:	84 c9                	test   cl,cl
 5ad:	74 c1                	je     570 <fs_list+0x30>
 5af:	8d 44 1e 01          	lea    eax,[esi+ebx*1+0x1]
 5b3:	eb 15                	jmp    5ca <fs_list+0x8a>
 5b5:	8d 76 00             	lea    esi,[esi+0x0]
 5b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 5bf:	00 
 5c0:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
 5c3:	83 c0 01             	add    eax,0x1
 5c6:	84 c9                	test   cl,cl
 5c8:	74 14                	je     5de <fs_list+0x9e>
 5ca:	80 f9 2f             	cmp    cl,0x2f
 5cd:	75 f1                	jne    5c0 <fs_list+0x80>
 5cf:	80 38 00             	cmp    BYTE PTR [eax],0x0
 5d2:	75 9c                	jne    570 <fs_list+0x30>
 5d4:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
 5d7:	83 c0 01             	add    eax,0x1
 5da:	84 c9                	test   cl,cl
 5dc:	75 ec                	jne    5ca <fs_list+0x8a>
 5de:	83 ec 04             	sub    esp,0x4
 5e1:	6b cf 44             	imul   ecx,edi,0x44
 5e4:	03 4c 24 38          	add    ecx,DWORD PTR [esp+0x38]
 5e8:	83 c5 01             	add    ebp,0x1
 5eb:	6a 3b                	push   0x3b
 5ed:	83 c7 01             	add    edi,0x1
 5f0:	53                   	push   ebx
 5f1:	83 c3 48             	add    ebx,0x48
 5f4:	51                   	push   ecx
 5f5:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
 5f9:	e8 fc ff ff ff       	call   5fa <fs_list+0xba>
 5fe:	8b 43 f8             	mov    eax,DWORD PTR [ebx-0x8]
 601:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
 605:	83 c4 10             	add    esp,0x10
 608:	89 41 3c             	mov    DWORD PTR [ecx+0x3c],eax
 60b:	0f b6 43 fc          	movzx  eax,BYTE PTR [ebx-0x4]
 60f:	88 41 40             	mov    BYTE PTR [ecx+0x40],al
 612:	81 fd 80 00 00 00    	cmp    ebp,0x80
 618:	0f 85 64 ff ff ff    	jne    582 <fs_list+0x42>
 61e:	83 c4 1c             	add    esp,0x1c
 621:	89 fd                	mov    ebp,edi
 623:	5b                   	pop    ebx
 624:	89 e8                	mov    eax,ebp
 626:	5e                   	pop    esi
 627:	5f                   	pop    edi
 628:	5d                   	pop    ebp
 629:	c3                   	ret
 62a:	83 c4 1c             	add    esp,0x1c
 62d:	31 ed                	xor    ebp,ebp
 62f:	5b                   	pop    ebx
 630:	89 e8                	mov    eax,ebp
 632:	5e                   	pop    esi
 633:	5f                   	pop    edi
 634:	5d                   	pop    ebp
 635:	c3                   	ret

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	2f                   	das
   1:	68 6f 6d 65 00       	push   0x656d6f
   6:	2f                   	das
   7:	68 6f 6d 65 2f       	push   0x2f656d6f
   c:	75 73                	jne    81 <fs_size+0x21>
   e:	65 72 00             	gs jb  11 <.rodata.str1.1+0x11>
  11:	2f                   	das
  12:	65 74 63             	gs je  78 <fs_size+0x18>
  15:	00 2f                	add    BYTE PTR [edi],ch
  17:	76 61                	jbe    7a <fs_size+0x1a>
  19:	72 00                	jb     1b <.rodata.str1.1+0x1b>
  1b:	2f                   	das
  1c:	65 74 63             	gs je  82 <fs_size+0x22>
  1f:	2f                   	das
  20:	6d                   	ins    DWORD PTR es:[edi],dx
  21:	6f                   	outs   dx,DWORD PTR ds:[esi]
  22:	74 64                	je     88 <fs_size+0x28>
  24:	00 73 6c             	add    BYTE PTR [ebx+0x6c],dh
  27:	6f                   	outs   dx,DWORD PTR ds:[esi]
  28:	70 6f                	jo     99 <fs_size+0x39>
  2a:	73 00                	jae    2c <.rodata.str1.1+0x2c>
  2c:	2f                   	das
  2d:	65 74 63             	gs je  93 <fs_size+0x33>
  30:	2f                   	das
  31:	68 6f 73 74 6e       	push   0x6e74736f
  36:	61                   	popa
  37:	6d                   	ins    DWORD PTR es:[edi],dx
  38:	65 00 2f             	add    BYTE PTR gs:[edi],ch
  3b:	65 74 63             	gs je  a1 <fs_size+0x41>
  3e:	2f                   	das
  3f:	73 6c                	jae    ad <fs_size+0x4d>
  41:	6f                   	outs   dx,DWORD PTR ds:[esi]
  42:	70 6f                	jo     b3 <fs_size+0x53>
  44:	73 2e                	jae    74 <.rodata.str1.1+0x74>
  46:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
  49:	66 00 2f             	data16 add BYTE PTR [edi],ch
  4c:	68 6f 6d 65 2f       	push   0x2f656d6f
  51:	75 73                	jne    c6 <fs_mkdir+0x6>
  53:	65 72 2f             	gs jb  85 <fs_size+0x25>
  56:	72 65                	jb     bd <fs_size+0x5d>
  58:	61                   	popa
  59:	64 6d                	fs ins DWORD PTR es:[edi],dx
  5b:	65 2e 74 78          	gs cs je d7 <fs_mkdir+0x17>
  5f:	74 00                	je     61 <.rodata.str1.1+0x61>
  61:	2f                   	das
  62:	68 6f 6d 65 2f       	push   0x2f656d6f
  67:	75 73                	jne    dc <fs_mkdir+0x1c>
  69:	65 72 2f             	gs jb  9b <fs_size+0x3b>
  6c:	6e                   	outs   dx,BYTE PTR ds:[esi]
  6d:	6f                   	outs   dx,DWORD PTR ds:[esi]
  6e:	74 65                	je     d5 <fs_mkdir+0x15>
  70:	73 2e                	jae    a0 <fs_size+0x40>
  72:	74 78                	je     ec <fs_mkdir+0x2c>
  74:	74 00                	je     76 <fs_size+0x16>

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	57                   	push   edi
   1:	65 6c                	gs ins BYTE PTR es:[edi],dx
   3:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
   6:	65 20 74 6f 20       	and    BYTE PTR gs:[edi+ebp*2+0x20],dh
   b:	53                   	push   ebx
   c:	6c                   	ins    BYTE PTR es:[edi],dx
   d:	6f                   	outs   dx,DWORD PTR ds:[esi]
   e:	70 4f                	jo     5f <.rodata.str1.4+0x5f>
  10:	53                   	push   ebx
  11:	20 30                	and    BYTE PTR [eax],dh
  13:	2e 33 0a             	xor    ecx,DWORD PTR cs:[edx]
  16:	59                   	pop    ecx
  17:	6f                   	outs   dx,DWORD PTR ds:[esi]
  18:	75 72                	jne    8c <.rodata.str1.4+0x8c>
  1a:	20 66 69             	and    BYTE PTR [esi+0x69],ah
  1d:	6c                   	ins    BYTE PTR es:[edi],dx
  1e:	65 73 20             	gs jae 41 <.rodata.str1.4+0x41>
  21:	61                   	popa
  22:	72 65                	jb     89 <.rodata.str1.4+0x89>
  24:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
  27:	6f                   	outs   dx,DWORD PTR ds:[esi]
  28:	72 65                	jb     8f <.rodata.str1.4+0x8f>
  2a:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
  2e:	20 52 41             	and    BYTE PTR [edx+0x41],dl
  31:	4d                   	dec    ebp
  32:	2e 0a 00             	or     al,BYTE PTR cs:[eax]
  35:	00 00                	add    BYTE PTR [eax],al
  37:	00 74 68 65          	add    BYTE PTR [eax+ebp*2+0x65],dh
  3b:	6d                   	ins    DWORD PTR es:[edi],dx
  3c:	65 3d 63 61 74 70    	gs cmp eax,0x70746163
  42:	70 75                	jo     b9 <.rodata.str1.4+0xb9>
  44:	63 63 69             	arpl   WORD PTR [ebx+0x69],esp
  47:	6e                   	outs   dx,BYTE PTR ds:[esi]
  48:	2d 6d 6f 63 68       	sub    eax,0x68636f6d
  4d:	61                   	popa
  4e:	0a 72 65             	or     dh,BYTE PTR [edx+0x65]
  51:	73 6f                	jae    c2 <.rodata.str1.4+0xc2>
  53:	6c                   	ins    BYTE PTR es:[edi],dx
  54:	75 74                	jne    ca <.rodata.str1.4+0xca>
  56:	69 6f 6e 3d 31 30 32 	imul   ebp,DWORD PTR [edi+0x6e],0x3230313d
  5d:	34 78                	xor    al,0x78
  5f:	37                   	aaa
  60:	36 38 0a             	cmp    BYTE PTR ss:[edx],cl
  63:	77 61                	ja     c6 <.rodata.str1.4+0xc6>
  65:	6c                   	ins    BYTE PTR es:[edi],dx
  66:	6c                   	ins    BYTE PTR es:[edi],dx
  67:	70 61                	jo     ca <.rodata.str1.4+0xca>
  69:	70 65                	jo     d0 <.rodata.str1.4+0xd0>
  6b:	72 3d                	jb     aa <.rodata.str1.4+0xaa>
  6d:	67 72 61             	addr16 jb d1 <.rodata.str1.4+0xd1>
  70:	64 69 65 6e 74 0a 00 	imul   esp,DWORD PTR fs:[ebp+0x6e],0xa74
  77:	00 
  78:	53                   	push   ebx
  79:	6c                   	ins    BYTE PTR es:[edi],dx
  7a:	6f                   	outs   dx,DWORD PTR ds:[esi]
  7b:	70 4f                	jo     cc <.rodata.str1.4+0xcc>
  7d:	53                   	push   ebx
  7e:	20 46 69             	and    BYTE PTR [esi+0x69],al
  81:	6c                   	ins    BYTE PTR es:[edi],dx
  82:	65 73 79             	gs jae fe <.rodata.str1.4+0xfe>
  85:	73 74                	jae    fb <.rodata.str1.4+0xfb>
  87:	65 6d                	gs ins DWORD PTR es:[edi],dx
  89:	0a 3d 3d 3d 3d 3d    	or     bh,BYTE PTR ds:0x3d3d3d3d
  8f:	3d 3d 3d 3d 3d       	cmp    eax,0x3d3d3d3d
  94:	3d 3d 3d 3d 3d       	cmp    eax,0x3d3d3d3d
  99:	3d 3d 3d 0a 54       	cmp    eax,0x540a3d3d
  9e:	68 69 73 20 69       	push   0x69207369
  a3:	73 20                	jae    c5 <.rodata.str1.4+0xc5>
  a5:	61                   	popa
  a6:	20 52 41             	and    BYTE PTR [edx+0x41],dl
  a9:	4d                   	dec    ebp
  aa:	2d 62 61 73 65       	sub    eax,0x65736162
  af:	64 20 66 69          	and    BYTE PTR fs:[esi+0x69],ah
  b3:	6c                   	ins    BYTE PTR es:[edi],dx
  b4:	65 73 79             	gs jae 130 <.rodata.str1.4+0x130>
  b7:	73 74                	jae    12d <.rodata.str1.4+0x12d>
  b9:	65 6d                	gs ins DWORD PTR es:[edi],dx
  bb:	2e 0a 46 69          	or     al,BYTE PTR cs:[esi+0x69]
  bf:	6c                   	ins    BYTE PTR es:[edi],dx
  c0:	65 73 20             	gs jae e3 <.rodata.str1.4+0xe3>
  c3:	70 65                	jo     12a <.rodata.str1.4+0x12a>
  c5:	72 73                	jb     13a <.rodata.str1.4+0x13a>
  c7:	69 73 74 20 77 68 69 	imul   esi,DWORD PTR [ebx+0x74],0x69687720
  ce:	6c                   	ins    BYTE PTR es:[edi],dx
  cf:	65 20 74 68 65       	and    BYTE PTR gs:[eax+ebp*2+0x65],dh
  d4:	20 73 79             	and    BYTE PTR [ebx+0x79],dh
  d7:	73 74                	jae    14d <.rodata.str1.4+0x14d>
  d9:	65 6d                	gs ins DWORD PTR es:[edi],dx
  db:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
  de:	20 72 75             	and    BYTE PTR [edx+0x75],dh
  e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
  e2:	6e                   	outs   dx,BYTE PTR ds:[esi]
  e3:	69 6e 67 2e 0a 55 73 	imul   ebp,DWORD PTR [esi+0x67],0x73550a2e
  ea:	65 20 74 68 65       	and    BYTE PTR gs:[eax+ebp*2+0x65],dh
  ef:	20 46 69             	and    BYTE PTR [esi+0x69],al
  f2:	6c                   	ins    BYTE PTR es:[edi],dx
  f3:	65 20 4d 61          	and    BYTE PTR gs:[ebp+0x61],cl
  f7:	6e                   	outs   dx,BYTE PTR ds:[esi]
  f8:	61                   	popa
  f9:	67 65 72 20          	addr16 gs jb 11d <.rodata.str1.4+0x11d>
  fd:	6f                   	outs   dx,DWORD PTR ds:[esi]
  fe:	72 20                	jb     120 <.rodata.str1.4+0x120>
 100:	74 65                	je     167 <fs_mkdir+0xa7>
 102:	72 6d                	jb     171 <fs_write+0x1>
 104:	69 6e 61 6c 20 74 6f 	imul   ebp,DWORD PTR [esi+0x61],0x6f74206c
 10b:	20 63 72             	and    BYTE PTR [ebx+0x72],ah
 10e:	65 61                	gs popa
 110:	74 65                	je     177 <fs_write+0x7>
 112:	20 66 69             	and    BYTE PTR [esi+0x69],ah
 115:	6c                   	ins    BYTE PTR es:[edi],dx
 116:	65 73 2e             	gs jae 147 <.rodata.str1.4+0x147>
 119:	0a 00                	or     al,BYTE PTR [eax]
 11b:	00 53 68             	add    BYTE PTR [ebx+0x68],dl
 11e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 11f:	70 70                	jo     191 <fs_write+0x21>
 121:	69 6e 67 20 6c 69 73 	imul   ebp,DWORD PTR [esi+0x67],0x73696c20
 128:	74 3a                	je     164 <fs_mkdir+0xa4>
 12a:	0a 2d 20 4d 6f 72    	or     ch,BYTE PTR ds:0x726f4d20
 130:	65 20 52 41          	and    BYTE PTR gs:[edx+0x41],dl
 134:	4d                   	dec    ebp
 135:	0a 2d 20 41 20 72    	or     ch,BYTE PTR ds:0x72204120
 13b:	65 61                	gs popa
 13d:	6c                   	ins    BYTE PTR es:[edi],dx
 13e:	20 64 69 73          	and    BYTE PTR [ecx+ebp*2+0x73],ah
 142:	6b 20 64             	imul   esp,DWORD PTR [eax],0x64
 145:	72 69                	jb     1b0 <fs_write+0x40>
 147:	76 65                	jbe    1ae <fs_write+0x3e>
 149:	72 0a                	jb     155 <.rodata.str1.4+0x155>
 14b:	2d 20 57 6f 72       	sub    eax,0x726f5720
 150:	6c                   	ins    BYTE PTR es:[edi],dx
 151:	64 20 64 6f 6d       	and    BYTE PTR fs:[edi+ebp*2+0x6d],ah
 156:	69 6e 61 74 69 6f 6e 	imul   ebp,DWORD PTR [esi+0x61],0x6e6f6974
 15d:	0a 00                	or     al,BYTE PTR [eax]

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
  17:	00 40 00             	add    BYTE PTR [eax+0x0],al
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	55                   	push   ebp
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
  31:	83 03 48             	add    DWORD PTR [ebx],0x48
  34:	0e                   	push   cs
  35:	10 6a 0e             	adc    BYTE PTR [edx+0xe],ch
  38:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
  3b:	1c 41                	sbb    al,0x41
  3d:	0e                   	push   cs
  3e:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  41:	10 47 0a             	adc    BYTE PTR [edi+0xa],al
  44:	0e                   	push   cs
  45:	0c 46                	or     al,0x46
  47:	c3                   	ret
  48:	0e                   	push   cs
  49:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  4c:	0e                   	push   cs
  4d:	04 41                	add    al,0x41
  4f:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
  52:	0c 43                	or     al,0x43
  54:	c3                   	ret
  55:	0e                   	push   cs
  56:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  59:	0e                   	push   cs
  5a:	04 00                	add    al,0x0
  5c:	44                   	inc    esp
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 60 00             	add    BYTE PTR [eax+0x0],ah
  62:	00 00                	add    BYTE PTR [eax],al
  64:	60                   	pusha
  65:	00 00                	add    BYTE PTR [eax],al
  67:	00 59 00             	add    BYTE PTR [ecx+0x0],bl
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  6f:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  75:	86 03                	xchg   BYTE PTR [ebx],al
  77:	43                   	inc    ebx
  78:	0e                   	push   cs
  79:	10 83 04 72 0e 18    	adc    BYTE PTR [ebx+0x180e7204],al
  7f:	41                   	inc    ecx
  80:	0e                   	push   cs
  81:	1c 41                	sbb    al,0x41
  83:	0e                   	push   cs
  84:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  87:	10 48 0a             	adc    BYTE PTR [eax+0xa],cl
  8a:	c3                   	ret
  8b:	0e                   	push   cs
  8c:	0c 41                	or     al,0x41
  8e:	c6                   	(bad)
  8f:	0e                   	push   cs
  90:	08 48 c7             	or     BYTE PTR [eax-0x39],cl
  93:	0e                   	push   cs
  94:	04 41                	add    al,0x41
  96:	0b 41 c3             	or     eax,DWORD PTR [ecx-0x3d]
  99:	0e                   	push   cs
  9a:	0c 43                	or     al,0x43
  9c:	c6                   	(bad)
  9d:	0e                   	push   cs
  9e:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  a1:	0e                   	push   cs
  a2:	04 00                	add    al,0x0
  a4:	54                   	push   esp
  a5:	00 00                	add    BYTE PTR [eax],al
  a7:	00 a8 00 00 00 c0    	add    BYTE PTR [eax-0x40000000],ch
  ad:	00 00                	add    BYTE PTR [eax],al
  af:	00 ac 00 00 00 00 41 	add    BYTE PTR [eax+eax*1+0x41000000],ch
  b6:	0e                   	push   cs
  b7:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  bd:	86 03                	xchg   BYTE PTR [ebx],al
  bf:	43                   	inc    ebx
  c0:	0e                   	push   cs
  c1:	10 83 04 72 0e 18    	adc    BYTE PTR [ebx+0x180e7204],al
  c7:	41                   	inc    ecx
  c8:	0e                   	push   cs
  c9:	1c 41                	sbb    al,0x41
  cb:	0e                   	push   cs
  cc:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  cf:	10 45 0a             	adc    BYTE PTR [ebp+0xa],al
  d2:	c3                   	ret
  d3:	0e                   	push   cs
  d4:	0c 46                	or     al,0x46
  d6:	c6                   	(bad)
  d7:	0e                   	push   cs
  d8:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  db:	0e                   	push   cs
  dc:	04 41                	add    al,0x41
  de:	0b 6a 0e             	or     ebp,DWORD PTR [edx+0xe]
  e1:	14 49                	adc    al,0x49
  e3:	0e                   	push   cs
  e4:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
  e7:	1c 41                	sbb    al,0x41
  e9:	0e                   	push   cs
  ea:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  ed:	10 5e c3             	adc    BYTE PTR [esi-0x3d],bl
  f0:	0e                   	push   cs
  f1:	0c 41                	or     al,0x41
  f3:	c6                   	(bad)
  f4:	0e                   	push   cs
  f5:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  f8:	0e                   	push   cs
  f9:	04 00                	add    al,0x0
  fb:	00 6c 00 00          	add    BYTE PTR [eax+eax*1+0x0],ch
  ff:	00 00                	add    BYTE PTR [eax],al
 101:	01 00                	add    DWORD PTR [eax],eax
 103:	00 70 01             	add    BYTE PTR [eax+0x1],dh
 106:	00 00                	add    BYTE PTR [eax],al
 108:	ea 00 00 00 00 41 0e 	jmp    0xe41:0x0
 10f:	08 85 02 43 0e 0c    	or     BYTE PTR [ebp+0xc0e4302],al
 115:	87 03                	xchg   DWORD PTR [ebx],eax
 117:	41                   	inc    ecx
 118:	0e                   	push   cs
 119:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 11f:	83 05 48 0e 30 7d 0e 	add    DWORD PTR ds:0x7d300e48,0xe
 126:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 129:	3c 41                	cmp    al,0x41
 12b:	0e                   	push   cs
 12c:	40                   	inc    eax
 12d:	48                   	dec    eax
 12e:	0e                   	push   cs
 12f:	30 02                	xor    BYTE PTR [edx],al
 131:	48                   	dec    eax
 132:	0a 0e                	or     cl,BYTE PTR [esi]
 134:	14 43                	adc    al,0x43
 136:	c3                   	ret
 137:	0e                   	push   cs
 138:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 13b:	0e                   	push   cs
 13c:	0c 41                	or     al,0x41
 13e:	c7                   	(bad)
 13f:	0e                   	push   cs
 140:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 143:	0e                   	push   cs
 144:	04 41                	add    al,0x41
 146:	0b 4d 0e             	or     ecx,DWORD PTR [ebp+0xe]
 149:	34 41                	xor    al,0x41
 14b:	0e                   	push   cs
 14c:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 14f:	3c 41                	cmp    al,0x41
 151:	0e                   	push   cs
 152:	40                   	inc    eax
 153:	4e                   	dec    esi
 154:	0e                   	push   cs
 155:	30 5b 0a             	xor    BYTE PTR [ebx+0xa],bl
 158:	0e                   	push   cs
 159:	14 41                	adc    al,0x41
 15b:	c3                   	ret
 15c:	0e                   	push   cs
 15d:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 160:	0e                   	push   cs
 161:	0c 41                	or     al,0x41
 163:	c7                   	(bad)
 164:	0e                   	push   cs
 165:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 168:	0e                   	push   cs
 169:	04 42                	add    al,0x42
 16b:	0b 90 00 00 00 70    	or     edx,DWORD PTR [eax+0x70000000]
 171:	01 00                	add    DWORD PTR [eax],eax
 173:	00 60 02             	add    BYTE PTR [eax+0x2],ah
 176:	00 00                	add    BYTE PTR [eax],al
 178:	07                   	pop    es
 179:	01 00                	add    DWORD PTR [eax],eax
 17b:	00 00                	add    BYTE PTR [eax],al
 17d:	41                   	inc    ecx
 17e:	0e                   	push   cs
 17f:	08 85 02 43 0e 0c    	or     BYTE PTR [ebp+0xc0e4302],al
 185:	87 03                	xchg   DWORD PTR [ebx],eax
 187:	41                   	inc    ecx
 188:	0e                   	push   cs
 189:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 18f:	83 05 48 0e 30 69 0e 	add    DWORD PTR ds:0x69300e48,0xe
 196:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 199:	3c 41                	cmp    al,0x41
 19b:	0e                   	push   cs
 19c:	40                   	inc    eax
 19d:	48                   	dec    eax
 19e:	0e                   	push   cs
 19f:	30 57 0a             	xor    BYTE PTR [edi+0xa],dl
 1a2:	0e                   	push   cs
 1a3:	14 41                	adc    al,0x41
 1a5:	c3                   	ret
 1a6:	0e                   	push   cs
 1a7:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1aa:	0e                   	push   cs
 1ab:	0c 41                	or     al,0x41
 1ad:	c7                   	(bad)
 1ae:	0e                   	push   cs
 1af:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1b2:	0e                   	push   cs
 1b3:	04 45                	add    al,0x45
 1b5:	0b 74 0e 34          	or     esi,DWORD PTR [esi+ecx*1+0x34]
 1b9:	42                   	inc    edx
 1ba:	0e                   	push   cs
 1bb:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 1be:	3c 4b                	cmp    al,0x4b
 1c0:	0e                   	push   cs
 1c1:	40                   	inc    eax
 1c2:	4f                   	dec    edi
 1c3:	0e                   	push   cs
 1c4:	30 67 0a             	xor    BYTE PTR [edi+0xa],ah
 1c7:	0e                   	push   cs
 1c8:	14 43                	adc    al,0x43
 1ca:	c3                   	ret
 1cb:	0e                   	push   cs
 1cc:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1cf:	0e                   	push   cs
 1d0:	0c 41                	or     al,0x41
 1d2:	c7                   	(bad)
 1d3:	0e                   	push   cs
 1d4:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1d7:	0e                   	push   cs
 1d8:	04 41                	add    al,0x41
 1da:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 1dd:	34 46                	xor    al,0x46
 1df:	0e                   	push   cs
 1e0:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 1e3:	3c 41                	cmp    al,0x41
 1e5:	0e                   	push   cs
 1e6:	40                   	inc    eax
 1e7:	4d                   	dec    ebp
 1e8:	0e                   	push   cs
 1e9:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 1ec:	14 46                	adc    al,0x46
 1ee:	c3                   	ret
 1ef:	0e                   	push   cs
 1f0:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1f3:	0e                   	push   cs
 1f4:	0c 41                	or     al,0x41
 1f6:	c7                   	(bad)
 1f7:	0e                   	push   cs
 1f8:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1fb:	0e                   	push   cs
 1fc:	04 00                	add    al,0x0
 1fe:	00 00                	add    BYTE PTR [eax],al
 200:	5c                   	pop    esp
 201:	00 00                	add    BYTE PTR [eax],al
 203:	00 04 02             	add    BYTE PTR [edx+eax*1],al
 206:	00 00                	add    BYTE PTR [eax],al
 208:	70 03                	jo     20d <.eh_frame+0x20d>
 20a:	00 00                	add    BYTE PTR [eax],al
 20c:	ed                   	in     eax,dx
 20d:	00 00                	add    BYTE PTR [eax],al
 20f:	00 00                	add    BYTE PTR [eax],al
 211:	43                   	inc    ebx
 212:	0e                   	push   cs
 213:	14 45                	adc    al,0x45
 215:	0e                   	push   cs
 216:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 219:	1c 45                	sbb    al,0x45
 21b:	0e                   	push   cs
 21c:	20 02                	and    BYTE PTR [edx],al
 21e:	4e                   	dec    esi
 21f:	0e                   	push   cs
 220:	14 41                	adc    al,0x41
 222:	0e                   	push   cs
 223:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 226:	1c 45                	sbb    al,0x45
 228:	0e                   	push   cs
 229:	20 54 0e 14          	and    BYTE PTR [esi+ecx*1+0x14],dl
 22d:	41                   	inc    ecx
 22e:	0e                   	push   cs
 22f:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 232:	1c 45                	sbb    al,0x45
 234:	0e                   	push   cs
 235:	20 54 0e 14          	and    BYTE PTR [esi+ecx*1+0x14],dl
 239:	41                   	inc    ecx
 23a:	0e                   	push   cs
 23b:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 23e:	1c 45                	sbb    al,0x45
 240:	0e                   	push   cs
 241:	20 54 0e 14          	and    BYTE PTR [esi+ecx*1+0x14],dl
 245:	41                   	inc    ecx
 246:	0e                   	push   cs
 247:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 24a:	1c 45                	sbb    al,0x45
 24c:	0e                   	push   cs
 24d:	20 54 0e 14          	and    BYTE PTR [esi+ecx*1+0x14],dl
 251:	41                   	inc    ecx
 252:	0e                   	push   cs
 253:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 256:	1c 45                	sbb    al,0x45
 258:	0e                   	push   cs
 259:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 25c:	04 00                	add    al,0x0
 25e:	00 00                	add    BYTE PTR [eax],al
 260:	48                   	dec    eax
 261:	00 00                	add    BYTE PTR [eax],al
 263:	00 64 02 00          	add    BYTE PTR [edx+eax*1+0x0],ah
 267:	00 60 04             	add    BYTE PTR [eax+0x4],ah
 26a:	00 00                	add    BYTE PTR [eax],al
 26c:	87 00                	xchg   DWORD PTR [eax],eax
 26e:	00 00                	add    BYTE PTR [eax],al
 270:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 273:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 279:	86 03                	xchg   BYTE PTR [ebx],al
 27b:	43                   	inc    ebx
 27c:	0e                   	push   cs
 27d:	10 83 04 72 0e 18    	adc    BYTE PTR [ebx+0x180e7204],al
 283:	41                   	inc    ecx
 284:	0e                   	push   cs
 285:	1c 41                	sbb    al,0x41
 287:	0e                   	push   cs
 288:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 28b:	10 63 0e             	adc    BYTE PTR [ebx+0xe],ah
 28e:	14 41                	adc    al,0x41
 290:	0e                   	push   cs
 291:	18 49 0e             	sbb    BYTE PTR [ecx+0xe],cl
 294:	1c 44                	sbb    al,0x44
 296:	0e                   	push   cs
 297:	20 4a 0e             	and    BYTE PTR [edx+0xe],cl
 29a:	10 41 0a             	adc    BYTE PTR [ecx+0xa],al
 29d:	c3                   	ret
 29e:	0e                   	push   cs
 29f:	0c 41                	or     al,0x41
 2a1:	c6                   	(bad)
 2a2:	0e                   	push   cs
 2a3:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 2a6:	0e                   	push   cs
 2a7:	04 41                	add    al,0x41
 2a9:	0b 00                	or     eax,DWORD PTR [eax]
 2ab:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
 2af:	00 b0 02 00 00 f0    	add    BYTE PTR [eax-0xffffffe],dh
 2b5:	04 00                	add    al,0x0
 2b7:	00 4d 00             	add    BYTE PTR [ebp+0x0],cl
 2ba:	00 00                	add    BYTE PTR [eax],al
 2bc:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 2bf:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 2c5:	86 03                	xchg   BYTE PTR [ebx],al
 2c7:	43                   	inc    ebx
 2c8:	0e                   	push   cs
 2c9:	10 83 04 62 0e 18    	adc    BYTE PTR [ebx+0x180e6204],al
 2cf:	41                   	inc    ecx
 2d0:	0e                   	push   cs
 2d1:	1c 41                	sbb    al,0x41
 2d3:	0e                   	push   cs
 2d4:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 2d7:	10 50 0a             	adc    BYTE PTR [eax+0xa],dl
 2da:	c3                   	ret
 2db:	0e                   	push   cs
 2dc:	0c 41                	or     al,0x41
 2de:	c6                   	(bad)
 2df:	0e                   	push   cs
 2e0:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 2e3:	0e                   	push   cs
 2e4:	04 41                	add    al,0x41
 2e6:	0b 41 c3             	or     eax,DWORD PTR [ecx-0x3d]
 2e9:	0e                   	push   cs
 2ea:	0c 46                	or     al,0x46
 2ec:	c6                   	(bad)
 2ed:	0e                   	push   cs
 2ee:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 2f1:	0e                   	push   cs
 2f2:	04 00                	add    al,0x0
 2f4:	74 00                	je     2f6 <.eh_frame+0x2f6>
 2f6:	00 00                	add    BYTE PTR [eax],al
 2f8:	f8                   	clc
 2f9:	02 00                	add    al,BYTE PTR [eax]
 2fb:	00 40 05             	add    BYTE PTR [eax+0x5],al
 2fe:	00 00                	add    BYTE PTR [eax],al
 300:	f6 00 00             	test   BYTE PTR [eax],0x0
 303:	00 00                	add    BYTE PTR [eax],al
 305:	41                   	inc    ecx
 306:	0e                   	push   cs
 307:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 30d:	87 03                	xchg   DWORD PTR [ebx],eax
 30f:	41                   	inc    ecx
 310:	0e                   	push   cs
 311:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 317:	83 05 43 0e 3c 44 0e 	add    DWORD PTR ds:0x443c0e43,0xe
 31e:	40                   	inc    eax
 31f:	4c                   	dec    esp
 320:	0e                   	push   cs
 321:	30 7e 0e             	xor    BYTE PTR [esi+0xe],bh
 324:	34 41                	xor    al,0x41
 326:	0e                   	push   cs
 327:	38 44 0e 3c          	cmp    BYTE PTR [esi+ecx*1+0x3c],al
 32b:	41                   	inc    ecx
 32c:	0e                   	push   cs
 32d:	40                   	inc    eax
 32e:	48                   	dec    eax
 32f:	0e                   	push   cs
 330:	30 7e 0e             	xor    BYTE PTR [esi+0xe],bh
 333:	34 4c                	xor    al,0x4c
 335:	0e                   	push   cs
 336:	38 44 0e 3c          	cmp    BYTE PTR [esi+ecx*1+0x3c],al
 33a:	44                   	inc    esp
 33b:	0e                   	push   cs
 33c:	40                   	inc    eax
 33d:	53                   	push   ebx
 33e:	0e                   	push   cs
 33f:	30 59 0a             	xor    BYTE PTR [ecx+0xa],bl
 342:	0e                   	push   cs
 343:	14 43                	adc    al,0x43
 345:	c3                   	ret
 346:	0e                   	push   cs
 347:	10 43 c6             	adc    BYTE PTR [ebx-0x3a],al
 34a:	0e                   	push   cs
 34b:	0c 41                	or     al,0x41
 34d:	c7                   	(bad)
 34e:	0e                   	push   cs
 34f:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 352:	0e                   	push   cs
 353:	04 41                	add    al,0x41
 355:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 358:	14 43                	adc    al,0x43
 35a:	c3                   	ret
 35b:	0e                   	push   cs
 35c:	10 43 c6             	adc    BYTE PTR [ebx-0x3a],al
 35f:	0e                   	push   cs
 360:	0c 41                	or     al,0x41
 362:	c7                   	(bad)
 363:	0e                   	push   cs
 364:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 367:	0e                   	push   cs
 368:	04 00                	add    al,0x0
	...
