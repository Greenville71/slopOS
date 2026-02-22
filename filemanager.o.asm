
filemanager.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fm_refresh>:
   0:	53                   	push   ebx
   1:	89 c3                	mov    ebx,eax
   3:	83 ec 0c             	sub    esp,0xc
   6:	6a 20                	push   0x20
   8:	50                   	push   eax
   9:	05 88 08 00 00       	add    eax,0x888
   e:	50                   	push   eax
   f:	e8 fc ff ff ff       	call   10 <fm_refresh+0x10>
  14:	8b 93 84 08 00 00    	mov    edx,DWORD PTR [ebx+0x884]
  1a:	83 c4 10             	add    esp,0x10
  1d:	89 83 80 08 00 00    	mov    DWORD PTR [ebx+0x880],eax
  23:	39 d0                	cmp    eax,edx
  25:	7f 09                	jg     30 <fm_refresh+0x30>
  27:	8d 50 ff             	lea    edx,[eax-0x1]
  2a:	89 93 84 08 00 00    	mov    DWORD PTR [ebx+0x884],edx
  30:	85 d2                	test   edx,edx
  32:	79 0a                	jns    3e <fm_refresh+0x3e>
  34:	c7 83 84 08 00 00 00 	mov    DWORD PTR [ebx+0x884],0x0
  3b:	00 00 00 
  3e:	c7 83 c8 0a 00 00 00 	mov    DWORD PTR [ebx+0xac8],0x0
  45:	00 00 00 
  48:	85 c0                	test   eax,eax
  4a:	7e 0f                	jle    5b <fm_refresh+0x5b>
  4c:	6b 83 84 08 00 00 44 	imul   eax,DWORD PTR [ebx+0x884],0x44
  53:	01 d8                	add    eax,ebx
  55:	80 78 40 00          	cmp    BYTE PTR [eax+0x40],0x0
  59:	74 05                	je     60 <fm_refresh+0x60>
  5b:	83 c4 08             	add    esp,0x8
  5e:	5b                   	pop    ebx
  5f:	c3                   	ret
  60:	83 ec 04             	sub    esp,0x4
  63:	8d 93 c8 08 00 00    	lea    edx,[ebx+0x8c8]
  69:	68 ff 01 00 00       	push   0x1ff
  6e:	52                   	push   edx
  6f:	50                   	push   eax
  70:	e8 fc ff ff ff       	call   71 <fm_refresh+0x71>
  75:	83 c4 10             	add    esp,0x10
  78:	89 83 c8 0a 00 00    	mov    DWORD PTR [ebx+0xac8],eax
  7e:	85 c0                	test   eax,eax
  80:	7e 0e                	jle    90 <fm_refresh+0x90>
  82:	c6 84 03 c8 08 00 00 	mov    BYTE PTR [ebx+eax*1+0x8c8],0x0
  89:	00 
  8a:	83 c4 08             	add    esp,0x8
  8d:	5b                   	pop    ebx
  8e:	c3                   	ret
  8f:	90                   	nop
  90:	c7 83 c8 0a 00 00 00 	mov    DWORD PTR [ebx+0xac8],0x0
  97:	00 00 00 
  9a:	eb bf                	jmp    5b <fm_refresh+0x5b>
  9c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000000a0 <filemgr_create>:
  a0:	56                   	push   esi
  a1:	31 f6                	xor    esi,esi
  a3:	53                   	push   ebx
  a4:	83 ec 04             	sub    esp,0x4
  a7:	a1 00 00 00 00       	mov    eax,ds:0x0
  ac:	83 f8 01             	cmp    eax,0x1
  af:	7f 5c                	jg     10d <filemgr_create+0x6d>
  b1:	69 d8 04 0b 00 00    	imul   ebx,eax,0xb04
  b7:	83 ec 04             	sub    esp,0x4
  ba:	8d 50 01             	lea    edx,[eax+0x1]
  bd:	68 04 0b 00 00       	push   0xb04
  c2:	6a 00                	push   0x0
  c4:	8d b3 20 00 00 00    	lea    esi,[ebx+0x20]
  ca:	81 c3 a8 08 00 00    	add    ebx,0x8a8
  d0:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  d6:	56                   	push   esi
  d7:	e8 fc ff ff ff       	call   d8 <filemgr_create+0x38>
  dc:	58                   	pop    eax
  dd:	5a                   	pop    edx
  de:	68 00 00 00 00       	push   0x0
  e3:	53                   	push   ebx
  e4:	e8 fc ff ff ff       	call   e5 <filemgr_create+0x45>
  e9:	59                   	pop    ecx
  ea:	58                   	pop    eax
  eb:	68 00 00 00 00       	push   0x0
  f0:	53                   	push   ebx
  f1:	e8 fc ff ff ff       	call   f2 <filemgr_create+0x52>
  f6:	58                   	pop    eax
  f7:	5a                   	pop    edx
  f8:	68 07 00 00 00       	push   0x7
  fd:	53                   	push   ebx
  fe:	e8 fc ff ff ff       	call   ff <filemgr_create+0x5f>
 103:	89 f0                	mov    eax,esi
 105:	e8 f6 fe ff ff       	call   0 <fm_refresh>
 10a:	83 c4 10             	add    esp,0x10
 10d:	83 c4 04             	add    esp,0x4
 110:	89 f0                	mov    eax,esi
 112:	5b                   	pop    ebx
 113:	5e                   	pop    esi
 114:	c3                   	ret
 115:	8d 76 00             	lea    esi,[esi+0x0]
 118:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 11f:	00 

