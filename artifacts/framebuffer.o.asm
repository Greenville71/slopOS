
framebuffer.o:     file format elf32-i386


Disassembly of section .text:

00000000 <fb_init>:
   0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
   4:	8b 41 58             	mov    eax,DWORD PTR [ecx+0x58]
   7:	8b 51 64             	mov    edx,DWORD PTR [ecx+0x64]
   a:	a3 0c 00 30 00       	mov    ds:0x30000c,eax
   f:	8b 41 68             	mov    eax,DWORD PTR [ecx+0x68]
  12:	8b 49 60             	mov    ecx,DWORD PTR [ecx+0x60]
  15:	89 0d 00 00 30 00    	mov    DWORD PTR ds:0x300000,ecx
  1b:	b9 00 04 00 00       	mov    ecx,0x400
  20:	39 ca                	cmp    edx,ecx
  22:	0f 4f d1             	cmovg  edx,ecx
  25:	89 15 08 00 30 00    	mov    DWORD PTR ds:0x300008,edx
  2b:	ba 00 03 00 00       	mov    edx,0x300
  30:	39 d0                	cmp    eax,edx
  32:	0f 4f c2             	cmovg  eax,edx
  35:	a3 04 00 30 00       	mov    ds:0x300004,eax
  3a:	c3                   	ret
  3b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]

00000040 <fb_get_width>:
  40:	a1 08 00 30 00       	mov    eax,ds:0x300008
  45:	c3                   	ret
  46:	66 90                	xchg   ax,ax
  48:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  4f:	00 

00000050 <fb_get_height>:
  50:	a1 04 00 30 00       	mov    eax,ds:0x300004
  55:	c3                   	ret
  56:	66 90                	xchg   ax,ax
  58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  5f:	00 

00000060 <fb_put_pixel>:
  60:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  64:	a1 08 00 30 00       	mov    eax,ds:0x300008
  69:	39 c2                	cmp    edx,eax
  6b:	73 1e                	jae    8b <fb_put_pixel+0x2b>
  6d:	8b 0d 04 00 30 00    	mov    ecx,DWORD PTR ds:0x300004
  73:	39 4c 24 08          	cmp    DWORD PTR [esp+0x8],ecx
  77:	73 12                	jae    8b <fb_put_pixel+0x2b>
  79:	0f af 44 24 08       	imul   eax,DWORD PTR [esp+0x8]
  7e:	01 d0                	add    eax,edx
  80:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  84:	89 14 85 00 00 00 00 	mov    DWORD PTR [eax*4+0x0],edx
  8b:	c3                   	ret
  8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000090 <fb_get_pixel>:
  90:	a1 08 00 30 00       	mov    eax,ds:0x300008
  95:	31 d2                	xor    edx,edx
  97:	39 44 24 04          	cmp    DWORD PTR [esp+0x4],eax
  9b:	73 0c                	jae    a9 <fb_get_pixel+0x19>
  9d:	8b 0d 04 00 30 00    	mov    ecx,DWORD PTR ds:0x300004
  a3:	39 4c 24 08          	cmp    DWORD PTR [esp+0x8],ecx
  a7:	72 07                	jb     b0 <fb_get_pixel+0x20>
  a9:	89 d0                	mov    eax,edx
  ab:	c3                   	ret
  ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  b0:	0f af 44 24 08       	imul   eax,DWORD PTR [esp+0x8]
  b5:	03 44 24 04          	add    eax,DWORD PTR [esp+0x4]
  b9:	8b 14 85 00 00 00 00 	mov    edx,DWORD PTR [eax*4+0x0]
  c0:	89 d0                	mov    eax,edx
  c2:	c3                   	ret
  c3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  cf:	00 

000000d0 <fb_blend_pixel>:
  d0:	56                   	push   esi
  d1:	8b 0d 08 00 30 00    	mov    ecx,DWORD PTR ds:0x300008
  d7:	53                   	push   ebx
  d8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  dc:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  e0:	39 c8                	cmp    eax,ecx
  e2:	73 6f                	jae    153 <fb_blend_pixel+0x83>
  e4:	3b 15 04 00 30 00    	cmp    edx,DWORD PTR ds:0x300004
  ea:	73 67                	jae    153 <fb_blend_pixel+0x83>
  ec:	0f af ca             	imul   ecx,edx
  ef:	0f b6 74 24 18       	movzx  esi,BYTE PTR [esp+0x18]
  f4:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  f8:	bb ff 00 00 00       	mov    ebx,0xff
  fd:	29 f3                	sub    ebx,esi
  ff:	81 e2 ff 00 ff 00    	and    edx,0xff00ff
 105:	01 c1                	add    ecx,eax
 107:	0f af d6             	imul   edx,esi
 10a:	8b 04 8d 00 00 00 00 	mov    eax,DWORD PTR [ecx*4+0x0]
 111:	25 ff 00 ff 00       	and    eax,0xff00ff
 116:	0f af c3             	imul   eax,ebx
 119:	01 c2                	add    edx,eax
 11b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 11f:	c1 ea 08             	shr    edx,0x8
 122:	25 00 ff 00 00       	and    eax,0xff00
 127:	81 e2 ff 00 ff 00    	and    edx,0xff00ff
 12d:	0f af c6             	imul   eax,esi
 130:	8b 34 8d 00 00 00 00 	mov    esi,DWORD PTR [ecx*4+0x0]
 137:	81 e6 00 ff 00 00    	and    esi,0xff00
 13d:	0f af de             	imul   ebx,esi
 140:	01 d8                	add    eax,ebx
 142:	c1 e8 08             	shr    eax,0x8
 145:	25 00 ff 00 00       	and    eax,0xff00
 14a:	09 c2                	or     edx,eax
 14c:	89 14 8d 00 00 00 00 	mov    DWORD PTR [ecx*4+0x0],edx
 153:	5b                   	pop    ebx
 154:	5e                   	pop    esi
 155:	c3                   	ret
 156:	66 90                	xchg   ax,ax
 158:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 15f:	00 

00000160 <fb_draw_hline>:
 160:	56                   	push   esi
 161:	53                   	push   ebx
 162:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 166:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 16a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
 16e:	85 d2                	test   edx,edx
 170:	78 49                	js     1bb <fb_draw_hline+0x5b>
 172:	39 15 04 00 30 00    	cmp    DWORD PTR ds:0x300004,edx
 178:	7e 41                	jle    1bb <fb_draw_hline+0x5b>
 17a:	8b 35 08 00 30 00    	mov    esi,DWORD PTR ds:0x300008
 180:	31 db                	xor    ebx,ebx
 182:	85 c0                	test   eax,eax
 184:	0f 49 d8             	cmovns ebx,eax
 187:	03 44 24 14          	add    eax,DWORD PTR [esp+0x14]
 18b:	39 f0                	cmp    eax,esi
 18d:	0f 4f c6             	cmovg  eax,esi
 190:	29 d8                	sub    eax,ebx
 192:	85 c0                	test   eax,eax
 194:	7e 25                	jle    1bb <fb_draw_hline+0x5b>
 196:	0f af d6             	imul   edx,esi
 199:	01 da                	add    edx,ebx
 19b:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
 1a2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 1a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1af:	00 
 1b0:	83 c2 04             	add    edx,0x4
 1b3:	89 4a fc             	mov    DWORD PTR [edx-0x4],ecx
 1b6:	83 e8 01             	sub    eax,0x1
 1b9:	75 f5                	jne    1b0 <fb_draw_hline+0x50>
 1bb:	5b                   	pop    ebx
 1bc:	5e                   	pop    esi
 1bd:	c3                   	ret
 1be:	66 90                	xchg   ax,ax

