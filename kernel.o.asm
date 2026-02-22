
kernel.o:     file format elf32-i386


Disassembly of section .text:

00000000 <gdt_init>:
   0:	83 ec 18             	sub    esp,0x18
   3:	b8 27 00 00 00       	mov    eax,0x27
   8:	c7 05 22 08 00 00 40 	mov    DWORD PTR ds:0x822,0x840
   f:	08 00 00 
  12:	68 20 08 00 00       	push   0x820
  17:	66 a3 20 08 00 00    	mov    ds:0x820,ax
  1d:	c7 05 40 08 00 00 00 	mov    DWORD PTR ds:0x840,0x0
  24:	00 00 00 
  27:	c7 05 44 08 00 00 00 	mov    DWORD PTR ds:0x844,0x0
  2e:	00 00 00 
  31:	c7 05 48 08 00 00 ff 	mov    DWORD PTR ds:0x848,0xffff
  38:	ff 00 00 
  3b:	c7 05 4c 08 00 00 00 	mov    DWORD PTR ds:0x84c,0xcf9a00
  42:	9a cf 00 
  45:	c7 05 50 08 00 00 ff 	mov    DWORD PTR ds:0x850,0xffff
  4c:	ff 00 00 
  4f:	c7 05 54 08 00 00 00 	mov    DWORD PTR ds:0x854,0xcf9200
  56:	92 cf 00 
  59:	c7 05 58 08 00 00 ff 	mov    DWORD PTR ds:0x858,0xffff
  60:	ff 00 00 
  63:	c7 05 5c 08 00 00 00 	mov    DWORD PTR ds:0x85c,0xcffa00
  6a:	fa cf 00 
  6d:	c7 05 60 08 00 00 ff 	mov    DWORD PTR ds:0x860,0xffff
  74:	ff 00 00 
  77:	c7 05 64 08 00 00 00 	mov    DWORD PTR ds:0x864,0xcff200
  7e:	f2 cf 00 
  81:	e8 fc ff ff ff       	call   82 <gdt_init+0x82>
  86:	83 c4 1c             	add    esp,0x1c
  89:	c3                   	ret
  8a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000090 <idt_set_gate>:
  90:	53                   	push   ebx
  91:	0f b6 44 24 08       	movzx  eax,BYTE PTR [esp+0x8]
  96:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  9a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  9e:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  a2:	66 89 14 c5 20 00 00 	mov    WORD PTR [eax*8+0x20],dx
  a9:	00 
  aa:	c1 ea 10             	shr    edx,0x10
  ad:	66 89 14 c5 26 00 00 	mov    WORD PTR [eax*8+0x26],dx
  b4:	00 
  b5:	0f b7 15 00 00 00 00 	movzx  edx,WORD PTR ds:0x0
  bc:	66 89 1c c5 22 00 00 	mov    WORD PTR [eax*8+0x22],bx
  c3:	00 
  c4:	88 ce                	mov    dh,cl
  c6:	66 89 14 c5 24 00 00 	mov    WORD PTR [eax*8+0x24],dx
  cd:	00 
  ce:	5b                   	pop    ebx
  cf:	c3                   	ret