00000120 <filemgr_draw>:
 120:	55                   	push   ebp
 121:	57                   	push   edi
 122:	56                   	push   esi
 123:	53                   	push   ebx
 124:	83 ec 7c             	sub    esp,0x7c
 127:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
 12e:	8b 78 68             	mov    edi,DWORD PTR [eax+0x68]
 131:	85 ff                	test   edi,edi
 133:	0f 84 49 03 00 00    	je     482 <filemgr_draw+0x362>
 139:	83 ec 08             	sub    esp,0x8
 13c:	8b 18                	mov    ebx,DWORD PTR [eax]
 13e:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
 141:	68 44 32 31 00       	push   0x313244
 146:	6a 06                	push   0x6
 148:	8d 4b 08             	lea    ecx,[ebx+0x8]
 14b:	8d 6e 44             	lea    ebp,[esi+0x44]
 14e:	6a 18                	push   0x18
 150:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
 157:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 15a:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 15e:	83 e8 10             	sub    eax,0x10
 161:	50                   	push   eax
 162:	8d 46 24             	lea    eax,[esi+0x24]
 165:	50                   	push   eax
 166:	89 4c 24 34          	mov    DWORD PTR [esp+0x34],ecx
 16a:	51                   	push   ecx
 16b:	e8 fc ff ff ff       	call   16c <filemgr_draw+0x4c>
 170:	8d 87 88 08 00 00    	lea    eax,[edi+0x888]
 176:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
 17a:	8d 53 10             	lea    edx,[ebx+0x10]
 17d:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
 181:	83 c4 20             	add    esp,0x20
 184:	68 fa b4 89 00       	push   0x89b4fa
 189:	50                   	push   eax
 18a:	8d 46 28             	lea    eax,[esi+0x28]
 18d:	50                   	push   eax
 18e:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 192:	52                   	push   edx
 193:	e8 fc ff ff ff       	call   194 <filemgr_draw+0x74>
 198:	59                   	pop    ecx
 199:	5f                   	pop    edi
 19a:	68 a1 e3 a6 00       	push   0xa6e3a1
 19f:	6a 06                	push   0x6
 1a1:	8d 7e 48             	lea    edi,[esi+0x48]
 1a4:	6a 18                	push   0x18
 1a6:	6a 5a                	push   0x5a
 1a8:	55                   	push   ebp
 1a9:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 1ad:	e8 fc ff ff ff       	call   1ae <filemgr_draw+0x8e>
 1b2:	83 c4 20             	add    esp,0x20
 1b5:	68 1b 11 11 00       	push   0x11111b
 1ba:	68 09 00 00 00       	push   0x9
 1bf:	57                   	push   edi
 1c0:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
 1c4:	e8 fc ff ff ff       	call   1c5 <filemgr_draw+0xa5>
 1c9:	58                   	pop    eax
 1ca:	8d 43 68             	lea    eax,[ebx+0x68]
 1cd:	5a                   	pop    edx
 1ce:	68 a8 8b f3 00       	push   0xf38ba8
 1d3:	6a 06                	push   0x6
 1d5:	6a 18                	push   0x18
 1d7:	6a 3c                	push   0x3c
 1d9:	55                   	push   ebp
 1da:	50                   	push   eax
 1db:	e8 fc ff ff ff       	call   1dc <filemgr_draw+0xbc>
 1e0:	83 c4 20             	add    esp,0x20
 1e3:	8d 43 70             	lea    eax,[ebx+0x70]
 1e6:	68 ff ff ff 00       	push   0xffffff
 1eb:	68 14 00 00 00       	push   0x14
 1f0:	57                   	push   edi
 1f1:	50                   	push   eax
 1f2:	e8 fc ff ff ff       	call   1f3 <filemgr_draw+0xd3>
 1f7:	59                   	pop    ecx
 1f8:	58                   	pop    eax
 1f9:	8d 83 aa 00 00 00    	lea    eax,[ebx+0xaa]
 1ff:	68 5a 47 45 00       	push   0x45475a
 204:	6a 06                	push   0x6
 206:	6a 18                	push   0x18
 208:	6a 28                	push   0x28
 20a:	55                   	push   ebp
 20b:	50                   	push   eax
 20c:	e8 fc ff ff ff       	call   20d <filemgr_draw+0xed>
 211:	83 c4 20             	add    esp,0x20
 214:	8d 83 b2 00 00 00    	lea    eax,[ebx+0xb2]
 21a:	68 f4 d6 cd 00       	push   0xcdd6f4
 21f:	68 1b 00 00 00       	push   0x1b
 224:	57                   	push   edi
 225:	50                   	push   eax
 226:	e8 fc ff ff ff       	call   227 <filemgr_draw+0x107>
 22b:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 22f:	83 c4 10             	add    esp,0x10
 232:	8d 46 64             	lea    eax,[esi+0x64]
 235:	80 bf 00 0b 00 00 00 	cmp    BYTE PTR [edi+0xb00],0x0
 23c:	0f 85 fe 02 00 00    	jne    540 <filemgr_draw+0x420>
 242:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
 249:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
 24d:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
 250:	8d 51 e8             	lea    edx,[ecx-0x18]
 253:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
 257:	89 d1                	mov    ecx,edx
 259:	c1 e9 1f             	shr    ecx,0x1f
 25c:	01 d1                	add    ecx,edx
 25e:	d1 f9                	sar    ecx,1
 260:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
 264:	01 f1                	add    ecx,esi
 266:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
 26a:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
 26e:	83 c1 08             	add    ecx,0x8
 271:	8b 96 80 08 00 00    	mov    edx,DWORD PTR [esi+0x880]
 277:	85 d2                	test   edx,edx
 279:	0f 8e 69 03 00 00    	jle    5e8 <filemgr_draw+0x4c8>
 27f:	8d 73 0c             	lea    esi,[ebx+0xc]
 282:	8d 54 24 30          	lea    edx,[esp+0x30]
 286:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
 28a:	8b 5c 24 04          	mov    ebx,DWORD PTR [esp+0x4]
 28e:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
 292:	8d 70 02             	lea    esi,[eax+0x2]
 295:	8d 7c 24 40          	lea    edi,[esp+0x40]
 299:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 29d:	31 f6                	xor    esi,esi
 29f:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
 2a3:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
 2a7:	eb 72                	jmp    31b <filemgr_draw+0x1fb>
 2a9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 2b0:	83 ec 08             	sub    esp,0x8
 2b3:	68 25 00 00 00       	push   0x25
 2b8:	57                   	push   edi
 2b9:	e8 fc ff ff ff       	call   2ba <filemgr_draw+0x19a>
 2be:	58                   	pop    eax
 2bf:	5a                   	pop    edx
 2c0:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 2c4:	52                   	push   edx
 2c5:	57                   	push   edi
 2c6:	e8 fc ff ff ff       	call   2c7 <filemgr_draw+0x1a7>
 2cb:	59                   	pop    ecx
 2cc:	58                   	pop    eax
 2cd:	68 28 00 00 00       	push   0x28
 2d2:	57                   	push   edi
 2d3:	e8 fc ff ff ff       	call   2d4 <filemgr_draw+0x1b4>
 2d8:	83 c4 10             	add    esp,0x10
 2db:	55                   	push   ebp
 2dc:	57                   	push   edi
 2dd:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
 2e1:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
 2e5:	e8 fc ff ff ff       	call   2e6 <filemgr_draw+0x1c6>
 2ea:	83 c4 10             	add    esp,0x10
 2ed:	80 7b 40 00          	cmp    BYTE PTR [ebx+0x40],0x0
 2f1:	0f 84 a9 00 00 00    	je     3a0 <filemgr_draw+0x280>
 2f7:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 2fb:	83 44 24 08 14       	add    DWORD PTR [esp+0x8],0x14
 300:	83 c6 01             	add    esi,0x1
 303:	83 c3 44             	add    ebx,0x44
 306:	39 b0 80 08 00 00    	cmp    DWORD PTR [eax+0x880],esi
 30c:	0f 8e 7e 01 00 00    	jle    490 <filemgr_draw+0x370>
 312:	83 fe 12             	cmp    esi,0x12
 315:	0f 84 75 01 00 00    	je     490 <filemgr_draw+0x370>
 31b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 31f:	39 b0 84 08 00 00    	cmp    DWORD PTR [eax+0x884],esi
 325:	0f 84 c5 00 00 00    	je     3f0 <filemgr_draw+0x2d0>
 32b:	80 7b 40 01          	cmp    BYTE PTR [ebx+0x40],0x1
 32f:	19 ed                	sbb    ebp,ebp
 331:	83 ec 0c             	sub    esp,0xc
 334:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
 338:	81 e5 fa 21 44 00    	and    ebp,0x4421fa
 33e:	81 c5 fa b4 89 00    	add    ebp,0x89b4fa
 344:	e8 fc ff ff ff       	call   345 <filemgr_draw+0x225>
 349:	83 c4 0c             	add    esp,0xc
 34c:	50                   	push   eax
 34d:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 351:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
 355:	53                   	push   ebx
 356:	e8 fc ff ff ff       	call   357 <filemgr_draw+0x237>
 35b:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
 35f:	83 c4 10             	add    esp,0x10
 362:	01 da                	add    edx,ebx
 364:	85 c0                	test   eax,eax
 366:	0f 45 d3             	cmovne edx,ebx
 369:	80 7b 40 00          	cmp    BYTE PTR [ebx+0x40],0x0
 36d:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 371:	0f 85 39 ff ff ff    	jne    2b0 <filemgr_draw+0x190>
 377:	83 ec 08             	sub    esp,0x8
 37a:	68 2a 00 00 00       	push   0x2a
 37f:	57                   	push   edi
 380:	e8 fc ff ff ff       	call   381 <filemgr_draw+0x261>
 385:	59                   	pop    ecx
 386:	58                   	pop    eax
 387:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 38b:	52                   	push   edx
 38c:	57                   	push   edi
 38d:	e8 fc ff ff ff       	call   38e <filemgr_draw+0x26e>
 392:	83 c4 10             	add    esp,0x10
 395:	e9 41 ff ff ff       	jmp    2db <filemgr_draw+0x1bb>
 39a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 3a0:	83 ec 04             	sub    esp,0x4
 3a3:	6a 0a                	push   0xa
 3a5:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
 3a9:	55                   	push   ebp
 3aa:	ff 73 3c             	push   DWORD PTR [ebx+0x3c]
 3ad:	e8 fc ff ff ff       	call   3ae <filemgr_draw+0x28e>
 3b2:	58                   	pop    eax
 3b3:	5a                   	pop    edx
 3b4:	68 2d 00 00 00       	push   0x2d
 3b9:	55                   	push   ebp
 3ba:	e8 fc ff ff ff       	call   3bb <filemgr_draw+0x29b>
 3bf:	89 2c 24             	mov    DWORD PTR [esp],ebp
 3c2:	e8 fc ff ff ff       	call   3c3 <filemgr_draw+0x2a3>
 3c7:	68 86 70 6c 00       	push   0x6c7086
 3cc:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
 3d3:	55                   	push   ebp
 3d4:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
 3d8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 3dc:	29 d0                	sub    eax,edx
 3de:	83 e8 08             	sub    eax,0x8
 3e1:	50                   	push   eax
 3e2:	e8 fc ff ff ff       	call   3e3 <filemgr_draw+0x2c3>
 3e7:	83 c4 20             	add    esp,0x20
 3ea:	e9 08 ff ff ff       	jmp    2f7 <filemgr_draw+0x1d7>
 3ef:	90                   	nop
 3f0:	83 ec 08             	sub    esp,0x8
 3f3:	68 5a 47 45 00       	push   0x45475a
 3f8:	6a 04                	push   0x4
 3fa:	6a 14                	push   0x14
 3fc:	ff 74 24 38          	push   DWORD PTR [esp+0x38]
 400:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
 404:	83 e8 02             	sub    eax,0x2
 407:	50                   	push   eax
 408:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 40c:	e8 fc ff ff ff       	call   40d <filemgr_draw+0x2ed>
 411:	83 c4 20             	add    esp,0x20
 414:	e9 12 ff ff ff       	jmp    32b <filemgr_draw+0x20b>
 419:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 420:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
 424:	c6 44 24 40 00       	mov    BYTE PTR [esp+0x40],0x0
 429:	83 ec 04             	sub    esp,0x4
 42c:	6a 0a                	push   0xa
 42e:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
 432:	56                   	push   esi
 433:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 437:	ff b0 80 08 00 00    	push   DWORD PTR [eax+0x880]
 43d:	e8 fc ff ff ff       	call   43e <filemgr_draw+0x31e>
 442:	58                   	pop    eax
 443:	5a                   	pop    edx
 444:	56                   	push   esi
 445:	57                   	push   edi
 446:	e8 fc ff ff ff       	call   447 <filemgr_draw+0x327>
 44b:	59                   	pop    ecx
 44c:	5b                   	pop    ebx
 44d:	68 3a 00 00 00       	push   0x3a
 452:	57                   	push   edi
 453:	e8 fc ff ff ff       	call   454 <filemgr_draw+0x334>
 458:	68 c8 ad a6 00       	push   0xa6adc8
 45d:	57                   	push   edi
 45e:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
 465:	8b 8c 24 a8 00 00 00 	mov    ecx,DWORD PTR [esp+0xa8]
 46c:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
 46f:	03 41 04             	add    eax,DWORD PTR [ecx+0x4]
 472:	83 e8 14             	sub    eax,0x14
 475:	50                   	push   eax
 476:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 47a:	e8 fc ff ff ff       	call   47b <filemgr_draw+0x35b>
 47f:	83 c4 20             	add    esp,0x20
 482:	83 c4 7c             	add    esp,0x7c
 485:	5b                   	pop    ebx
 486:	5e                   	pop    esi
 487:	5f                   	pop    edi
 488:	5d                   	pop    ebp
 489:	c3                   	ret
 48a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 490:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 494:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 498:	83 ec 08             	sub    esp,0x8
 49b:	68 25 18 18 00       	push   0x181825
 4a0:	6a 08                	push   0x8
 4a2:	68 68 01 00 00       	push   0x168
 4a7:	ff 74 24 38          	push   DWORD PTR [esp+0x38]
 4ab:	50                   	push   eax
 4ac:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
 4b0:	51                   	push   ecx
 4b1:	e8 fc ff ff ff       	call   4b2 <filemgr_draw+0x392>
 4b6:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 4ba:	83 c4 20             	add    esp,0x20
 4bd:	8b 80 c8 0a 00 00    	mov    eax,DWORD PTR [eax+0xac8]
 4c3:	85 c0                	test   eax,eax
 4c5:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 4c9:	0f 8e f1 00 00 00    	jle    5c0 <filemgr_draw+0x4a0>
 4cf:	8d 68 08             	lea    ebp,[eax+0x8]
 4d2:	05 5f 01 00 00       	add    eax,0x15f
 4d7:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
 4db:	8b 74 24 04          	mov    esi,DWORD PTR [esp+0x4]
 4df:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 4e3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 4e7:	31 db                	xor    ebx,ebx
 4e9:	8d 78 10             	lea    edi,[eax+0x10]
 4ec:	eb 30                	jmp    51e <filemgr_draw+0x3fe>
 4ee:	66 90                	xchg   ax,ax
 4f0:	88 44 24 40          	mov    BYTE PTR [esp+0x40],al
 4f4:	c6 44 24 41 00       	mov    BYTE PTR [esp+0x41],0x0
 4f9:	68 f4 d6 cd 00       	push   0xcdd6f4
 4fe:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
 502:	55                   	push   ebp
 503:	57                   	push   edi
 504:	83 c7 08             	add    edi,0x8
 507:	e8 fc ff ff ff       	call   508 <filemgr_draw+0x3e8>
 50c:	83 c4 10             	add    esp,0x10
 50f:	83 c3 01             	add    ebx,0x1
 512:	39 9e c8 0a 00 00    	cmp    DWORD PTR [esi+0xac8],ebx
 518:	0f 8e 02 ff ff ff    	jle    420 <filemgr_draw+0x300>
 51e:	3b 6c 24 08          	cmp    ebp,DWORD PTR [esp+0x8]
 522:	0f 8f f8 fe ff ff    	jg     420 <filemgr_draw+0x300>
 528:	0f b6 84 1e c8 08 00 	movzx  eax,BYTE PTR [esi+ebx*1+0x8c8]
 52f:	00 
 530:	3c 0a                	cmp    al,0xa
 532:	75 bc                	jne    4f0 <filemgr_draw+0x3d0>
 534:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 538:	83 c5 10             	add    ebp,0x10
 53b:	8d 78 10             	lea    edi,[eax+0x10]
 53e:	eb cf                	jmp    50f <filemgr_draw+0x3ef>
 540:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 544:	83 ec 08             	sub    esp,0x8
 547:	68 5a 47 45 00       	push   0x45475a
 54c:	6a 06                	push   0x6
 54e:	6a 1c                	push   0x1c
 550:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
 557:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 55a:	8d 50 f0             	lea    edx,[eax-0x10]
 55d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
 561:	52                   	push   edx
 562:	8d 56 60             	lea    edx,[esi+0x60]
 565:	52                   	push   edx
 566:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
 56a:	e8 fc ff ff ff       	call   56b <filemgr_draw+0x44b>
 56f:	83 c4 20             	add    esp,0x20
 572:	68 f4 d6 cd 00       	push   0xcdd6f4
 577:	68 1e 00 00 00       	push   0x1e
 57c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 580:	50                   	push   eax
 581:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 585:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
 589:	e8 fc ff ff ff       	call   58a <filemgr_draw+0x46a>
 58e:	68 fa b4 89 00       	push   0x89b4fa
 593:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 597:	8d 90 cc 0a 00 00    	lea    edx,[eax+0xacc]
 59d:	52                   	push   edx
 59e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 5a2:	50                   	push   eax
 5a3:	8d 43 40             	lea    eax,[ebx+0x40]
 5a6:	50                   	push   eax
 5a7:	e8 fc ff ff ff       	call   5a8 <filemgr_draw+0x488>
 5ac:	8d 86 80 00 00 00    	lea    eax,[esi+0x80]
 5b2:	83 c4 20             	add    esp,0x20
 5b5:	e9 88 fc ff ff       	jmp    242 <filemgr_draw+0x122>
 5ba:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 5c0:	83 c0 28             	add    eax,0x28
 5c3:	68 86 70 6c 00       	push   0x6c7086
 5c8:	68 2f 00 00 00       	push   0x2f
 5cd:	50                   	push   eax
 5ce:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 5d2:	83 c0 18             	add    eax,0x18
 5d5:	50                   	push   eax
 5d6:	e8 fc ff ff ff       	call   5d7 <filemgr_draw+0x4b7>
 5db:	83 c4 10             	add    esp,0x10
 5de:	e9 41 fe ff ff       	jmp    424 <filemgr_draw+0x304>
 5e3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 5e8:	8d 74 24 30          	lea    esi,[esp+0x30]
 5ec:	8d 7c 24 40          	lea    edi,[esp+0x40]
 5f0:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
 5f4:	e9 9f fe ff ff       	jmp    498 <filemgr_draw+0x378>
 5f9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000600 <filemgr_on_key>:
 600:	56                   	push   esi
 601:	53                   	push   ebx
 602:	81 ec 94 00 00 00    	sub    esp,0x94
 608:	8b 94 24 a0 00 00 00 	mov    edx,DWORD PTR [esp+0xa0]
 60f:	8b 84 24 a4 00 00 00 	mov    eax,DWORD PTR [esp+0xa4]
 616:	8b 52 68             	mov    edx,DWORD PTR [edx+0x68]
 619:	85 d2                	test   edx,edx
 61b:	74 47                	je     664 <filemgr_on_key+0x64>
 61d:	80 ba 00 0b 00 00 00 	cmp    BYTE PTR [edx+0xb00],0x0
 624:	75 4a                	jne    670 <filemgr_on_key+0x70>
 626:	3c fe                	cmp    al,0xfe
 628:	0f 84 8a 00 00 00    	je     6b8 <filemgr_on_key+0xb8>
 62e:	3c fd                	cmp    al,0xfd
 630:	0f 84 8a 01 00 00    	je     7c0 <filemgr_on_key+0x1c0>
 636:	3c 0a                	cmp    al,0xa
 638:	0f 84 12 01 00 00    	je     750 <filemgr_on_key+0x150>
 63e:	89 c1                	mov    ecx,eax
 640:	83 e1 df             	and    ecx,0xffffffdf
 643:	80 f9 4e             	cmp    cl,0x4e
 646:	0f 85 99 01 00 00    	jne    7e5 <filemgr_on_key+0x1e5>
 64c:	c6 82 00 0b 00 00 01 	mov    BYTE PTR [edx+0xb00],0x1
 653:	c7 82 fc 0a 00 00 00 	mov    DWORD PTR [edx+0xafc],0x0
 65a:	00 00 00 
 65d:	c6 82 cc 0a 00 00 00 	mov    BYTE PTR [edx+0xacc],0x0
 664:	81 c4 94 00 00 00    	add    esp,0x94
 66a:	5b                   	pop    ebx
 66b:	5e                   	pop    esi
 66c:	c3                   	ret
 66d:	8d 76 00             	lea    esi,[esi+0x0]
 670:	3c 0a                	cmp    al,0xa
 672:	74 6c                	je     6e0 <filemgr_on_key+0xe0>
 674:	3c 1b                	cmp    al,0x1b
 676:	0f 84 c1 00 00 00    	je     73d <filemgr_on_key+0x13d>
 67c:	3c 08                	cmp    al,0x8
 67e:	0f 84 a4 01 00 00    	je     828 <filemgr_on_key+0x228>
 684:	8d 48 e0             	lea    ecx,[eax-0x20]
 687:	80 f9 5e             	cmp    cl,0x5e
 68a:	77 d8                	ja     664 <filemgr_on_key+0x64>
 68c:	8b 9a fc 0a 00 00    	mov    ebx,DWORD PTR [edx+0xafc]
 692:	83 fb 27             	cmp    ebx,0x27
 695:	7f cd                	jg     664 <filemgr_on_key+0x64>
 697:	8d 4b 01             	lea    ecx,[ebx+0x1]
 69a:	89 8a fc 0a 00 00    	mov    DWORD PTR [edx+0xafc],ecx
 6a0:	0f b7 0d 00 00 00 00 	movzx  ecx,WORD PTR ds:0x0
 6a7:	88 c1                	mov    cl,al
 6a9:	66 89 8c 1a cc 0a 00 	mov    WORD PTR [edx+ebx*1+0xacc],cx
 6b0:	00 
 6b1:	eb b1                	jmp    664 <filemgr_on_key+0x64>
 6b3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 6b8:	8b 82 84 08 00 00    	mov    eax,DWORD PTR [edx+0x884]
 6be:	85 c0                	test   eax,eax
 6c0:	7e a2                	jle    664 <filemgr_on_key+0x64>
 6c2:	83 e8 01             	sub    eax,0x1
 6c5:	89 82 84 08 00 00    	mov    DWORD PTR [edx+0x884],eax
 6cb:	81 c4 94 00 00 00    	add    esp,0x94
 6d1:	89 d0                	mov    eax,edx
 6d3:	5b                   	pop    ebx
 6d4:	5e                   	pop    esi
 6d5:	e9 26 f9 ff ff       	jmp    0 <fm_refresh>
 6da:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 6e0:	8b 82 fc 0a 00 00    	mov    eax,DWORD PTR [edx+0xafc]
 6e6:	85 c0                	test   eax,eax
 6e8:	7e 53                	jle    73d <filemgr_on_key+0x13d>
 6ea:	83 ec 08             	sub    esp,0x8
 6ed:	8d 82 88 08 00 00    	lea    eax,[edx+0x888]
 6f3:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 6f7:	50                   	push   eax
 6f8:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
 6fc:	51                   	push   ecx
 6fd:	e8 fc ff ff ff       	call   6fe <filemgr_on_key+0xfe>
 702:	5e                   	pop    esi
 703:	58                   	pop    eax
 704:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 708:	8d 82 cc 0a 00 00    	lea    eax,[edx+0xacc]
 70e:	50                   	push   eax
 70f:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
 713:	51                   	push   ecx
 714:	e8 fc ff ff ff       	call   715 <filemgr_on_key+0x115>
 719:	83 c4 0c             	add    esp,0xc
 71c:	6a 00                	push   0x0
 71e:	68 41 00 00 00       	push   0x41
 723:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
 727:	51                   	push   ecx
 728:	e8 fc ff ff ff       	call   729 <filemgr_on_key+0x129>
 72d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 731:	e8 ca f8 ff ff       	call   0 <fm_refresh>
 736:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 73a:	83 c4 10             	add    esp,0x10
 73d:	c6 82 00 0b 00 00 00 	mov    BYTE PTR [edx+0xb00],0x0
 744:	81 c4 94 00 00 00    	add    esp,0x94
 74a:	5b                   	pop    ebx
 74b:	5e                   	pop    esi
 74c:	c3                   	ret
 74d:	8d 76 00             	lea    esi,[esi+0x0]
 750:	8b 9a 80 08 00 00    	mov    ebx,DWORD PTR [edx+0x880]
 756:	85 db                	test   ebx,ebx
 758:	0f 8e 06 ff ff ff    	jle    664 <filemgr_on_key+0x64>
 75e:	6b 82 84 08 00 00 44 	imul   eax,DWORD PTR [edx+0x884],0x44
 765:	01 d0                	add    eax,edx
 767:	80 78 40 00          	cmp    BYTE PTR [eax+0x40],0x0
 76b:	0f 84 f3 fe ff ff    	je     664 <filemgr_on_key+0x64>
 771:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 775:	8d 8a 88 08 00 00    	lea    ecx,[edx+0x888]
 77b:	83 ec 08             	sub    esp,0x8
 77e:	50                   	push   eax
 77f:	51                   	push   ecx
 780:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
 784:	e8 fc ff ff ff       	call   785 <filemgr_on_key+0x185>
 789:	5a                   	pop    edx
 78a:	59                   	pop    ecx
 78b:	68 07 00 00 00       	push   0x7
 790:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 794:	51                   	push   ecx
 795:	e8 fc ff ff ff       	call   796 <filemgr_on_key+0x196>
 79a:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 79e:	c7 82 84 08 00 00 00 	mov    DWORD PTR [edx+0x884],0x0
 7a5:	00 00 00 
 7a8:	81 c4 a4 00 00 00    	add    esp,0xa4
 7ae:	89 d0                	mov    eax,edx
 7b0:	5b                   	pop    ebx
 7b1:	5e                   	pop    esi
 7b2:	e9 49 f8 ff ff       	jmp    0 <fm_refresh>
 7b7:	90                   	nop
 7b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 7bf:	00 
 7c0:	8b 82 80 08 00 00    	mov    eax,DWORD PTR [edx+0x880]
 7c6:	8b 8a 84 08 00 00    	mov    ecx,DWORD PTR [edx+0x884]
 7cc:	83 e8 01             	sub    eax,0x1
 7cf:	39 c1                	cmp    ecx,eax
 7d1:	0f 8d 8d fe ff ff    	jge    664 <filemgr_on_key+0x64>
 7d7:	83 c1 01             	add    ecx,0x1
 7da:	89 8a 84 08 00 00    	mov    DWORD PTR [edx+0x884],ecx
 7e0:	e9 e6 fe ff ff       	jmp    6cb <filemgr_on_key+0xcb>
 7e5:	80 f9 44             	cmp    cl,0x44
 7e8:	74 04                	je     7ee <filemgr_on_key+0x1ee>
 7ea:	3c f8                	cmp    al,0xf8
 7ec:	75 62                	jne    850 <filemgr_on_key+0x250>
 7ee:	8b 82 80 08 00 00    	mov    eax,DWORD PTR [edx+0x880]
 7f4:	85 c0                	test   eax,eax
 7f6:	0f 8e 68 fe ff ff    	jle    664 <filemgr_on_key+0x64>
 7fc:	6b 82 84 08 00 00 44 	imul   eax,DWORD PTR [edx+0x884],0x44
 803:	83 ec 0c             	sub    esp,0xc
 806:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
 80a:	01 d0                	add    eax,edx
 80c:	50                   	push   eax
 80d:	e8 fc ff ff ff       	call   80e <filemgr_on_key+0x20e>
 812:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 816:	81 c4 a4 00 00 00    	add    esp,0xa4
 81c:	5b                   	pop    ebx
 81d:	5e                   	pop    esi
 81e:	e9 dd f7 ff ff       	jmp    0 <fm_refresh>
 823:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 828:	8b 82 fc 0a 00 00    	mov    eax,DWORD PTR [edx+0xafc]
 82e:	85 c0                	test   eax,eax
 830:	0f 8e 2e fe ff ff    	jle    664 <filemgr_on_key+0x64>
 836:	83 e8 01             	sub    eax,0x1
 839:	89 82 fc 0a 00 00    	mov    DWORD PTR [edx+0xafc],eax
 83f:	c6 84 02 cc 0a 00 00 	mov    BYTE PTR [edx+eax*1+0xacc],0x0
 846:	00 
 847:	e9 18 fe ff ff       	jmp    664 <filemgr_on_key+0x64>
 84c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 850:	3c 08                	cmp    al,0x8
 852:	0f 85 0c fe ff ff    	jne    664 <filemgr_on_key+0x64>
 858:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 85c:	8d b2 88 08 00 00    	lea    esi,[edx+0x888]
 862:	83 ec 0c             	sub    esp,0xc
 865:	56                   	push   esi
 866:	e8 fc ff ff ff       	call   867 <filemgr_on_key+0x267>
 86b:	83 c4 10             	add    esp,0x10
 86e:	83 f8 01             	cmp    eax,0x1
 871:	0f 8e ed fd ff ff    	jle    664 <filemgr_on_key+0x64>
 877:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 87b:	c6 84 02 87 08 00 00 	mov    BYTE PTR [edx+eax*1+0x887],0x0
 882:	00 
 883:	0f b6 9a 88 08 00 00 	movzx  ebx,BYTE PTR [edx+0x888]
 88a:	84 db                	test   bl,bl
 88c:	74 1e                	je     8ac <filemgr_on_key+0x2ac>
 88e:	89 f0                	mov    eax,esi
 890:	0f b6 48 01          	movzx  ecx,BYTE PTR [eax+0x1]
 894:	80 fb 2f             	cmp    bl,0x2f
 897:	74 0f                	je     8a8 <filemgr_on_key+0x2a8>
 899:	84 c9                	test   cl,cl
 89b:	74 0f                	je     8ac <filemgr_on_key+0x2ac>
 89d:	83 c0 01             	add    eax,0x1
 8a0:	89 cb                	mov    ebx,ecx
 8a2:	eb ec                	jmp    890 <filemgr_on_key+0x290>
 8a4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8a8:	84 c9                	test   cl,cl
 8aa:	75 14                	jne    8c0 <filemgr_on_key+0x2c0>
 8ac:	c6 46 01 00          	mov    BYTE PTR [esi+0x1],0x0
 8b0:	c7 82 84 08 00 00 00 	mov    DWORD PTR [edx+0x884],0x0
 8b7:	00 00 00 
 8ba:	e9 0c fe ff ff       	jmp    6cb <filemgr_on_key+0xcb>
 8bf:	90                   	nop
 8c0:	89 c6                	mov    esi,eax
 8c2:	89 cb                	mov    ebx,ecx
 8c4:	83 c0 01             	add    eax,0x1
 8c7:	eb c7                	jmp    890 <filemgr_on_key+0x290>
 8c9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000008d0 <filemgr_on_mouse>:
 8d0:	56                   	push   esi
 8d1:	53                   	push   ebx
 8d2:	83 ec 04             	sub    esp,0x4
 8d5:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
 8d9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
 8dd:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8e1:	8b 5e 68             	mov    ebx,DWORD PTR [esi+0x68]
 8e4:	85 db                	test   ebx,ebx
 8e6:	0f 84 84 00 00 00    	je     970 <filemgr_on_mouse+0xa0>
 8ec:	80 7c 24 1c 01       	cmp    BYTE PTR [esp+0x1c],0x1
 8f1:	75 7d                	jne    970 <filemgr_on_mouse+0xa0>
 8f3:	83 f8 27             	cmp    eax,0x27
 8f6:	7e 78                	jle    970 <filemgr_on_mouse+0xa0>
 8f8:	83 f8 3f             	cmp    eax,0x3f
 8fb:	7e 53                	jle    950 <filemgr_on_mouse+0x80>
 8fd:	8d 48 b8             	lea    ecx,[eax-0x48]
 900:	80 bb 00 0b 00 00 00 	cmp    BYTE PTR [ebx+0xb00],0x0
 907:	75 77                	jne    980 <filemgr_on_mouse+0xb0>
 909:	b8 67 66 66 66       	mov    eax,0x66666667
 90e:	f7 e9                	imul   ecx
 910:	89 c8                	mov    eax,ecx
 912:	c1 f8 1f             	sar    eax,0x1f
 915:	c1 fa 03             	sar    edx,0x3
 918:	29 c2                	sub    edx,eax
 91a:	39 93 80 08 00 00    	cmp    DWORD PTR [ebx+0x880],edx
 920:	7e 4e                	jle    970 <filemgr_on_mouse+0xa0>
 922:	39 93 84 08 00 00    	cmp    DWORD PTR [ebx+0x884],edx
 928:	75 0e                	jne    938 <filemgr_on_mouse+0x68>
 92a:	6b c2 44             	imul   eax,edx,0x44
 92d:	80 7c 03 40 00       	cmp    BYTE PTR [ebx+eax*1+0x40],0x0
 932:	0f 85 b8 00 00 00    	jne    9f0 <filemgr_on_mouse+0x120>
 938:	89 93 84 08 00 00    	mov    DWORD PTR [ebx+0x884],edx
 93e:	83 c4 04             	add    esp,0x4
 941:	89 d8                	mov    eax,ebx
 943:	5b                   	pop    ebx
 944:	5e                   	pop    esi
 945:	e9 b6 f6 ff ff       	jmp    0 <fm_refresh>
 94a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 950:	8d 42 f8             	lea    eax,[edx-0x8]
 953:	83 f8 59             	cmp    eax,0x59
 956:	77 38                	ja     990 <filemgr_on_mouse+0xc0>
 958:	c6 83 00 0b 00 00 01 	mov    BYTE PTR [ebx+0xb00],0x1
 95f:	c7 83 fc 0a 00 00 00 	mov    DWORD PTR [ebx+0xafc],0x0
 966:	00 00 00 
 969:	c6 83 cc 0a 00 00 00 	mov    BYTE PTR [ebx+0xacc],0x0
 970:	83 c4 04             	add    esp,0x4
 973:	5b                   	pop    ebx
 974:	5e                   	pop    esi
 975:	c3                   	ret
 976:	66 90                	xchg   ax,ax
 978:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 97f:	00 
 980:	8d 48 9c             	lea    ecx,[eax-0x64]
 983:	83 f9 ed             	cmp    ecx,0xffffffed
 986:	0f 8d 7d ff ff ff    	jge    909 <filemgr_on_mouse+0x39>
 98c:	eb e2                	jmp    970 <filemgr_on_mouse+0xa0>
 98e:	66 90                	xchg   ax,ax
 990:	8d 42 98             	lea    eax,[edx-0x68]
 993:	83 f8 3b             	cmp    eax,0x3b
 996:	76 28                	jbe    9c0 <filemgr_on_mouse+0xf0>
 998:	81 ea aa 00 00 00    	sub    edx,0xaa
 99e:	83 fa 27             	cmp    edx,0x27
 9a1:	77 cd                	ja     970 <filemgr_on_mouse+0xa0>
 9a3:	c7 44 24 14 08 00 00 	mov    DWORD PTR [esp+0x14],0x8
 9aa:	00 
 9ab:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
 9af:	83 c4 04             	add    esp,0x4
 9b2:	5b                   	pop    ebx
 9b3:	5e                   	pop    esi
 9b4:	e9 47 fc ff ff       	jmp    600 <filemgr_on_key>
 9b9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 9c0:	8b 83 80 08 00 00    	mov    eax,DWORD PTR [ebx+0x880]
 9c6:	85 c0                	test   eax,eax
 9c8:	7e a6                	jle    970 <filemgr_on_mouse+0xa0>
 9ca:	6b 83 84 08 00 00 44 	imul   eax,DWORD PTR [ebx+0x884],0x44
 9d1:	83 ec 0c             	sub    esp,0xc
 9d4:	01 d8                	add    eax,ebx
 9d6:	50                   	push   eax
 9d7:	e8 fc ff ff ff       	call   9d8 <filemgr_on_mouse+0x108>
 9dc:	83 c4 14             	add    esp,0x14
 9df:	89 d8                	mov    eax,ebx
 9e1:	5b                   	pop    ebx
 9e2:	5e                   	pop    esi
 9e3:	e9 18 f6 ff ff       	jmp    0 <fm_refresh>
 9e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 9ef:	00 
 9f0:	c7 44 24 14 0a 00 00 	mov    DWORD PTR [esp+0x14],0xa
 9f7:	00 
 9f8:	eb b1                	jmp    9ab <filemgr_on_mouse+0xdb>

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	2f                   	das
   1:	68 6f 6d 65 2f       	push   0x2f656d6f
   6:	00 2f                	add    BYTE PTR [edi],ch
   8:	00 2b                	add    BYTE PTR [ebx],ch
   a:	20 4e 65             	and    BYTE PTR [esi+0x65],cl
   d:	77 20                	ja     2f <.rodata.str1.1+0x2f>
   f:	46                   	inc    esi
  10:	69 6c 65 00 44 65 6c 	imul   ebp,DWORD PTR [ebp+eiz*2+0x0],0x656c6544
  17:	65 
  18:	74 65                	je     7f <fms+0x5f>
  1a:	00 55 70             	add    BYTE PTR [ebp+0x70],dl
  1d:	00 4e 61             	add    BYTE PTR [esi+0x61],cl
  20:	6d                   	ins    DWORD PTR es:[edi],dx
  21:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
  24:	00 20                	add    BYTE PTR [eax],ah
  26:	5b                   	pop    ebx
  27:	00 5d 00             	add    BYTE PTR [ebp+0x0],bl
  2a:	20 20                	and    BYTE PTR [eax],ah
  2c:	00 42 00             	add    BYTE PTR [edx+0x0],al
  2f:	4e                   	dec    esi
  30:	6f                   	outs   dx,DWORD PTR ds:[esi]
  31:	20 70 72             	and    BYTE PTR [eax+0x72],dh
  34:	65 76 69             	gs jbe a0 <filemgr_create>
  37:	65 77 00             	gs ja  3a <.rodata.str1.1+0x3a>
  3a:	20 69 74             	and    BYTE PTR [ecx+0x74],ch
  3d:	65 6d                	gs ins DWORD PTR es:[edi],dx
  3f:	73 00                	jae    41 <.rodata.str1.1+0x41>
	...

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
  17:	00 48 00             	add    BYTE PTR [eax+0x0],cl
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	9c                   	pushf
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 83 02 45 0e 14    	or     BYTE PTR [ebx+0x140e4502],al
  31:	42                   	inc    edx
  32:	0e                   	push   cs
  33:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
  36:	1c 46                	sbb    al,0x46
  38:	0e                   	push   cs
  39:	20 4e 0e             	and    BYTE PTR [esi+0xe],cl
  3c:	10 02                	adc    BYTE PTR [edx],al
  3e:	41                   	inc    ecx
  3f:	0a 0e                	or     cl,BYTE PTR [esi]
  41:	08 41 c3             	or     BYTE PTR [ecx-0x3d],al
  44:	0e                   	push   cs
  45:	04 41                	add    al,0x41
  47:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
  4a:	14 4b                	adc    al,0x4b
  4c:	0e                   	push   cs
  4d:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
  50:	1c 41                	sbb    al,0x41
  52:	0e                   	push   cs
  53:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
  56:	10 55 0a             	adc    BYTE PTR [ebp+0xa],dl
  59:	0e                   	push   cs
  5a:	08 41 c3             	or     BYTE PTR [ecx-0x3d],al
  5d:	0e                   	push   cs
  5e:	04 42                	add    al,0x42
  60:	0b 00                	or     eax,DWORD PTR [eax]
  62:	00 00                	add    BYTE PTR [eax],al
  64:	58                   	pop    eax
  65:	00 00                	add    BYTE PTR [eax],al
  67:	00 68 00             	add    BYTE PTR [eax+0x0],ch
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	a0 00 00 00 75       	mov    al,ds:0x75000000
  71:	00 00                	add    BYTE PTR [eax],al
  73:	00 00                	add    BYTE PTR [eax],al
  75:	41                   	inc    ecx
  76:	0e                   	push   cs
  77:	08 86 02 43 0e 0c    	or     BYTE PTR [esi+0xc0e4302],al
  7d:	83 03 43             	add    DWORD PTR [ebx],0x43
  80:	0e                   	push   cs
  81:	10 53 0e             	adc    BYTE PTR [ebx+0xe],dl
  84:	14 48                	adc    al,0x48
  86:	0e                   	push   cs
  87:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
  8a:	1c 53                	sbb    al,0x53
  8c:	0e                   	push   cs
  8d:	20 46 0e             	and    BYTE PTR [esi+0xe],al
  90:	1c 41                	sbb    al,0x41
  92:	0e                   	push   cs
  93:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  96:	1c 41                	sbb    al,0x41
  98:	0e                   	push   cs
  99:	20 46 0e             	and    BYTE PTR [esi+0xe],al
  9c:	1c 41                	sbb    al,0x41
  9e:	0e                   	push   cs
  9f:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  a2:	1c 41                	sbb    al,0x41
  a4:	0e                   	push   cs
  a5:	20 46 0e             	and    BYTE PTR [esi+0xe],al
  a8:	1c 41                	sbb    al,0x41
  aa:	0e                   	push   cs
  ab:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
  ae:	1c 41                	sbb    al,0x41
  b0:	0e                   	push   cs
  b1:	20 4f 0e             	and    BYTE PTR [edi+0xe],cl
  b4:	10 43 0e             	adc    BYTE PTR [ebx+0xe],al
  b7:	0c 43                	or     al,0x43
  b9:	c3                   	ret
  ba:	0e                   	push   cs
  bb:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  be:	0e                   	push   cs
  bf:	04 b4                	add    al,0xb4
  c1:	02 00                	add    al,BYTE PTR [eax]
  c3:	00 c4                	add    ah,al
  c5:	00 00                	add    BYTE PTR [eax],al
  c7:	00 20                	add    BYTE PTR [eax],ah
  c9:	01 00                	add    DWORD PTR [eax],eax
  cb:	00 d9                	add    cl,bl
  cd:	04 00                	add    al,0x0
  cf:	00 00                	add    BYTE PTR [eax],al
  d1:	41                   	inc    ecx
  d2:	0e                   	push   cs
  d3:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  d9:	87 03                	xchg   DWORD PTR [ebx],eax
  db:	41                   	inc    ecx
  dc:	0e                   	push   cs
  dd:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  e3:	83 05 43 0e 90 01 55 	add    DWORD PTR ds:0x1900e43,0x55
  ea:	0e                   	push   cs
  eb:	98                   	cwde
  ec:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
  ef:	9c                   	pushf
  f0:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
  f3:	a0 01 48 0e a4       	mov    al,ds:0xa40e4801
  f8:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
  fb:	a8 01                	test   al,0x1
  fd:	44                   	inc    esp
  fe:	0e                   	push   cs
  ff:	ac                   	lods   al,BYTE PTR ds:[esi]
 100:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 103:	b0 01                	mov    al,0x1
 105:	59                   	pop    ecx
 106:	0e                   	push   cs
 107:	90                   	nop
 108:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 10b:	94                   	xchg   esp,eax
 10c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 10f:	98                   	cwde
 110:	01 44 0e 9c          	add    DWORD PTR [esi+ecx*1-0x64],eax
 114:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 117:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 11c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 11f:	98                   	cwde
 120:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 123:	9c                   	pushf
 124:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 127:	a0 01 45 0e a4       	mov    al,ds:0xa40e4501
 12c:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 12f:	a8 01                	test   al,0x1
 131:	41                   	inc    ecx
 132:	0e                   	push   cs
 133:	ac                   	lods   al,BYTE PTR ds:[esi]
 134:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 138:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 13b:	90                   	nop
 13c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 13f:	94                   	xchg   esp,eax
 140:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 143:	98                   	cwde
 144:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 147:	9c                   	pushf
 148:	01 44 0e a0          	add    DWORD PTR [esi+ecx*1-0x60],eax
 14c:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 14f:	9c                   	pushf
 150:	01 44 0e 98          	add    DWORD PTR [esi+ecx*1-0x68],eax
 154:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 157:	9c                   	pushf
 158:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 15b:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
 160:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 163:	a8 01                	test   al,0x1
 165:	41                   	inc    ecx
 166:	0e                   	push   cs
 167:	ac                   	lods   al,BYTE PTR ds:[esi]
 168:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 16b:	b0 01                	mov    al,0x1
 16d:	48                   	dec    eax
 16e:	0e                   	push   cs
 16f:	90                   	nop
 170:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 173:	94                   	xchg   esp,eax
 174:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 177:	98                   	cwde
 178:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 17b:	9c                   	pushf
 17c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 17f:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 184:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 187:	98                   	cwde
 188:	01 4b 0e             	add    DWORD PTR [ebx+0xe],ecx
 18b:	9c                   	pushf
 18c:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 18f:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
 194:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 197:	a8 01                	test   al,0x1
 199:	41                   	inc    ecx
 19a:	0e                   	push   cs
 19b:	ac                   	lods   al,BYTE PTR ds:[esi]
 19c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 19f:	b0 01                	mov    al,0x1
 1a1:	48                   	dec    eax
 1a2:	0e                   	push   cs
 1a3:	90                   	nop
 1a4:	01 4b 0e             	add    DWORD PTR [ebx+0xe],ecx
 1a7:	94                   	xchg   esp,eax
 1a8:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1ab:	98                   	cwde
 1ac:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1af:	9c                   	pushf
 1b0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1b3:	a0 01 4c 0e 90       	mov    al,ds:0x900e4c01
 1b8:	01 02                	add    DWORD PTR [edx],eax
 1ba:	81 0e 98 01 45 0e    	or     DWORD PTR [esi],0xe450198
 1c0:	9c                   	pushf
 1c1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1c4:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 1c9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1cc:	98                   	cwde
 1cd:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1d0:	9c                   	pushf
 1d1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1d4:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 1d9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1dc:	98                   	cwde
 1dd:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 1e0:	9c                   	pushf
 1e1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1e4:	a0 01 48 0e 90       	mov    al,ds:0x900e4801
 1e9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1ec:	94                   	xchg   esp,eax
 1ed:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 1f0:	98                   	cwde
 1f1:	01 44 0e 9c          	add    DWORD PTR [esi+ecx*1-0x64],eax
 1f5:	01 44 0e a0          	add    DWORD PTR [esi+ecx*1-0x60],eax
 1f9:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 1fc:	90                   	nop
 1fd:	01 02                	add    DWORD PTR [edx],eax
 1ff:	47                   	inc    edi
 200:	0e                   	push   cs
 201:	9c                   	pushf
 202:	01 44 0e a0          	add    DWORD PTR [esi+ecx*1-0x60],eax
 206:	01 54 0e 94          	add    DWORD PTR [esi+ecx*1-0x6c],edx
 20a:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 20d:	98                   	cwde
 20e:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 211:	9c                   	pushf
 212:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 215:	a0 01 4c 0e 90       	mov    al,ds:0x900e4c01
 21a:	01 58 0e             	add    DWORD PTR [eax+0xe],ebx
 21d:	98                   	cwde
 21e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 221:	9c                   	pushf
 222:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 225:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 22a:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 22d:	98                   	cwde
 22e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 231:	9c                   	pushf
 232:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 235:	a0 01 48 0e 90       	mov    al,ds:0x900e4801
 23a:	01 4e 0e             	add    DWORD PTR [esi+0xe],ecx
 23d:	94                   	xchg   esp,eax
 23e:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 241:	98                   	cwde
 242:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 245:	9c                   	pushf
 246:	01 43 0e             	add    DWORD PTR [ebx+0xe],eax
 249:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 24e:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 251:	98                   	cwde
 252:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 255:	9c                   	pushf
 256:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 259:	a0 01 52 0e a4       	mov    al,ds:0xa40e5201
 25e:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 261:	a8 01                	test   al,0x1
 263:	44                   	inc    esp
 264:	0e                   	push   cs
 265:	ac                   	lods   al,BYTE PTR ds:[esi]
 266:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 269:	b0 01                	mov    al,0x1
 26b:	48                   	dec    eax
 26c:	0e                   	push   cs
 26d:	90                   	nop
 26e:	01 49 0e             	add    DWORD PTR [ecx+0xe],ecx
 271:	98                   	cwde
 272:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 275:	9c                   	pushf
 276:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 279:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
 27e:	01 44 0e a8          	add    DWORD PTR [esi+ecx*1-0x58],eax
 282:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 285:	ac                   	lods   al,BYTE PTR ds:[esi]
 286:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 28a:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 28d:	90                   	nop
 28e:	01 58 0e             	add    DWORD PTR [eax+0xe],ebx
 291:	94                   	xchg   esp,eax
 292:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 295:	98                   	cwde
 296:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 299:	9c                   	pushf
 29a:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 29d:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 2a2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2a5:	98                   	cwde
 2a6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2a9:	9c                   	pushf
 2aa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2ad:	a0 01 46 0e 9c       	mov    al,ds:0x9c0e4601
 2b2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2b5:	98                   	cwde
 2b6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 2b9:	9c                   	pushf
 2ba:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2bd:	a0 01 4a 0e a4       	mov    al,ds:0xa40e4a01
 2c2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2c5:	a8 01                	test   al,0x1
 2c7:	58                   	pop    eax
 2c8:	0e                   	push   cs
 2c9:	ac                   	lods   al,BYTE PTR ds:[esi]
 2ca:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 2ce:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 2d1:	90                   	nop
 2d2:	01 43 0a             	add    DWORD PTR [ebx+0xa],eax
 2d5:	0e                   	push   cs
 2d6:	14 41                	adc    al,0x41
 2d8:	c3                   	ret
 2d9:	0e                   	push   cs
 2da:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 2dd:	0e                   	push   cs
 2de:	0c 41                	or     al,0x41
 2e0:	c7                   	(bad)
 2e1:	0e                   	push   cs
 2e2:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 2e5:	0e                   	push   cs
 2e6:	04 47                	add    al,0x47
 2e8:	0b 4b 0e             	or     ecx,DWORD PTR [ebx+0xe]
 2eb:	98                   	cwde
 2ec:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 2ef:	9c                   	pushf
 2f0:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 2f3:	a0 01 45 0e a4       	mov    al,ds:0xa40e4501
 2f8:	01 44 0e a8          	add    DWORD PTR [esi+ecx*1-0x58],eax
 2fc:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2ff:	ac                   	lods   al,BYTE PTR ds:[esi]
 300:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 303:	b0 01                	mov    al,0x1
 305:	4c                   	dec    esp
 306:	0e                   	push   cs
 307:	90                   	nop
 308:	01 02                	add    DWORD PTR [edx],eax
 30a:	41                   	inc    ecx
 30b:	0e                   	push   cs
 30c:	94                   	xchg   esp,eax
 30d:	01 44 0e 98          	add    DWORD PTR [esi+ecx*1-0x68],eax
 311:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 314:	9c                   	pushf
 315:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 318:	a0 01 4b 0e 90       	mov    al,ds:0x900e4b01
 31d:	01 78 0e             	add    DWORD PTR [eax+0xe],edi
 320:	98                   	cwde
 321:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 324:	9c                   	pushf
 325:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 328:	a0 01 42 0e a4       	mov    al,ds:0xa40e4201
 32d:	01 52 0e             	add    DWORD PTR [edx+0xe],edx
 330:	a8 01                	test   al,0x1
 332:	44                   	inc    esp
 333:	0e                   	push   cs
 334:	ac                   	lods   al,BYTE PTR ds:[esi]
 335:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 339:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 33c:	90                   	nop
 33d:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 340:	94                   	xchg   esp,eax
 341:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 344:	98                   	cwde
 345:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 348:	9c                   	pushf
 349:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 34c:	a0 01 4a 0e a4       	mov    al,ds:0xa40e4a01
 351:	01 4b 0e             	add    DWORD PTR [ebx+0xe],ecx
 354:	a8 01                	test   al,0x1
 356:	45                   	inc    ebp
 357:	0e                   	push   cs
 358:	ac                   	lods   al,BYTE PTR ds:[esi]
 359:	01 44 0e b0          	add    DWORD PTR [esi+ecx*1-0x50],eax
 35d:	01 4e 0e             	add    DWORD PTR [esi+0xe],ecx
 360:	90                   	nop
 361:	01 53 0e             	add    DWORD PTR [ebx+0xe],edx
 364:	94                   	xchg   esp,eax
 365:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 368:	98                   	cwde
 369:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 36c:	9c                   	pushf
 36d:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 370:	a0 01 48 0e 90       	mov    al,ds:0x900e4801
 375:	01 00                	add    DWORD PTR [eax],eax
 377:	00 d0                	add    al,dl
 379:	00 00                	add    BYTE PTR [eax],al
 37b:	00 7c 03 00          	add    BYTE PTR [ebx+eax*1+0x0],bh
 37f:	00 00                	add    BYTE PTR [eax],al
 381:	06                   	push   es
 382:	00 00                	add    BYTE PTR [eax],al
 384:	c9                   	leave
 385:	02 00                	add    al,BYTE PTR [eax]
 387:	00 00                	add    BYTE PTR [eax],al
 389:	41                   	inc    ecx
 38a:	0e                   	push   cs
 38b:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
 391:	83 03 46             	add    DWORD PTR [ebx],0x46
 394:	0e                   	push   cs
 395:	a0 01 02 62 0a       	mov    al,ds:0xa620201
 39a:	0e                   	push   cs
 39b:	0c 41                	or     al,0x41
 39d:	c3                   	ret
 39e:	0e                   	push   cs
 39f:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 3a2:	0e                   	push   cs
 3a3:	04 44                	add    al,0x44
 3a5:	0b 02                	or     eax,DWORD PTR [edx]
 3a7:	61                   	popa
 3a8:	0a 0e                	or     cl,BYTE PTR [esi]
 3aa:	0c 43                	or     al,0x43
 3ac:	c3                   	ret
 3ad:	0e                   	push   cs
 3ae:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 3b1:	0e                   	push   cs
 3b2:	04 4b                	add    al,0x4b
 3b4:	0b 4d 0e             	or     ecx,DWORD PTR [ebp+0xe]
 3b7:	a8 01                	test   al,0x1
 3b9:	4b                   	dec    ebx
 3ba:	0e                   	push   cs
 3bb:	ac                   	lods   al,BYTE PTR ds:[esi]
 3bc:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3bf:	b0 01                	mov    al,0x1
 3c1:	46                   	inc    esi
 3c2:	0e                   	push   cs
 3c3:	ac                   	lods   al,BYTE PTR ds:[esi]
 3c4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3c7:	a8 01                	test   al,0x1
 3c9:	4b                   	dec    ebx
 3ca:	0e                   	push   cs
 3cb:	ac                   	lods   al,BYTE PTR ds:[esi]
 3cc:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3cf:	b0 01                	mov    al,0x1
 3d1:	48                   	dec    eax
 3d2:	0e                   	push   cs
 3d3:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 3d4:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 3d7:	a8 01                	test   al,0x1
 3d9:	45                   	inc    ebp
 3da:	0e                   	push   cs
 3db:	ac                   	lods   al,BYTE PTR ds:[esi]
 3dc:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3df:	b0 01                	mov    al,0x1
 3e1:	55                   	push   ebp
 3e2:	0e                   	push   cs
 3e3:	a0 01 4d 0a 0e       	mov    al,ds:0xe0a4d01
 3e8:	0c 41                	or     al,0x41
 3ea:	c3                   	ret
 3eb:	0e                   	push   cs
 3ec:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 3ef:	0e                   	push   cs
 3f0:	04 44                	add    al,0x44
 3f2:	0b 6e 0e             	or     ebp,DWORD PTR [esi+0xe]
 3f5:	a8 01                	test   al,0x1
 3f7:	41                   	inc    ecx
 3f8:	0e                   	push   cs
 3f9:	ac                   	lods   al,BYTE PTR ds:[esi]
 3fa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3fd:	b0 01                	mov    al,0x1
 3ff:	4a                   	dec    edx
 400:	0e                   	push   cs
 401:	ac                   	lods   al,BYTE PTR ds:[esi]
 402:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 405:	a8 01                	test   al,0x1
 407:	45                   	inc    ebp
 408:	0e                   	push   cs
 409:	ac                   	lods   al,BYTE PTR ds:[esi]
 40a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 40d:	b0 01                	mov    al,0x1
 40f:	59                   	pop    ecx
 410:	0e                   	push   cs
 411:	0c 43                	or     al,0x43
 413:	c3                   	ret
 414:	0e                   	push   cs
 415:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 418:	0e                   	push   cs
 419:	04 4e                	add    al,0x4e
 41b:	0e                   	push   cs
 41c:	a0 01 83 03 86       	mov    al,ds:0x86038301
 421:	02 02                	add    al,BYTE PTR [edx]
 423:	46                   	inc    esi
 424:	0e                   	push   cs
 425:	ac                   	lods   al,BYTE PTR ds:[esi]
 426:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
 429:	b0 01                	mov    al,0x1
 42b:	4f                   	dec    edi
 42c:	0e                   	push   cs
 42d:	0c 41                	or     al,0x41
 42f:	c3                   	ret
 430:	0e                   	push   cs
 431:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 434:	0e                   	push   cs
 435:	04 4a                	add    al,0x4a
 437:	0e                   	push   cs
 438:	a0 01 83 03 86       	mov    al,ds:0x86038301
 43d:	02 7d 0e             	add    bh,BYTE PTR [ebp+0xe]
 440:	ac                   	lods   al,BYTE PTR ds:[esi]
 441:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 444:	b0 01                	mov    al,0x1
 446:	48                   	dec    eax
 447:	0e                   	push   cs
 448:	a0 01 00 00 60       	mov    al,ds:0x60000001
 44d:	00 00                	add    BYTE PTR [eax],al
 44f:	00 50 04             	add    BYTE PTR [eax+0x4],dl
 452:	00 00                	add    BYTE PTR [eax],al
 454:	d0 08                	ror    BYTE PTR [eax],1
 456:	00 00                	add    BYTE PTR [eax],al
 458:	2a 01                	sub    al,BYTE PTR [ecx]
 45a:	00 00                	add    BYTE PTR [eax],al
 45c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 45f:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
 465:	83 03 43             	add    DWORD PTR [ebx],0x43
 468:	0e                   	push   cs
 469:	10 02                	adc    BYTE PTR [edx],al
 46b:	6c                   	ins    BYTE PTR es:[edi],dx
 46c:	0a 0e                	or     cl,BYTE PTR [esi]
 46e:	0c 43                	or     al,0x43
 470:	c3                   	ret
 471:	0e                   	push   cs
 472:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 475:	0e                   	push   cs
 476:	04 4b                	add    al,0x4b
 478:	0b 63 0a             	or     esp,DWORD PTR [ebx+0xa]
 47b:	0e                   	push   cs
 47c:	0c 41                	or     al,0x41
 47e:	c3                   	ret
 47f:	0e                   	push   cs
 480:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 483:	0e                   	push   cs
 484:	04 4b                	add    al,0x4b
 486:	0b 72 0a             	or     esi,DWORD PTR [edx+0xa]
 489:	0e                   	push   cs
 48a:	0c 41                	or     al,0x41
 48c:	c3                   	ret
 48d:	0e                   	push   cs
 48e:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 491:	0e                   	push   cs
 492:	04 4c                	add    al,0x4c
 494:	0b 54 0e 1c          	or     edx,DWORD PTR [esi+ecx*1+0x1c]
 498:	43                   	inc    ebx
 499:	0e                   	push   cs
 49a:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 49d:	0c 43                	or     al,0x43
 49f:	c3                   	ret
 4a0:	0e                   	push   cs
 4a1:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 4a4:	0e                   	push   cs
 4a5:	04 4d                	add    al,0x4d
 4a7:	0e                   	push   cs
 4a8:	10 83 03 86 02 00    	adc    BYTE PTR [ebx+0x28603],al
	...