000001c0 <fb_fill_rect>:
 1c0:	55                   	push   ebp
 1c1:	57                   	push   edi
 1c2:	56                   	push   esi
 1c3:	53                   	push   ebx
 1c4:	31 db                	xor    ebx,ebx
 1c6:	83 ec 04             	sub    esp,0x4
 1c9:	8b 0d 08 00 30 00    	mov    ecx,DWORD PTR ds:0x300008
 1cf:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 1d3:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
 1d7:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
 1db:	85 c0                	test   eax,eax
 1dd:	0f 49 d8             	cmovns ebx,eax
 1e0:	03 44 24 20          	add    eax,DWORD PTR [esp+0x20]
 1e4:	39 c8                	cmp    eax,ecx
 1e6:	0f 4f c1             	cmovg  eax,ecx
 1e9:	29 d8                	sub    eax,ebx
 1eb:	85 c0                	test   eax,eax
 1ed:	7e 79                	jle    268 <fb_fill_rect+0xa8>
 1ef:	8b 2d 04 00 30 00    	mov    ebp,DWORD PTR ds:0x300004
 1f5:	31 f6                	xor    esi,esi
 1f7:	85 ff                	test   edi,edi
 1f9:	0f 49 f7             	cmovns esi,edi
 1fc:	03 7c 24 24          	add    edi,DWORD PTR [esp+0x24]
 200:	39 ef                	cmp    edi,ebp
 202:	0f 4e ef             	cmovle ebp,edi
 205:	89 2c 24             	mov    DWORD PTR [esp],ebp
 208:	39 ee                	cmp    esi,ebp
 20a:	7d 5c                	jge    268 <fb_fill_rect+0xa8>
 20c:	8d 3c 8d 00 00 00 00 	lea    edi,[ecx*4+0x0]
 213:	0f af ce             	imul   ecx,esi
 216:	01 d9                	add    ecx,ebx
 218:	01 c8                	add    eax,ecx
 21a:	8d 1c 8d 00 00 00 00 	lea    ebx,[ecx*4+0x0]
 221:	8d 0c 85 00 00 00 00 	lea    ecx,[eax*4+0x0]
 228:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 22f:	00 
 230:	89 cd                	mov    ebp,ecx
 232:	89 d8                	mov    eax,ebx
 234:	29 dd                	sub    ebp,ebx
 236:	83 e5 04             	and    ebp,0x4
 239:	74 15                	je     250 <fb_fill_rect+0x90>
 23b:	8d 43 04             	lea    eax,[ebx+0x4]
 23e:	89 13                	mov    DWORD PTR [ebx],edx
 240:	39 c8                	cmp    eax,ecx
 242:	74 18                	je     25c <fb_fill_rect+0x9c>
 244:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 248:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 24f:	00 
 250:	89 10                	mov    DWORD PTR [eax],edx
 252:	83 c0 08             	add    eax,0x8
 255:	89 50 fc             	mov    DWORD PTR [eax-0x4],edx
 258:	39 c8                	cmp    eax,ecx
 25a:	75 f4                	jne    250 <fb_fill_rect+0x90>
 25c:	83 c6 01             	add    esi,0x1
 25f:	01 fb                	add    ebx,edi
 261:	01 f9                	add    ecx,edi
 263:	39 34 24             	cmp    DWORD PTR [esp],esi
 266:	75 c8                	jne    230 <fb_fill_rect+0x70>
 268:	83 c4 04             	add    esp,0x4
 26b:	5b                   	pop    ebx
 26c:	5e                   	pop    esi
 26d:	5f                   	pop    edi
 26e:	5d                   	pop    ebp
 26f:	c3                   	ret

00000270 <fb_draw_rect>:
 270:	55                   	push   ebp
 271:	57                   	push   edi
 272:	56                   	push   esi
 273:	53                   	push   ebx
 274:	83 ec 10             	sub    esp,0x10
 277:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 27b:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
 27f:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
 283:	01 c7                	add    edi,eax
 285:	8d 5f ff             	lea    ebx,[edi-0x1]
 288:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
 28c:	85 c0                	test   eax,eax
 28e:	0f 88 5c 01 00 00    	js     3f0 <fb_draw_rect+0x180>
 294:	8b 0d 04 00 30 00    	mov    ecx,DWORD PTR ds:0x300004
 29a:	89 0c 24             	mov    DWORD PTR [esp],ecx
 29d:	39 c8                	cmp    eax,ecx
 29f:	0f 8d 3b 01 00 00    	jge    3e0 <fb_draw_rect+0x170>
 2a5:	31 d2                	xor    edx,edx
 2a7:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 2ab:	85 ed                	test   ebp,ebp
 2ad:	89 d3                	mov    ebx,edx
 2af:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 2b5:	0f 49 dd             	cmovns ebx,ebp
 2b8:	01 e9                	add    ecx,ebp
 2ba:	39 d1                	cmp    ecx,edx
 2bc:	0f 4f ca             	cmovg  ecx,edx
 2bf:	29 d9                	sub    ecx,ebx
 2c1:	85 c9                	test   ecx,ecx
 2c3:	7e 2a                	jle    2ef <fb_draw_rect+0x7f>
 2c5:	0f af d0             	imul   edx,eax
 2c8:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
 2cc:	01 da                	add    edx,ebx
 2ce:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
 2d5:	8d 76 00             	lea    esi,[esi+0x0]
 2d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2df:	00 
 2e0:	83 c2 04             	add    edx,0x4
 2e3:	89 72 fc             	mov    DWORD PTR [edx-0x4],esi
 2e6:	83 e9 01             	sub    ecx,0x1
 2e9:	75 f5                	jne    2e0 <fb_draw_rect+0x70>
 2eb:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
 2ef:	85 ff                	test   edi,edi
 2f1:	0f 8e db 00 00 00    	jle    3d2 <fb_draw_rect+0x162>
 2f7:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
 2fb:	39 0c 24             	cmp    DWORD PTR [esp],ecx
 2fe:	7e 4f                	jle    34f <fb_draw_rect+0xdf>
 300:	31 d2                	xor    edx,edx
 302:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 306:	85 ed                	test   ebp,ebp
 308:	89 d6                	mov    esi,edx
 30a:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 310:	0f 49 f5             	cmovns esi,ebp
 313:	01 e9                	add    ecx,ebp
 315:	39 d1                	cmp    ecx,edx
 317:	89 cb                	mov    ebx,ecx
 319:	0f 4f da             	cmovg  ebx,edx
 31c:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 320:	29 f3                	sub    ebx,esi
 322:	85 db                	test   ebx,ebx
 324:	7e 29                	jle    34f <fb_draw_rect+0xdf>
 326:	0f af 54 24 04       	imul   edx,DWORD PTR [esp+0x4]
 32b:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
 32f:	03 54 24 08          	add    edx,DWORD PTR [esp+0x8]
 333:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
 33a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 340:	83 c2 04             	add    edx,0x4
 343:	89 72 fc             	mov    DWORD PTR [edx-0x4],esi
 346:	83 eb 01             	sub    ebx,0x1
 349:	75 f5                	jne    340 <fb_draw_rect+0xd0>
 34b:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
 34f:	39 f8                	cmp    eax,edi
 351:	7d 7f                	jge    3d2 <fb_draw_rect+0x162>
 353:	8b 35 04 00 30 00    	mov    esi,DWORD PTR ds:0x300004
 359:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 35f:	89 34 24             	mov    DWORD PTR [esp],esi
 362:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
 366:	8d 4c 35 00          	lea    ecx,[ebp+esi*1+0x0]
 36a:	8d 59 ff             	lea    ebx,[ecx-0x1]
 36d:	8d 34 ad 00 00 00 00 	lea    esi,[ebp*4+0x0]
 374:	c1 e1 02             	shl    ecx,0x2
 377:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
 37b:	89 c3                	mov    ebx,eax
 37d:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 381:	0f af da             	imul   ebx,edx
 384:	89 e9                	mov    ecx,ebp
 386:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
 38a:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 38e:	eb 2a                	jmp    3ba <fb_draw_rect+0x14a>
 390:	3b 04 24             	cmp    eax,DWORD PTR [esp]
 393:	73 1c                	jae    3b1 <fb_draw_rect+0x141>
 395:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
 399:	89 ac 9e 00 00 00 00 	mov    DWORD PTR [esi+ebx*4+0x0],ebp
 3a0:	39 54 24 04          	cmp    DWORD PTR [esp+0x4],edx
 3a4:	73 0b                	jae    3b1 <fb_draw_rect+0x141>
 3a6:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
 3aa:	89 ac 9e fc ff ff ff 	mov    DWORD PTR [esi+ebx*4-0x4],ebp
 3b1:	83 c0 01             	add    eax,0x1
 3b4:	01 d3                	add    ebx,edx
 3b6:	39 f8                	cmp    eax,edi
 3b8:	7d 18                	jge    3d2 <fb_draw_rect+0x162>
 3ba:	39 d1                	cmp    ecx,edx
 3bc:	72 d2                	jb     390 <fb_draw_rect+0x120>
 3be:	39 54 24 04          	cmp    DWORD PTR [esp+0x4],edx
 3c2:	73 ed                	jae    3b1 <fb_draw_rect+0x141>
 3c4:	3b 04 24             	cmp    eax,DWORD PTR [esp]
 3c7:	72 dd                	jb     3a6 <fb_draw_rect+0x136>
 3c9:	83 c0 01             	add    eax,0x1
 3cc:	01 d3                	add    ebx,edx
 3ce:	39 f8                	cmp    eax,edi
 3d0:	7c e8                	jl     3ba <fb_draw_rect+0x14a>
 3d2:	83 c4 10             	add    esp,0x10
 3d5:	5b                   	pop    ebx
 3d6:	5e                   	pop    esi
 3d7:	5f                   	pop    edi
 3d8:	5d                   	pop    ebp
 3d9:	c3                   	ret
 3da:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 3e0:	85 db                	test   ebx,ebx
 3e2:	0f 89 0f ff ff ff    	jns    2f7 <fb_draw_rect+0x87>
 3e8:	eb e8                	jmp    3d2 <fb_draw_rect+0x162>
 3ea:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 3f0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
 3f4:	85 d2                	test   edx,edx
 3f6:	0f 88 53 ff ff ff    	js     34f <fb_draw_rect+0xdf>
 3fc:	8b 0d 04 00 30 00    	mov    ecx,DWORD PTR ds:0x300004
 402:	89 0c 24             	mov    DWORD PTR [esp],ecx
 405:	3b 4c 24 04          	cmp    ecx,DWORD PTR [esp+0x4]
 409:	7e 2f                	jle    43a <fb_draw_rect+0x1ca>
 40b:	31 d2                	xor    edx,edx
 40d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 411:	85 ed                	test   ebp,ebp
 413:	89 d6                	mov    esi,edx
 415:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 41b:	0f 49 f5             	cmovns esi,ebp
 41e:	01 e9                	add    ecx,ebp
 420:	39 d1                	cmp    ecx,edx
 422:	89 d3                	mov    ebx,edx
 424:	0f 4e d9             	cmovle ebx,ecx
 427:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 42b:	29 f3                	sub    ebx,esi
 42d:	85 db                	test   ebx,ebx
 42f:	0f 8f f1 fe ff ff    	jg     326 <fb_draw_rect+0xb6>
 435:	e9 30 ff ff ff       	jmp    36a <fb_draw_rect+0xfa>
 43a:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
 43e:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 444:	8d 4c 35 00          	lea    ecx,[ebp+esi*1+0x0]
 448:	e9 1d ff ff ff       	jmp    36a <fb_draw_rect+0xfa>
 44d:	8d 76 00             	lea    esi,[esi+0x0]