000000d0 <idt_init>:
  d0:	83 ec 10             	sub    esp,0x10
  d3:	b8 ff 07 00 00       	mov    eax,0x7ff
  d8:	c7 05 02 00 00 00 20 	mov    DWORD PTR ds:0x2,0x20
  df:	00 00 00 
  e2:	68 00 08 00 00       	push   0x800
  e7:	6a 00                	push   0x0
  e9:	68 20 00 00 00       	push   0x20
  ee:	66 a3 00 00 00 00    	mov    ds:0x0,ax
  f4:	e8 fc ff ff ff       	call   f5 <idt_init+0x25>
  f9:	b8 00 00 00 00       	mov    eax,0x0
  fe:	c7 05 22 00 00 00 08 	mov    DWORD PTR ds:0x22,0x8e000008
 105:	00 00 8e 
 108:	66 a3 20 00 00 00    	mov    ds:0x20,ax
 10e:	c1 e8 10             	shr    eax,0x10
 111:	66 a3 26 00 00 00    	mov    ds:0x26,ax
 117:	b8 00 00 00 00       	mov    eax,0x0
 11c:	66 a3 28 00 00 00    	mov    ds:0x28,ax
 122:	c1 e8 10             	shr    eax,0x10
 125:	66 a3 2e 00 00 00    	mov    ds:0x2e,ax
 12b:	b8 00 00 00 00       	mov    eax,0x0
 130:	66 a3 30 00 00 00    	mov    ds:0x30,ax
 136:	c1 e8 10             	shr    eax,0x10
 139:	66 a3 36 00 00 00    	mov    ds:0x36,ax
 13f:	b8 00 00 00 00       	mov    eax,0x0
 144:	66 a3 38 00 00 00    	mov    ds:0x38,ax
 14a:	c1 e8 10             	shr    eax,0x10
 14d:	66 a3 3e 00 00 00    	mov    ds:0x3e,ax
 153:	b8 00 00 00 00       	mov    eax,0x0
 158:	66 a3 40 00 00 00    	mov    ds:0x40,ax
 15e:	c1 e8 10             	shr    eax,0x10
 161:	66 a3 46 00 00 00    	mov    ds:0x46,ax
 167:	b8 00 00 00 00       	mov    eax,0x0
 16c:	66 a3 48 00 00 00    	mov    ds:0x48,ax
 172:	c1 e8 10             	shr    eax,0x10
 175:	66 a3 4e 00 00 00    	mov    ds:0x4e,ax
 17b:	b8 00 00 00 00       	mov    eax,0x0
 180:	66 a3 50 00 00 00    	mov    ds:0x50,ax
 186:	c1 e8 10             	shr    eax,0x10
 189:	66 a3 56 00 00 00    	mov    ds:0x56,ax
 18f:	b8 00 00 00 00       	mov    eax,0x0
 194:	66 a3 58 00 00 00    	mov    ds:0x58,ax
 19a:	c1 e8 10             	shr    eax,0x10
 19d:	66 a3 5e 00 00 00    	mov    ds:0x5e,ax
 1a3:	b8 00 00 00 00       	mov    eax,0x0
 1a8:	66 a3 60 00 00 00    	mov    ds:0x60,ax
 1ae:	c1 e8 10             	shr    eax,0x10
 1b1:	66 a3 66 00 00 00    	mov    ds:0x66,ax
 1b7:	b8 00 00 00 00       	mov    eax,0x0
 1bc:	66 a3 68 00 00 00    	mov    ds:0x68,ax
 1c2:	c1 e8 10             	shr    eax,0x10
 1c5:	66 a3 6e 00 00 00    	mov    ds:0x6e,ax
 1cb:	b8 00 00 00 00       	mov    eax,0x0
 1d0:	66 a3 70 00 00 00    	mov    ds:0x70,ax
 1d6:	c1 e8 10             	shr    eax,0x10
 1d9:	66 a3 76 00 00 00    	mov    ds:0x76,ax
 1df:	b8 00 00 00 00       	mov    eax,0x0
 1e4:	c7 05 2a 00 00 00 08 	mov    DWORD PTR ds:0x2a,0x8e000008
 1eb:	00 00 8e 
 1ee:	c7 05 32 00 00 00 08 	mov    DWORD PTR ds:0x32,0x8e000008
 1f5:	00 00 8e 
 1f8:	c7 05 3a 00 00 00 08 	mov    DWORD PTR ds:0x3a,0x8e000008
 1ff:	00 00 8e 
 202:	c7 05 42 00 00 00 08 	mov    DWORD PTR ds:0x42,0x8e000008
 209:	00 00 8e 
 20c:	c7 05 4a 00 00 00 08 	mov    DWORD PTR ds:0x4a,0x8e000008
 213:	00 00 8e 
 216:	c7 05 52 00 00 00 08 	mov    DWORD PTR ds:0x52,0x8e000008
 21d:	00 00 8e 
 220:	c7 05 5a 00 00 00 08 	mov    DWORD PTR ds:0x5a,0x8e000008
 227:	00 00 8e 
 22a:	c7 05 62 00 00 00 08 	mov    DWORD PTR ds:0x62,0x8e000008
 231:	00 00 8e 
 234:	c7 05 6a 00 00 00 08 	mov    DWORD PTR ds:0x6a,0x8e000008
 23b:	00 00 8e 
 23e:	c7 05 72 00 00 00 08 	mov    DWORD PTR ds:0x72,0x8e000008
 245:	00 00 8e 
 248:	66 a3 78 00 00 00    	mov    ds:0x78,ax
 24e:	c1 e8 10             	shr    eax,0x10
 251:	66 a3 7e 00 00 00    	mov    ds:0x7e,ax
 257:	b8 00 00 00 00       	mov    eax,0x0
 25c:	66 a3 80 00 00 00    	mov    ds:0x80,ax
 262:	c1 e8 10             	shr    eax,0x10
 265:	66 a3 86 00 00 00    	mov    ds:0x86,ax
 26b:	b8 00 00 00 00       	mov    eax,0x0
 270:	66 a3 88 00 00 00    	mov    ds:0x88,ax
 276:	c1 e8 10             	shr    eax,0x10
 279:	66 a3 8e 00 00 00    	mov    ds:0x8e,ax
 27f:	b8 00 00 00 00       	mov    eax,0x0
 284:	66 a3 90 00 00 00    	mov    ds:0x90,ax
 28a:	c1 e8 10             	shr    eax,0x10
 28d:	66 a3 96 00 00 00    	mov    ds:0x96,ax
 293:	b8 00 00 00 00       	mov    eax,0x0
 298:	66 a3 98 00 00 00    	mov    ds:0x98,ax
 29e:	c1 e8 10             	shr    eax,0x10
 2a1:	66 a3 9e 00 00 00    	mov    ds:0x9e,ax
 2a7:	b8 00 00 00 00       	mov    eax,0x0
 2ac:	66 a3 a0 00 00 00    	mov    ds:0xa0,ax
 2b2:	c1 e8 10             	shr    eax,0x10
 2b5:	66 a3 a6 00 00 00    	mov    ds:0xa6,ax
 2bb:	b8 00 00 00 00       	mov    eax,0x0
 2c0:	66 a3 a8 00 00 00    	mov    ds:0xa8,ax
 2c6:	c1 e8 10             	shr    eax,0x10
 2c9:	66 a3 ae 00 00 00    	mov    ds:0xae,ax
 2cf:	b8 00 00 00 00       	mov    eax,0x0
 2d4:	66 a3 b0 00 00 00    	mov    ds:0xb0,ax
 2da:	c1 e8 10             	shr    eax,0x10
 2dd:	66 a3 b6 00 00 00    	mov    ds:0xb6,ax
 2e3:	b8 00 00 00 00       	mov    eax,0x0
 2e8:	66 a3 b8 00 00 00    	mov    ds:0xb8,ax
 2ee:	c1 e8 10             	shr    eax,0x10
 2f1:	66 a3 be 00 00 00    	mov    ds:0xbe,ax
 2f7:	b8 00 00 00 00       	mov    eax,0x0
 2fc:	66 a3 c0 00 00 00    	mov    ds:0xc0,ax
 302:	c1 e8 10             	shr    eax,0x10
 305:	66 a3 c6 00 00 00    	mov    ds:0xc6,ax
 30b:	b8 00 00 00 00       	mov    eax,0x0
 310:	66 a3 c8 00 00 00    	mov    ds:0xc8,ax
 316:	c1 e8 10             	shr    eax,0x10
 319:	66 a3 ce 00 00 00    	mov    ds:0xce,ax
 31f:	b8 00 00 00 00       	mov    eax,0x0
 324:	c7 05 7a 00 00 00 08 	mov    DWORD PTR ds:0x7a,0x8e000008
 32b:	00 00 8e 
 32e:	c7 05 82 00 00 00 08 	mov    DWORD PTR ds:0x82,0x8e000008
 335:	00 00 8e 
 338:	c7 05 8a 00 00 00 08 	mov    DWORD PTR ds:0x8a,0x8e000008
 33f:	00 00 8e 
 342:	c7 05 92 00 00 00 08 	mov    DWORD PTR ds:0x92,0x8e000008
 349:	00 00 8e 
 34c:	c7 05 9a 00 00 00 08 	mov    DWORD PTR ds:0x9a,0x8e000008
 353:	00 00 8e 
 356:	c7 05 a2 00 00 00 08 	mov    DWORD PTR ds:0xa2,0x8e000008
 35d:	00 00 8e 
 360:	c7 05 aa 00 00 00 08 	mov    DWORD PTR ds:0xaa,0x8e000008
 367:	00 00 8e 
 36a:	c7 05 b2 00 00 00 08 	mov    DWORD PTR ds:0xb2,0x8e000008
 371:	00 00 8e 
 374:	c7 05 ba 00 00 00 08 	mov    DWORD PTR ds:0xba,0x8e000008
 37b:	00 00 8e 
 37e:	c7 05 c2 00 00 00 08 	mov    DWORD PTR ds:0xc2,0x8e000008
 385:	00 00 8e 
 388:	c7 05 ca 00 00 00 08 	mov    DWORD PTR ds:0xca,0x8e000008
 38f:	00 00 8e 
 392:	66 a3 d0 00 00 00    	mov    ds:0xd0,ax
 398:	c1 e8 10             	shr    eax,0x10
 39b:	66 a3 d6 00 00 00    	mov    ds:0xd6,ax
 3a1:	b8 00 00 00 00       	mov    eax,0x0
 3a6:	66 a3 d8 00 00 00    	mov    ds:0xd8,ax
 3ac:	c1 e8 10             	shr    eax,0x10
 3af:	66 a3 de 00 00 00    	mov    ds:0xde,ax
 3b5:	b8 00 00 00 00       	mov    eax,0x0
 3ba:	66 a3 e0 00 00 00    	mov    ds:0xe0,ax
 3c0:	c1 e8 10             	shr    eax,0x10
 3c3:	66 a3 e6 00 00 00    	mov    ds:0xe6,ax
 3c9:	b8 00 00 00 00       	mov    eax,0x0
 3ce:	66 a3 e8 00 00 00    	mov    ds:0xe8,ax
 3d4:	c1 e8 10             	shr    eax,0x10
 3d7:	66 a3 ee 00 00 00    	mov    ds:0xee,ax
 3dd:	b8 00 00 00 00       	mov    eax,0x0
 3e2:	66 a3 f0 00 00 00    	mov    ds:0xf0,ax
 3e8:	c1 e8 10             	shr    eax,0x10
 3eb:	66 a3 f6 00 00 00    	mov    ds:0xf6,ax
 3f1:	b8 00 00 00 00       	mov    eax,0x0
 3f6:	66 a3 f8 00 00 00    	mov    ds:0xf8,ax
 3fc:	c1 e8 10             	shr    eax,0x10
 3ff:	66 a3 fe 00 00 00    	mov    ds:0xfe,ax
 405:	b8 00 00 00 00       	mov    eax,0x0
 40a:	66 a3 00 01 00 00    	mov    ds:0x100,ax
 410:	c1 e8 10             	shr    eax,0x10
 413:	66 a3 06 01 00 00    	mov    ds:0x106,ax
 419:	b8 00 00 00 00       	mov    eax,0x0
 41e:	66 a3 08 01 00 00    	mov    ds:0x108,ax
 424:	c1 e8 10             	shr    eax,0x10
 427:	66 a3 0e 01 00 00    	mov    ds:0x10e,ax
 42d:	b8 00 00 00 00       	mov    eax,0x0
 432:	66 a3 10 01 00 00    	mov    ds:0x110,ax
 438:	c1 e8 10             	shr    eax,0x10
 43b:	66 a3 16 01 00 00    	mov    ds:0x116,ax
 441:	b8 00 00 00 00       	mov    eax,0x0
 446:	66 a3 18 01 00 00    	mov    ds:0x118,ax
 44c:	c1 e8 10             	shr    eax,0x10
 44f:	66 a3 1e 01 00 00    	mov    ds:0x11e,ax
 455:	b8 00 00 00 00       	mov    eax,0x0
 45a:	66 a3 20 01 00 00    	mov    ds:0x120,ax
 460:	c1 e8 10             	shr    eax,0x10
 463:	66 a3 26 01 00 00    	mov    ds:0x126,ax
 469:	b8 00 00 00 00       	mov    eax,0x0
 46e:	c7 05 d2 00 00 00 08 	mov    DWORD PTR ds:0xd2,0x8e000008
 475:	00 00 8e 
 478:	c7 05 da 00 00 00 08 	mov    DWORD PTR ds:0xda,0x8e000008
 47f:	00 00 8e 
 482:	c7 05 e2 00 00 00 08 	mov    DWORD PTR ds:0xe2,0x8e000008
 489:	00 00 8e 
 48c:	c7 05 ea 00 00 00 08 	mov    DWORD PTR ds:0xea,0x8e000008
 493:	00 00 8e 
 496:	c7 05 f2 00 00 00 08 	mov    DWORD PTR ds:0xf2,0x8e000008
 49d:	00 00 8e 
 4a0:	c7 05 fa 00 00 00 08 	mov    DWORD PTR ds:0xfa,0x8e000008
 4a7:	00 00 8e 
 4aa:	c7 05 02 01 00 00 08 	mov    DWORD PTR ds:0x102,0x8e000008
 4b1:	00 00 8e 
 4b4:	c7 05 0a 01 00 00 08 	mov    DWORD PTR ds:0x10a,0x8e000008
 4bb:	00 00 8e 
 4be:	c7 05 12 01 00 00 08 	mov    DWORD PTR ds:0x112,0x8e000008
 4c5:	00 00 8e 
 4c8:	c7 05 1a 01 00 00 08 	mov    DWORD PTR ds:0x11a,0x8e000008
 4cf:	00 00 8e 
 4d2:	c7 05 22 01 00 00 08 	mov    DWORD PTR ds:0x122,0x8e000008
 4d9:	00 00 8e 
 4dc:	66 a3 28 01 00 00    	mov    ds:0x128,ax
 4e2:	c1 e8 10             	shr    eax,0x10
 4e5:	66 a3 2e 01 00 00    	mov    ds:0x12e,ax
 4eb:	b8 00 00 00 00       	mov    eax,0x0
 4f0:	66 a3 30 01 00 00    	mov    ds:0x130,ax
 4f6:	c1 e8 10             	shr    eax,0x10
 4f9:	66 a3 36 01 00 00    	mov    ds:0x136,ax
 4ff:	b8 00 00 00 00       	mov    eax,0x0
 504:	66 a3 38 01 00 00    	mov    ds:0x138,ax
 50a:	c1 e8 10             	shr    eax,0x10
 50d:	66 a3 3e 01 00 00    	mov    ds:0x13e,ax
 513:	b8 00 00 00 00       	mov    eax,0x0
 518:	66 a3 40 01 00 00    	mov    ds:0x140,ax
 51e:	c1 e8 10             	shr    eax,0x10
 521:	66 a3 46 01 00 00    	mov    ds:0x146,ax
 527:	b8 00 00 00 00       	mov    eax,0x0
 52c:	66 a3 48 01 00 00    	mov    ds:0x148,ax
 532:	c1 e8 10             	shr    eax,0x10
 535:	66 a3 4e 01 00 00    	mov    ds:0x14e,ax
 53b:	b8 00 00 00 00       	mov    eax,0x0
 540:	66 a3 50 01 00 00    	mov    ds:0x150,ax
 546:	c1 e8 10             	shr    eax,0x10
 549:	66 a3 56 01 00 00    	mov    ds:0x156,ax
 54f:	b8 00 00 00 00       	mov    eax,0x0
 554:	66 a3 58 01 00 00    	mov    ds:0x158,ax
 55a:	c1 e8 10             	shr    eax,0x10
 55d:	66 a3 5e 01 00 00    	mov    ds:0x15e,ax
 563:	b8 00 00 00 00       	mov    eax,0x0
 568:	66 a3 60 01 00 00    	mov    ds:0x160,ax
 56e:	c1 e8 10             	shr    eax,0x10
 571:	66 a3 66 01 00 00    	mov    ds:0x166,ax
 577:	b8 00 00 00 00       	mov    eax,0x0
 57c:	66 a3 68 01 00 00    	mov    ds:0x168,ax
 582:	c1 e8 10             	shr    eax,0x10
 585:	66 a3 6e 01 00 00    	mov    ds:0x16e,ax
 58b:	b8 00 00 00 00       	mov    eax,0x0
 590:	66 a3 70 01 00 00    	mov    ds:0x170,ax
 596:	c1 e8 10             	shr    eax,0x10
 599:	66 a3 76 01 00 00    	mov    ds:0x176,ax
 59f:	b8 00 00 00 00       	mov    eax,0x0
 5a4:	66 a3 78 01 00 00    	mov    ds:0x178,ax
 5aa:	c1 e8 10             	shr    eax,0x10
 5ad:	66 a3 7e 01 00 00    	mov    ds:0x17e,ax
 5b3:	b8 00 00 00 00       	mov    eax,0x0
 5b8:	c7 05 2a 01 00 00 08 	mov    DWORD PTR ds:0x12a,0x8e000008
 5bf:	00 00 8e 
 5c2:	c7 05 32 01 00 00 08 	mov    DWORD PTR ds:0x132,0x8e000008
 5c9:	00 00 8e 
 5cc:	c7 05 3a 01 00 00 08 	mov    DWORD PTR ds:0x13a,0x8e000008
 5d3:	00 00 8e 
 5d6:	c7 05 42 01 00 00 08 	mov    DWORD PTR ds:0x142,0x8e000008
 5dd:	00 00 8e 
 5e0:	c7 05 4a 01 00 00 08 	mov    DWORD PTR ds:0x14a,0x8e000008
 5e7:	00 00 8e 
 5ea:	c7 05 52 01 00 00 08 	mov    DWORD PTR ds:0x152,0x8e000008
 5f1:	00 00 8e 
 5f4:	c7 05 5a 01 00 00 08 	mov    DWORD PTR ds:0x15a,0x8e000008
 5fb:	00 00 8e 
 5fe:	c7 05 62 01 00 00 08 	mov    DWORD PTR ds:0x162,0x8e000008
 605:	00 00 8e 
 608:	c7 05 6a 01 00 00 08 	mov    DWORD PTR ds:0x16a,0x8e000008
 60f:	00 00 8e 
 612:	c7 05 72 01 00 00 08 	mov    DWORD PTR ds:0x172,0x8e000008
 619:	00 00 8e 
 61c:	c7 05 7a 01 00 00 08 	mov    DWORD PTR ds:0x17a,0x8e000008
 623:	00 00 8e 
 626:	66 a3 80 01 00 00    	mov    ds:0x180,ax
 62c:	c1 e8 10             	shr    eax,0x10
 62f:	66 a3 86 01 00 00    	mov    ds:0x186,ax
 635:	b8 00 00 00 00       	mov    eax,0x0
 63a:	66 a3 88 01 00 00    	mov    ds:0x188,ax
 640:	c1 e8 10             	shr    eax,0x10
 643:	66 a3 8e 01 00 00    	mov    ds:0x18e,ax
 649:	b8 00 00 00 00       	mov    eax,0x0
 64e:	66 a3 90 01 00 00    	mov    ds:0x190,ax
 654:	c1 e8 10             	shr    eax,0x10
 657:	66 a3 96 01 00 00    	mov    ds:0x196,ax
 65d:	b8 00 00 00 00       	mov    eax,0x0
 662:	66 a3 98 01 00 00    	mov    ds:0x198,ax
 668:	c1 e8 10             	shr    eax,0x10
 66b:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 672:	c7 05 82 01 00 00 08 	mov    DWORD PTR ds:0x182,0x8e000008
 679:	00 00 8e 
 67c:	c7 05 8a 01 00 00 08 	mov    DWORD PTR ds:0x18a,0x8e000008
 683:	00 00 8e 
 686:	c7 05 92 01 00 00 08 	mov    DWORD PTR ds:0x192,0x8e000008
 68d:	00 00 8e 
 690:	66 a3 9e 01 00 00    	mov    ds:0x19e,ax
 696:	c7 05 9a 01 00 00 08 	mov    DWORD PTR ds:0x19a,0x8e000008
 69d:	00 00 8e 
 6a0:	e8 fc ff ff ff       	call   6a1 <idt_init+0x5d1>
 6a5:	83 c4 1c             	add    esp,0x1c
 6a8:	c3                   	ret
 6a9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