00000450 <fb_fill_rounded_rect>:
 450:	55                   	push   ebp
 451:	57                   	push   edi
 452:	56                   	push   esi
 453:	53                   	push   ebx
 454:	83 ec 18             	sub    esp,0x18
 457:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
 45b:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
 45f:	85 d2                	test   edx,edx
 461:	0f 8e 89 01 00 00    	jle    5f0 <fb_fill_rounded_rect+0x1a0>
 467:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
 46b:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
 46f:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
 473:	c1 e9 1f             	shr    ecx,0x1f
 476:	03 4c 24 34          	add    ecx,DWORD PTR [esp+0x34]
 47a:	d1 f9                	sar    ecx,1
 47c:	89 3c 24             	mov    DWORD PTR [esp],edi
 47f:	39 c1                	cmp    ecx,eax
 481:	0f 4f c8             	cmovg  ecx,eax
 484:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 488:	d1 f8                	sar    eax,1
 48a:	39 c1                	cmp    ecx,eax
 48c:	0f 4f c8             	cmovg  ecx,eax
 48f:	a1 04 00 30 00       	mov    eax,ds:0x300004
 494:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 498:	a1 08 00 30 00       	mov    eax,ds:0x300008
 49d:	89 ce                	mov    esi,ecx
 49f:	0f af f1             	imul   esi,ecx
 4a2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 4a6:	0f af c7             	imul   eax,edi
 4a9:	bf 01 00 00 00       	mov    edi,0x1
 4ae:	8d 5f ff             	lea    ebx,[edi-0x1]
 4b1:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 4b5:	89 c8                	mov    eax,ecx
 4b7:	2b 44 24 38          	sub    eax,DWORD PTR [esp+0x38]
 4bb:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 4bf:	39 d9                	cmp    ecx,ebx
 4c1:	0f 8f 98 00 00 00    	jg     55f <fb_fill_rounded_rect+0x10f>
 4c7:	90                   	nop
 4c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 4cf:	00 
 4d0:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 4d4:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
 4d8:	29 c8                	sub    eax,ecx
 4da:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 4de:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
 4e2:	39 d8                	cmp    eax,ebx
 4e4:	0f 8e be 00 00 00    	jle    5a8 <fb_fill_rounded_rect+0x158>
 4ea:	8b 04 24             	mov    eax,DWORD PTR [esp]
 4ed:	85 c0                	test   eax,eax
 4ef:	78 4a                	js     53b <fb_fill_rounded_rect+0xeb>
 4f1:	8b 04 24             	mov    eax,DWORD PTR [esp]
 4f4:	39 44 24 10          	cmp    DWORD PTR [esp+0x10],eax
 4f8:	7e 41                	jle    53b <fb_fill_rounded_rect+0xeb>
 4fa:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
 4fe:	31 db                	xor    ebx,ebx
 500:	85 c0                	test   eax,eax
 502:	0f 49 d8             	cmovns ebx,eax
 505:	01 c2                	add    edx,eax
 507:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 50b:	39 c2                	cmp    edx,eax
 50d:	0f 4f d0             	cmovg  edx,eax
 510:	29 da                	sub    edx,ebx
 512:	85 d2                	test   edx,edx
 514:	7e 25                	jle    53b <fb_fill_rounded_rect+0xeb>
 516:	03 5c 24 0c          	add    ebx,DWORD PTR [esp+0xc]
 51a:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
 521:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 528:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 52f:	00 
 530:	83 c0 04             	add    eax,0x4
 533:	89 68 fc             	mov    DWORD PTR [eax-0x4],ebp
 536:	83 ea 01             	sub    edx,0x1
 539:	75 f5                	jne    530 <fb_fill_rounded_rect+0xe0>
 53b:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
 53f:	83 04 24 01          	add    DWORD PTR [esp],0x1
 543:	01 5c 24 0c          	add    DWORD PTR [esp+0xc],ebx
 547:	3b 7c 24 38          	cmp    edi,DWORD PTR [esp+0x38]
 54b:	0f 84 9f 00 00 00    	je     5f0 <fb_fill_rounded_rect+0x1a0>
 551:	83 c7 01             	add    edi,0x1
 554:	8d 5f ff             	lea    ebx,[edi-0x1]
 557:	39 d9                	cmp    ecx,ebx
 559:	0f 8e 71 ff ff ff    	jle    4d0 <fb_fill_rounded_rect+0x80>
 55f:	89 cb                	mov    ebx,ecx
 561:	89 c8                	mov    eax,ecx
 563:	29 fb                	sub    ebx,edi
 565:	0f af db             	imul   ebx,ebx
 568:	eb 16                	jmp    580 <fb_fill_rounded_rect+0x130>
 56a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 570:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 577:	00 
 578:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 57f:	00 
 580:	89 ca                	mov    edx,ecx
 582:	29 c2                	sub    edx,eax
 584:	0f af d2             	imul   edx,edx
 587:	01 da                	add    edx,ebx
 589:	39 f2                	cmp    edx,esi
 58b:	7e 45                	jle    5d2 <fb_fill_rounded_rect+0x182>
 58d:	83 e8 01             	sub    eax,0x1
 590:	75 ee                	jne    580 <fb_fill_rounded_rect+0x130>
 592:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 596:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
 59a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 59e:	e9 47 ff ff ff       	jmp    4ea <fb_fill_rounded_rect+0x9a>
 5a3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 5a8:	85 c9                	test   ecx,ecx
 5aa:	7e 4c                	jle    5f8 <fb_fill_rounded_rect+0x1a8>
 5ac:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 5b0:	8d 5c 07 ff          	lea    ebx,[edi+eax*1-0x1]
 5b4:	89 c8                	mov    eax,ecx
 5b6:	0f af db             	imul   ebx,ebx
 5b9:	eb 0a                	jmp    5c5 <fb_fill_rounded_rect+0x175>
 5bb:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 5c0:	83 e8 01             	sub    eax,0x1
 5c3:	74 cd                	je     592 <fb_fill_rounded_rect+0x142>
 5c5:	89 ca                	mov    edx,ecx
 5c7:	29 c2                	sub    edx,eax
 5c9:	0f af d2             	imul   edx,edx
 5cc:	01 da                	add    edx,ebx
 5ce:	39 f2                	cmp    edx,esi
 5d0:	7f ee                	jg     5c0 <fb_fill_rounded_rect+0x170>
 5d2:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
 5d6:	8d 1c 00             	lea    ebx,[eax+eax*1]
 5d9:	03 44 24 2c          	add    eax,DWORD PTR [esp+0x2c]
 5dd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 5e1:	29 da                	sub    edx,ebx
 5e3:	e9 02 ff ff ff       	jmp    4ea <fb_fill_rounded_rect+0x9a>
 5e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 5ef:	00 
 5f0:	83 c4 18             	add    esp,0x18
 5f3:	5b                   	pop    ebx
 5f4:	5e                   	pop    esi
 5f5:	5f                   	pop    edi
 5f6:	5d                   	pop    ebp
 5f7:	c3                   	ret
 5f8:	8d 04 09             	lea    eax,[ecx+ecx*1]
 5fb:	29 c2                	sub    edx,eax
 5fd:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 601:	01 c8                	add    eax,ecx
 603:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 607:	e9 de fe ff ff       	jmp    4ea <fb_fill_rounded_rect+0x9a>
 60c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000610 <fb_fill_circle>:
 610:	55                   	push   ebp
 611:	57                   	push   edi
 612:	56                   	push   esi
 613:	53                   	push   ebx
 614:	83 ec 10             	sub    esp,0x10
 617:	8b 74 24 2c          	mov    esi,DWORD PTR [esp+0x2c]
 61b:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 61f:	f7 de                	neg    esi
 621:	39 74 24 2c          	cmp    DWORD PTR [esp+0x2c],esi
 625:	0f 8c c7 00 00 00    	jl     6f2 <fb_fill_circle+0xe2>
 62b:	a1 04 00 30 00       	mov    eax,ds:0x300004
 630:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
 634:	2b 7c 24 2c          	sub    edi,DWORD PTR [esp+0x2c]
 638:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
 63c:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 640:	a1 08 00 30 00       	mov    eax,ds:0x300008
 645:	0f af db             	imul   ebx,ebx
 648:	89 04 24             	mov    DWORD PTR [esp],eax
 64b:	0f af c7             	imul   eax,edi
 64e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 652:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 656:	83 c0 01             	add    eax,0x1
 659:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 65d:	8d 76 00             	lea    esi,[esi+0x0]
 660:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 664:	85 c0                	test   eax,eax
 666:	0f 8e bf 00 00 00    	jle    72b <fb_fill_circle+0x11b>
 66c:	89 f1                	mov    ecx,esi
 66e:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 672:	0f af ce             	imul   ecx,esi
 675:	eb 0e                	jmp    685 <fb_fill_circle+0x75>
 677:	90                   	nop
 678:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 67f:	00 
 680:	83 e8 01             	sub    eax,0x1
 683:	74 0b                	je     690 <fb_fill_circle+0x80>
 685:	89 c2                	mov    edx,eax
 687:	0f af d0             	imul   edx,eax
 68a:	01 ca                	add    edx,ecx
 68c:	39 da                	cmp    edx,ebx
 68e:	7f f0                	jg     680 <fb_fill_circle+0x70>
 690:	89 fa                	mov    edx,edi
 692:	85 ff                	test   edi,edi
 694:	78 6a                	js     700 <fb_fill_circle+0xf0>
 696:	39 54 24 0c          	cmp    DWORD PTR [esp+0xc],edx
 69a:	7e 3f                	jle    6db <fb_fill_circle+0xcb>
 69c:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
 6a0:	ba 00 00 00 00       	mov    edx,0x0
 6a5:	29 c1                	sub    ecx,eax
 6a7:	0f 49 d1             	cmovns edx,ecx
 6aa:	8d 44 41 01          	lea    eax,[ecx+eax*2+0x1]
 6ae:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 6b1:	39 c8                	cmp    eax,ecx
 6b3:	0f 4f c1             	cmovg  eax,ecx
 6b6:	29 d0                	sub    eax,edx
 6b8:	85 c0                	test   eax,eax
 6ba:	7e 1f                	jle    6db <fb_fill_circle+0xcb>
 6bc:	03 54 24 04          	add    edx,DWORD PTR [esp+0x4]
 6c0:	8d 14 95 00 00 00 00 	lea    edx,[edx*4+0x0]
 6c7:	90                   	nop
 6c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 6cf:	00 
 6d0:	83 c2 04             	add    edx,0x4
 6d3:	89 6a fc             	mov    DWORD PTR [edx-0x4],ebp
 6d6:	83 e8 01             	sub    eax,0x1
 6d9:	75 f5                	jne    6d0 <fb_fill_circle+0xc0>
 6db:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 6de:	83 c6 01             	add    esi,0x1
 6e1:	01 4c 24 04          	add    DWORD PTR [esp+0x4],ecx
 6e5:	83 c7 01             	add    edi,0x1
 6e8:	3b 74 24 08          	cmp    esi,DWORD PTR [esp+0x8]
 6ec:	0f 85 6e ff ff ff    	jne    660 <fb_fill_circle+0x50>
 6f2:	83 c4 10             	add    esp,0x10
 6f5:	5b                   	pop    ebx
 6f6:	5e                   	pop    esi
 6f7:	5f                   	pop    edi
 6f8:	5d                   	pop    ebp
 6f9:	c3                   	ret
 6fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 700:	83 c6 01             	add    esi,0x1
 703:	39 74 24 08          	cmp    DWORD PTR [esp+0x8],esi
 707:	74 e9                	je     6f2 <fb_fill_circle+0xe2>
 709:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 70c:	83 c7 01             	add    edi,0x1
 70f:	01 4c 24 04          	add    DWORD PTR [esp+0x4],ecx
 713:	e9 54 ff ff ff       	jmp    66c <fb_fill_circle+0x5c>
 718:	83 c6 01             	add    esi,0x1
 71b:	39 74 24 08          	cmp    DWORD PTR [esp+0x8],esi
 71f:	74 d1                	je     6f2 <fb_fill_circle+0xe2>
 721:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 724:	01 4c 24 04          	add    DWORD PTR [esp+0x4],ecx
 728:	83 c7 01             	add    edi,0x1
 72b:	85 ff                	test   edi,edi
 72d:	78 0f                	js     73e <fb_fill_circle+0x12e>
 72f:	39 7c 24 0c          	cmp    DWORD PTR [esp+0xc],edi
 733:	7e e3                	jle    718 <fb_fill_circle+0x108>
 735:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 739:	e9 5e ff ff ff       	jmp    69c <fb_fill_circle+0x8c>
 73e:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 742:	8d 56 01             	lea    edx,[esi+0x1]
 745:	39 c2                	cmp    edx,eax
 747:	74 a9                	je     6f2 <fb_fill_circle+0xe2>
 749:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 74c:	01 4c 24 04          	add    DWORD PTR [esp+0x4],ecx
 750:	83 ff ff             	cmp    edi,0xffffffff
 753:	75 0f                	jne    764 <fb_fill_circle+0x154>
 755:	89 d6                	mov    esi,edx
 757:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 75b:	31 ff                	xor    edi,edi
 75d:	31 d2                	xor    edx,edx
 75f:	e9 32 ff ff ff       	jmp    696 <fb_fill_circle+0x86>
 764:	83 c6 02             	add    esi,0x2
 767:	39 f0                	cmp    eax,esi
 769:	74 87                	je     6f2 <fb_fill_circle+0xe2>
 76b:	01 4c 24 04          	add    DWORD PTR [esp+0x4],ecx
 76f:	83 c7 02             	add    edi,0x2
 772:	eb b7                	jmp    72b <fb_fill_circle+0x11b>
 774:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 778:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 77f:	00 