000006b0 <rtc_seconds>:
 6b0:	31 c0                	xor    eax,eax
 6b2:	e6 70                	out    0x70,al
 6b4:	e4 71                	in     al,0x71
 6b6:	89 c2                	mov    edx,eax
 6b8:	83 e0 0f             	and    eax,0xf
 6bb:	c0 ea 04             	shr    dl,0x4
 6be:	8d 14 92             	lea    edx,[edx+edx*4]
 6c1:	8d 04 50             	lea    eax,[eax+edx*2]
 6c4:	c3                   	ret
 6c5:	8d 76 00             	lea    esi,[esi+0x0]
 6c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6cf:	00 

000006d0 <rtc_minutes>:
 6d0:	b8 02 00 00 00       	mov    eax,0x2
 6d5:	e6 70                	out    0x70,al
 6d7:	e4 71                	in     al,0x71
 6d9:	89 c2                	mov    edx,eax
 6db:	83 e0 0f             	and    eax,0xf
 6de:	c0 ea 04             	shr    dl,0x4
 6e1:	8d 14 92             	lea    edx,[edx+edx*4]
 6e4:	8d 04 50             	lea    eax,[eax+edx*2]
 6e7:	c3                   	ret
 6e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6ef:	00 

000006f0 <rtc_hours>:
 6f0:	b8 04 00 00 00       	mov    eax,0x4
 6f5:	e6 70                	out    0x70,al
 6f7:	e4 71                	in     al,0x71
 6f9:	89 c2                	mov    edx,eax
 6fb:	83 e0 0f             	and    eax,0xf
 6fe:	c0 ea 04             	shr    dl,0x4
 701:	8d 14 92             	lea    edx,[edx+edx*4]
 704:	8d 04 50             	lea    eax,[eax+edx*2]
 707:	c3                   	ret
 708:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 70f:	00 

00000710 <kernel_main>:
 710:	83 ec 1c             	sub    esp,0x1c
 713:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 717:	81 7c 24 20 02 b0 ad 	cmp    DWORD PTR [esp+0x20],0x2badb002
 71e:	2b 
 71f:	74 07                	je     728 <kernel_main+0x18>
 721:	83 c4 1c             	add    esp,0x1c
 724:	c3                   	ret
 725:	8d 76 00             	lea    esi,[esi+0x0]
 728:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 72c:	e8 fc ff ff ff       	call   72d <kernel_main+0x1d>
 731:	e8 fc ff ff ff       	call   732 <kernel_main+0x22>
 736:	e8 fc ff ff ff       	call   737 <kernel_main+0x27>
 73b:	83 ec 0c             	sub    esp,0xc
 73e:	6a 64                	push   0x64
 740:	e8 fc ff ff ff       	call   741 <kernel_main+0x31>
 745:	58                   	pop    eax
 746:	5a                   	pop    edx
 747:	ba ff 0f 00 00       	mov    edx,0xfff
 74c:	81 e2 00 f0 ff ff    	and    edx,0xfffff000
 752:	68 00 00 00 02       	push   0x2000000
 757:	52                   	push   edx
 758:	e8 fc ff ff ff       	call   759 <kernel_main+0x49>
 75d:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 761:	83 c4 10             	add    esp,0x10
 764:	f6 40 01 10          	test   BYTE PTR [eax+0x1],0x10
 768:	75 39                	jne    7a3 <kernel_main+0x93>
 76a:	b9 01 00 00 00       	mov    ecx,0x1
 76f:	ba 00 80 0b 00       	mov    edx,0xb8000
 774:	b8 53 00 00 00       	mov    eax,0x53
 779:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 780:	80 cc 4f             	or     ah,0x4f
 783:	83 c2 02             	add    edx,0x2
 786:	83 c1 01             	add    ecx,0x1
 789:	66 89 42 fe          	mov    WORD PTR [edx-0x2],ax
 78d:	0f b6 41 ff          	movzx  eax,BYTE PTR [ecx-0x1]
 791:	81 fa 4e 80 0b 00    	cmp    edx,0xb804e
 797:	75 e7                	jne    780 <kernel_main+0x70>
 799:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 7a0:	f4                   	hlt
 7a1:	eb fd                	jmp    7a0 <kernel_main+0x90>
 7a3:	83 ec 0c             	sub    esp,0xc
 7a6:	50                   	push   eax
 7a7:	e8 fc ff ff ff       	call   7a8 <kernel_main+0x98>
 7ac:	e8 fc ff ff ff       	call   7ad <kernel_main+0x9d>
 7b1:	e8 fc ff ff ff       	call   7b2 <kernel_main+0xa2>
 7b6:	e8 fc ff ff ff       	call   7b7 <kernel_main+0xa7>
 7bb:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 7bf:	e8 fc ff ff ff       	call   7c0 <kernel_main+0xb0>
 7c4:	5a                   	pop    edx
 7c5:	59                   	pop    ecx
 7c6:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
 7ca:	52                   	push   edx
 7cb:	50                   	push   eax
 7cc:	e8 fc ff ff ff       	call   7cd <kernel_main+0xbd>
 7d1:	fb                   	sti
 7d2:	e8 fc ff ff ff       	call   7d3 <kernel_main+0xc3>
 7d7:	e8 fc ff ff ff       	call   7d8 <kernel_main+0xc8>
 7dc:	83 c4 10             	add    esp,0x10
 7df:	85 c0                	test   eax,eax
 7e1:	74 12                	je     7f5 <kernel_main+0xe5>
 7e3:	e8 fc ff ff ff       	call   7e4 <kernel_main+0xd4>
 7e8:	e8 fc ff ff ff       	call   7e9 <kernel_main+0xd9>
 7ed:	83 c4 1c             	add    esp,0x1c
 7f0:	e9 fc ff ff ff       	jmp    7f1 <kernel_main+0xe1>
 7f5:	e8 fc ff ff ff       	call   7f6 <kernel_main+0xe6>
 7fa:	e8 fc ff ff ff       	call   7fb <kernel_main+0xeb>
 7ff:	eb e2                	jmp    7e3 <kernel_main+0xd3>