00000780 <fb_draw_char>:
 780:	55                   	push   ebp
 781:	57                   	push   edi
 782:	56                   	push   esi
 783:	53                   	push   ebx
 784:	83 ec 18             	sub    esp,0x18
 787:	0f be 54 24 34       	movsx  edx,BYTE PTR [esp+0x34]
 78c:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 790:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
 794:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 798:	8d 4a e0             	lea    ecx,[edx-0x20]
 79b:	8b 7c 24 3c          	mov    edi,DWORD PTR [esp+0x3c]
 79f:	89 ca                	mov    edx,ecx
 7a1:	c1 e2 04             	shl    edx,0x4
 7a4:	81 c2 00 00 00 00    	add    edx,0x0
 7aa:	83 f9 5f             	cmp    ecx,0x5f
 7ad:	b9 00 00 00 00       	mov    ecx,0x0
 7b2:	0f 42 ca             	cmovb  ecx,edx
 7b5:	8b 15 04 00 30 00    	mov    edx,DWORD PTR ds:0x300004
 7bb:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 7bf:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 7c5:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
 7c9:	0f af f2             	imul   esi,edx
 7cc:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 7d0:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 7d4:	83 c6 10             	add    esi,0x10
 7d7:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
 7db:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
 7df:	89 34 24             	mov    DWORD PTR [esp],esi
 7e2:	eb 2d                	jmp    811 <fb_draw_char+0x91>
 7e4:	eb 1a                	jmp    800 <fb_draw_char+0x80>
 7e6:	66 90                	xchg   ax,ax
 7e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 7ef:	00 
 7f0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 7f7:	00 
 7f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 7ff:	00 
 800:	83 04 24 01          	add    DWORD PTR [esp],0x1
 804:	8b 34 24             	mov    esi,DWORD PTR [esp]
 807:	01 54 24 08          	add    DWORD PTR [esp+0x8],edx
 80b:	3b 74 24 10          	cmp    esi,DWORD PTR [esp+0x10]
 80f:	74 5f                	je     870 <fb_draw_char+0xf0>
 811:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
 815:	39 0c 24             	cmp    DWORD PTR [esp],ecx
 818:	73 e6                	jae    800 <fb_draw_char+0x80>
 81a:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 81d:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
 821:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
 825:	2b 6c 24 30          	sub    ebp,DWORD PTR [esp+0x30]
 829:	0f b6 4c 0d 00       	movzx  ecx,BYTE PTR [ebp+ecx*1+0x0]
 82e:	01 de                	add    esi,ebx
 830:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 834:	c1 e6 02             	shl    esi,0x2
 837:	31 c9                	xor    ecx,ecx
 839:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 840:	8d 2c 19             	lea    ebp,[ecx+ebx*1]
 843:	39 d5                	cmp    ebp,edx
 845:	73 17                	jae    85e <fb_draw_char+0xde>
 847:	bd 80 00 00 00       	mov    ebp,0x80
 84c:	d3 fd                	sar    ebp,cl
 84e:	85 6c 24 04          	test   DWORD PTR [esp+0x4],ebp
 852:	89 c5                	mov    ebp,eax
 854:	0f 44 ef             	cmove  ebp,edi
 857:	89 ac 8e 00 00 00 00 	mov    DWORD PTR [esi+ecx*4+0x0],ebp
 85e:	83 c1 01             	add    ecx,0x1
 861:	83 f9 08             	cmp    ecx,0x8
 864:	75 da                	jne    840 <fb_draw_char+0xc0>
 866:	e9 95 ff ff ff       	jmp    800 <fb_draw_char+0x80>
 86b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 870:	83 c4 18             	add    esp,0x18
 873:	5b                   	pop    ebx
 874:	5e                   	pop    esi
 875:	5f                   	pop    edi
 876:	5d                   	pop    ebp
 877:	c3                   	ret
 878:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 87f:	00 

00000880 <fb_draw_string>:
 880:	55                   	push   ebp
 881:	57                   	push   edi
 882:	56                   	push   esi
 883:	53                   	push   ebx
 884:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
 888:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
 88c:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
 890:	0f be 45 00          	movsx  eax,BYTE PTR [ebp+0x0]
 894:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
 898:	84 c0                	test   al,al
 89a:	74 22                	je     8be <fb_draw_string+0x3e>
 89c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8a0:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
 8a4:	83 c5 01             	add    ebp,0x1
 8a7:	56                   	push   esi
 8a8:	50                   	push   eax
 8a9:	57                   	push   edi
 8aa:	53                   	push   ebx
 8ab:	83 c3 08             	add    ebx,0x8
 8ae:	e8 fc ff ff ff       	call   8af <fb_draw_string+0x2f>
 8b3:	0f be 45 00          	movsx  eax,BYTE PTR [ebp+0x0]
 8b7:	83 c4 14             	add    esp,0x14
 8ba:	84 c0                	test   al,al
 8bc:	75 e2                	jne    8a0 <fb_draw_string+0x20>
 8be:	5b                   	pop    ebx
 8bf:	5e                   	pop    esi
 8c0:	5f                   	pop    edi
 8c1:	5d                   	pop    ebp
 8c2:	c3                   	ret
 8c3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 8c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 8cf:	00 