Disassembly of section .rodata.str1.4:

00000000 <.LC1>:
   0:	53                   	push   ebx
   1:	6c                   	ins    BYTE PTR es:[edi],dx
   2:	6f                   	outs   dx,DWORD PTR ds:[esi]
   3:	70 4f                	jo     54 <idt_entries+0x34>
   5:	53                   	push   ebx
   6:	3a 20                	cmp    ah,BYTE PTR [eax]
   8:	6e                   	outs   dx,BYTE PTR ds:[esi]
   9:	6f                   	outs   dx,DWORD PTR ds:[esi]
   a:	20 66 72             	and    BYTE PTR [esi+0x72],ah
   d:	61                   	popa
   e:	6d                   	ins    DWORD PTR es:[edi],dx
   f:	65 62 75 66          	bound  esi,QWORD PTR gs:[ebp+0x66]
  13:	66 65 72 20          	data16 gs jb 37 <idt_entries+0x17>
  17:	66 72 6f             	data16 jb 89 <idt_entries+0x69>
  1a:	6d                   	ins    DWORD PTR es:[edi],dx
  1b:	20 62 6f             	and    BYTE PTR [edx+0x6f],ah
  1e:	6f                   	outs   dx,DWORD PTR ds:[esi]
  1f:	74 6c                	je     8d <idt_entries+0x6d>
  21:	6f                   	outs   dx,DWORD PTR ds:[esi]
  22:	61                   	popa
  23:	64 65 72 21          	fs gs jb 48 <idt_entries+0x28>
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
  17:	00 18                	add    BYTE PTR [eax],bl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	8a 00                	mov    al,BYTE PTR [eax]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 43 0e             	add    BYTE PTR [ebx+0xe],al
  2b:	1c 54                	sbb    al,0x54
  2d:	0e                   	push   cs
  2e:	20 02                	and    BYTE PTR [edx],al
  30:	72 0e                	jb     40 <.eh_frame+0x40>
  32:	04 00                	add    al,0x0
  34:	18 00                	sbb    BYTE PTR [eax],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	38 00                	cmp    BYTE PTR [eax],al
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	90                   	nop
  3d:	00 00                	add    BYTE PTR [eax],al
  3f:	00 40 00             	add    BYTE PTR [eax+0x0],al
  42:	00 00                	add    BYTE PTR [eax],al
  44:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  47:	08 83 02 7e c3 0e    	or     BYTE PTR [ebx+0xec37e02],al
  4d:	04 00                	add    al,0x0
  4f:	00 20                	add    BYTE PTR [eax],ah
  51:	00 00                	add    BYTE PTR [eax],al
  53:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
  57:	00 d0                	add    al,dl
  59:	00 00                	add    BYTE PTR [eax],al
  5b:	00 d9                	add    cl,bl
  5d:	05 00 00 00 43       	add    eax,0x43000000
  62:	0e                   	push   cs
  63:	14 54                	adc    al,0x54
  65:	0e                   	push   cs
  66:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
  69:	1c 45                	sbb    al,0x45
  6b:	0e                   	push   cs
  6c:	20 03                	and    BYTE PTR [ebx],al
  6e:	ba 05 0e 04 00       	mov    edx,0x40e05
  73:	00 10                	add    BYTE PTR [eax],dl
  75:	00 00                	add    BYTE PTR [eax],al
  77:	00 78 00             	add    BYTE PTR [eax+0x0],bh
  7a:	00 00                	add    BYTE PTR [eax],al
  7c:	b0 06                	mov    al,0x6
  7e:	00 00                	add    BYTE PTR [eax],al
  80:	15 00 00 00 00       	adc    eax,0x0
  85:	00 00                	add    BYTE PTR [eax],al
  87:	00 10                	add    BYTE PTR [eax],dl
  89:	00 00                	add    BYTE PTR [eax],al
  8b:	00 8c 00 00 00 d0 06 	add    BYTE PTR [eax+eax*1+0x6d00000],cl
  92:	00 00                	add    BYTE PTR [eax],al
  94:	18 00                	sbb    BYTE PTR [eax],al
  96:	00 00                	add    BYTE PTR [eax],al
  98:	00 00                	add    BYTE PTR [eax],al
  9a:	00 00                	add    BYTE PTR [eax],al
  9c:	10 00                	adc    BYTE PTR [eax],al
  9e:	00 00                	add    BYTE PTR [eax],al
  a0:	a0 00 00 00 f0       	mov    al,ds:0xf0000000
  a5:	06                   	push   es
  a6:	00 00                	add    BYTE PTR [eax],al
  a8:	18 00                	sbb    BYTE PTR [eax],al
  aa:	00 00                	add    BYTE PTR [eax],al
  ac:	00 00                	add    BYTE PTR [eax],al
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	48                   	dec    eax
  b1:	00 00                	add    BYTE PTR [eax],al
  b3:	00 b4 00 00 00 10 07 	add    BYTE PTR [eax+eax*1+0x7100000],dh
  ba:	00 00                	add    BYTE PTR [eax],al
  bc:	f1                   	int1
  bd:	00 00                	add    BYTE PTR [eax],al
  bf:	00 00                	add    BYTE PTR [eax],al
  c1:	43                   	inc    ebx
  c2:	0e                   	push   cs
  c3:	20 51 0a             	and    BYTE PTR [ecx+0xa],dl
  c6:	0e                   	push   cs
  c7:	04 44                	add    al,0x44
  c9:	0b 56 0e             	or     edx,DWORD PTR [esi+0xe]
  cc:	2c 42                	sub    al,0x42
  ce:	0e                   	push   cs
  cf:	30 46 0e             	xor    BYTE PTR [esi+0xe],al
  d2:	2c 41                	sub    al,0x41
  d4:	0e                   	push   cs
  d5:	28 50 0e             	sub    BYTE PTR [eax+0xe],dl
  d8:	2c 41                	sub    al,0x41
  da:	0e                   	push   cs
  db:	30 4c 0e 20          	xor    BYTE PTR [esi+ecx*1+0x20],cl
  df:	02 42 0e             	add    al,BYTE PTR [edx+0xe]
  e2:	2c 41                	sub    al,0x41
  e4:	0e                   	push   cs
  e5:	30 5e 0e             	xor    BYTE PTR [esi+0xe],bl
  e8:	2c 41                	sub    al,0x41
  ea:	0e                   	push   cs
  eb:	28 45 0e             	sub    BYTE PTR [ebp+0xe],al
  ee:	2c 41                	sub    al,0x41
  f0:	0e                   	push   cs
  f1:	30 53 0e             	xor    BYTE PTR [ebx+0xe],dl
  f4:	20 51 0a             	and    BYTE PTR [ecx+0xa],dl
  f7:	0e                   	push   cs
  f8:	04 45                	add    al,0x45
  fa:	0b 00                	or     eax,DWORD PTR [eax]