000008d0 <fb_draw_string_nobg>:
 8d0:	55                   	push   ebp
 8d1:	57                   	push   edi
 8d2:	56                   	push   esi
 8d3:	53                   	push   ebx
 8d4:	83 ec 18             	sub    esp,0x18
 8d7:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8db:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8de:	84 c0                	test   al,al
 8e0:	0f 84 fe 00 00 00    	je     9e4 <fb_draw_string_nobg+0x114>
 8e6:	8b 1d 08 00 30 00    	mov    ebx,DWORD PTR ds:0x300008
 8ec:	0f af 5c 24 30       	imul   ebx,DWORD PTR [esp+0x30]
 8f1:	bd 80 00 00 00       	mov    ebp,0x80
 8f6:	0f be d0             	movsx  edx,al
 8f9:	8b 3d 04 00 30 00    	mov    edi,DWORD PTR ds:0x300004
 8ff:	8b 35 08 00 30 00    	mov    esi,DWORD PTR ds:0x300008
 905:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
 909:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
 90d:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
 911:	83 c3 10             	add    ebx,0x10
 914:	89 1c 24             	mov    DWORD PTR [esp],ebx
 917:	90                   	nop
 918:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 91f:	00 
 920:	83 ea 20             	sub    edx,0x20
 923:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
 927:	89 d0                	mov    eax,edx
 929:	c1 e0 04             	shl    eax,0x4
 92c:	05 00 00 00 00       	add    eax,0x0
 931:	83 fa 5f             	cmp    edx,0x5f
 934:	ba 00 00 00 00       	mov    edx,0x0
 939:	0f 43 c2             	cmovae eax,edx
 93c:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
 940:	29 d0                	sub    eax,edx
 942:	89 c3                	mov    ebx,eax
 944:	eb 24                	jmp    96a <fb_draw_string_nobg+0x9a>
 946:	eb 18                	jmp    960 <fb_draw_string_nobg+0x90>
 948:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 94f:	00 
 950:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 957:	00 
 958:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 95f:	00 
 960:	01 f7                	add    edi,esi
 962:	83 c2 01             	add    edx,0x1
 965:	3b 14 24             	cmp    edx,DWORD PTR [esp]
 968:	74 61                	je     9cb <fb_draw_string_nobg+0xfb>
 96a:	0f b6 04 13          	movzx  eax,BYTE PTR [ebx+edx*1]
 96e:	84 c0                	test   al,al
 970:	74 ee                	je     960 <fb_draw_string_nobg+0x90>
 972:	3b 54 24 08          	cmp    edx,DWORD PTR [esp+0x8]
 976:	73 e8                	jae    960 <fb_draw_string_nobg+0x90>
 978:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
 97c:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 980:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 984:	01 f9                	add    ecx,edi
 986:	c1 e1 02             	shl    ecx,0x2
 989:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 98d:	31 c9                	xor    ecx,ecx
 98f:	90                   	nop
 990:	89 ea                	mov    edx,ebp
 992:	d3 fa                	sar    edx,cl
 994:	85 c2                	test   edx,eax
 996:	74 19                	je     9b1 <fb_draw_string_nobg+0xe1>
 998:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
 99c:	01 ca                	add    edx,ecx
 99e:	39 f2                	cmp    edx,esi
 9a0:	73 0f                	jae    9b1 <fb_draw_string_nobg+0xe1>
 9a2:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
 9a6:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
 9aa:	89 9c 8a 00 00 00 00 	mov    DWORD PTR [edx+ecx*4+0x0],ebx
 9b1:	83 c1 01             	add    ecx,0x1
 9b4:	83 f9 08             	cmp    ecx,0x8
 9b7:	75 d7                	jne    990 <fb_draw_string_nobg+0xc0>
 9b9:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
 9bd:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
 9c1:	01 f7                	add    edi,esi
 9c3:	83 c2 01             	add    edx,0x1
 9c6:	3b 14 24             	cmp    edx,DWORD PTR [esp]
 9c9:	75 9f                	jne    96a <fb_draw_string_nobg+0x9a>
 9cb:	83 44 24 34 01       	add    DWORD PTR [esp+0x34],0x1
 9d0:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 9d4:	83 44 24 2c 08       	add    DWORD PTR [esp+0x2c],0x8
 9d9:	0f be 10             	movsx  edx,BYTE PTR [eax]
 9dc:	84 d2                	test   dl,dl
 9de:	0f 85 3c ff ff ff    	jne    920 <fb_draw_string_nobg+0x50>
 9e4:	83 c4 18             	add    esp,0x18
 9e7:	5b                   	pop    ebx
 9e8:	5e                   	pop    esi
 9e9:	5f                   	pop    edi
 9ea:	5d                   	pop    ebp
 9eb:	c3                   	ret
 9ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000009f0 <fb_flip>:
 9f0:	a1 04 00 30 00       	mov    eax,ds:0x300004
 9f5:	85 c0                	test   eax,eax
 9f7:	7e 57                	jle    a50 <fb_flip+0x60>
 9f9:	a1 00 00 30 00       	mov    eax,ds:0x300000
 9fe:	57                   	push   edi
 9ff:	56                   	push   esi
 a00:	85 c0                	test   eax,eax
 a02:	8d 70 03             	lea    esi,[eax+0x3]
 a05:	53                   	push   ebx
 a06:	0f 49 f0             	cmovns esi,eax
 a09:	31 ff                	xor    edi,edi
 a0b:	31 db                	xor    ebx,ebx
 a0d:	83 e6 fc             	and    esi,0xfffffffc
 a10:	a1 08 00 30 00       	mov    eax,ds:0x300008
 a15:	83 ec 04             	sub    esp,0x4
 a18:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 a1f:	0f af c3             	imul   eax,ebx
 a22:	52                   	push   edx
 a23:	83 c3 01             	add    ebx,0x1
 a26:	8d 04 85 00 00 00 00 	lea    eax,[eax*4+0x0]
 a2d:	50                   	push   eax
 a2e:	a1 0c 00 30 00       	mov    eax,ds:0x30000c
 a33:	01 f8                	add    eax,edi
 a35:	01 f7                	add    edi,esi
 a37:	50                   	push   eax
 a38:	e8 fc ff ff ff       	call   a39 <fb_flip+0x49>
 a3d:	83 c4 10             	add    esp,0x10
 a40:	39 1d 04 00 30 00    	cmp    DWORD PTR ds:0x300004,ebx
 a46:	7f c8                	jg     a10 <fb_flip+0x20>
 a48:	5b                   	pop    ebx
 a49:	5e                   	pop    esi
 a4a:	5f                   	pop    edi
 a4b:	c3                   	ret
 a4c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 a50:	c3                   	ret
 a51:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 a58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 a5f:	00 

00000a60 <fb_clear>:
 a60:	8b 15 08 00 30 00    	mov    edx,DWORD PTR ds:0x300008
 a66:	0f af 15 04 00 30 00 	imul   edx,DWORD PTR ds:0x300004
 a6d:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
 a71:	85 d2                	test   edx,edx
 a73:	7e 40                	jle    ab5 <fb_clear+0x55>
 a75:	31 c0                	xor    eax,eax
 a77:	f6 c2 01             	test   dl,0x1
 a7a:	74 24                	je     aa0 <fb_clear+0x40>
 a7c:	89 0d 00 00 00 00    	mov    DWORD PTR ds:0x0,ecx
 a82:	b8 01 00 00 00       	mov    eax,0x1
 a87:	83 fa 01             	cmp    edx,0x1
 a8a:	74 2a                	je     ab6 <fb_clear+0x56>
 a8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 a90:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 a97:	00 
 a98:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 a9f:	00 
 aa0:	89 0c 85 00 00 00 00 	mov    DWORD PTR [eax*4+0x0],ecx
 aa7:	89 0c 85 04 00 00 00 	mov    DWORD PTR [eax*4+0x4],ecx
 aae:	83 c0 02             	add    eax,0x2
 ab1:	39 c2                	cmp    edx,eax
 ab3:	75 eb                	jne    aa0 <fb_clear+0x40>
 ab5:	c3                   	ret
 ab6:	c3                   	ret

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
  17:	00 10                	add    BYTE PTR [eax],dl
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	3b 00                	cmp    eax,DWORD PTR [eax]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 00                	add    BYTE PTR [eax],al
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	10 00                	adc    BYTE PTR [eax],al
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	40                   	inc    eax
  35:	00 00                	add    BYTE PTR [eax],al
  37:	00 06                	add    BYTE PTR [esi],al
  39:	00 00                	add    BYTE PTR [eax],al
  3b:	00 00                	add    BYTE PTR [eax],al
  3d:	00 00                	add    BYTE PTR [eax],al
  3f:	00 10                	add    BYTE PTR [eax],dl
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
  47:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  4a:	00 00                	add    BYTE PTR [eax],al
  4c:	06                   	push   es
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 00                	add    BYTE PTR [eax],al
  51:	00 00                	add    BYTE PTR [eax],al
  53:	00 10                	add    BYTE PTR [eax],dl
  55:	00 00                	add    BYTE PTR [eax],al
  57:	00 58 00             	add    BYTE PTR [eax+0x0],bl
  5a:	00 00                	add    BYTE PTR [eax],al
  5c:	60                   	pusha
  5d:	00 00                	add    BYTE PTR [eax],al
  5f:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
  62:	00 00                	add    BYTE PTR [eax],al
  64:	00 00                	add    BYTE PTR [eax],al
  66:	00 00                	add    BYTE PTR [eax],al
  68:	10 00                	adc    BYTE PTR [eax],al
  6a:	00 00                	add    BYTE PTR [eax],al
  6c:	6c                   	ins    BYTE PTR es:[edi],dx
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 90 00 00 00 33    	add    BYTE PTR [eax+0x33000000],dl
  75:	00 00                	add    BYTE PTR [eax],al
  77:	00 00                	add    BYTE PTR [eax],al
  79:	00 00                	add    BYTE PTR [eax],al
  7b:	00 20                	add    BYTE PTR [eax],ah
  7d:	00 00                	add    BYTE PTR [eax],al
  7f:	00 80 00 00 00 d0    	add    BYTE PTR [eax-0x30000000],al
  85:	00 00                	add    BYTE PTR [eax],al
  87:	00 86 00 00 00 00    	add    BYTE PTR [esi+0x0],al
  8d:	41                   	inc    ecx
  8e:	0e                   	push   cs
  8f:	08 86 02 47 0e 0c    	or     BYTE PTR [esi+0xc0e4702],al
  95:	83 03 02             	add    DWORD PTR [ebx],0x2
  98:	7c c3                	jl     5d <.eh_frame+0x5d>
  9a:	0e                   	push   cs
  9b:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  9e:	0e                   	push   cs
  9f:	04 20                	add    al,0x20
  a1:	00 00                	add    BYTE PTR [eax],al
  a3:	00 a4 00 00 00 60 01 	add    BYTE PTR [eax+eax*1+0x1600000],ah
  aa:	00 00                	add    BYTE PTR [eax],al
  ac:	5e                   	pop    esi
  ad:	00 00                	add    BYTE PTR [eax],al
  af:	00 00                	add    BYTE PTR [eax],al
  b1:	41                   	inc    ecx
  b2:	0e                   	push   cs
  b3:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
  b9:	83 03 02             	add    DWORD PTR [ebx],0x2
  bc:	5a                   	pop    edx
  bd:	c3                   	ret
  be:	0e                   	push   cs
  bf:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  c2:	0e                   	push   cs
  c3:	04 38                	add    al,0x38
  c5:	00 00                	add    BYTE PTR [eax],al
  c7:	00 c8                	add    al,cl
  c9:	00 00                	add    BYTE PTR [eax],al
  cb:	00 c0                	add    al,al
  cd:	01 00                	add    DWORD PTR [eax],eax
  cf:	00 b0 00 00 00 00    	add    BYTE PTR [eax+0x0],dh
  d5:	41                   	inc    ecx
  d6:	0e                   	push   cs
  d7:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  dd:	87 03                	xchg   DWORD PTR [ebx],eax
  df:	41                   	inc    ecx
  e0:	0e                   	push   cs
  e1:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  e7:	83 05 45 0e 18 02 a2 	add    DWORD PTR ds:0x2180e45,0xffffffa2
  ee:	0e                   	push   cs
  ef:	14 41                	adc    al,0x41
  f1:	c3                   	ret
  f2:	0e                   	push   cs
  f3:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  f6:	0e                   	push   cs
  f7:	0c 41                	or     al,0x41
  f9:	c7                   	(bad)
  fa:	0e                   	push   cs
  fb:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  fe:	0e                   	push   cs
  ff:	04 3c                	add    al,0x3c
 101:	00 00                	add    BYTE PTR [eax],al
 103:	00 04 01             	add    BYTE PTR [ecx+eax*1],al
 106:	00 00                	add    BYTE PTR [eax],al
 108:	70 02                	jo     10c <.eh_frame+0x10c>
 10a:	00 00                	add    BYTE PTR [eax],al
 10c:	dd 01                	fld    QWORD PTR [ecx]
 10e:	00 00                	add    BYTE PTR [eax],al
 110:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 113:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 119:	87 03                	xchg   DWORD PTR [ebx],eax
 11b:	41                   	inc    ecx
 11c:	0e                   	push   cs
 11d:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 123:	83 05 43 0e 24 03 5e 	add    DWORD PTR ds:0x3240e43,0x5e
 12a:	01 0a                	add    DWORD PTR [edx],ecx
 12c:	0e                   	push   cs
 12d:	14 41                	adc    al,0x41
 12f:	c3                   	ret
 130:	0e                   	push   cs
 131:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 134:	0e                   	push   cs
 135:	0c 41                	or     al,0x41
 137:	c7                   	(bad)
 138:	0e                   	push   cs
 139:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 13c:	0e                   	push   cs
 13d:	04 47                	add    al,0x47
 13f:	0b 3c 00             	or     edi,DWORD PTR [eax+eax*1]
 142:	00 00                	add    BYTE PTR [eax],al
 144:	44                   	inc    esp
 145:	01 00                	add    DWORD PTR [eax],eax
 147:	00 50 04             	add    BYTE PTR [eax+0x4],dl
 14a:	00 00                	add    BYTE PTR [eax],al
 14c:	bc 01 00 00 00       	mov    esp,0x1
 151:	41                   	inc    ecx
 152:	0e                   	push   cs
 153:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 159:	87 03                	xchg   DWORD PTR [ebx],eax
 15b:	41                   	inc    ecx
 15c:	0e                   	push   cs
 15d:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 163:	83 05 43 0e 2c 03 9c 	add    DWORD PTR ds:0x32c0e43,0xffffff9c
 16a:	01 0a                	add    DWORD PTR [edx],ecx
 16c:	0e                   	push   cs
 16d:	14 41                	adc    al,0x41
 16f:	c3                   	ret
 170:	0e                   	push   cs
 171:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 174:	0e                   	push   cs
 175:	0c 41                	or     al,0x41
 177:	c7                   	(bad)
 178:	0e                   	push   cs
 179:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 17c:	0e                   	push   cs
 17d:	04 41                	add    al,0x41
 17f:	0b 3c 00             	or     edi,DWORD PTR [eax+eax*1]
 182:	00 00                	add    BYTE PTR [eax],al
 184:	84 01                	test   BYTE PTR [ecx],al
 186:	00 00                	add    BYTE PTR [eax],al
 188:	10 06                	adc    BYTE PTR [esi],al
 18a:	00 00                	add    BYTE PTR [eax],al
 18c:	64 01 00             	add    DWORD PTR fs:[eax],eax
 18f:	00 00                	add    BYTE PTR [eax],al
 191:	41                   	inc    ecx
 192:	0e                   	push   cs
 193:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 199:	87 03                	xchg   DWORD PTR [ebx],eax
 19b:	41                   	inc    ecx
 19c:	0e                   	push   cs
 19d:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 1a3:	83 05 43 0e 24 02 de 	add    DWORD PTR ds:0x2240e43,0xffffffde
 1aa:	0a 0e                	or     cl,BYTE PTR [esi]
 1ac:	14 41                	adc    al,0x41
 1ae:	c3                   	ret
 1af:	0e                   	push   cs
 1b0:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1b3:	0e                   	push   cs
 1b4:	0c 41                	or     al,0x41
 1b6:	c7                   	(bad)
 1b7:	0e                   	push   cs
 1b8:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1bb:	0e                   	push   cs
 1bc:	04 47                	add    al,0x47
 1be:	0b 00                	or     eax,DWORD PTR [eax]
 1c0:	38 00                	cmp    BYTE PTR [eax],al
 1c2:	00 00                	add    BYTE PTR [eax],al
 1c4:	c4 01                	les    eax,FWORD PTR [ecx]
 1c6:	00 00                	add    BYTE PTR [eax],al
 1c8:	80 07 00             	add    BYTE PTR [edi],0x0
 1cb:	00 f8                	add    al,bh
 1cd:	00 00                	add    BYTE PTR [eax],al
 1cf:	00 00                	add    BYTE PTR [eax],al
 1d1:	41                   	inc    ecx
 1d2:	0e                   	push   cs
 1d3:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 1d9:	87 03                	xchg   DWORD PTR [ebx],eax
 1db:	41                   	inc    ecx
 1dc:	0e                   	push   cs
 1dd:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 1e3:	83 05 43 0e 2c 02 ec 	add    DWORD PTR ds:0x22c0e43,0xffffffec
 1ea:	0e                   	push   cs
 1eb:	14 41                	adc    al,0x41
 1ed:	c3                   	ret
 1ee:	0e                   	push   cs
 1ef:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1f2:	0e                   	push   cs
 1f3:	0c 41                	or     al,0x41
 1f5:	c7                   	(bad)
 1f6:	0e                   	push   cs
 1f7:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1fa:	0e                   	push   cs
 1fb:	04 44                	add    al,0x44
 1fd:	00 00                	add    BYTE PTR [eax],al
 1ff:	00 00                	add    BYTE PTR [eax],al
 201:	02 00                	add    al,BYTE PTR [eax]
 203:	00 80 08 00 00 43    	add    BYTE PTR [eax+0x43000008],al
 209:	00 00                	add    BYTE PTR [eax],al
 20b:	00 00                	add    BYTE PTR [eax],al
 20d:	41                   	inc    ecx
 20e:	0e                   	push   cs
 20f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 215:	87 03                	xchg   DWORD PTR [ebx],eax
 217:	41                   	inc    ecx
 218:	0e                   	push   cs
 219:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 21f:	83 05 60 0e 18 44 0e 	add    DWORD PTR ds:0x44180e60,0xe
 226:	1c 41                	sbb    al,0x41
 228:	0e                   	push   cs
 229:	20 41 0e             	and    BYTE PTR [ecx+0xe],al
 22c:	24 41                	and    al,0x41
 22e:	0e                   	push   cs
 22f:	28 4f 0e             	sub    BYTE PTR [edi+0xe],cl
 232:	14 45                	adc    al,0x45
 234:	c3                   	ret
 235:	0e                   	push   cs
 236:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 239:	0e                   	push   cs
 23a:	0c 41                	or     al,0x41
 23c:	c7                   	(bad)
 23d:	0e                   	push   cs
 23e:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 241:	0e                   	push   cs
 242:	04 00                	add    al,0x0
 244:	3c 00                	cmp    al,0x0
 246:	00 00                	add    BYTE PTR [eax],al
 248:	48                   	dec    eax
 249:	02 00                	add    al,BYTE PTR [eax]
 24b:	00 d0                	add    al,dl
 24d:	08 00                	or     BYTE PTR [eax],al
 24f:	00 1c 01             	add    BYTE PTR [ecx+eax*1],bl
 252:	00 00                	add    BYTE PTR [eax],al
 254:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 257:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 25d:	87 03                	xchg   DWORD PTR [ebx],eax
 25f:	41                   	inc    ecx
 260:	0e                   	push   cs
 261:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 267:	83 05 43 0e 2c 03 10 	add    DWORD PTR ds:0x32c0e43,0x10
 26e:	01 0e                	add    DWORD PTR [esi],ecx
 270:	14 41                	adc    al,0x41
 272:	c3                   	ret
 273:	0e                   	push   cs
 274:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 277:	0e                   	push   cs
 278:	0c 41                	or     al,0x41
 27a:	c7                   	(bad)
 27b:	0e                   	push   cs
 27c:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 27f:	0e                   	push   cs
 280:	04 00                	add    al,0x0
 282:	00 00                	add    BYTE PTR [eax],al
 284:	38 00                	cmp    BYTE PTR [eax],al
 286:	00 00                	add    BYTE PTR [eax],al
 288:	88 02                	mov    BYTE PTR [edx],al
 28a:	00 00                	add    BYTE PTR [eax],al
 28c:	f0 09 00             	lock or DWORD PTR [eax],eax
 28f:	00 61 00             	add    BYTE PTR [ecx+0x0],ah
 292:	00 00                	add    BYTE PTR [eax],al
 294:	00 4f 0e             	add    BYTE PTR [edi+0xe],cl
 297:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 29d:	86 03                	xchg   BYTE PTR [ebx],al
 29f:	46                   	inc    esi
 2a0:	0e                   	push   cs
 2a1:	10 83 04 52 0e 14    	adc    BYTE PTR [ebx+0x140e5204],al
 2a7:	4b                   	dec    ebx
 2a8:	0e                   	push   cs
 2a9:	18 4b 0e             	sbb    BYTE PTR [ebx+0xe],cl
 2ac:	1c 4a                	sbb    al,0x4a
 2ae:	0e                   	push   cs
 2af:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 2b2:	10 49 c3             	adc    BYTE PTR [ecx-0x3d],cl
 2b5:	0e                   	push   cs
 2b6:	0c 41                	or     al,0x41
 2b8:	c6                   	(bad)
 2b9:	0e                   	push   cs
 2ba:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 2bd:	0e                   	push   cs
 2be:	04 00                	add    al,0x0
 2c0:	10 00                	adc    BYTE PTR [eax],al
 2c2:	00 00                	add    BYTE PTR [eax],al
 2c4:	c4 02                	les    eax,FWORD PTR [edx]
 2c6:	00 00                	add    BYTE PTR [eax],al
 2c8:	60                   	pusha
 2c9:	0a 00                	or     al,BYTE PTR [eax]
 2cb:	00 57 00             	add    BYTE PTR [edi+0x0],dl
 2ce:	00 00                	add    BYTE PTR [eax],al
 2d0:	00 00                	add    BYTE PTR [eax],al
	...
