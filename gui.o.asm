
gui.o:     file format elf32-i386


Disassembly of section .text:

00000000 <focus_window>:
       0:	8b 15 0c 0c 00 00    	mov    edx,DWORD PTR ds:0xc0c
       6:	39 c2                	cmp    edx,eax
       8:	0f 8e 92 00 00 00    	jle    a0 <focus_window+0xa0>
       e:	55                   	push   ebp
       f:	57                   	push   edi
      10:	56                   	push   esi
      11:	53                   	push   ebx
      12:	83 ec 74             	sub    esp,0x74
      15:	8b 0d 04 00 00 00    	mov    ecx,DWORD PTR ds:0x4
      1b:	85 c9                	test   ecx,ecx
      1d:	78 0a                	js     29 <focus_window+0x29>
      1f:	6b c9 6c             	imul   ecx,ecx,0x6c
      22:	c6 81 71 0c 00 00 00 	mov    BYTE PTR [ecx+0xc71],0x0
      29:	6b c8 6c             	imul   ecx,eax,0x6c
      2c:	8d 6c 24 08          	lea    ebp,[esp+0x8]
      30:	8d 5a ff             	lea    ebx,[edx-0x1]
      33:	89 ef                	mov    edi,ebp
      35:	8d b1 20 0c 00 00    	lea    esi,[ecx+0xc20]
      3b:	b9 1b 00 00 00       	mov    ecx,0x1b
      40:	89 34 24             	mov    DWORD PTR [esp],esi
      43:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
      45:	39 d8                	cmp    eax,ebx
      47:	7d 2a                	jge    73 <focus_window+0x73>
      49:	6b d2 6c             	imul   edx,edx,0x6c
      4c:	8b 04 24             	mov    eax,DWORD PTR [esp]
      4f:	81 c2 b4 0b 00 00    	add    edx,0xbb4
      55:	8d 76 00             	lea    esi,[esi+0x0]
      58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      5f:	00 
      60:	8d 70 6c             	lea    esi,[eax+0x6c]
      63:	89 c7                	mov    edi,eax
      65:	83 c0 6c             	add    eax,0x6c
      68:	b9 1b 00 00 00       	mov    ecx,0x1b
      6d:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
      6f:	39 d0                	cmp    eax,edx
      71:	75 ed                	jne    60 <focus_window+0x60>
      73:	6b c3 6c             	imul   eax,ebx,0x6c
      76:	89 ee                	mov    esi,ebp
      78:	b9 1b 00 00 00       	mov    ecx,0x1b
      7d:	89 1d 04 00 00 00    	mov    DWORD PTR ds:0x4,ebx
      83:	8d b8 20 0c 00 00    	lea    edi,[eax+0xc20]
      89:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
      8b:	c6 80 71 0c 00 00 01 	mov    BYTE PTR [eax+0xc71],0x1
      92:	83 c4 74             	add    esp,0x74
      95:	5b                   	pop    ebx
      96:	5e                   	pop    esi
      97:	5f                   	pop    edi
      98:	5d                   	pop    ebp
      99:	c3                   	ret
      9a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
      a0:	c3                   	ret
      a1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
      a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      af:	00 

000000b0 <about_draw>:
      b0:	55                   	push   ebp
      b1:	57                   	push   edi
      b2:	56                   	push   esi
      b3:	53                   	push   ebx
      b4:	83 ec 44             	sub    esp,0x44
      b7:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
      bb:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
      be:	8b 1e                	mov    ebx,DWORD PTR [esi]
      c0:	68 fa b4 89 00       	push   0x89b4fa
      c5:	6a 0e                	push   0xe
      c7:	8d 6f 30             	lea    ebp,[edi+0x30]
      ca:	8d 43 14             	lea    eax,[ebx+0x14]
      cd:	6a 38                	push   0x38
      cf:	6a 38                	push   0x38
      d1:	55                   	push   ebp
      d2:	50                   	push   eax
      d3:	e8 fc ff ff ff       	call   d4 <about_draw+0x24>
      d8:	83 c4 20             	add    esp,0x20
      db:	8d 47 44             	lea    eax,[edi+0x44]
      de:	68 ff ff ff 00       	push   0xffffff
      e3:	68 00 00 00 00       	push   0x0
      e8:	50                   	push   eax
      e9:	8d 43 24             	lea    eax,[ebx+0x24]
      ec:	83 c3 5c             	add    ebx,0x5c
      ef:	50                   	push   eax
      f0:	e8 fc ff ff ff       	call   f1 <about_draw+0x41>
      f5:	68 fa b4 89 00       	push   0x89b4fa
      fa:	68 03 00 00 00       	push   0x3
      ff:	55                   	push   ebp
     100:	53                   	push   ebx
     101:	e8 fc ff ff ff       	call   102 <about_draw+0x52>
     106:	83 c4 20             	add    esp,0x20
     109:	8d 47 46             	lea    eax,[edi+0x46]
     10c:	68 f4 d6 cd 00       	push   0xcdd6f4
     111:	68 0f 00 00 00       	push   0xf
     116:	50                   	push   eax
     117:	53                   	push   ebx
     118:	e8 fc ff ff ff       	call   119 <about_draw+0x69>
     11d:	8d 47 58             	lea    eax,[edi+0x58]
     120:	68 c8 ad a6 00       	push   0xa6adc8
     125:	68 28 00 00 00       	push   0x28
     12a:	50                   	push   eax
     12b:	53                   	push   ebx
     12c:	e8 fc ff ff ff       	call   12d <about_draw+0x7d>
     131:	83 c4 20             	add    esp,0x20
     134:	8d 47 68             	lea    eax,[edi+0x68]
     137:	68 c8 ad a6 00       	push   0xa6adc8
     13c:	68 40 00 00 00       	push   0x40
     141:	50                   	push   eax
     142:	53                   	push   ebx
     143:	e8 fc ff ff ff       	call   144 <about_draw+0x94>
     148:	8d 47 78             	lea    eax,[edi+0x78]
     14b:	68 c8 ad a6 00       	push   0xa6adc8
     150:	68 54 00 00 00       	push   0x54
     155:	50                   	push   eax
     156:	53                   	push   ebx
     157:	e8 fc ff ff ff       	call   158 <about_draw+0xa8>
     15c:	8b 06                	mov    eax,DWORD PTR [esi]
     15e:	83 c4 20             	add    esp,0x20
     161:	8b 5e 04             	mov    ebx,DWORD PTR [esi+0x4]
     164:	68 5a 47 45 00       	push   0x45475a
     169:	8d 78 14             	lea    edi,[eax+0x14]
     16c:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
     16f:	83 e8 28             	sub    eax,0x28
     172:	50                   	push   eax
     173:	8d 83 9e 00 00 00    	lea    eax,[ebx+0x9e]
     179:	50                   	push   eax
     17a:	57                   	push   edi
     17b:	e8 fc ff ff ff       	call   17c <about_draw+0xcc>
     180:	8d 83 aa 00 00 00    	lea    eax,[ebx+0xaa]
     186:	68 86 70 6c 00       	push   0x6c7086
     18b:	68 65 00 00 00       	push   0x65
     190:	50                   	push   eax
     191:	57                   	push   edi
     192:	e8 fc ff ff ff       	call   193 <about_draw+0xe3>
     197:	c7 44 24 20 4c 6f 67 	mov    DWORD PTR [esp+0x20],0x67676f4c
     19e:	67 
     19f:	c7 44 24 24 65 64 20 	mov    DWORD PTR [esp+0x24],0x69206465
     1a6:	69 
     1a7:	c7 44 24 28 6e 20 61 	mov    DWORD PTR [esp+0x28],0x7361206e
     1ae:	73 
     1af:	c7 44 24 2c 3a 20 00 	mov    DWORD PTR [esp+0x2c],0x203a
     1b6:	00 
     1b7:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
     1be:	00 
     1bf:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
     1c6:	00 
     1c7:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
     1ce:	00 
     1cf:	c7 44 24 3c 00 00 00 	mov    DWORD PTR [esp+0x3c],0x0
     1d6:	00 
     1d7:	c7 44 24 40 00 00 00 	mov    DWORD PTR [esp+0x40],0x0
     1de:	00 
     1df:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
     1e6:	00 
     1e7:	c7 44 24 48 00 00 00 	mov    DWORD PTR [esp+0x48],0x0
     1ee:	00 
     1ef:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [esp+0x4c],0x0
     1f6:	00 
     1f7:	83 c4 18             	add    esp,0x18
     1fa:	68 00 00 00 00       	push   0x0
     1ff:	8d 74 24 0c          	lea    esi,[esp+0xc]
     203:	56                   	push   esi
     204:	e8 fc ff ff ff       	call   205 <about_draw+0x155>
     209:	8d 83 be 00 00 00    	lea    eax,[ebx+0xbe]
     20f:	68 87 b3 fa 00       	push   0xfab387
     214:	56                   	push   esi
     215:	50                   	push   eax
     216:	57                   	push   edi
     217:	e8 fc ff ff ff       	call   218 <about_draw+0x168>
     21c:	83 c4 5c             	add    esp,0x5c
     21f:	5b                   	pop    ebx
     220:	5e                   	pop    esi
     221:	5f                   	pop    edi
     222:	5d                   	pop    ebp
     223:	c3                   	ret
     224:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     228:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     22f:	00 

00000230 <sp_about>:
     230:	57                   	push   edi
     231:	56                   	push   esi
     232:	53                   	push   ebx
     233:	8b 1d 0c 0c 00 00    	mov    ebx,DWORD PTR ds:0xc0c
     239:	83 fb 0f             	cmp    ebx,0xf
     23c:	0f 8f 96 00 00 00    	jg     2d8 <sp_about+0xa8>
     242:	6b f3 6c             	imul   esi,ebx,0x6c
     245:	83 ec 04             	sub    esp,0x4
     248:	6a 6c                	push   0x6c
     24a:	6a 00                	push   0x0
     24c:	8d be 20 0c 00 00    	lea    edi,[esi+0xc20]
     252:	57                   	push   edi
     253:	e8 fc ff ff ff       	call   254 <sp_about+0x24>
     258:	83 c4 0c             	add    esp,0xc
     25b:	8d 86 30 0c 00 00    	lea    eax,[esi+0xc30]
     261:	6a 3f                	push   0x3f
     263:	68 7b 00 00 00       	push   0x7b
     268:	50                   	push   eax
     269:	e8 fc ff ff ff       	call   26a <sp_about+0x3a>
     26e:	b8 01 01 00 00       	mov    eax,0x101
     273:	83 c4 10             	add    esp,0x10
     276:	c7 86 20 0c 00 00 fa 	mov    DWORD PTR [esi+0xc20],0xfa
     27d:	00 00 00 
     280:	66 89 86 70 0c 00 00 	mov    WORD PTR [esi+0xc70],ax
     287:	a1 04 00 00 00       	mov    eax,ds:0x4
     28c:	c7 86 24 0c 00 00 8c 	mov    DWORD PTR [esi+0xc24],0x8c
     293:	00 00 00 
     296:	c7 86 28 0c 00 00 90 	mov    DWORD PTR [esi+0xc28],0x190
     29d:	01 00 00 
     2a0:	c7 86 2c 0c 00 00 04 	mov    DWORD PTR [esi+0xc2c],0x104
     2a7:	01 00 00 
     2aa:	85 c0                	test   eax,eax
     2ac:	78 0a                	js     2b8 <sp_about+0x88>
     2ae:	6b c0 6c             	imul   eax,eax,0x6c
     2b1:	c6 80 71 0c 00 00 00 	mov    BYTE PTR [eax+0xc71],0x0
     2b8:	a1 0c 0c 00 00       	mov    eax,ds:0xc0c
     2bd:	6b db 6c             	imul   ebx,ebx,0x6c
     2c0:	8d 50 01             	lea    edx,[eax+0x1]
     2c3:	a3 04 00 00 00       	mov    ds:0x4,eax
     2c8:	89 15 0c 0c 00 00    	mov    DWORD PTR ds:0xc0c,edx
     2ce:	c7 83 7c 0c 00 00 b0 	mov    DWORD PTR [ebx+0xc7c],0xb0
     2d5:	00 00 00 
     2d8:	5b                   	pop    ebx
     2d9:	5e                   	pop    esi
     2da:	5f                   	pop    edi
     2db:	c3                   	ret
     2dc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000002e0 <gui_create_window>:
     2e0:	56                   	push   esi
     2e1:	31 f6                	xor    esi,esi
     2e3:	53                   	push   ebx
     2e4:	83 ec 04             	sub    esp,0x4
     2e7:	8b 1d 0c 0c 00 00    	mov    ebx,DWORD PTR ds:0xc0c
     2ed:	83 fb 0f             	cmp    ebx,0xf
     2f0:	7f 7f                	jg     371 <gui_create_window+0x91>
     2f2:	6b db 6c             	imul   ebx,ebx,0x6c
     2f5:	83 ec 04             	sub    esp,0x4
     2f8:	6a 6c                	push   0x6c
     2fa:	6a 00                	push   0x0
     2fc:	8d b3 20 0c 00 00    	lea    esi,[ebx+0xc20]
     302:	56                   	push   esi
     303:	e8 fc ff ff ff       	call   304 <gui_create_window+0x24>
     308:	83 c4 0c             	add    esp,0xc
     30b:	8d 83 30 0c 00 00    	lea    eax,[ebx+0xc30]
     311:	6a 3f                	push   0x3f
     313:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
     317:	50                   	push   eax
     318:	e8 fc ff ff ff       	call   319 <gui_create_window+0x39>
     31d:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
     321:	89 83 20 0c 00 00    	mov    DWORD PTR [ebx+0xc20],eax
     327:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
     32b:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
     32e:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
     332:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
     335:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
     339:	83 c4 10             	add    esp,0x10
     33c:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
     33f:	b8 01 01 00 00       	mov    eax,0x101
     344:	66 89 83 70 0c 00 00 	mov    WORD PTR [ebx+0xc70],ax
     34b:	a1 04 00 00 00       	mov    eax,ds:0x4
     350:	85 c0                	test   eax,eax
     352:	78 0a                	js     35e <gui_create_window+0x7e>
     354:	6b c0 6c             	imul   eax,eax,0x6c
     357:	c6 80 71 0c 00 00 00 	mov    BYTE PTR [eax+0xc71],0x0
     35e:	a1 0c 0c 00 00       	mov    eax,ds:0xc0c
     363:	8d 50 01             	lea    edx,[eax+0x1]
     366:	a3 04 00 00 00       	mov    ds:0x4,eax
     36b:	89 15 0c 0c 00 00    	mov    DWORD PTR ds:0xc0c,edx
     371:	83 c4 04             	add    esp,0x4
     374:	89 f0                	mov    eax,esi
     376:	5b                   	pop    ebx
     377:	5e                   	pop    esi
     378:	c3                   	ret
     379:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000380 <sp_terminal>:
     380:	83 ec 28             	sub    esp,0x28
     383:	68 b8 01 00 00       	push   0x1b8
     388:	68 94 02 00 00       	push   0x294
     38d:	6a 28                	push   0x28
     38f:	6a 78                	push   0x78
     391:	68 88 00 00 00       	push   0x88
     396:	e8 fc ff ff ff       	call   397 <sp_terminal+0x17>
     39b:	83 c4 20             	add    esp,0x20
     39e:	85 c0                	test   eax,eax
     3a0:	74 1e                	je     3c0 <sp_terminal+0x40>
     3a2:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     3a6:	e8 fc ff ff ff       	call   3a7 <sp_terminal+0x27>
     3ab:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     3af:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     3b2:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     3b9:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     3c0:	83 c4 1c             	add    esp,0x1c
     3c3:	c3                   	ret
     3c4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     3c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     3cf:	00 

000003d0 <sp_calc>:
     3d0:	83 ec 28             	sub    esp,0x28
     3d3:	68 18 01 00 00       	push   0x118
     3d8:	68 fa 00 00 00       	push   0xfa
     3dd:	6a 50                	push   0x50
     3df:	68 5e 01 00 00       	push   0x15e
     3e4:	68 91 00 00 00       	push   0x91
     3e9:	e8 fc ff ff ff       	call   3ea <sp_calc+0x1a>
     3ee:	83 c4 20             	add    esp,0x20
     3f1:	85 c0                	test   eax,eax
     3f3:	74 25                	je     41a <sp_calc+0x4a>
     3f5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     3f9:	e8 fc ff ff ff       	call   3fa <sp_calc+0x2a>
     3fe:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     402:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     405:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     40c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     413:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     41a:	83 c4 1c             	add    esp,0x1c
     41d:	c3                   	ret
     41e:	66 90                	xchg   ax,ax

00000420 <sp_notepad>:
     420:	83 ec 28             	sub    esp,0x28
     423:	68 90 01 00 00       	push   0x190
     428:	68 30 02 00 00       	push   0x230
     42d:	6a 3c                	push   0x3c
     42f:	68 a0 00 00 00       	push   0xa0
     434:	68 9c 00 00 00       	push   0x9c
     439:	e8 fc ff ff ff       	call   43a <sp_notepad+0x1a>
     43e:	83 c4 20             	add    esp,0x20
     441:	85 c0                	test   eax,eax
     443:	74 1e                	je     463 <sp_notepad+0x43>
     445:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     449:	e8 fc ff ff ff       	call   44a <sp_notepad+0x2a>
     44e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     452:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     455:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     45c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     463:	83 c4 1c             	add    esp,0x1c
     466:	c3                   	ret
     467:	90                   	nop
     468:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     46f:	00 

00000470 <sp_files>:
     470:	83 ec 28             	sub    esp,0x28
     473:	68 b8 01 00 00       	push   0x1b8
     478:	68 6c 02 00 00       	push   0x26c
     47d:	6a 3c                	push   0x3c
     47f:	6a 64                	push   0x64
     481:	68 a4 00 00 00       	push   0xa4
     486:	e8 fc ff ff ff       	call   487 <sp_files+0x17>
     48b:	83 c4 20             	add    esp,0x20
     48e:	85 c0                	test   eax,eax
     490:	74 25                	je     4b7 <sp_files+0x47>
     492:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     496:	e8 fc ff ff ff       	call   497 <sp_files+0x27>
     49b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     49f:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     4a2:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     4a9:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     4b0:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     4b7:	83 c4 1c             	add    esp,0x1c
     4ba:	c3                   	ret
     4bb:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]

000004c0 <sp_settings>:
     4c0:	83 ec 28             	sub    esp,0x28
     4c3:	68 a4 01 00 00       	push   0x1a4
     4c8:	68 b8 01 00 00       	push   0x1b8
     4cd:	6a 50                	push   0x50
     4cf:	68 c8 00 00 00       	push   0xc8
     4d4:	68 aa 00 00 00       	push   0xaa
     4d9:	e8 fc ff ff ff       	call   4da <sp_settings+0x1a>
     4de:	83 c4 20             	add    esp,0x20
     4e1:	85 c0                	test   eax,eax
     4e3:	74 1e                	je     503 <sp_settings+0x43>
     4e5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     4e9:	e8 fc ff ff ff       	call   4ea <sp_settings+0x2a>
     4ee:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     4f2:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     4f5:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     4fc:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     503:	83 c4 1c             	add    esp,0x1c
     506:	c3                   	ret
     507:	90                   	nop
     508:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     50f:	00 

00000510 <sp_physics>:
     510:	83 ec 28             	sub    esp,0x28
     513:	68 a4 01 00 00       	push   0x1a4
     518:	68 1c 02 00 00       	push   0x21c
     51d:	6a 28                	push   0x28
     51f:	68 8c 00 00 00       	push   0x8c
     524:	68 b3 00 00 00       	push   0xb3
     529:	e8 fc ff ff ff       	call   52a <sp_physics+0x1a>
     52e:	83 c4 20             	add    esp,0x20
     531:	85 c0                	test   eax,eax
     533:	74 1e                	je     553 <sp_physics+0x43>
     535:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     539:	e8 fc ff ff ff       	call   53a <sp_physics+0x2a>
     53e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     542:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     545:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     54c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     553:	83 c4 1c             	add    esp,0x1c
     556:	c3                   	ret
     557:	90                   	nop
     558:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     55f:	00 

00000560 <sp_game>:
     560:	83 ec 28             	sub    esp,0x28
     563:	68 a4 01 00 00       	push   0x1a4
     568:	68 b8 01 00 00       	push   0x1b8
     56d:	6a 1e                	push   0x1e
     56f:	68 c8 00 00 00       	push   0xc8
     574:	68 bf 00 00 00       	push   0xbf
     579:	e8 fc ff ff ff       	call   57a <sp_game+0x1a>
     57e:	83 c4 20             	add    esp,0x20
     581:	85 c0                	test   eax,eax
     583:	74 1e                	je     5a3 <sp_game+0x43>
     585:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     589:	e8 fc ff ff ff       	call   58a <sp_game+0x2a>
     58e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     592:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     595:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     59c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     5a3:	83 c4 1c             	add    esp,0x1c
     5a6:	c3                   	ret
     5a7:	90                   	nop
     5a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5af:	00 

000005b0 <gui_close_window>:
     5b0:	55                   	push   ebp
     5b1:	57                   	push   edi
     5b2:	56                   	push   esi
     5b3:	53                   	push   ebx
     5b4:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
     5b8:	2d 20 0c 00 00       	sub    eax,0xc20
     5bd:	78 75                	js     634 <gui_close_window+0x84>
     5bf:	89 c2                	mov    edx,eax
     5c1:	8b 1d 0c 0c 00 00    	mov    ebx,DWORD PTR ds:0xc0c
     5c7:	c1 fa 02             	sar    edx,0x2
     5ca:	69 d2 13 da 4b 68    	imul   edx,edx,0x684bda13
     5d0:	39 d3                	cmp    ebx,edx
     5d2:	7e 60                	jle    634 <gui_close_window+0x84>
     5d4:	8d 6b ff             	lea    ebp,[ebx-0x1]
     5d7:	39 ea                	cmp    edx,ebp
     5d9:	7d 65                	jge    640 <gui_close_window+0x90>
     5db:	6b d3 6c             	imul   edx,ebx,0x6c
     5de:	05 20 0c 00 00       	add    eax,0xc20
     5e3:	81 c2 b4 0b 00 00    	add    edx,0xbb4
     5e9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     5f0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5f7:	00 
     5f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5ff:	00 
     600:	8d 70 6c             	lea    esi,[eax+0x6c]
     603:	89 c7                	mov    edi,eax
     605:	83 c0 6c             	add    eax,0x6c
     608:	b9 1b 00 00 00       	mov    ecx,0x1b
     60d:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
     60f:	39 d0                	cmp    eax,edx
     611:	75 ed                	jne    600 <gui_close_window+0x50>
     613:	89 2d 0c 0c 00 00    	mov    DWORD PTR ds:0xc0c,ebp
     619:	a1 04 00 00 00       	mov    eax,ds:0x4
     61e:	39 e8                	cmp    eax,ebp
     620:	7c 08                	jl     62a <gui_close_window+0x7a>
     622:	8d 43 fe             	lea    eax,[ebx-0x2]
     625:	a3 04 00 00 00       	mov    ds:0x4,eax
     62a:	6b c0 6c             	imul   eax,eax,0x6c
     62d:	c6 80 71 0c 00 00 01 	mov    BYTE PTR [eax+0xc71],0x1
     634:	5b                   	pop    ebx
     635:	5e                   	pop    esi
     636:	5f                   	pop    edi
     637:	5d                   	pop    ebp
     638:	c3                   	ret
     639:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     640:	89 2d 0c 0c 00 00    	mov    DWORD PTR ds:0xc0c,ebp
     646:	85 ed                	test   ebp,ebp
     648:	75 cf                	jne    619 <gui_close_window+0x69>
     64a:	c7 05 04 00 00 00 ff 	mov    DWORD PTR ds:0x4,0xffffffff
     651:	ff ff ff 
     654:	5b                   	pop    ebx
     655:	5e                   	pop    esi
     656:	5f                   	pop    edi
     657:	5d                   	pop    ebp
     658:	c3                   	ret
     659:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000660 <gui_spawn_terminal>:
     660:	83 ec 28             	sub    esp,0x28
     663:	68 b8 01 00 00       	push   0x1b8
     668:	68 94 02 00 00       	push   0x294
     66d:	6a 28                	push   0x28
     66f:	6a 78                	push   0x78
     671:	68 88 00 00 00       	push   0x88
     676:	e8 fc ff ff ff       	call   677 <gui_spawn_terminal+0x17>
     67b:	83 c4 20             	add    esp,0x20
     67e:	85 c0                	test   eax,eax
     680:	74 1e                	je     6a0 <gui_spawn_terminal+0x40>
     682:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     686:	e8 fc ff ff ff       	call   687 <gui_spawn_terminal+0x27>
     68b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     68f:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     692:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     699:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     6a0:	83 c4 1c             	add    esp,0x1c
     6a3:	c3                   	ret
     6a4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     6a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     6af:	00 

000006b0 <gui_spawn_calculator>:
     6b0:	83 ec 28             	sub    esp,0x28
     6b3:	68 18 01 00 00       	push   0x118
     6b8:	68 fa 00 00 00       	push   0xfa
     6bd:	6a 50                	push   0x50
     6bf:	68 5e 01 00 00       	push   0x15e
     6c4:	68 91 00 00 00       	push   0x91
     6c9:	e8 fc ff ff ff       	call   6ca <gui_spawn_calculator+0x1a>
     6ce:	83 c4 20             	add    esp,0x20
     6d1:	85 c0                	test   eax,eax
     6d3:	74 25                	je     6fa <gui_spawn_calculator+0x4a>
     6d5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     6d9:	e8 fc ff ff ff       	call   6da <gui_spawn_calculator+0x2a>
     6de:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     6e2:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     6e5:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     6ec:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     6f3:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     6fa:	83 c4 1c             	add    esp,0x1c
     6fd:	c3                   	ret
     6fe:	66 90                	xchg   ax,ax

00000700 <gui_spawn_notepad>:
     700:	83 ec 28             	sub    esp,0x28
     703:	68 90 01 00 00       	push   0x190
     708:	68 30 02 00 00       	push   0x230
     70d:	6a 3c                	push   0x3c
     70f:	68 a0 00 00 00       	push   0xa0
     714:	68 9c 00 00 00       	push   0x9c
     719:	e8 fc ff ff ff       	call   71a <gui_spawn_notepad+0x1a>
     71e:	83 c4 20             	add    esp,0x20
     721:	85 c0                	test   eax,eax
     723:	74 1e                	je     743 <gui_spawn_notepad+0x43>
     725:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     729:	e8 fc ff ff ff       	call   72a <gui_spawn_notepad+0x2a>
     72e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     732:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     735:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     73c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     743:	83 c4 1c             	add    esp,0x1c
     746:	c3                   	ret
     747:	90                   	nop
     748:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     74f:	00 

00000750 <gui_spawn_files>:
     750:	83 ec 28             	sub    esp,0x28
     753:	68 b8 01 00 00       	push   0x1b8
     758:	68 6c 02 00 00       	push   0x26c
     75d:	6a 3c                	push   0x3c
     75f:	6a 64                	push   0x64
     761:	68 a4 00 00 00       	push   0xa4
     766:	e8 fc ff ff ff       	call   767 <gui_spawn_files+0x17>
     76b:	83 c4 20             	add    esp,0x20
     76e:	85 c0                	test   eax,eax
     770:	74 25                	je     797 <gui_spawn_files+0x47>
     772:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     776:	e8 fc ff ff ff       	call   777 <gui_spawn_files+0x27>
     77b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     77f:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     782:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     789:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     790:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     797:	83 c4 1c             	add    esp,0x1c
     79a:	c3                   	ret
     79b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]

000007a0 <gui_spawn_settings>:
     7a0:	83 ec 28             	sub    esp,0x28
     7a3:	68 a4 01 00 00       	push   0x1a4
     7a8:	68 b8 01 00 00       	push   0x1b8
     7ad:	6a 50                	push   0x50
     7af:	68 c8 00 00 00       	push   0xc8
     7b4:	68 aa 00 00 00       	push   0xaa
     7b9:	e8 fc ff ff ff       	call   7ba <gui_spawn_settings+0x1a>
     7be:	83 c4 20             	add    esp,0x20
     7c1:	85 c0                	test   eax,eax
     7c3:	74 1e                	je     7e3 <gui_spawn_settings+0x43>
     7c5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     7c9:	e8 fc ff ff ff       	call   7ca <gui_spawn_settings+0x2a>
     7ce:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     7d2:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     7d5:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     7dc:	c7 42 64 00 00 00 00 	mov    DWORD PTR [edx+0x64],0x0
     7e3:	83 c4 1c             	add    esp,0x1c
     7e6:	c3                   	ret
     7e7:	90                   	nop
     7e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     7ef:	00 

000007f0 <gui_spawn_physics>:
     7f0:	83 ec 28             	sub    esp,0x28
     7f3:	68 a4 01 00 00       	push   0x1a4
     7f8:	68 1c 02 00 00       	push   0x21c
     7fd:	6a 28                	push   0x28
     7ff:	68 8c 00 00 00       	push   0x8c
     804:	68 b3 00 00 00       	push   0xb3
     809:	e8 fc ff ff ff       	call   80a <gui_spawn_physics+0x1a>
     80e:	83 c4 20             	add    esp,0x20
     811:	85 c0                	test   eax,eax
     813:	74 1e                	je     833 <gui_spawn_physics+0x43>
     815:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     819:	e8 fc ff ff ff       	call   81a <gui_spawn_physics+0x2a>
     81e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     822:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     825:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     82c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     833:	83 c4 1c             	add    esp,0x1c
     836:	c3                   	ret
     837:	90                   	nop
     838:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     83f:	00 

00000840 <gui_spawn_game>:
     840:	83 ec 28             	sub    esp,0x28
     843:	68 a4 01 00 00       	push   0x1a4
     848:	68 b8 01 00 00       	push   0x1b8
     84d:	6a 1e                	push   0x1e
     84f:	68 c8 00 00 00       	push   0xc8
     854:	68 bf 00 00 00       	push   0xbf
     859:	e8 fc ff ff ff       	call   85a <gui_spawn_game+0x1a>
     85e:	83 c4 20             	add    esp,0x20
     861:	85 c0                	test   eax,eax
     863:	74 1e                	je     883 <gui_spawn_game+0x43>
     865:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     869:	e8 fc ff ff ff       	call   86a <gui_spawn_game+0x2a>
     86e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
     872:	89 42 68             	mov    DWORD PTR [edx+0x68],eax
     875:	c7 42 5c 00 00 00 00 	mov    DWORD PTR [edx+0x5c],0x0
     87c:	c7 42 60 00 00 00 00 	mov    DWORD PTR [edx+0x60],0x0
     883:	83 c4 1c             	add    esp,0x1c
     886:	c3                   	ret
     887:	90                   	nop
     888:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     88f:	00 

00000890 <gui_init>:
     890:	57                   	push   edi
     891:	56                   	push   esi
     892:	53                   	push   ebx
     893:	e8 fc ff ff ff       	call   894 <gui_init+0x4>
     898:	a3 04 0c 00 00       	mov    ds:0xc04,eax
     89d:	e8 fc ff ff ff       	call   89e <gui_init+0xe>
     8a2:	8d 70 d8             	lea    esi,[eax-0x28]
     8a5:	a3 00 0c 00 00       	mov    ds:0xc00,eax
     8aa:	85 f6                	test   esi,esi
     8ac:	7e 51                	jle    8ff <gui_init+0x6f>
     8ae:	31 ff                	xor    edi,edi
     8b0:	31 db                	xor    ebx,ebx
     8b2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     8b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     8bf:	00 
     8c0:	89 f8                	mov    eax,edi
     8c2:	83 c7 16             	add    edi,0x16
     8c5:	99                   	cdq
     8c6:	f7 fe                	idiv   esi
     8c8:	8d 48 0d             	lea    ecx,[eax+0xd]
     8cb:	6b c3 2d             	imul   eax,ebx,0x2d
     8ce:	c1 e1 08             	shl    ecx,0x8
     8d1:	99                   	cdq
     8d2:	f7 fe                	idiv   esi
     8d4:	83 c0 1c             	add    eax,0x1c
     8d7:	09 c1                	or     ecx,eax
     8d9:	8d 04 db             	lea    eax,[ebx+ebx*8]
     8dc:	01 c0                	add    eax,eax
     8de:	99                   	cdq
     8df:	f7 fe                	idiv   esi
     8e1:	83 c0 0f             	add    eax,0xf
     8e4:	c1 e0 10             	shl    eax,0x10
     8e7:	09 c1                	or     ecx,eax
     8e9:	89 0c 9d 00 00 00 00 	mov    DWORD PTR [ebx*4+0x0],ecx
     8f0:	83 c3 01             	add    ebx,0x1
     8f3:	39 de                	cmp    esi,ebx
     8f5:	7e 08                	jle    8ff <gui_init+0x6f>
     8f7:	81 fb 00 03 00 00    	cmp    ebx,0x300
     8fd:	75 c1                	jne    8c0 <gui_init+0x30>
     8ff:	83 ec 0c             	sub    esp,0xc
     902:	68 b8 01 00 00       	push   0x1b8
     907:	68 94 02 00 00       	push   0x294
     90c:	6a 28                	push   0x28
     90e:	6a 78                	push   0x78
     910:	68 88 00 00 00       	push   0x88
     915:	e8 fc ff ff ff       	call   916 <gui_init+0x86>
     91a:	83 c4 20             	add    esp,0x20
     91d:	89 c3                	mov    ebx,eax
     91f:	85 c0                	test   eax,eax
     921:	74 16                	je     939 <gui_init+0xa9>
     923:	e8 fc ff ff ff       	call   924 <gui_init+0x94>
     928:	c7 43 5c 00 00 00 00 	mov    DWORD PTR [ebx+0x5c],0x0
     92f:	89 43 68             	mov    DWORD PTR [ebx+0x68],eax
     932:	c7 43 60 00 00 00 00 	mov    DWORD PTR [ebx+0x60],0x0
     939:	5b                   	pop    ebx
     93a:	5e                   	pop    esi
     93b:	5f                   	pop    edi
     93c:	c3                   	ret
     93d:	8d 76 00             	lea    esi,[esi+0x0]

00000940 <gui_run>:
     940:	55                   	push   ebp
     941:	57                   	push   edi
     942:	56                   	push   esi
     943:	53                   	push   ebx
     944:	81 ec bc 00 00 00    	sub    esp,0xbc
     94a:	e8 fc ff ff ff       	call   94b <gui_run+0xb>
     94f:	e8 fc ff ff ff       	call   950 <gui_run+0x10>
     954:	89 04 24             	mov    DWORD PTR [esp],eax
     957:	e8 fc ff ff ff       	call   958 <gui_run+0x18>
     95c:	83 ec 0c             	sub    esp,0xc
     95f:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
     963:	6a 00                	push   0x0
     965:	e8 fc ff ff ff       	call   966 <gui_run+0x26>
     96a:	88 44 24 14          	mov    BYTE PTR [esp+0x14],al
     96e:	83 c4 10             	add    esp,0x10
     971:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     978:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     97f:	00 
     980:	e8 fc ff ff ff       	call   981 <gui_run+0x41>
     985:	84 c0                	test   al,al
     987:	74 36                	je     9bf <gui_run+0x7f>
     989:	e8 fc ff ff ff       	call   98a <gui_run+0x4a>
     98e:	0f be d0             	movsx  edx,al
     991:	a1 04 00 00 00       	mov    eax,ds:0x4
     996:	85 c0                	test   eax,eax
     998:	78 e6                	js     980 <gui_run+0x40>
     99a:	6b c0 6c             	imul   eax,eax,0x6c
     99d:	8b 88 80 0c 00 00    	mov    ecx,DWORD PTR [eax+0xc80]
     9a3:	05 20 0c 00 00       	add    eax,0xc20
     9a8:	85 c9                	test   ecx,ecx
     9aa:	74 d4                	je     980 <gui_run+0x40>
     9ac:	83 ec 08             	sub    esp,0x8
     9af:	52                   	push   edx
     9b0:	50                   	push   eax
     9b1:	ff d1                	call   ecx
     9b3:	83 c4 10             	add    esp,0x10
     9b6:	e8 fc ff ff ff       	call   9b7 <gui_run+0x77>
     9bb:	84 c0                	test   al,al
     9bd:	75 ca                	jne    989 <gui_run+0x49>
     9bf:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
     9c5:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
     9ca:	0f 84 d4 00 00 00    	je     aa4 <gui_run+0x164>
     9d0:	80 3d 09 0c 00 00 00 	cmp    BYTE PTR ds:0xc09,0x0
     9d7:	0f 85 c7 00 00 00    	jne    aa4 <gui_run+0x164>
     9dd:	8d 53 d8             	lea    edx,[ebx-0x28]
     9e0:	c6 05 09 0c 00 00 01 	mov    BYTE PTR ds:0xc09,0x1
     9e7:	89 d6                	mov    esi,edx
     9e9:	80 3d 08 0c 00 00 00 	cmp    BYTE PTR ds:0xc08,0x0
     9f0:	0f 85 af 0e 00 00    	jne    18a5 <gui_run+0xf65>
     9f6:	39 54 24 28          	cmp    DWORD PTR [esp+0x28],edx
     9fa:	0f 8d 4c 0d 00 00    	jge    174c <gui_run+0xe0c>
     a00:	8b 3c 24             	mov    edi,DWORD PTR [esp]
     a03:	31 c9                	xor    ecx,ecx
     a05:	eb 45                	jmp    a4c <gui_run+0x10c>
     a07:	eb 37                	jmp    a40 <gui_run+0x100>
     a09:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     a10:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a17:	00 
     a18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a1f:	00 
     a20:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a27:	00 
     a28:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a2f:	00 
     a30:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a37:	00 
     a38:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a3f:	00 
     a40:	83 c1 01             	add    ecx,0x1
     a43:	83 f9 08             	cmp    ecx,0x8
     a46:	0f 84 6d 11 00 00    	je     1bb9 <gui_run+0x1279>
     a4c:	89 c8                	mov    eax,ecx
     a4e:	c1 f8 02             	sar    eax,0x2
     a51:	83 f0 01             	xor    eax,0x1
     a54:	83 e0 01             	and    eax,0x1
     a57:	3c 01                	cmp    al,0x1
     a59:	19 f6                	sbb    esi,esi
     a5b:	83 e6 48             	and    esi,0x48
     a5e:	83 c6 14             	add    esi,0x14
     a61:	39 f7                	cmp    edi,esi
     a63:	7c db                	jl     a40 <gui_run+0x100>
     a65:	89 ce                	mov    esi,ecx
     a67:	83 e6 03             	and    esi,0x3
     a6a:	6b f6 46             	imul   esi,esi,0x46
     a6d:	3c 01                	cmp    al,0x1
     a6f:	19 c0                	sbb    eax,eax
     a71:	83 e0 48             	and    eax,0x48
     a74:	83 c0 43             	add    eax,0x43
     a77:	39 c7                	cmp    edi,eax
     a79:	7f c5                	jg     a40 <gui_run+0x100>
     a7b:	8b 6c 24 28          	mov    ebp,DWORD PTR [esp+0x28]
     a7f:	8d 46 14             	lea    eax,[esi+0x14]
     a82:	39 c5                	cmp    ebp,eax
     a84:	7c ba                	jl     a40 <gui_run+0x100>
     a86:	83 c6 43             	add    esi,0x43
     a89:	39 f5                	cmp    ebp,esi
     a8b:	7f b3                	jg     a40 <gui_run+0x100>
     a8d:	c1 e1 04             	shl    ecx,0x4
     a90:	ff 91 0c 00 00 00    	call   DWORD PTR [ecx+0xc]
     a96:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
     a9c:	8d 73 d8             	lea    esi,[ebx-0x28]
     a9f:	e9 d4 00 00 00       	jmp    b78 <gui_run+0x238>
     aa4:	0f b6 44 24 04       	movzx  eax,BYTE PTR [esp+0x4]
     aa9:	31 ed                	xor    ebp,ebp
     aab:	a2 09 0c 00 00       	mov    ds:0xc09,al
     ab0:	a1 0c 0c 00 00       	mov    eax,ds:0xc0c
     ab5:	89 c7                	mov    edi,eax
     ab7:	83 ef 01             	sub    edi,0x1
     aba:	0f 88 b4 0f 00 00    	js     1a74 <gui_run+0x1134>
     ac0:	6b f0 6c             	imul   esi,eax,0x6c
     ac3:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
     ac7:	89 f8                	mov    eax,edi
     ac9:	8d 96 20 0c 00 00    	lea    edx,[esi+0xc20]
     acf:	80 7a e4 00          	cmp    BYTE PTR [edx-0x1c],0x0
     ad3:	0f 84 38 06 00 00    	je     1111 <gui_run+0x7d1>
     ad9:	80 7a e6 00          	cmp    BYTE PTR [edx-0x1a],0x0
     add:	0f 85 2e 06 00 00    	jne    1111 <gui_run+0x7d1>
     ae3:	80 7a e7 00          	cmp    BYTE PTR [edx-0x19],0x0
     ae7:	0f 85 e3 0e 00 00    	jne    19d0 <gui_run+0x1090>
     aed:	85 ed                	test   ebp,ebp
     aef:	0f 84 1c 06 00 00    	je     1111 <gui_run+0x7d1>
     af5:	8b 5a 94             	mov    ebx,DWORD PTR [edx-0x6c]
     af8:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
     afb:	39 d9                	cmp    ecx,ebx
     afd:	0f 8c 0e 06 00 00    	jl     1111 <gui_run+0x7d1>
     b03:	03 5a 9c             	add    ebx,DWORD PTR [edx-0x64]
     b06:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
     b0a:	39 d9                	cmp    ecx,ebx
     b0c:	0f 8d ff 05 00 00    	jge    1111 <gui_run+0x7d1>
     b12:	8b 4a 98             	mov    ecx,DWORD PTR [edx-0x68]
     b15:	39 4c 24 28          	cmp    DWORD PTR [esp+0x28],ecx
     b19:	0f 8c f2 05 00 00    	jl     1111 <gui_run+0x7d1>
     b1f:	8b 5a a0             	mov    ebx,DWORD PTR [edx-0x60]
     b22:	01 cb                	add    ebx,ecx
     b24:	39 5c 24 28          	cmp    DWORD PTR [esp+0x28],ebx
     b28:	0f 8d e3 05 00 00    	jge    1111 <gui_run+0x7d1>
     b2e:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
     b32:	83 c1 1b             	add    ecx,0x1b
     b35:	39 4c 24 28          	cmp    DWORD PTR [esp+0x28],ecx
     b39:	0f 8f 43 0e 00 00    	jg     1982 <gui_run+0x1042>
     b3f:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
     b43:	8d 73 d8             	lea    esi,[ebx-0x28]
     b46:	83 ea 24             	sub    edx,0x24
     b49:	39 14 24             	cmp    DWORD PTR [esp],edx
     b4c:	0f 8d 09 0f 00 00    	jge    1a5b <gui_run+0x111b>
     b52:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
     b56:	83 ea 42             	sub    edx,0x42
     b59:	39 14 24             	cmp    DWORD PTR [esp],edx
     b5c:	0f 8c ba 0e 00 00    	jl     1a1c <gui_run+0x10dc>
     b62:	6b d0 6c             	imul   edx,eax,0x6c
     b65:	c6 82 72 0c 00 00 01 	mov    BYTE PTR [edx+0xc72],0x1
     b6c:	39 05 04 00 00 00    	cmp    DWORD PTR ds:0x4,eax
     b72:	0f 84 1f 0f 00 00    	je     1a97 <gui_run+0x1157>
     b78:	85 f6                	test   esi,esi
     b7a:	7e 6d                	jle    be9 <gui_run+0x2a9>
     b7c:	31 db                	xor    ebx,ebx
     b7e:	66 90                	xchg   ax,ax
     b80:	ff 34 9d 00 00 00 00 	push   DWORD PTR [ebx*4+0x0]
     b87:	ff 35 04 0c 00 00    	push   DWORD PTR ds:0xc04
     b8d:	53                   	push   ebx
     b8e:	83 c3 01             	add    ebx,0x1
     b91:	6a 00                	push   0x0
     b93:	e8 fc ff ff ff       	call   b94 <gui_run+0x254>
     b98:	83 c4 10             	add    esp,0x10
     b9b:	39 f3                	cmp    ebx,esi
     b9d:	75 e1                	jne    b80 <gui_run+0x240>
     b9f:	83 fb 18             	cmp    ebx,0x18
     ba2:	7e 3f                	jle    be3 <gui_run+0x2a3>
     ba4:	bf 18 00 00 00       	mov    edi,0x18
     ba9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     bb0:	bb 18 00 00 00       	mov    ebx,0x18
     bb5:	83 3d 04 0c 00 00 18 	cmp    DWORD PTR ds:0xc04,0x18
     bbc:	7e 1e                	jle    bdc <gui_run+0x29c>
     bbe:	66 90                	xchg   ax,ax
     bc0:	6a 14                	push   0x14
     bc2:	68 86 70 6c 00       	push   0x6c7086
     bc7:	57                   	push   edi
     bc8:	53                   	push   ebx
     bc9:	83 c3 30             	add    ebx,0x30
     bcc:	e8 fc ff ff ff       	call   bcd <gui_run+0x28d>
     bd1:	83 c4 10             	add    esp,0x10
     bd4:	3b 1d 04 0c 00 00    	cmp    ebx,DWORD PTR ds:0xc04
     bda:	7c e4                	jl     bc0 <gui_run+0x280>
     bdc:	83 c7 30             	add    edi,0x30
     bdf:	39 f7                	cmp    edi,esi
     be1:	7c cd                	jl     bb0 <gui_run+0x270>
     be3:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
     be9:	bf 00 00 00 00       	mov    edi,0x0
     bee:	31 ed                	xor    ebp,ebp
     bf0:	eb 0f                	jmp    c01 <gui_run+0x2c1>
     bf2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     bf8:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
     bfe:	83 c7 10             	add    edi,0x10
     c01:	89 ee                	mov    esi,ebp
     c03:	8d 43 d9             	lea    eax,[ebx-0x27]
     c06:	83 e6 03             	and    esi,0x3
     c09:	6b f6 46             	imul   esi,esi,0x46
     c0c:	8d 56 5a             	lea    edx,[esi+0x5a]
     c0f:	39 d0                	cmp    eax,edx
     c11:	0f 8e 9d 00 00 00    	jle    cb4 <gui_run+0x374>
     c17:	89 eb                	mov    ebx,ebp
     c19:	83 ec 08             	sub    esp,0x8
     c1c:	8d 46 14             	lea    eax,[esi+0x14]
     c1f:	ff 77 04             	push   DWORD PTR [edi+0x4]
     c22:	c1 fb 02             	sar    ebx,0x2
     c25:	6a 0c                	push   0xc
     c27:	83 c5 01             	add    ebp,0x1
     c2a:	f7 db                	neg    ebx
     c2c:	6a 30                	push   0x30
     c2e:	83 e3 48             	and    ebx,0x48
     c31:	6a 30                	push   0x30
     c33:	83 c3 14             	add    ebx,0x14
     c36:	50                   	push   eax
     c37:	53                   	push   ebx
     c38:	e8 fc ff ff ff       	call   c39 <gui_run+0x2f9>
     c3d:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
     c40:	83 c4 14             	add    esp,0x14
     c43:	52                   	push   edx
     c44:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     c48:	e8 fc ff ff ff       	call   c49 <gui_run+0x309>
     c4d:	68 f4 d6 cd 00       	push   0xcdd6f4
     c52:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
     c56:	52                   	push   edx
     c57:	8d 56 24             	lea    edx,[esi+0x24]
     c5a:	83 c6 48             	add    esi,0x48
     c5d:	52                   	push   edx
     c5e:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
     c65:	b8 30 00 00 00       	mov    eax,0x30
     c6a:	29 d0                	sub    eax,edx
     c6c:	d1 f8                	sar    eax,1
     c6e:	01 d8                	add    eax,ebx
     c70:	50                   	push   eax
     c71:	e8 fc ff ff ff       	call   c72 <gui_run+0x332>
     c76:	8b 17                	mov    edx,DWORD PTR [edi]
     c78:	83 c4 14             	add    esp,0x14
     c7b:	52                   	push   edx
     c7c:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     c80:	e8 fc ff ff ff       	call   c81 <gui_run+0x341>
     c85:	68 c8 ad a6 00       	push   0xa6adc8
     c8a:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
     c8e:	52                   	push   edx
     c8f:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
     c96:	b8 30 00 00 00       	mov    eax,0x30
     c9b:	29 d0                	sub    eax,edx
     c9d:	56                   	push   esi
     c9e:	d1 f8                	sar    eax,1
     ca0:	01 d8                	add    eax,ebx
     ca2:	50                   	push   eax
     ca3:	e8 fc ff ff ff       	call   ca4 <gui_run+0x364>
     ca8:	83 c4 20             	add    esp,0x20
     cab:	83 fd 08             	cmp    ebp,0x8
     cae:	0f 85 44 ff ff ff    	jne    bf8 <gui_run+0x2b8>
     cb4:	a1 0c 0c 00 00       	mov    eax,ds:0xc0c
     cb9:	85 c0                	test   eax,eax
     cbb:	0f 8e f3 02 00 00    	jle    fb4 <gui_run+0x674>
     cc1:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
     cc8:	00 
     cc9:	b8 20 0c 00 00       	mov    eax,0xc20
     cce:	80 78 52 00          	cmp    BYTE PTR [eax+0x52],0x0
     cd2:	0f 85 c4 02 00 00    	jne    f9c <gui_run+0x65c>
     cd8:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
     cdb:	8b 08                	mov    ecx,DWORD PTR [eax]
     cdd:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
     ce1:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
     ce4:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
     ce7:	8d 57 03             	lea    edx,[edi+0x3]
     cea:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
     cee:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     cf2:	8d 14 39             	lea    edx,[ecx+edi*1]
     cf5:	89 f5                	mov    ebp,esi
     cf7:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
     cfb:	89 ca                	mov    edx,ecx
     cfd:	83 c2 07             	add    edx,0x7
     d00:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
     d04:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     d08:	8d 57 fe             	lea    edx,[edi-0x2]
     d0b:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
     d0f:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
     d13:	8d 49 02             	lea    ecx,[ecx+0x2]
     d16:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
     d1a:	8d 74 1e 02          	lea    esi,[esi+ebx*1+0x2]
     d1e:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
     d22:	bb 26 00 00 00       	mov    ebx,0x26
     d27:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
     d2b:	85 ff                	test   edi,edi
     d2d:	0f 8e 37 0b 00 00    	jle    186a <gui_run+0xf2a>
     d33:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
     d37:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
     d3b:	89 f7                	mov    edi,esi
     d3d:	2b 7c 24 2c          	sub    edi,DWORD PTR [esp+0x2c]
     d41:	8d 2c 08             	lea    ebp,[eax+ecx*1]
     d44:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     d48:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d4f:	00 
     d50:	53                   	push   ebx
     d51:	6a 00                	push   0x0
     d53:	57                   	push   edi
     d54:	83 c7 01             	add    edi,0x1
     d57:	55                   	push   ebp
     d58:	e8 fc ff ff ff       	call   d59 <gui_run+0x419>
     d5d:	83 c4 10             	add    esp,0x10
     d60:	39 fe                	cmp    esi,edi
     d62:	75 ec                	jne    d50 <gui_run+0x410>
     d64:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
     d68:	83 7c 24 08 fd       	cmp    DWORD PTR [esp+0x8],0xfffffffd
     d6d:	0f 8c df 0a 00 00    	jl     1852 <gui_run+0xf12>
     d73:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
     d77:	8d 6e fe             	lea    ebp,[esi-0x2]
     d7a:	8d 79 fe             	lea    edi,[ecx-0x2]
     d7d:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
     d81:	31 f6                	xor    esi,esi
     d83:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     d88:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d8f:	00 
     d90:	8d 14 37             	lea    edx,[edi+esi*1]
     d93:	53                   	push   ebx
     d94:	83 c6 01             	add    esi,0x1
     d97:	6a 00                	push   0x0
     d99:	55                   	push   ebp
     d9a:	52                   	push   edx
     d9b:	e8 fc ff ff ff       	call   d9c <gui_run+0x45c>
     da0:	83 c4 10             	add    esp,0x10
     da3:	3b 74 24 04          	cmp    esi,DWORD PTR [esp+0x4]
     da7:	7e e7                	jle    d90 <gui_run+0x450>
     da9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
     dad:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
     db1:	83 eb 06             	sub    ebx,0x6
     db4:	83 c1 01             	add    ecx,0x1
     db7:	83 c6 01             	add    esi,0x1
     dba:	3b 4c 24 18          	cmp    ecx,DWORD PTR [esp+0x18]
     dbe:	0f 85 63 ff ff ff    	jne    d27 <gui_run+0x3e7>
     dc4:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
     dc8:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
     dcc:	80 78 51 00          	cmp    BYTE PTR [eax+0x51],0x0
     dd0:	0f 85 13 0a 00 00    	jne    17e9 <gui_run+0xea9>
     dd6:	c7 44 24 24 ea ff ff 	mov    DWORD PTR [esp+0x24],0xffffffea
     ddd:	ff 
     dde:	c7 44 24 20 eb ff ff 	mov    DWORD PTR [esp+0x20],0xffffffeb
     de5:	ff 
     de6:	c7 44 24 1c ec ff ff 	mov    DWORD PTR [esp+0x1c],0xffffffec
     ded:	ff 
     dee:	c7 44 24 18 5a 00 00 	mov    DWORD PTR [esp+0x18],0x5a
     df5:	00 
     df6:	c7 44 24 14 47 00 00 	mov    DWORD PTR [esp+0x14],0x47
     dfd:	00 
     dfe:	c7 44 24 10 45 00 00 	mov    DWORD PTR [esp+0x10],0x45
     e05:	00 
     e06:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
     e0a:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
     e0e:	31 ff                	xor    edi,edi
     e10:	31 f6                	xor    esi,esi
     e12:	31 db                	xor    ebx,ebx
     e14:	83 c1 1c             	add    ecx,0x1c
     e17:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
     e1b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     e20:	b8 93 24 49 92       	mov    eax,0x92492493
     e25:	f7 eb                	imul   ebx
     e27:	89 d8                	mov    eax,ebx
     e29:	c1 f8 1f             	sar    eax,0x1f
     e2c:	8d 0c 1a             	lea    ecx,[edx+ebx*1]
     e2f:	c1 f9 04             	sar    ecx,0x4
     e32:	29 c1                	sub    ecx,eax
     e34:	b8 93 24 49 92       	mov    eax,0x92492493
     e39:	03 4c 24 10          	add    ecx,DWORD PTR [esp+0x10]
     e3d:	f7 ee                	imul   esi
     e3f:	c1 e1 10             	shl    ecx,0x10
     e42:	8d 04 32             	lea    eax,[edx+esi*1]
     e45:	89 f2                	mov    edx,esi
     e47:	c1 fa 1f             	sar    edx,0x1f
     e4a:	c1 f8 04             	sar    eax,0x4
     e4d:	29 d0                	sub    eax,edx
     e4f:	03 44 24 14          	add    eax,DWORD PTR [esp+0x14]
     e53:	c1 e0 08             	shl    eax,0x8
     e56:	09 c1                	or     ecx,eax
     e58:	b8 93 24 49 92       	mov    eax,0x92492493
     e5d:	f7 ef                	imul   edi
     e5f:	8d 04 3a             	lea    eax,[edx+edi*1]
     e62:	89 fa                	mov    edx,edi
     e64:	c1 fa 1f             	sar    edx,0x1f
     e67:	c1 f8 04             	sar    eax,0x4
     e6a:	29 d0                	sub    eax,edx
     e6c:	03 44 24 18          	add    eax,DWORD PTR [esp+0x18]
     e70:	09 c1                	or     ecx,eax
     e72:	51                   	push   ecx
     e73:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
     e77:	55                   	push   ebp
     e78:	83 c5 01             	add    ebp,0x1
     e7b:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
     e7f:	e8 fc ff ff ff       	call   e80 <gui_run+0x540>
     e84:	03 5c 24 2c          	add    ebx,DWORD PTR [esp+0x2c]
     e88:	03 74 24 30          	add    esi,DWORD PTR [esp+0x30]
     e8c:	03 7c 24 34          	add    edi,DWORD PTR [esp+0x34]
     e90:	83 c4 10             	add    esp,0x10
     e93:	39 6c 24 04          	cmp    DWORD PTR [esp+0x4],ebp
     e97:	75 87                	jne    e20 <gui_run+0x4e0>
     e99:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
     e9d:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
     ea1:	68 f4 d6 cd 00       	push   0xcdd6f4
     ea6:	8d 5d 06             	lea    ebx,[ebp+0x6]
     ea9:	8d 50 10             	lea    edx,[eax+0x10]
     eac:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
     eb0:	8d 75 04             	lea    esi,[ebp+0x4]
     eb3:	52                   	push   edx
     eb4:	53                   	push   ebx
     eb5:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
     eb9:	8d 57 0c             	lea    edx,[edi+0xc]
     ebc:	52                   	push   edx
     ebd:	e8 fc ff ff ff       	call   ebe <gui_run+0x57e>
     ec2:	5f                   	pop    edi
     ec3:	58                   	pop    eax
     ec4:	68 a8 8b f3 00       	push   0xf38ba8
     ec9:	6a 06                	push   0x6
     ecb:	6a 14                	push   0x14
     ecd:	6a 1c                	push   0x1c
     ecf:	56                   	push   esi
     ed0:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
     ed4:	8d 57 dc             	lea    edx,[edi-0x24]
     ed7:	52                   	push   edx
     ed8:	e8 fc ff ff ff       	call   ed9 <gui_run+0x599>
     edd:	83 c4 20             	add    esp,0x20
     ee0:	8d 57 e4             	lea    edx,[edi-0x1c]
     ee3:	68 ff ff ff 00       	push   0xffffff
     ee8:	68 ec 00 00 00       	push   0xec
     eed:	53                   	push   ebx
     eee:	52                   	push   edx
     eef:	e8 fc ff ff ff       	call   ef0 <gui_run+0x5b0>
     ef4:	58                   	pop    eax
     ef5:	5a                   	pop    edx
     ef6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
     efa:	80 78 51 01          	cmp    BYTE PTR [eax+0x51],0x1
     efe:	19 d2                	sbb    edx,edx
     f00:	81 e2 ea eb ec ff    	and    edx,0xffecebea
     f06:	81 c2 70 5b 58 00    	add    edx,0x585b70
     f0c:	52                   	push   edx
     f0d:	8d 57 be             	lea    edx,[edi-0x42]
     f10:	6a 06                	push   0x6
     f12:	6a 14                	push   0x14
     f14:	6a 1c                	push   0x1c
     f16:	56                   	push   esi
     f17:	52                   	push   edx
     f18:	e8 fc ff ff ff       	call   f19 <gui_run+0x5d9>
     f1d:	83 c4 20             	add    esp,0x20
     f20:	8d 57 c6             	lea    edx,[edi-0x3a]
     f23:	68 f4 d6 cd 00       	push   0xcdd6f4
     f28:	68 ee 00 00 00       	push   0xee
     f2d:	53                   	push   ebx
     f2e:	52                   	push   edx
     f2f:	e8 fc ff ff ff       	call   f30 <gui_run+0x5f0>
     f34:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
     f38:	c7 04 24 2e 1e 1e 00 	mov    DWORD PTR [esp],0x1e1e2e
     f3f:	8d 56 e4             	lea    edx,[esi-0x1c]
     f42:	52                   	push   edx
     f43:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
     f47:	53                   	push   ebx
     f48:	ff 74 24 1c          	push   DWORD PTR [esp+0x1c]
     f4c:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
     f50:	57                   	push   edi
     f51:	e8 fc ff ff ff       	call   f52 <gui_run+0x612>
     f56:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
     f5a:	83 c4 14             	add    esp,0x14
     f5d:	80 78 51 01          	cmp    BYTE PTR [eax+0x51],0x1
     f61:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     f65:	19 d2                	sbb    edx,edx
     f67:	81 e2 76 a6 ce ff    	and    edx,0xffcea676
     f6d:	81 c2 fa b4 89 00    	add    edx,0x89b4fa
     f73:	52                   	push   edx
     f74:	56                   	push   esi
     f75:	53                   	push   ebx
     f76:	55                   	push   ebp
     f77:	57                   	push   edi
     f78:	e8 fc ff ff ff       	call   f79 <gui_run+0x639>
     f7d:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
     f81:	83 c4 20             	add    esp,0x20
     f84:	8b 50 5c             	mov    edx,DWORD PTR [eax+0x5c]
     f87:	85 d2                	test   edx,edx
     f89:	74 11                	je     f9c <gui_run+0x65c>
     f8b:	83 ec 0c             	sub    esp,0xc
     f8e:	50                   	push   eax
     f8f:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
     f93:	ff d2                	call   edx
     f95:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
     f99:	83 c4 10             	add    esp,0x10
     f9c:	83 44 24 30 01       	add    DWORD PTR [esp+0x30],0x1
     fa1:	83 c0 6c             	add    eax,0x6c
     fa4:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
     fa8:	39 0d 0c 0c 00 00    	cmp    DWORD PTR ds:0xc0c,ecx
     fae:	0f 8f 1a fd ff ff    	jg     cce <gui_run+0x38e>
     fb4:	8b 3d 00 0c 00 00    	mov    edi,DWORD PTR ds:0xc00
     fba:	83 ec 0c             	sub    esp,0xc
     fbd:	8d 5f d8             	lea    ebx,[edi-0x28]
     fc0:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
     fc4:	8d 77 ec             	lea    esi,[edi-0x14]
     fc7:	68 25 18 18 00       	push   0x181825
     fcc:	6a 28                	push   0x28
     fce:	ff 35 04 0c 00 00    	push   DWORD PTR ds:0xc04
     fd4:	53                   	push   ebx
     fd5:	6a 00                	push   0x0
     fd7:	e8 fc ff ff ff       	call   fd8 <gui_run+0x698>
     fdc:	83 c4 20             	add    esp,0x20
     fdf:	68 5a 47 45 00       	push   0x45475a
     fe4:	ff 35 04 0c 00 00    	push   DWORD PTR ds:0xc04
     fea:	53                   	push   ebx
     feb:	6a 00                	push   0x0
     fed:	e8 fc ff ff ff       	call   fee <gui_run+0x6ae>
     ff2:	83 c4 10             	add    esp,0x10
     ff5:	80 3d 08 0c 00 00 01 	cmp    BYTE PTR ds:0xc08,0x1
     ffc:	19 c0                	sbb    eax,eax
     ffe:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
    1002:	25 4a 7d a7 ff       	and    eax,0xffa77d4a
    1007:	05 fa b4 89 00       	add    eax,0x89b4fa
    100c:	50                   	push   eax
    100d:	6a 10                	push   0x10
    100f:	56                   	push   esi
    1010:	6a 18                	push   0x18
    1012:	e8 fc ff ff ff       	call   1013 <gui_run+0x6d3>
    1017:	83 c4 10             	add    esp,0x10
    101a:	80 3d 08 0c 00 00 01 	cmp    BYTE PTR ds:0xc08,0x1
    1021:	19 c0                	sbb    eax,eax
    1023:	83 ef 1c             	sub    edi,0x1c
    1026:	25 6e 7f d0 ff       	and    eax,0xffd07f6e
    102b:	05 ec c7 74 00       	add    eax,0x74c7ec
    1030:	50                   	push   eax
    1031:	6a 0e                	push   0xe
    1033:	56                   	push   esi
    1034:	6a 18                	push   0x18
    1036:	e8 fc ff ff ff       	call   1037 <gui_run+0x6f7>
    103b:	68 f4 d6 cd 00       	push   0xcdd6f4
    1040:	68 f0 00 00 00       	push   0xf0
    1045:	57                   	push   edi
    1046:	6a 12                	push   0x12
    1048:	e8 fc ff ff ff       	call   1049 <gui_run+0x709>
    104d:	8b 2d 0c 0c 00 00    	mov    ebp,DWORD PTR ds:0xc0c
    1053:	83 c4 20             	add    esp,0x20
    1056:	85 ed                	test   ebp,ebp
    1058:	0f 8e dd 00 00 00    	jle    113b <gui_run+0x7fb>
    105e:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
    1062:	bd 30 0c 00 00       	mov    ebp,0xc30
    1067:	bb 34 00 00 00       	mov    ebx,0x34
    106c:	31 f6                	xor    esi,esi
    106e:	8d 48 de             	lea    ecx,[eax-0x22]
    1071:	83 e8 07             	sub    eax,0x7
    1074:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
    1078:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    107c:	eb 4d                	jmp    10cb <gui_run+0x78b>
    107e:	66 90                	xchg   ax,ax
    1080:	83 ec 08             	sub    esp,0x8
    1083:	68 44 32 31 00       	push   0x313244
    1088:	6a 08                	push   0x8
    108a:	6a 1c                	push   0x1c
    108c:	6a 78                	push   0x78
    108e:	ff 74 24 1c          	push   DWORD PTR [esp+0x1c]
    1092:	53                   	push   ebx
    1093:	e8 fc ff ff ff       	call   1094 <gui_run+0x754>
    1098:	83 c4 20             	add    esp,0x20
    109b:	80 7d 42 01          	cmp    BYTE PTR [ebp+0x42],0x1
    109f:	19 c0                	sbb    eax,eax
    10a1:	83 c6 01             	add    esi,0x1
    10a4:	25 6e 66 61 00       	and    eax,0x61666e
    10a9:	05 86 70 6c 00       	add    eax,0x6c7086
    10ae:	50                   	push   eax
    10af:	8d 43 08             	lea    eax,[ebx+0x8]
    10b2:	83 c3 7e             	add    ebx,0x7e
    10b5:	55                   	push   ebp
    10b6:	83 c5 6c             	add    ebp,0x6c
    10b9:	57                   	push   edi
    10ba:	50                   	push   eax
    10bb:	e8 fc ff ff ff       	call   10bc <gui_run+0x77c>
    10c0:	83 c4 10             	add    esp,0x10
    10c3:	3b 35 0c 0c 00 00    	cmp    esi,DWORD PTR ds:0xc0c
    10c9:	7d 70                	jge    113b <gui_run+0x7fb>
    10cb:	39 35 04 00 00 00    	cmp    DWORD PTR ds:0x4,esi
    10d1:	75 ad                	jne    1080 <gui_run+0x740>
    10d3:	80 7d 42 00          	cmp    BYTE PTR [ebp+0x42],0x0
    10d7:	75 a7                	jne    1080 <gui_run+0x740>
    10d9:	83 ec 08             	sub    esp,0x8
    10dc:	68 5a 47 45 00       	push   0x45475a
    10e1:	6a 08                	push   0x8
    10e3:	6a 1c                	push   0x1c
    10e5:	6a 78                	push   0x78
    10e7:	ff 74 24 1c          	push   DWORD PTR [esp+0x1c]
    10eb:	53                   	push   ebx
    10ec:	e8 fc ff ff ff       	call   10ed <gui_run+0x7ad>
    10f1:	83 c4 18             	add    esp,0x18
    10f4:	8d 43 04             	lea    eax,[ebx+0x4]
    10f7:	68 fa b4 89 00       	push   0x89b4fa
    10fc:	6a 01                	push   0x1
    10fe:	6a 03                	push   0x3
    1100:	6a 70                	push   0x70
    1102:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
    1106:	50                   	push   eax
    1107:	e8 fc ff ff ff       	call   1108 <gui_run+0x7c8>
    110c:	83 c4 20             	add    esp,0x20
    110f:	eb 8a                	jmp    109b <gui_run+0x75b>
    1111:	83 e8 01             	sub    eax,0x1
    1114:	83 ea 6c             	sub    edx,0x6c
    1117:	83 f8 ff             	cmp    eax,0xffffffff
    111a:	0f 85 af f9 ff ff    	jne    acf <gui_run+0x18f>
    1120:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    1124:	8d 73 d8             	lea    esi,[ebx-0x28]
    1127:	85 ed                	test   ebp,ebp
    1129:	0f 84 49 fa ff ff    	je     b78 <gui_run+0x238>
    112f:	c6 05 08 0c 00 00 00 	mov    BYTE PTR ds:0xc08,0x0
    1136:	e9 3d fa ff ff       	jmp    b78 <gui_run+0x238>
    113b:	e8 fc ff ff ff       	call   113c <gui_run+0x7fc>
    1140:	c7 44 24 60 72 6b 00 	mov    DWORD PTR [esp+0x60],0x6b72
    1147:	00 
    1148:	c7 44 24 64 00 00 00 	mov    DWORD PTR [esp+0x64],0x0
    114f:	00 
    1150:	89 c7                	mov    edi,eax
    1152:	c7 44 24 68 00 00 00 	mov    DWORD PTR [esp+0x68],0x0
    1159:	00 
    115a:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
    115d:	c7 44 24 58 4e 6f 20 	mov    DWORD PTR [esp+0x58],0x6e206f4e
    1164:	6e 
    1165:	c7 44 24 5c 65 74 77 	mov    DWORD PTR [esp+0x5c],0x6f777465
    116c:	6f 
    116d:	85 db                	test   ebx,ebx
    116f:	74 3b                	je     11ac <gui_run+0x86c>
    1171:	31 f6                	xor    esi,esi
    1173:	8d 5c 24 58          	lea    ebx,[esp+0x58]
    1177:	83 ec 04             	sub    esp,0x4
    117a:	6a 0a                	push   0xa
    117c:	53                   	push   ebx
    117d:	0f b6 04 37          	movzx  eax,BYTE PTR [edi+esi*1]
    1181:	50                   	push   eax
    1182:	e8 fc ff ff ff       	call   1183 <gui_run+0x843>
    1187:	83 c4 10             	add    esp,0x10
    118a:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
    118d:	74 09                	je     1198 <gui_run+0x858>
    118f:	90                   	nop
    1190:	83 c3 01             	add    ebx,0x1
    1193:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
    1196:	75 f8                	jne    1190 <gui_run+0x850>
    1198:	83 c6 01             	add    esi,0x1
    119b:	83 fe 04             	cmp    esi,0x4
    119e:	0f 84 90 05 00 00    	je     1734 <gui_run+0xdf4>
    11a4:	c6 03 2e             	mov    BYTE PTR [ebx],0x2e
    11a7:	83 c3 01             	add    ebx,0x1
    11aa:	eb cb                	jmp    1177 <gui_run+0x837>
    11ac:	b8 9c 84 7f 00       	mov    eax,0x7f849c
    11b1:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    11b5:	50                   	push   eax
    11b6:	83 eb 24             	sub    ebx,0x24
    11b9:	8d 44 24 5c          	lea    eax,[esp+0x5c]
    11bd:	50                   	push   eax
    11be:	a1 04 0c 00 00       	mov    eax,ds:0xc04
    11c3:	53                   	push   ebx
    11c4:	2d 04 01 00 00       	sub    eax,0x104
    11c9:	50                   	push   eax
    11ca:	e8 fc ff ff ff       	call   11cb <gui_run+0x88b>
    11cf:	c7 44 24 7c 75 70 20 	mov    DWORD PTR [esp+0x7c],0x207075
    11d6:	00 
    11d7:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x0
    11de:	00 00 00 00 
    11e2:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0x0
    11e9:	00 00 00 00 
    11ed:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0x0
    11f4:	00 00 00 00 
    11f8:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],0x0
    11ff:	00 00 00 00 
    1203:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0x0
    120a:	00 00 00 00 
    120e:	c7 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],0x0
    1215:	00 00 00 00 
    1219:	c7 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],0x0
    1220:	00 00 00 00 
    1224:	e8 fc ff ff ff       	call   1225 <gui_run+0x8e5>
    1229:	83 c4 0c             	add    esp,0xc
    122c:	ba 1f 85 eb 51       	mov    edx,0x51eb851f
    1231:	6a 0a                	push   0xa
    1233:	f7 e2                	mul    edx
    1235:	8d 44 24 48          	lea    eax,[esp+0x48]
    1239:	c1 ea 05             	shr    edx,0x5
    123c:	50                   	push   eax
    123d:	b8 89 88 88 88       	mov    eax,0x88888889
    1242:	89 d6                	mov    esi,edx
    1244:	f7 e2                	mul    edx
    1246:	c1 ea 05             	shr    edx,0x5
    1249:	52                   	push   edx
    124a:	89 d7                	mov    edi,edx
    124c:	6b ff 3c             	imul   edi,edi,0x3c
    124f:	e8 fc ff ff ff       	call   1250 <gui_run+0x910>
    1254:	5d                   	pop    ebp
    1255:	58                   	pop    eax
    1256:	8d 44 24 48          	lea    eax,[esp+0x48]
    125a:	29 fe                	sub    esi,edi
    125c:	50                   	push   eax
    125d:	8d 44 24 78          	lea    eax,[esp+0x78]
    1261:	50                   	push   eax
    1262:	e8 fc ff ff ff       	call   1263 <gui_run+0x923>
    1267:	58                   	pop    eax
    1268:	5a                   	pop    edx
    1269:	68 f2 00 00 00       	push   0xf2
    126e:	8d 44 24 78          	lea    eax,[esp+0x78]
    1272:	50                   	push   eax
    1273:	e8 fc ff ff ff       	call   1274 <gui_run+0x934>
    1278:	83 c4 10             	add    esp,0x10
    127b:	83 fe 09             	cmp    esi,0x9
    127e:	0f 86 b4 05 00 00    	jbe    1838 <gui_run+0xef8>
    1284:	83 ec 04             	sub    esp,0x4
    1287:	6a 0a                	push   0xa
    1289:	8d 44 24 48          	lea    eax,[esp+0x48]
    128d:	50                   	push   eax
    128e:	56                   	push   esi
    128f:	e8 fc ff ff ff       	call   1290 <gui_run+0x950>
    1294:	5e                   	pop    esi
    1295:	5f                   	pop    edi
    1296:	8d 44 24 48          	lea    eax,[esp+0x48]
    129a:	50                   	push   eax
    129b:	8d 44 24 78          	lea    eax,[esp+0x78]
    129f:	50                   	push   eax
    12a0:	e8 fc ff ff ff       	call   12a1 <gui_run+0x961>
    12a5:	68 9c 84 7f 00       	push   0x7f849c
    12aa:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
    12b1:	50                   	push   eax
    12b2:	a1 04 0c 00 00       	mov    eax,ds:0xc04
    12b7:	53                   	push   ebx
    12b8:	2d aa 00 00 00       	sub    eax,0xaa
    12bd:	50                   	push   eax
    12be:	e8 fc ff ff ff       	call   12bf <gui_run+0x97f>
    12c3:	c7 44 24 68 00 00 00 	mov    DWORD PTR [esp+0x68],0x0
    12ca:	00 
    12cb:	c7 44 24 6c 00 00 00 	mov    DWORD PTR [esp+0x6c],0x0
    12d2:	00 
    12d3:	c7 44 24 70 00 00 00 	mov    DWORD PTR [esp+0x70],0x0
    12da:	00 
    12db:	c7 44 24 74 00 00 00 	mov    DWORD PTR [esp+0x74],0x0
    12e2:	00 
    12e3:	83 c4 20             	add    esp,0x20
    12e6:	e8 fc ff ff ff       	call   12e7 <gui_run+0x9a7>
    12eb:	0f b6 d8             	movzx  ebx,al
    12ee:	e8 fc ff ff ff       	call   12ef <gui_run+0x9af>
    12f3:	89 c6                	mov    esi,eax
    12f5:	e8 fc ff ff ff       	call   12f6 <gui_run+0x9b6>
    12fa:	89 c7                	mov    edi,eax
    12fc:	80 fb 09             	cmp    bl,0x9
    12ff:	0f 86 19 05 00 00    	jbe    181e <gui_run+0xede>
    1305:	83 ec 04             	sub    esp,0x4
    1308:	6a 0a                	push   0xa
    130a:	8d 44 24 48          	lea    eax,[esp+0x48]
    130e:	50                   	push   eax
    130f:	53                   	push   ebx
    1310:	e8 fc ff ff ff       	call   1311 <gui_run+0x9d1>
    1315:	58                   	pop    eax
    1316:	5a                   	pop    edx
    1317:	8d 44 24 48          	lea    eax,[esp+0x48]
    131b:	50                   	push   eax
    131c:	8d 44 24 54          	lea    eax,[esp+0x54]
    1320:	50                   	push   eax
    1321:	e8 fc ff ff ff       	call   1322 <gui_run+0x9e2>
    1326:	59                   	pop    ecx
    1327:	5b                   	pop    ebx
    1328:	68 f2 00 00 00       	push   0xf2
    132d:	8d 44 24 54          	lea    eax,[esp+0x54]
    1331:	50                   	push   eax
    1332:	e8 fc ff ff ff       	call   1333 <gui_run+0x9f3>
    1337:	89 f0                	mov    eax,esi
    1339:	83 c4 10             	add    esp,0x10
    133c:	3c 09                	cmp    al,0x9
    133e:	0f 86 8b 04 00 00    	jbe    17cf <gui_run+0xe8f>
    1344:	83 ec 04             	sub    esp,0x4
    1347:	6a 0a                	push   0xa
    1349:	8d 44 24 48          	lea    eax,[esp+0x48]
    134d:	50                   	push   eax
    134e:	89 f0                	mov    eax,esi
    1350:	0f b6 f0             	movzx  esi,al
    1353:	56                   	push   esi
    1354:	e8 fc ff ff ff       	call   1355 <gui_run+0xa15>
    1359:	59                   	pop    ecx
    135a:	5b                   	pop    ebx
    135b:	8d 44 24 48          	lea    eax,[esp+0x48]
    135f:	50                   	push   eax
    1360:	8d 44 24 54          	lea    eax,[esp+0x54]
    1364:	50                   	push   eax
    1365:	e8 fc ff ff ff       	call   1366 <gui_run+0xa26>
    136a:	5e                   	pop    esi
    136b:	5d                   	pop    ebp
    136c:	68 f2 00 00 00       	push   0xf2
    1371:	8d 44 24 54          	lea    eax,[esp+0x54]
    1375:	50                   	push   eax
    1376:	e8 fc ff ff ff       	call   1377 <gui_run+0xa37>
    137b:	89 f8                	mov    eax,edi
    137d:	83 c4 10             	add    esp,0x10
    1380:	3c 09                	cmp    al,0x9
    1382:	0f 86 2d 04 00 00    	jbe    17b5 <gui_run+0xe75>
    1388:	83 ec 04             	sub    esp,0x4
    138b:	6a 0a                	push   0xa
    138d:	8d 44 24 48          	lea    eax,[esp+0x48]
    1391:	50                   	push   eax
    1392:	89 f8                	mov    eax,edi
    1394:	0f b6 f8             	movzx  edi,al
    1397:	57                   	push   edi
    1398:	e8 fc ff ff ff       	call   1399 <gui_run+0xa59>
    139d:	58                   	pop    eax
    139e:	5a                   	pop    edx
    139f:	8d 44 24 48          	lea    eax,[esp+0x48]
    13a3:	50                   	push   eax
    13a4:	8d 44 24 54          	lea    eax,[esp+0x54]
    13a8:	50                   	push   eax
    13a9:	e8 fc ff ff ff       	call   13aa <gui_run+0xa6a>
    13ae:	68 f4 d6 cd 00       	push   0xcdd6f4
    13b3:	8d 44 24 5c          	lea    eax,[esp+0x5c]
    13b7:	50                   	push   eax
    13b8:	a1 04 0c 00 00       	mov    eax,ds:0xc04
    13bd:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
    13c1:	83 e8 4c             	sub    eax,0x4c
    13c4:	57                   	push   edi
    13c5:	50                   	push   eax
    13c6:	e8 fc ff ff ff       	call   13c7 <gui_run+0xa87>
    13cb:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],0x0
    13d2:	00 00 00 00 
    13d6:	c7 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],0x0
    13dd:	00 00 00 00 
    13e1:	c7 84 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],0x0
    13e8:	00 00 00 00 
    13ec:	c7 84 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],0x0
    13f3:	00 00 00 00 
    13f7:	c7 84 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],0x0
    13fe:	00 00 00 00 
    1402:	c7 84 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],0x0
    1409:	00 00 00 00 
    140d:	c7 84 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],0x0
    1414:	00 00 00 00 
    1418:	c7 84 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],0x0
    141f:	00 00 00 00 
    1423:	c7 84 24 cc 00 00 00 	mov    DWORD PTR [esp+0xcc],0x0
    142a:	00 00 00 00 
    142e:	83 c4 18             	add    esp,0x18
    1431:	68 00 00 00 00       	push   0x0
    1436:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
    143d:	50                   	push   eax
    143e:	e8 fc ff ff ff       	call   143f <gui_run+0xaff>
    1443:	68 c8 ad a6 00       	push   0xa6adc8
    1448:	8d 84 24 a0 00 00 00 	lea    eax,[esp+0xa0]
    144f:	50                   	push   eax
    1450:	a1 04 0c 00 00       	mov    eax,ds:0xc04
    1455:	57                   	push   edi
    1456:	2d aa 00 00 00       	sub    eax,0xaa
    145b:	50                   	push   eax
    145c:	e8 fc ff ff ff       	call   145d <gui_run+0xb1d>
    1461:	83 c4 20             	add    esp,0x20
    1464:	80 3d 08 0c 00 00 00 	cmp    BYTE PTR ds:0xc08,0x0
    146b:	0f 84 37 02 00 00    	je     16a8 <gui_run+0xd68>
    1471:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
    1477:	8d 83 c8 fe ff ff    	lea    eax,[ebx-0x138]
    147d:	8d 6b d5             	lea    ebp,[ebx-0x2b]
    1480:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
    1484:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
    1488:	8d 43 da             	lea    eax,[ebx-0x26]
    148b:	89 eb                	mov    ebx,ebp
    148d:	bd 61 01 00 00       	mov    ebp,0x161
    1492:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
    1496:	8d 04 ed 00 00 00 00 	lea    eax,[ebp*8+0x0]
    149d:	89 e9                	mov    ecx,ebp
    149f:	8d b3 f4 fe ff ff    	lea    esi,[ebx-0x10c]
    14a5:	29 c1                	sub    ecx,eax
    14a7:	83 e9 38             	sub    ecx,0x38
    14aa:	0f b6 f9             	movzx  edi,cl
    14ad:	8d 76 00             	lea    esi,[esi+0x0]
    14b0:	57                   	push   edi
    14b1:	6a 00                	push   0x0
    14b3:	56                   	push   esi
    14b4:	83 c6 01             	add    esi,0x1
    14b7:	55                   	push   ebp
    14b8:	e8 fc ff ff ff       	call   14b9 <gui_run+0xb79>
    14bd:	83 c4 10             	add    esp,0x10
    14c0:	39 de                	cmp    esi,ebx
    14c2:	75 ec                	jne    14b0 <gui_run+0xb70>
    14c4:	83 c5 01             	add    ebp,0x1
    14c7:	8d 5e 01             	lea    ebx,[esi+0x1]
    14ca:	3b 5c 24 04          	cmp    ebx,DWORD PTR [esp+0x4]
    14ce:	75 c6                	jne    1496 <gui_run+0xb56>
    14d0:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    14d4:	83 ec 08             	sub    esp,0x8
    14d7:	68 25 18 18 00       	push   0x181825
    14dc:	6a 10                	push   0x10
    14de:	68 0c 01 00 00       	push   0x10c
    14e3:	68 5c 01 00 00       	push   0x15c
    14e8:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
    14ec:	57                   	push   edi
    14ed:	6a 04                	push   0x4
    14ef:	e8 fc ff ff ff       	call   14f0 <gui_run+0xbb0>
    14f4:	83 c4 14             	add    esp,0x14
    14f7:	68 5a 47 45 00       	push   0x45475a
    14fc:	68 0c 01 00 00       	push   0x10c
    1501:	68 5c 01 00 00       	push   0x15c
    1506:	57                   	push   edi
    1507:	6a 04                	push   0x4
    1509:	e8 fc ff ff ff       	call   150a <gui_run+0xbca>
    150e:	83 c4 20             	add    esp,0x20
    1511:	8d 83 d2 fe ff ff    	lea    eax,[ebx-0x12e]
    1517:	68 f4 d6 cd 00       	push   0xcdd6f4
    151c:	68 f6 00 00 00       	push   0xf6
    1521:	50                   	push   eax
    1522:	6a 10                	push   0x10
    1524:	e8 fc ff ff ff       	call   1525 <gui_run+0xbe5>
    1529:	8d 83 e6 fe ff ff    	lea    eax,[ebx-0x11a]
    152f:	68 5a 47 45 00       	push   0x45475a
    1534:	68 44 01 00 00       	push   0x144
    1539:	50                   	push   eax
    153a:	6a 10                	push   0x10
    153c:	e8 fc ff ff ff       	call   153d <gui_run+0xbfd>
    1541:	8d 83 f0 fe ff ff    	lea    eax,[ebx-0x110]
    1547:	31 d2                	xor    edx,edx
    1549:	c7 05 00 00 00 00 ff 	mov    DWORD PTR ds:0x0,0xffffffff
    1550:	ff ff ff 
    1553:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
    1557:	83 c4 20             	add    esp,0x20
    155a:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
    155e:	e9 ac 00 00 00       	jmp    160f <gui_run+0xccf>
    1563:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
    1568:	89 d5                	mov    ebp,edx
    156a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
    156e:	83 ec 08             	sub    esp,0x8
    1571:	c1 e5 04             	shl    ebp,0x4
    1574:	ff b5 04 00 00 00    	push   DWORD PTR [ebp+0x4]
    157a:	6a 0e                	push   0xe
    157c:	6a 38                	push   0x38
    157e:	6a 38                	push   0x38
    1580:	53                   	push   ebx
    1581:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    1585:	83 c0 18             	add    eax,0x18
    1588:	50                   	push   eax
    1589:	e8 fc ff ff ff       	call   158a <gui_run+0xc4a>
    158e:	8b b5 08 00 00 00    	mov    esi,DWORD PTR [ebp+0x8]
    1594:	83 c4 14             	add    esp,0x14
    1597:	56                   	push   esi
    1598:	e8 fc ff ff ff       	call   1599 <gui_run+0xc59>
    159d:	8d 4b 14             	lea    ecx,[ebx+0x14]
    15a0:	68 f4 d6 cd 00       	push   0xcdd6f4
    15a5:	56                   	push   esi
    15a6:	51                   	push   ecx
    15a7:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
    15ae:	b8 48 00 00 00       	mov    eax,0x48
    15b3:	29 c8                	sub    eax,ecx
    15b5:	d1 f8                	sar    eax,1
    15b7:	01 f8                	add    eax,edi
    15b9:	50                   	push   eax
    15ba:	e8 fc ff ff ff       	call   15bb <gui_run+0xc7b>
    15bf:	8b ad 00 00 00 00    	mov    ebp,DWORD PTR [ebp+0x0]
    15c5:	83 c4 14             	add    esp,0x14
    15c8:	55                   	push   ebp
    15c9:	e8 fc ff ff ff       	call   15ca <gui_run+0xc8a>
    15ce:	83 c4 10             	add    esp,0x10
    15d1:	c1 e0 03             	shl    eax,0x3
    15d4:	80 7c 24 04 01       	cmp    BYTE PTR [esp+0x4],0x1
    15d9:	19 c9                	sbb    ecx,ecx
    15db:	83 c3 3c             	add    ebx,0x3c
    15de:	81 e1 d4 d6 d8 ff    	and    ecx,0xffd8d6d4
    15e4:	81 c1 f4 d6 cd 00    	add    ecx,0xcdd6f4
    15ea:	51                   	push   ecx
    15eb:	b9 48 00 00 00       	mov    ecx,0x48
    15f0:	29 c1                	sub    ecx,eax
    15f2:	55                   	push   ebp
    15f3:	89 c8                	mov    eax,ecx
    15f5:	53                   	push   ebx
    15f6:	d1 f8                	sar    eax,1
    15f8:	01 f8                	add    eax,edi
    15fa:	50                   	push   eax
    15fb:	e8 fc ff ff ff       	call   15fc <gui_run+0xcbc>
    1600:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
    1604:	83 c4 10             	add    esp,0x10
    1607:	83 c2 01             	add    edx,0x1
    160a:	83 fa 08             	cmp    edx,0x8
    160d:	74 5f                	je     166e <gui_run+0xd2e>
    160f:	89 d0                	mov    eax,edx
    1611:	89 d3                	mov    ebx,edx
    1613:	c6 44 24 04 00       	mov    BYTE PTR [esp+0x4],0x0
    1618:	83 e0 03             	and    eax,0x3
    161b:	c1 fb 02             	sar    ebx,0x2
    161e:	6b c8 54             	imul   ecx,eax,0x54
    1621:	8b 04 24             	mov    eax,DWORD PTR [esp]
    1624:	f7 db                	neg    ebx
    1626:	83 e3 68             	and    ebx,0x68
    1629:	03 5c 24 10          	add    ebx,DWORD PTR [esp+0x10]
    162d:	8d 79 10             	lea    edi,[ecx+0x10]
    1630:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
    1634:	39 f8                	cmp    eax,edi
    1636:	0f 8c 2c ff ff ff    	jl     1568 <gui_run+0xc28>
    163c:	83 c1 57             	add    ecx,0x57
    163f:	39 c8                	cmp    eax,ecx
    1641:	0f 9e c0             	setle  al
    1644:	39 5c 24 28          	cmp    DWORD PTR [esp+0x28],ebx
    1648:	0f 9d c1             	setge  cl
    164b:	20 c8                	and    al,cl
    164d:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
    1651:	0f 84 11 ff ff ff    	je     1568 <gui_run+0xc28>
    1657:	8d 4b 5b             	lea    ecx,[ebx+0x5b]
    165a:	39 4c 24 28          	cmp    DWORD PTR [esp+0x28],ecx
    165e:	0f 8e 87 02 00 00    	jle    18eb <gui_run+0xfab>
    1664:	c6 44 24 04 00       	mov    BYTE PTR [esp+0x4],0x0
    1669:	e9 fa fe ff ff       	jmp    1568 <gui_run+0xc28>
    166e:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    1671:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
    1675:	8d 51 f0             	lea    edx,[ecx-0x10]
    1678:	8d 43 b0             	lea    eax,[ebx-0x50]
    167b:	81 fa 43 01 00 00    	cmp    edx,0x143
    1681:	77 0a                	ja     168d <gui_run+0xd4d>
    1683:	39 44 24 28          	cmp    DWORD PTR [esp+0x28],eax
    1687:	0f 8d bd 02 00 00    	jge    194a <gui_run+0x100a>
    168d:	83 eb 4a             	sub    ebx,0x4a
    1690:	68 a8 8b f3 00       	push   0xf38ba8
    1695:	68 03 01 00 00       	push   0x103
    169a:	53                   	push   ebx
    169b:	68 8a 00 00 00       	push   0x8a
    16a0:	e8 fc ff ff ff       	call   16a1 <gui_run+0xd61>
    16a5:	83 c4 10             	add    esp,0x10
    16a8:	bd 8c 00 00 00       	mov    ebp,0x8c
    16ad:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
    16b1:	89 ef                	mov    edi,ebp
    16b3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
    16b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    16bf:	00 
    16c0:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
    16c3:	8d 5f f4             	lea    ebx,[edi-0xc]
    16c6:	eb 16                	jmp    16de <gui_run+0xd9e>
    16c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    16cf:	00 
    16d0:	3c 02                	cmp    al,0x2
    16d2:	74 4c                	je     1720 <gui_run+0xde0>
    16d4:	83 c3 01             	add    ebx,0x1
    16d7:	83 c5 01             	add    ebp,0x1
    16da:	39 fb                	cmp    ebx,edi
    16dc:	74 23                	je     1701 <gui_run+0xdc1>
    16de:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
    16e1:	3c 01                	cmp    al,0x1
    16e3:	75 eb                	jne    16d0 <gui_run+0xd90>
    16e5:	83 ec 04             	sub    esp,0x4
    16e8:	83 c3 01             	add    ebx,0x1
    16eb:	68 1b 11 11 00       	push   0x11111b
    16f0:	56                   	push   esi
    16f1:	55                   	push   ebp
    16f2:	83 c5 01             	add    ebp,0x1
    16f5:	e8 fc ff ff ff       	call   16f6 <gui_run+0xdb6>
    16fa:	83 c4 10             	add    esp,0x10
    16fd:	39 fb                	cmp    ebx,edi
    16ff:	75 dd                	jne    16de <gui_run+0xd9e>
    1701:	8d 7b 0c             	lea    edi,[ebx+0xc]
    1704:	83 c6 01             	add    esi,0x1
    1707:	81 fb 64 01 00 00    	cmp    ebx,0x164
    170d:	75 b1                	jne    16c0 <gui_run+0xd80>
    170f:	e8 fc ff ff ff       	call   1710 <gui_run+0xdd0>
    1714:	e9 31 f2 ff ff       	jmp    94a <gui_run+0xa>
    1719:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    1720:	83 ec 04             	sub    esp,0x4
    1723:	68 ff ff ff 00       	push   0xffffff
    1728:	56                   	push   esi
    1729:	55                   	push   ebp
    172a:	e8 fc ff ff ff       	call   172b <gui_run+0xdeb>
    172f:	83 c4 10             	add    esp,0x10
    1732:	eb a0                	jmp    16d4 <gui_run+0xd94>
    1734:	c6 03 00             	mov    BYTE PTR [ebx],0x0
    1737:	8b 4f 18             	mov    ecx,DWORD PTR [edi+0x18]
    173a:	85 c9                	test   ecx,ecx
    173c:	0f 84 6a fa ff ff    	je     11ac <gui_run+0x86c>
    1742:	b8 a1 e3 a6 00       	mov    eax,0xa6e3a1
    1747:	e9 65 fa ff ff       	jmp    11b1 <gui_run+0x871>
    174c:	8b 04 24             	mov    eax,DWORD PTR [esp]
    174f:	83 e8 04             	sub    eax,0x4
    1752:	83 f8 27             	cmp    eax,0x27
    1755:	0f 86 c5 01 00 00    	jbe    1920 <gui_run+0xfe0>
    175b:	8b 0d 0c 0c 00 00    	mov    ecx,DWORD PTR ds:0xc0c
    1761:	8b 3c 24             	mov    edi,DWORD PTR [esp]
    1764:	31 c0                	xor    eax,eax
    1766:	ba 34 00 00 00       	mov    edx,0x34
    176b:	85 c9                	test   ecx,ecx
    176d:	7f 13                	jg     1782 <gui_run+0xe42>
    176f:	e9 04 f4 ff ff       	jmp    b78 <gui_run+0x238>
    1774:	83 c0 01             	add    eax,0x1
    1777:	83 c2 7e             	add    edx,0x7e
    177a:	39 c8                	cmp    eax,ecx
    177c:	0f 84 f6 f3 ff ff    	je     b78 <gui_run+0x238>
    1782:	39 d7                	cmp    edi,edx
    1784:	7c ee                	jl     1774 <gui_run+0xe34>
    1786:	8d 6a 77             	lea    ebp,[edx+0x77]
    1789:	39 ef                	cmp    edi,ebp
    178b:	7f e7                	jg     1774 <gui_run+0xe34>
    178d:	6b c8 6c             	imul   ecx,eax,0x6c
    1790:	80 b9 72 0c 00 00 00 	cmp    BYTE PTR [ecx+0xc72],0x0
    1797:	0f 85 e9 02 00 00    	jne    1a86 <gui_run+0x1146>
    179d:	39 05 04 00 00 00    	cmp    DWORD PTR ds:0x4,eax
    17a3:	0f 85 d3 02 00 00    	jne    1a7c <gui_run+0x113c>
    17a9:	c6 81 72 0c 00 00 01 	mov    BYTE PTR [ecx+0xc72],0x1
    17b0:	e9 c3 f3 ff ff       	jmp    b78 <gui_run+0x238>
    17b5:	83 ec 08             	sub    esp,0x8
    17b8:	68 f4 00 00 00       	push   0xf4
    17bd:	8d 44 24 54          	lea    eax,[esp+0x54]
    17c1:	50                   	push   eax
    17c2:	e8 fc ff ff ff       	call   17c3 <gui_run+0xe83>
    17c7:	83 c4 10             	add    esp,0x10
    17ca:	e9 b9 fb ff ff       	jmp    1388 <gui_run+0xa48>
    17cf:	83 ec 08             	sub    esp,0x8
    17d2:	68 f4 00 00 00       	push   0xf4
    17d7:	8d 44 24 54          	lea    eax,[esp+0x54]
    17db:	50                   	push   eax
    17dc:	e8 fc ff ff ff       	call   17dd <gui_run+0xe9d>
    17e1:	83 c4 10             	add    esp,0x10
    17e4:	e9 5b fb ff ff       	jmp    1344 <gui_run+0xa04>
    17e9:	c7 44 24 24 f2 ff ff 	mov    DWORD PTR [esp+0x24],0xfffffff2
    17f0:	ff 
    17f1:	c7 44 24 20 13 00 00 	mov    DWORD PTR [esp+0x20],0x13
    17f8:	00 
    17f9:	c7 44 24 1c eb ff ff 	mov    DWORD PTR [esp+0x1c],0xffffffeb
    1800:	ff 
    1801:	c7 44 24 18 fa 00 00 	mov    DWORD PTR [esp+0x18],0xfa
    1808:	00 
    1809:	c7 44 24 14 b4 00 00 	mov    DWORD PTR [esp+0x14],0xb4
    1810:	00 
    1811:	c7 44 24 10 89 00 00 	mov    DWORD PTR [esp+0x10],0x89
    1818:	00 
    1819:	e9 e8 f5 ff ff       	jmp    e06 <gui_run+0x4c6>
    181e:	83 ec 08             	sub    esp,0x8
    1821:	68 f4 00 00 00       	push   0xf4
    1826:	8d 44 24 54          	lea    eax,[esp+0x54]
    182a:	50                   	push   eax
    182b:	e8 fc ff ff ff       	call   182c <gui_run+0xeec>
    1830:	83 c4 10             	add    esp,0x10
    1833:	e9 cd fa ff ff       	jmp    1305 <gui_run+0x9c5>
    1838:	83 ec 08             	sub    esp,0x8
    183b:	68 f4 00 00 00       	push   0xf4
    1840:	8d 44 24 78          	lea    eax,[esp+0x78]
    1844:	50                   	push   eax
    1845:	e8 fc ff ff ff       	call   1846 <gui_run+0xf06>
    184a:	83 c4 10             	add    esp,0x10
    184d:	e9 32 fa ff ff       	jmp    1284 <gui_run+0x944>
    1852:	83 c1 01             	add    ecx,0x1
    1855:	83 eb 06             	sub    ebx,0x6
    1858:	83 c6 01             	add    esi,0x1
    185b:	39 4c 24 18          	cmp    DWORD PTR [esp+0x18],ecx
    185f:	0f 85 ce f4 ff ff    	jne    d33 <gui_run+0x3f3>
    1865:	e9 5a f5 ff ff       	jmp    dc4 <gui_run+0x484>
    186a:	83 7c 24 08 fd       	cmp    DWORD PTR [esp+0x8],0xfffffffd
    186f:	0f 8d fe f4 ff ff    	jge    d73 <gui_run+0x433>
    1875:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    1879:	8b 6c 24 24          	mov    ebp,DWORD PTR [esp+0x24]
    187d:	83 c1 01             	add    ecx,0x1
    1880:	3b 4c 24 18          	cmp    ecx,DWORD PTR [esp+0x18]
    1884:	0f 84 42 f5 ff ff    	je     dcc <gui_run+0x48c>
    188a:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
    188e:	8d 51 01             	lea    edx,[ecx+0x1]
    1891:	39 d7                	cmp    edi,edx
    1893:	0f 84 33 f5 ff ff    	je     dcc <gui_run+0x48c>
    1899:	83 c1 02             	add    ecx,0x2
    189c:	39 cf                	cmp    edi,ecx
    189e:	75 ea                	jne    188a <gui_run+0xf4a>
    18a0:	e9 27 f5 ff ff       	jmp    dcc <gui_run+0x48c>
    18a5:	a1 00 00 00 00       	mov    eax,ds:0x0
    18aa:	83 f8 07             	cmp    eax,0x7
    18ad:	76 7d                	jbe    192c <gui_run+0xfec>
    18af:	83 f8 64             	cmp    eax,0x64
    18b2:	0f 84 12 02 00 00    	je     1aca <gui_run+0x118a>
    18b8:	8b 04 24             	mov    eax,DWORD PTR [esp]
    18bb:	83 e8 04             	sub    eax,0x4
    18be:	3d 5b 01 00 00       	cmp    eax,0x15b
    18c3:	0f 87 66 f8 ff ff    	ja     112f <gui_run+0x7ef>
    18c9:	8d 83 c8 fe ff ff    	lea    eax,[ebx-0x138]
    18cf:	39 44 24 28          	cmp    DWORD PTR [esp+0x28],eax
    18d3:	0f 8c 56 f8 ff ff    	jl     112f <gui_run+0x7ef>
    18d9:	8d 43 d4             	lea    eax,[ebx-0x2c]
    18dc:	39 44 24 28          	cmp    DWORD PTR [esp+0x28],eax
    18e0:	0f 8c 92 f2 ff ff    	jl     b78 <gui_run+0x238>
    18e6:	e9 44 f8 ff ff       	jmp    112f <gui_run+0x7ef>
    18eb:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
    18ef:	8d 4b fc             	lea    ecx,[ebx-0x4]
    18f2:	83 ec 08             	sub    esp,0x8
    18f5:	68 44 32 31 00       	push   0x313244
    18fa:	6a 0c                	push   0xc
    18fc:	6a 64                	push   0x64
    18fe:	6a 50                	push   0x50
    1900:	51                   	push   ecx
    1901:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    1905:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
    190b:	8d 48 0c             	lea    ecx,[eax+0xc]
    190e:	51                   	push   ecx
    190f:	e8 fc ff ff ff       	call   1910 <gui_run+0xfd0>
    1914:	83 c4 20             	add    esp,0x20
    1917:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
    191b:	e9 48 fc ff ff       	jmp    1568 <gui_run+0xc28>
    1920:	c6 05 08 0c 00 00 01 	mov    BYTE PTR ds:0xc08,0x1
    1927:	e9 4c f2 ff ff       	jmp    b78 <gui_run+0x238>
    192c:	c1 e0 04             	shl    eax,0x4
    192f:	c6 05 08 0c 00 00 00 	mov    BYTE PTR ds:0xc08,0x0
    1936:	ff 90 0c 00 00 00    	call   DWORD PTR [eax+0xc]
    193c:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
    1942:	8d 73 d8             	lea    esi,[ebx-0x28]
    1945:	e9 2e f2 ff ff       	jmp    b78 <gui_run+0x238>
    194a:	8d 53 cb             	lea    edx,[ebx-0x35]
    194d:	39 54 24 28          	cmp    DWORD PTR [esp+0x28],edx
    1951:	0f 8f 36 fd ff ff    	jg     168d <gui_run+0xd4d>
    1957:	c7 05 00 00 00 00 64 	mov    DWORD PTR ds:0x0,0x64
    195e:	00 00 00 
    1961:	83 ec 08             	sub    esp,0x8
    1964:	68 5a 47 45 00       	push   0x45475a
    1969:	6a 08                	push   0x8
    196b:	6a 1c                	push   0x1c
    196d:	68 44 01 00 00       	push   0x144
    1972:	50                   	push   eax
    1973:	6a 10                	push   0x10
    1975:	e8 fc ff ff ff       	call   1976 <gui_run+0x1036>
    197a:	83 c4 20             	add    esp,0x20
    197d:	e9 0b fd ff ff       	jmp    168d <gui_run+0xd4d>
    1982:	e8 79 e6 ff ff       	call   0 <focus_window>
    1987:	6b c7 6c             	imul   eax,edi,0x6c
    198a:	8b 80 84 0c 00 00    	mov    eax,DWORD PTR [eax+0xc84]
    1990:	85 c0                	test   eax,eax
    1992:	0f 84 dc 00 00 00    	je     1a74 <gui_run+0x1134>
    1998:	6b ff 6c             	imul   edi,edi,0x6c
    199b:	6a 01                	push   0x1
    199d:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
    19a1:	81 c6 b4 0b 00 00    	add    esi,0xbb4
    19a7:	2b 97 24 0c 00 00    	sub    edx,DWORD PTR [edi+0xc24]
    19ad:	83 ea 1c             	sub    edx,0x1c
    19b0:	52                   	push   edx
    19b1:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    19b5:	2b 97 20 0c 00 00    	sub    edx,DWORD PTR [edi+0xc20]
    19bb:	52                   	push   edx
    19bc:	56                   	push   esi
    19bd:	ff d0                	call   eax
    19bf:	8b 1d 00 0c 00 00    	mov    ebx,DWORD PTR ds:0xc00
    19c5:	83 c4 10             	add    esp,0x10
    19c8:	8d 73 d8             	lea    esi,[ebx-0x28]
    19cb:	e9 a8 f1 ff ff       	jmp    b78 <gui_run+0x238>
    19d0:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
    19d4:	6b c0 6c             	imul   eax,eax,0x6c
    19d7:	8d 73 d8             	lea    esi,[ebx-0x28]
    19da:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
    19df:	74 6e                	je     1a4f <gui_run+0x110f>
    19e1:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
    19e4:	2b 88 74 0c 00 00    	sub    ecx,DWORD PTR [eax+0xc74]
    19ea:	8d 90 20 0c 00 00    	lea    edx,[eax+0xc20]
    19f0:	89 88 20 0c 00 00    	mov    DWORD PTR [eax+0xc20],ecx
    19f6:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
    19fa:	2b 88 78 0c 00 00    	sub    ecx,DWORD PTR [eax+0xc78]
    1a00:	89 c8                	mov    eax,ecx
    1a02:	b9 00 00 00 00       	mov    ecx,0x0
    1a07:	0f 48 c1             	cmovs  eax,ecx
    1a0a:	8d 4b bd             	lea    ecx,[ebx-0x43]
    1a0d:	39 c1                	cmp    ecx,eax
    1a0f:	7f 03                	jg     1a14 <gui_run+0x10d4>
    1a11:	8d 43 bc             	lea    eax,[ebx-0x44]
    1a14:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
    1a17:	e9 5c f1 ff ff       	jmp    b78 <gui_run+0x238>
    1a1c:	e8 df e5 ff ff       	call   0 <focus_window>
    1a21:	6b c7 6c             	imul   eax,edi,0x6c
    1a24:	8b 14 24             	mov    edx,DWORD PTR [esp]
    1a27:	2b 90 20 0c 00 00    	sub    edx,DWORD PTR [eax+0xc20]
    1a2d:	c6 80 73 0c 00 00 01 	mov    BYTE PTR [eax+0xc73],0x1
    1a34:	89 90 74 0c 00 00    	mov    DWORD PTR [eax+0xc74],edx
    1a3a:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
    1a3e:	2b 90 24 0c 00 00    	sub    edx,DWORD PTR [eax+0xc24]
    1a44:	89 90 78 0c 00 00    	mov    DWORD PTR [eax+0xc78],edx
    1a4a:	e9 29 f1 ff ff       	jmp    b78 <gui_run+0x238>
    1a4f:	c6 80 73 0c 00 00 00 	mov    BYTE PTR [eax+0xc73],0x0
    1a56:	e9 1d f1 ff ff       	jmp    b78 <gui_run+0x238>
    1a5b:	6b c0 6c             	imul   eax,eax,0x6c
    1a5e:	83 ec 0c             	sub    esp,0xc
    1a61:	05 20 0c 00 00       	add    eax,0xc20
    1a66:	50                   	push   eax
    1a67:	e8 fc ff ff ff       	call   1a68 <gui_run+0x1128>
    1a6c:	83 c4 10             	add    esp,0x10
    1a6f:	e9 04 f1 ff ff       	jmp    b78 <gui_run+0x238>
    1a74:	8d 73 d8             	lea    esi,[ebx-0x28]
    1a77:	e9 fc f0 ff ff       	jmp    b78 <gui_run+0x238>
    1a7c:	e8 7f e5 ff ff       	call   0 <focus_window>
    1a81:	e9 f2 f0 ff ff       	jmp    b78 <gui_run+0x238>
    1a86:	c6 81 72 0c 00 00 00 	mov    BYTE PTR [ecx+0xc72],0x0
    1a8d:	e8 6e e5 ff ff       	call   0 <focus_window>
    1a92:	e9 e1 f0 ff ff       	jmp    b78 <gui_run+0x238>
    1a97:	c7 05 04 00 00 00 ff 	mov    DWORD PTR ds:0x4,0xffffffff
    1a9e:	ff ff ff 
    1aa1:	eb 09                	jmp    1aac <gui_run+0x116c>
    1aa3:	83 ef 01             	sub    edi,0x1
    1aa6:	0f 82 cc f0 ff ff    	jb     b78 <gui_run+0x238>
    1aac:	6b c7 6c             	imul   eax,edi,0x6c
    1aaf:	80 b8 72 0c 00 00 00 	cmp    BYTE PTR [eax+0xc72],0x0
    1ab6:	75 eb                	jne    1aa3 <gui_run+0x1163>
    1ab8:	89 3d 04 00 00 00    	mov    DWORD PTR ds:0x4,edi
    1abe:	c6 80 71 0c 00 00 01 	mov    BYTE PTR [eax+0xc71],0x1
    1ac5:	e9 ae f0 ff ff       	jmp    b78 <gui_run+0x238>
    1aca:	83 ec 0c             	sub    esp,0xc
    1acd:	c6 05 08 0c 00 00 00 	mov    BYTE PTR ds:0xc08,0x0
    1ad4:	31 ff                	xor    edi,edi
    1ad6:	68 1b 11 11 00       	push   0x11111b
    1adb:	e8 fc ff ff ff       	call   1adc <gui_run+0x119c>
    1ae0:	a1 04 0c 00 00       	mov    eax,ds:0xc04
    1ae5:	b9 02 00 00 00       	mov    ecx,0x2
    1aea:	68 f4 d6 cd 00       	push   0xcdd6f4
    1aef:	68 c8 00 00 00       	push   0xc8
    1af4:	99                   	cdq
    1af5:	f7 f9                	idiv   ecx
    1af7:	89 c6                	mov    esi,eax
    1af9:	a1 00 0c 00 00       	mov    eax,ds:0xc00
    1afe:	8d 6e b0             	lea    ebp,[esi-0x50]
    1b01:	99                   	cdq
    1b02:	f7 f9                	idiv   ecx
    1b04:	89 c3                	mov    ebx,eax
    1b06:	8d 40 f0             	lea    eax,[eax-0x10]
    1b09:	50                   	push   eax
    1b0a:	55                   	push   ebp
    1b0b:	e8 fc ff ff ff       	call   1b0c <gui_run+0x11cc>
    1b10:	83 c4 18             	add    esp,0x18
    1b13:	8d 43 10             	lea    eax,[ebx+0x10]
    1b16:	68 44 32 31 00       	push   0x313244
    1b1b:	6a 03                	push   0x3
    1b1d:	6a 06                	push   0x6
    1b1f:	68 f0 00 00 00       	push   0xf0
    1b24:	50                   	push   eax
    1b25:	8d 46 88             	lea    eax,[esi-0x78]
    1b28:	83 ee 73             	sub    esi,0x73
    1b2b:	50                   	push   eax
    1b2c:	e8 fc ff ff ff       	call   1b2d <gui_run+0x11ed>
    1b31:	83 c4 20             	add    esp,0x20
    1b34:	89 1c 24             	mov    DWORD PTR [esp],ebx
    1b37:	83 c3 12             	add    ebx,0x12
    1b3a:	50                   	push   eax
    1b3b:	50                   	push   eax
    1b3c:	68 fa b4 89 00       	push   0x89b4fa
    1b41:	6a 01                	push   0x1
    1b43:	6a 02                	push   0x2
    1b45:	57                   	push   edi
    1b46:	83 c7 04             	add    edi,0x4
    1b49:	53                   	push   ebx
    1b4a:	56                   	push   esi
    1b4b:	e8 fc ff ff ff       	call   1b4c <gui_run+0x120c>
    1b50:	83 c4 20             	add    esp,0x20
    1b53:	e8 fc ff ff ff       	call   1b54 <gui_run+0x1214>
    1b58:	83 ec 0c             	sub    esp,0xc
    1b5b:	6a 14                	push   0x14
    1b5d:	e8 fc ff ff ff       	call   1b5e <gui_run+0x121e>
    1b62:	83 c4 10             	add    esp,0x10
    1b65:	81 ff e8 00 00 00    	cmp    edi,0xe8
    1b6b:	75 cd                	jne    1b3a <gui_run+0x11fa>
    1b6d:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    1b70:	b8 00 34 00 00       	mov    eax,0x3400
    1b75:	ba 04 40 00 00       	mov    edx,0x4004
    1b7a:	66 ef                	out    dx,ax
    1b7c:	b8 00 20 00 00       	mov    eax,0x2000
    1b81:	ba 04 b0 ff ff       	mov    edx,0xffffb004
    1b86:	66 ef                	out    dx,ax
    1b88:	ba 04 06 00 00       	mov    edx,0x604
    1b8d:	66 ef                	out    dx,ax
    1b8f:	83 ec 0c             	sub    esp,0xc
    1b92:	68 1b 11 11 00       	push   0x11111b
    1b97:	e8 fc ff ff ff       	call   1b98 <gui_run+0x1258>
    1b9c:	68 f4 d6 cd 00       	push   0xcdd6f4
    1ba1:	68 d9 00 00 00       	push   0xd9
    1ba6:	53                   	push   ebx
    1ba7:	55                   	push   ebp
    1ba8:	e8 fc ff ff ff       	call   1ba9 <gui_run+0x1269>
    1bad:	83 c4 20             	add    esp,0x20
    1bb0:	e8 fc ff ff ff       	call   1bb1 <gui_run+0x1271>
    1bb5:	fa                   	cli
    1bb6:	f4                   	hlt
    1bb7:	eb fc                	jmp    1bb5 <gui_run+0x1275>
    1bb9:	a1 0c 0c 00 00       	mov    eax,ds:0xc0c
    1bbe:	89 c7                	mov    edi,eax
    1bc0:	83 ef 01             	sub    edi,0x1
    1bc3:	78 0a                	js     1bcf <gui_run+0x128f>
    1bc5:	bd 01 00 00 00       	mov    ebp,0x1
    1bca:	e9 f1 ee ff ff       	jmp    ac0 <gui_run+0x180>
    1bcf:	89 d6                	mov    esi,edx
    1bd1:	e9 59 f5 ff ff       	jmp    112f <gui_run+0x7ef>

Disassembly of section .data:

00000000 <menu_hover>:
   0:	ff                   	(bad)
   1:	ff                   	(bad)
   2:	ff                   	(bad)
   3:	ff                   	(bad)

00000004 <focus_idx>:
   4:	ff                   	(bad)
   5:	ff                   	(bad)
   6:	ff                   	(bad)
   7:	ff                   	.byte 0xff

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	53                   	push   ebx
   1:	21 00                	and    DWORD PTR [eax],eax
   3:	53                   	push   ebx
   4:	6c                   	ins    BYTE PTR es:[edi],dx
   5:	6f                   	outs   dx,DWORD PTR ds:[esi]
   6:	70 4f                	jo     57 <.rodata.str1.1+0x57>
   8:	53                   	push   ebx
   9:	20 76 30             	and    BYTE PTR [esi+0x30],dh
   c:	2e 33 00             	xor    eax,DWORD PTR cs:[eax]
   f:	46                   	inc    esi
  10:	72 6f                	jb     81 <.rodata.str1.1+0x81>
  12:	6d                   	ins    DWORD PTR es:[edi],dx
  13:	2d 73 63 72 61       	sub    eax,0x61726373
  18:	74 63                	je     7d <.rodata.str1.1+0x7d>
  1a:	68 20 4f 53 20       	push   0x20534f20
  1f:	77 69                	ja     8a <.rodata.str1.1+0x8a>
  21:	74 68                	je     8b <.rodata.str1.1+0x8b>
  23:	20 47 55             	and    BYTE PTR [edi+0x55],al
  26:	49                   	dec    ecx
  27:	00 66 69             	add    BYTE PTR [esi+0x69],ah
  2a:	6c                   	ins    BYTE PTR es:[edi],dx
  2b:	65 73 79             	gs jae a7 <.rodata.str1.1+0xa7>
  2e:	73 74                	jae    a4 <.rodata.str1.1+0xa4>
  30:	65 6d                	gs ins DWORD PTR es:[edi],dx
  32:	2c 20                	sub    al,0x20
  34:	75 73                	jne    a9 <.rodata.str1.1+0xa9>
  36:	65 72 20             	gs jb  59 <.rodata.str1.1+0x59>
  39:	6c                   	ins    BYTE PTR es:[edi],dx
  3a:	6f                   	outs   dx,DWORD PTR ds:[esi]
  3b:	67 69 6e 2c 00 70 68 	imul   ebp,DWORD PTR [bp+0x2c],0x79687000
  42:	79 
  43:	73 69                	jae    ae <.rodata.str1.1+0xae>
  45:	63 73 2c             	arpl   WORD PTR [ebx+0x2c],esi
  48:	20 67 61             	and    BYTE PTR [edi+0x61],ah
  4b:	6d                   	ins    DWORD PTR es:[edi],dx
  4c:	65 73 2c             	gs jae 7b <.rodata.str1.1+0x7b>
  4f:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
  52:	64 00 4d 61          	add    BYTE PTR fs:[ebp+0x61],cl
  56:	74 65                	je     bd <.rodata.str1.1+0xbd>
  58:	72 69                	jb     c3 <.rodata.str1.1+0xc3>
  5a:	61                   	popa
  5b:	6c                   	ins    BYTE PTR es:[edi],dx
  5c:	20 44 65 73          	and    BYTE PTR [ebp+eiz*2+0x73],al
  60:	69 67 6e 2e 00 43 20 	imul   esp,DWORD PTR [edi+0x6e],0x2043002e
  67:	2b 20                	sub    esp,DWORD PTR [eax]
  69:	78 38                	js     a3 <.rodata.str1.1+0xa3>
  6b:	36 20 61 73          	and    BYTE PTR ss:[ecx+0x73],ah
  6f:	6d                   	ins    DWORD PTR es:[edi],dx
  70:	2e 20 4e 6f          	and    BYTE PTR cs:[esi+0x6f],cl
  74:	20 6c 69 62          	and    BYTE PTR [ecx+ebp*2+0x62],ch
  78:	63 2e                	arpl   WORD PTR [esi],ebp
  7a:	00 41 62             	add    BYTE PTR [ecx+0x62],al
  7d:	6f                   	outs   dx,DWORD PTR ds:[esi]
  7e:	75 74                	jne    f4 <.rodata.str1.1+0xf4>
  80:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
  83:	6f                   	outs   dx,DWORD PTR ds:[esi]
  84:	70 4f                	jo     d5 <.rodata.str1.1+0xd5>
  86:	53                   	push   ebx
  87:	00 54 65 72          	add    BYTE PTR [ebp+eiz*2+0x72],dl
  8b:	6d                   	ins    DWORD PTR es:[edi],dx
  8c:	69 6e 61 6c 00 43 61 	imul   ebp,DWORD PTR [esi+0x61],0x6143006c
  93:	6c                   	ins    BYTE PTR es:[edi],dx
  94:	63 75 6c             	arpl   WORD PTR [ebp+0x6c],esi
  97:	61                   	popa
  98:	74 6f                	je     109 <.rodata.str1.1+0x109>
  9a:	72 00                	jb     9c <.rodata.str1.1+0x9c>
  9c:	4e                   	dec    esi
  9d:	6f                   	outs   dx,DWORD PTR ds:[esi]
  9e:	74 65                	je     105 <.rodata.str1.1+0x105>
  a0:	70 61                	jo     103 <.rodata.str1.1+0x103>
  a2:	64 00 46 69          	add    BYTE PTR fs:[esi+0x69],al
  a6:	6c                   	ins    BYTE PTR es:[edi],dx
  a7:	65 73 00             	gs jae aa <.rodata.str1.1+0xaa>
  aa:	53                   	push   ebx
  ab:	65 74 74             	gs je  122 <.rodata.str1.1+0x122>
  ae:	69 6e 67 73 00 50 68 	imul   ebp,DWORD PTR [esi+0x67],0x68500073
  b5:	79 73                	jns    12a <about_draw+0x7a>
  b7:	69 63 73 20 4c 61 62 	imul   esp,DWORD PTR [ebx+0x73],0x62614c20
  be:	00 42 72             	add    BYTE PTR [edx+0x72],al
  c1:	65 61                	gs popa
  c3:	6b 6f 75 74          	imul   ebp,DWORD PTR [edi+0x75],0x74
  c7:	00 53 68             	add    BYTE PTR [ebx+0x68],dl
  ca:	75 74                	jne    140 <about_draw+0x90>
  cc:	74 69                	je     137 <about_draw+0x87>
  ce:	6e                   	outs   dx,BYTE PTR ds:[esi]
  cf:	67 20 64 6f          	and    BYTE PTR [si+0x6f],ah
  d3:	77 6e                	ja     143 <about_draw+0x93>
  d5:	2e 2e 2e 00 53 61    	cs cs add BYTE PTR cs:[ebx+0x61],dl
  db:	66 65 20 74 6f 20    	data16 and BYTE PTR gs:[edi+ebp*2+0x20],dh
  e1:	70 6f                	jo     152 <about_draw+0xa2>
  e3:	77 65                	ja     14a <about_draw+0x9a>
  e5:	72 20                	jb     107 <.rodata.str1.1+0x107>
  e7:	6f                   	outs   dx,DWORD PTR ds:[esi]
  e8:	66 66 2e 00 58 00    	data16 data16 add BYTE PTR cs:[eax+0x0],bl
  ee:	5f                   	pop    edi
  ef:	00 53 00             	add    BYTE PTR [ebx+0x0],dl
  f2:	3a 00                	cmp    al,BYTE PTR [eax]
  f4:	30 00                	xor    BYTE PTR [eax],al
  f6:	41                   	inc    ecx
  f7:	70 70                	jo     169 <about_draw+0xb9>
  f9:	6c                   	ins    BYTE PTR es:[edi],dx
  fa:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
 101:	73 00                	jae    103 <.rodata.str1.1+0x103>
 103:	53                   	push   ebx
 104:	68 75 74 64 6f       	push   0x6f647475
 109:	77 6e                	ja     179 <about_draw+0xc9>
 10b:	00 3e                	add    BYTE PTR [esi],bh
 10d:	5f                   	pop    edi
 10e:	00 4e 00             	add    BYTE PTR [esi+0x0],cl
 111:	2b 00                	sub    eax,DWORD PTR [eax]
 113:	46                   	inc    esi
 114:	00 50 68             	add    BYTE PTR [eax+0x68],dl
 117:	79 73                	jns    18c <about_draw+0xdc>
 119:	69 63 73 00 7e 00 42 	imul   esp,DWORD PTR [ebx+0x73],0x42007e00
 120:	00 41 62             	add    BYTE PTR [ecx+0x62],al
 123:	6f                   	outs   dx,DWORD PTR ds:[esi]
 124:	75 74                	jne    19a <about_draw+0xea>
 126:	00 3f                	add    BYTE PTR [edi],bh
	...

Disassembly of section .rodata:

00000000 <icons>:
   0:	88 00                	mov    BYTE PTR [eax],al
   2:	00 00                	add    BYTE PTR [eax],al
   4:	44                   	inc    esp
   5:	32 31                	xor    dh,BYTE PTR [ecx]
   7:	00 0c 01             	add    BYTE PTR [ecx+eax*1],cl
   a:	00 00                	add    BYTE PTR [eax],al
   c:	80 03 00             	add    BYTE PTR [ebx],0x0
   f:	00 9c 00 00 00 87 b3 	add    BYTE PTR [eax+eax*1-0x4c790000],bl
  16:	fa                   	cli
  17:	00 0f                	add    BYTE PTR [edi],cl
  19:	01 00                	add    DWORD PTR [eax],eax
  1b:	00 20                	add    BYTE PTR [eax],ah
  1d:	04 00                	add    al,0x0
  1f:	00 91 00 00 00 fa    	add    BYTE PTR [ecx-0x6000000],dl
  25:	b4 89                	mov    ah,0x89
  27:	00 11                	add    BYTE PTR [ecx],dl
  29:	01 00                	add    DWORD PTR [eax],eax
  2b:	00 d0                	add    al,dl
  2d:	03 00                	add    eax,DWORD PTR [eax]
  2f:	00 a4 00 00 00 af e2 	add    BYTE PTR [eax+eax*1-0x1d510000],ah
  36:	f9                   	stc
  37:	00 13                	add    BYTE PTR [ebx],dl
  39:	01 00                	add    DWORD PTR [eax],eax
  3b:	00 70 04             	add    BYTE PTR [eax+0x4],dh
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	15 01 00 00 a1       	adc    eax,0xa1000001
  45:	e3 a6                	jecxz  ffffffed <windows+0xfffff3cd>
  47:	00 1d 01 00 00 10    	add    BYTE PTR ds:0x10000001,bl
  4d:	05 00 00 bf 00       	add    eax,0xbf0000
  52:	00 00                	add    BYTE PTR [eax],al
  54:	a8 8b                	test   al,0x8b
  56:	f3 00 1f             	repz add BYTE PTR [edi],bl
  59:	01 00                	add    DWORD PTR [eax],eax
  5b:	00 60 05             	add    BYTE PTR [eax+0x5],ah
  5e:	00 00                	add    BYTE PTR [eax],al
  60:	aa                   	stos   BYTE PTR es:[edi],al
  61:	00 00                	add    BYTE PTR [eax],al
  63:	00 86 70 6c 00 f0    	add    BYTE PTR [esi-0xfff9390],al
  69:	00 00                	add    BYTE PTR [eax],al
  6b:	00 c0                	add    al,al
  6d:	04 00                	add    al,0x0
  6f:	00 21                	add    BYTE PTR [ecx],ah
  71:	01 00                	add    DWORD PTR [eax],eax
  73:	00 f7                	add    bh,dh
  75:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
  76:	cb                   	retf
  77:	00 27                	add    BYTE PTR [edi],ah
  79:	01 00                	add    DWORD PTR [eax],eax
  7b:	00 30                	add    BYTE PTR [eax],dh
  7d:	02 00                	add    al,BYTE PTR [eax]
	...

00000080 <cursor_bmp>:
  80:	01 00                	add    DWORD PTR [eax],eax
	...
  8a:	00 00                	add    BYTE PTR [eax],al
  8c:	01 01                	add    DWORD PTR [ecx],eax
	...
  96:	00 00                	add    BYTE PTR [eax],al
  98:	01 02                	add    DWORD PTR [edx],eax
  9a:	01 00                	add    DWORD PTR [eax],eax
	...
  a4:	01 02                	add    DWORD PTR [edx],eax
  a6:	02 01                	add    al,BYTE PTR [ecx]
	...
  b0:	01 02                	add    DWORD PTR [edx],eax
  b2:	02 02                	add    al,BYTE PTR [edx]
  b4:	01 00                	add    DWORD PTR [eax],eax
  b6:	00 00                	add    BYTE PTR [eax],al
  b8:	00 00                	add    BYTE PTR [eax],al
  ba:	00 00                	add    BYTE PTR [eax],al
  bc:	01 02                	add    DWORD PTR [edx],eax
  be:	02 02                	add    al,BYTE PTR [edx]
  c0:	02 01                	add    al,BYTE PTR [ecx]
  c2:	00 00                	add    BYTE PTR [eax],al
  c4:	00 00                	add    BYTE PTR [eax],al
  c6:	00 00                	add    BYTE PTR [eax],al
  c8:	01 02                	add    DWORD PTR [edx],eax
  ca:	02 02                	add    al,BYTE PTR [edx]
  cc:	02 02                	add    al,BYTE PTR [edx]
  ce:	01 00                	add    DWORD PTR [eax],eax
  d0:	00 00                	add    BYTE PTR [eax],al
  d2:	00 00                	add    BYTE PTR [eax],al
  d4:	01 02                	add    DWORD PTR [edx],eax
  d6:	02 02                	add    al,BYTE PTR [edx]
  d8:	02 02                	add    al,BYTE PTR [edx]
  da:	02 01                	add    al,BYTE PTR [ecx]
  dc:	00 00                	add    BYTE PTR [eax],al
  de:	00 00                	add    BYTE PTR [eax],al
  e0:	01 02                	add    DWORD PTR [edx],eax
  e2:	02 02                	add    al,BYTE PTR [edx]
  e4:	02 02                	add    al,BYTE PTR [edx]
  e6:	02 02                	add    al,BYTE PTR [edx]
  e8:	01 00                	add    DWORD PTR [eax],eax
  ea:	00 00                	add    BYTE PTR [eax],al
  ec:	01 02                	add    DWORD PTR [edx],eax
  ee:	02 02                	add    al,BYTE PTR [edx]
  f0:	02 02                	add    al,BYTE PTR [edx]
  f2:	02 02                	add    al,BYTE PTR [edx]
  f4:	02 01                	add    al,BYTE PTR [ecx]
  f6:	00 00                	add    BYTE PTR [eax],al
  f8:	01 02                	add    DWORD PTR [edx],eax
  fa:	02 02                	add    al,BYTE PTR [edx]
  fc:	02 02                	add    al,BYTE PTR [edx]
  fe:	02 02                	add    al,BYTE PTR [edx]
 100:	02 02                	add    al,BYTE PTR [edx]
 102:	01 00                	add    DWORD PTR [eax],eax
 104:	01 02                	add    DWORD PTR [edx],eax
 106:	02 02                	add    al,BYTE PTR [edx]
 108:	02 02                	add    al,BYTE PTR [edx]
 10a:	02 01                	add    al,BYTE PTR [ecx]
 10c:	01 01                	add    DWORD PTR [ecx],eax
 10e:	01 01                	add    DWORD PTR [ecx],eax
 110:	01 02                	add    DWORD PTR [edx],eax
 112:	02 02                	add    al,BYTE PTR [edx]
 114:	01 02                	add    DWORD PTR [edx],eax
 116:	02 01                	add    al,BYTE PTR [ecx]
 118:	00 00                	add    BYTE PTR [eax],al
 11a:	00 00                	add    BYTE PTR [eax],al
 11c:	01 02                	add    DWORD PTR [edx],eax
 11e:	02 01                	add    al,BYTE PTR [ecx]
 120:	00 01                	add    BYTE PTR [ecx],al
 122:	02 02                	add    al,BYTE PTR [edx]
 124:	01 00                	add    DWORD PTR [eax],eax
 126:	00 00                	add    BYTE PTR [eax],al
 128:	01 02                	add    DWORD PTR [edx],eax
 12a:	01 00                	add    DWORD PTR [eax],eax
 12c:	00 01                	add    BYTE PTR [ecx],al
 12e:	02 02                	add    al,BYTE PTR [edx]
 130:	01 00                	add    DWORD PTR [eax],eax
 132:	00 00                	add    BYTE PTR [eax],al
 134:	01 01                	add    DWORD PTR [ecx],eax
 136:	00 00                	add    BYTE PTR [eax],al
 138:	00 00                	add    BYTE PTR [eax],al
 13a:	01 02                	add    DWORD PTR [edx],eax
 13c:	02 01                	add    al,BYTE PTR [ecx]
 13e:	00 00                	add    BYTE PTR [eax],al
 140:	01 00                	add    DWORD PTR [eax],eax
 142:	00 00                	add    BYTE PTR [eax],al
 144:	00 00                	add    BYTE PTR [eax],al
 146:	01 02                	add    DWORD PTR [edx],eax
 148:	02 01                	add    al,BYTE PTR [ecx]
	...
 152:	00 01                	add    BYTE PTR [ecx],al
 154:	02 01                	add    al,BYTE PTR [ecx]
	...
 15e:	00 00                	add    BYTE PTR [eax],al
 160:	01 00                	add    DWORD PTR [eax],eax
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
  17:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	a1 00 00 00 00       	mov    eax,ds:0x0
  29:	4f                   	dec    edi
  2a:	0e                   	push   cs
  2b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  3b:	83 05 43 0e 88 01 02 	add    DWORD PTR ds:0x1880e43,0x2
  42:	80 0e 14             	or     BYTE PTR [esi],0x14
  45:	41                   	inc    ecx
  46:	c3                   	ret
  47:	0e                   	push   cs
  48:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  4b:	0e                   	push   cs
  4c:	0c 41                	or     al,0x41
  4e:	c7                   	(bad)
  4f:	0e                   	push   cs
  50:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  53:	0e                   	push   cs
  54:	04 00                	add    al,0x0
  56:	00 00                	add    BYTE PTR [eax],al
  58:	cc                   	int3
  59:	00 00                	add    BYTE PTR [eax],al
  5b:	00 5c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bl
  5f:	00 b0 00 00 00 74    	add    BYTE PTR [eax+0x74000000],dh
  65:	01 00                	add    DWORD PTR [eax],eax
  67:	00 00                	add    BYTE PTR [eax],al
  69:	41                   	inc    ecx
  6a:	0e                   	push   cs
  6b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  71:	87 03                	xchg   DWORD PTR [ebx],eax
  73:	41                   	inc    ecx
  74:	0e                   	push   cs
  75:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
  7b:	83 05 43 0e 58 4e 0e 	add    DWORD PTR ds:0x4e580e43,0xe
  82:	5c                   	pop    esp
  83:	42                   	inc    edx
  84:	0e                   	push   cs
  85:	60                   	pusha
  86:	48                   	dec    eax
  87:	0e                   	push   cs
  88:	64 42                	fs inc edx
  8a:	0e                   	push   cs
  8b:	68 41 0e 6c 41       	push   0x416c0e41
  90:	0e                   	push   cs
  91:	70 48                	jo     db <.eh_frame+0xdb>
  93:	0e                   	push   cs
  94:	50                   	push   eax
  95:	48                   	dec    eax
  96:	0e                   	push   cs
  97:	54                   	push   esp
  98:	45                   	inc    ebp
  99:	0e                   	push   cs
  9a:	58                   	pop    eax
  9b:	41                   	inc    ecx
  9c:	0e                   	push   cs
  9d:	5c                   	pop    esp
  9e:	47                   	inc    edi
  9f:	0e                   	push   cs
  a0:	60                   	pusha
  a1:	4a                   	dec    edx
  a2:	0e                   	push   cs
  a3:	64 45                	fs inc ebp
  a5:	0e                   	push   cs
  a6:	68 41 0e 6c 41       	push   0x416c0e41
  ab:	0e                   	push   cs
  ac:	70 48                	jo     f6 <.eh_frame+0xf6>
  ae:	0e                   	push   cs
  af:	50                   	push   eax
  b0:	48                   	dec    eax
  b1:	0e                   	push   cs
  b2:	54                   	push   esp
  b3:	45                   	inc    ebp
  b4:	0e                   	push   cs
  b5:	58                   	pop    eax
  b6:	41                   	inc    ecx
  b7:	0e                   	push   cs
  b8:	5c                   	pop    esp
  b9:	41                   	inc    ecx
  ba:	0e                   	push   cs
  bb:	60                   	pusha
  bc:	4d                   	dec    ebp
  bd:	0e                   	push   cs
  be:	64 45                	fs inc ebp
  c0:	0e                   	push   cs
  c1:	68 41 0e 6c 41       	push   0x416c0e41
  c6:	0e                   	push   cs
  c7:	70 48                	jo     111 <.eh_frame+0x111>
  c9:	0e                   	push   cs
  ca:	50                   	push   eax
  cb:	48                   	dec    eax
  cc:	0e                   	push   cs
  cd:	54                   	push   esp
  ce:	45                   	inc    ebp
  cf:	0e                   	push   cs
  d0:	58                   	pop    eax
  d1:	41                   	inc    ecx
  d2:	0e                   	push   cs
  d3:	5c                   	pop    esp
  d4:	41                   	inc    ecx
  d5:	0e                   	push   cs
  d6:	60                   	pusha
  d7:	4d                   	dec    ebp
  d8:	0e                   	push   cs
  d9:	64 45                	fs inc ebp
  db:	0e                   	push   cs
  dc:	68 41 0e 6c 41       	push   0x416c0e41
  e1:	0e                   	push   cs
  e2:	70 4a                	jo     12e <.eh_frame+0x12e>
  e4:	0e                   	push   cs
  e5:	50                   	push   eax
  e6:	48                   	dec    eax
  e7:	0e                   	push   cs
  e8:	54                   	push   esp
  e9:	4a                   	dec    edx
  ea:	0e                   	push   cs
  eb:	58                   	pop    eax
  ec:	47                   	inc    edi
  ed:	0e                   	push   cs
  ee:	5c                   	pop    esp
  ef:	41                   	inc    ecx
  f0:	0e                   	push   cs
  f1:	60                   	pusha
  f2:	50                   	push   eax
  f3:	0e                   	push   cs
  f4:	64 45                	fs inc ebp
  f6:	0e                   	push   cs
  f7:	68 41 0e 6c 41       	push   0x416c0e41
  fc:	0e                   	push   cs
  fd:	70 02                	jo     101 <.eh_frame+0x101>
  ff:	68 0e 58 45 0e       	push   0xe45580e
 104:	5c                   	pop    esp
 105:	45                   	inc    ebp
 106:	0e                   	push   cs
 107:	60                   	pusha
 108:	50                   	push   eax
 109:	0e                   	push   cs
 10a:	64 41                	fs inc ecx
 10c:	0e                   	push   cs
 10d:	68 41 0e 6c 41       	push   0x416c0e41
 112:	0e                   	push   cs
 113:	70 48                	jo     15d <.eh_frame+0x15d>
 115:	0e                   	push   cs
 116:	14 41                	adc    al,0x41
 118:	c3                   	ret
 119:	0e                   	push   cs
 11a:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 11d:	0e                   	push   cs
 11e:	0c 41                	or     al,0x41
 120:	c7                   	(bad)
 121:	0e                   	push   cs
 122:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 125:	0e                   	push   cs
 126:	04 00                	add    al,0x0
 128:	44                   	inc    esp
 129:	00 00                	add    BYTE PTR [eax],al
 12b:	00 2c 01             	add    BYTE PTR [ecx+eax*1],ch
 12e:	00 00                	add    BYTE PTR [eax],al
 130:	30 02                	xor    BYTE PTR [edx],al
 132:	00 00                	add    BYTE PTR [eax],al
 134:	ac                   	lods   al,BYTE PTR ds:[esi]
 135:	00 00                	add    BYTE PTR [eax],al
 137:	00 00                	add    BYTE PTR [eax],al
 139:	41                   	inc    ecx
 13a:	0e                   	push   cs
 13b:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 141:	86 03                	xchg   BYTE PTR [ebx],al
 143:	41                   	inc    ecx
 144:	0e                   	push   cs
 145:	10 83 04 55 0e 14    	adc    BYTE PTR [ebx+0x140e5504],al
 14b:	42                   	inc    edx
 14c:	0e                   	push   cs
 14d:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 150:	1c 47                	sbb    al,0x47
 152:	0e                   	push   cs
 153:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 156:	14 48                	adc    al,0x48
 158:	0e                   	push   cs
 159:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 15c:	1c 41                	sbb    al,0x41
 15e:	0e                   	push   cs
 15f:	20 4d 0e             	and    BYTE PTR [ebp+0xe],cl
 162:	10 02                	adc    BYTE PTR [edx],al
 164:	63 c3                	arpl   ebx,eax
 166:	0e                   	push   cs
 167:	0c 41                	or     al,0x41
 169:	c6                   	(bad)
 16a:	0e                   	push   cs
 16b:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 16e:	0e                   	push   cs
 16f:	04 40                	add    al,0x40
 171:	00 00                	add    BYTE PTR [eax],al
 173:	00 74 01 00          	add    BYTE PTR [ecx+eax*1+0x0],dh
 177:	00 e0                	add    al,ah
 179:	02 00                	add    al,BYTE PTR [eax]
 17b:	00 99 00 00 00 00    	add    BYTE PTR [ecx+0x0],bl
 181:	41                   	inc    ecx
 182:	0e                   	push   cs
 183:	08 86 02 43 0e 0c    	or     BYTE PTR [esi+0xc0e4302],al
 189:	83 03 43             	add    DWORD PTR [ebx],0x43
 18c:	0e                   	push   cs
 18d:	10 51 0e             	adc    BYTE PTR [ecx+0xe],dl
 190:	14 42                	adc    al,0x42
 192:	0e                   	push   cs
 193:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 196:	1c 47                	sbb    al,0x47
 198:	0e                   	push   cs
 199:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 19c:	14 48                	adc    al,0x48
 19e:	0e                   	push   cs
 19f:	18 44 0e 1c          	sbb    BYTE PTR [esi+ecx*1+0x1c],al
 1a3:	41                   	inc    ecx
 1a4:	0e                   	push   cs
 1a5:	20 64 0e 10          	and    BYTE PTR [esi+ecx*1+0x10],ah
 1a9:	78 0e                	js     1b9 <.eh_frame+0x1b9>
 1ab:	0c 43                	or     al,0x43
 1ad:	c3                   	ret
 1ae:	0e                   	push   cs
 1af:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 1b2:	0e                   	push   cs
 1b3:	04 28                	add    al,0x28
 1b5:	00 00                	add    BYTE PTR [eax],al
 1b7:	00 b8 01 00 00 80    	add    BYTE PTR [eax-0x7fffffff],bh
 1bd:	03 00                	add    eax,DWORD PTR [eax]
 1bf:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
 1c3:	00 00                	add    BYTE PTR [eax],al
 1c5:	43                   	inc    ebx
 1c6:	0e                   	push   cs
 1c7:	2c 45                	sub    al,0x45
 1c9:	0e                   	push   cs
 1ca:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 1cd:	34 42                	xor    al,0x42
 1cf:	0e                   	push   cs
 1d0:	38 42 0e             	cmp    BYTE PTR [edx+0xe],al
 1d3:	3c 45                	cmp    al,0x45
 1d5:	0e                   	push   cs
 1d6:	40                   	inc    eax
 1d7:	48                   	dec    eax
 1d8:	0e                   	push   cs
 1d9:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 1dc:	04 00                	add    al,0x0
 1de:	00 00                	add    BYTE PTR [eax],al
 1e0:	28 00                	sub    BYTE PTR [eax],al
 1e2:	00 00                	add    BYTE PTR [eax],al
 1e4:	e4 01                	in     al,0x1
 1e6:	00 00                	add    BYTE PTR [eax],al
 1e8:	d0 03                	rol    BYTE PTR [ebx],1
 1ea:	00 00                	add    BYTE PTR [eax],al
 1ec:	4e                   	dec    esi
 1ed:	00 00                	add    BYTE PTR [eax],al
 1ef:	00 00                	add    BYTE PTR [eax],al
 1f1:	43                   	inc    ebx
 1f2:	0e                   	push   cs
 1f3:	2c 45                	sub    al,0x45
 1f5:	0e                   	push   cs
 1f6:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 1f9:	34 42                	xor    al,0x42
 1fb:	0e                   	push   cs
 1fc:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 1ff:	3c 45                	cmp    al,0x45
 201:	0e                   	push   cs
 202:	40                   	inc    eax
 203:	48                   	dec    eax
 204:	0e                   	push   cs
 205:	20 6c 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],ch
 209:	00 00                	add    BYTE PTR [eax],al
 20b:	00 28                	add    BYTE PTR [eax],ch
 20d:	00 00                	add    BYTE PTR [eax],al
 20f:	00 10                	add    BYTE PTR [eax],dl
 211:	02 00                	add    al,BYTE PTR [eax]
 213:	00 20                	add    BYTE PTR [eax],ah
 215:	04 00                	add    al,0x0
 217:	00 47 00             	add    BYTE PTR [edi+0x0],al
 21a:	00 00                	add    BYTE PTR [eax],al
 21c:	00 43 0e             	add    BYTE PTR [ebx+0xe],al
 21f:	2c 45                	sub    al,0x45
 221:	0e                   	push   cs
 222:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 225:	34 42                	xor    al,0x42
 227:	0e                   	push   cs
 228:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 22b:	3c 45                	cmp    al,0x45
 22d:	0e                   	push   cs
 22e:	40                   	inc    eax
 22f:	48                   	dec    eax
 230:	0e                   	push   cs
 231:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 234:	04 00                	add    al,0x0
 236:	00 00                	add    BYTE PTR [eax],al
 238:	28 00                	sub    BYTE PTR [eax],al
 23a:	00 00                	add    BYTE PTR [eax],al
 23c:	3c 02                	cmp    al,0x2
 23e:	00 00                	add    BYTE PTR [eax],al
 240:	70 04                	jo     246 <.eh_frame+0x246>
 242:	00 00                	add    BYTE PTR [eax],al
 244:	4b                   	dec    ebx
 245:	00 00                	add    BYTE PTR [eax],al
 247:	00 00                	add    BYTE PTR [eax],al
 249:	43                   	inc    ebx
 24a:	0e                   	push   cs
 24b:	2c 45                	sub    al,0x45
 24d:	0e                   	push   cs
 24e:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 251:	34 42                	xor    al,0x42
 253:	0e                   	push   cs
 254:	38 42 0e             	cmp    BYTE PTR [edx+0xe],al
 257:	3c 45                	cmp    al,0x45
 259:	0e                   	push   cs
 25a:	40                   	inc    eax
 25b:	48                   	dec    eax
 25c:	0e                   	push   cs
 25d:	20 6c 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],ch
 261:	00 00                	add    BYTE PTR [eax],al
 263:	00 28                	add    BYTE PTR [eax],ch
 265:	00 00                	add    BYTE PTR [eax],al
 267:	00 68 02             	add    BYTE PTR [eax+0x2],ch
 26a:	00 00                	add    BYTE PTR [eax],al
 26c:	c0 04 00 00          	rol    BYTE PTR [eax+eax*1],0x0
 270:	47                   	inc    edi
 271:	00 00                	add    BYTE PTR [eax],al
 273:	00 00                	add    BYTE PTR [eax],al
 275:	43                   	inc    ebx
 276:	0e                   	push   cs
 277:	2c 45                	sub    al,0x45
 279:	0e                   	push   cs
 27a:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 27d:	34 42                	xor    al,0x42
 27f:	0e                   	push   cs
 280:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 283:	3c 45                	cmp    al,0x45
 285:	0e                   	push   cs
 286:	40                   	inc    eax
 287:	48                   	dec    eax
 288:	0e                   	push   cs
 289:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 28c:	04 00                	add    al,0x0
 28e:	00 00                	add    BYTE PTR [eax],al
 290:	28 00                	sub    BYTE PTR [eax],al
 292:	00 00                	add    BYTE PTR [eax],al
 294:	94                   	xchg   esp,eax
 295:	02 00                	add    al,BYTE PTR [eax]
 297:	00 10                	add    BYTE PTR [eax],dl
 299:	05 00 00 47 00       	add    eax,0x470000
 29e:	00 00                	add    BYTE PTR [eax],al
 2a0:	00 43 0e             	add    BYTE PTR [ebx+0xe],al
 2a3:	2c 45                	sub    al,0x45
 2a5:	0e                   	push   cs
 2a6:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 2a9:	34 42                	xor    al,0x42
 2ab:	0e                   	push   cs
 2ac:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 2af:	3c 45                	cmp    al,0x45
 2b1:	0e                   	push   cs
 2b2:	40                   	inc    eax
 2b3:	48                   	dec    eax
 2b4:	0e                   	push   cs
 2b5:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 2b8:	04 00                	add    al,0x0
 2ba:	00 00                	add    BYTE PTR [eax],al
 2bc:	28 00                	sub    BYTE PTR [eax],al
 2be:	00 00                	add    BYTE PTR [eax],al
 2c0:	c0 02 00             	rol    BYTE PTR [edx],0x0
 2c3:	00 60 05             	add    BYTE PTR [eax+0x5],ah
 2c6:	00 00                	add    BYTE PTR [eax],al
 2c8:	47                   	inc    edi
 2c9:	00 00                	add    BYTE PTR [eax],al
 2cb:	00 00                	add    BYTE PTR [eax],al
 2cd:	43                   	inc    ebx
 2ce:	0e                   	push   cs
 2cf:	2c 45                	sub    al,0x45
 2d1:	0e                   	push   cs
 2d2:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 2d5:	34 42                	xor    al,0x42
 2d7:	0e                   	push   cs
 2d8:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 2db:	3c 45                	cmp    al,0x45
 2dd:	0e                   	push   cs
 2de:	40                   	inc    eax
 2df:	48                   	dec    eax
 2e0:	0e                   	push   cs
 2e1:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 2e4:	04 00                	add    al,0x0
 2e6:	00 00                	add    BYTE PTR [eax],al
 2e8:	48                   	dec    eax
 2e9:	00 00                	add    BYTE PTR [eax],al
 2eb:	00 ec                	add    ah,ch
 2ed:	02 00                	add    al,BYTE PTR [eax]
 2ef:	00 b0 05 00 00 a9    	add    BYTE PTR [eax-0x56fffffb],dh
 2f5:	00 00                	add    BYTE PTR [eax],al
 2f7:	00 00                	add    BYTE PTR [eax],al
 2f9:	41                   	inc    ecx
 2fa:	0e                   	push   cs
 2fb:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 301:	87 03                	xchg   DWORD PTR [ebx],eax
 303:	41                   	inc    ecx
 304:	0e                   	push   cs
 305:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 30b:	83 05 02 81 0a c3 0e 	add    DWORD PTR ds:0xc30a8102,0xe
 312:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 315:	0e                   	push   cs
 316:	0c 41                	or     al,0x41
 318:	c7                   	(bad)
 319:	0e                   	push   cs
 31a:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 31d:	0e                   	push   cs
 31e:	04 48                	add    al,0x48
 320:	0b 55 c3             	or     edx,DWORD PTR [ebp-0x3d]
 323:	0e                   	push   cs
 324:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 327:	0e                   	push   cs
 328:	0c 41                	or     al,0x41
 32a:	c7                   	(bad)
 32b:	0e                   	push   cs
 32c:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 32f:	0e                   	push   cs
 330:	04 00                	add    al,0x0
 332:	00 00                	add    BYTE PTR [eax],al
 334:	28 00                	sub    BYTE PTR [eax],al
 336:	00 00                	add    BYTE PTR [eax],al
 338:	38 03                	cmp    BYTE PTR [ebx],al
 33a:	00 00                	add    BYTE PTR [eax],al
 33c:	60                   	pusha
 33d:	06                   	push   es
 33e:	00 00                	add    BYTE PTR [eax],al
 340:	44                   	inc    esp
 341:	00 00                	add    BYTE PTR [eax],al
 343:	00 00                	add    BYTE PTR [eax],al
 345:	43                   	inc    ebx
 346:	0e                   	push   cs
 347:	2c 45                	sub    al,0x45
 349:	0e                   	push   cs
 34a:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 34d:	34 42                	xor    al,0x42
 34f:	0e                   	push   cs
 350:	38 42 0e             	cmp    BYTE PTR [edx+0xe],al
 353:	3c 45                	cmp    al,0x45
 355:	0e                   	push   cs
 356:	40                   	inc    eax
 357:	48                   	dec    eax
 358:	0e                   	push   cs
 359:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 35c:	04 00                	add    al,0x0
 35e:	00 00                	add    BYTE PTR [eax],al
 360:	28 00                	sub    BYTE PTR [eax],al
 362:	00 00                	add    BYTE PTR [eax],al
 364:	64 03 00             	add    eax,DWORD PTR fs:[eax]
 367:	00 b0 06 00 00 4e    	add    BYTE PTR [eax+0x4e000006],dh
 36d:	00 00                	add    BYTE PTR [eax],al
 36f:	00 00                	add    BYTE PTR [eax],al
 371:	43                   	inc    ebx
 372:	0e                   	push   cs
 373:	2c 45                	sub    al,0x45
 375:	0e                   	push   cs
 376:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 379:	34 42                	xor    al,0x42
 37b:	0e                   	push   cs
 37c:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 37f:	3c 45                	cmp    al,0x45
 381:	0e                   	push   cs
 382:	40                   	inc    eax
 383:	48                   	dec    eax
 384:	0e                   	push   cs
 385:	20 6c 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],ch
 389:	00 00                	add    BYTE PTR [eax],al
 38b:	00 28                	add    BYTE PTR [eax],ch
 38d:	00 00                	add    BYTE PTR [eax],al
 38f:	00 90 03 00 00 00    	add    BYTE PTR [eax+0x3],dl
 395:	07                   	pop    es
 396:	00 00                	add    BYTE PTR [eax],al
 398:	47                   	inc    edi
 399:	00 00                	add    BYTE PTR [eax],al
 39b:	00 00                	add    BYTE PTR [eax],al
 39d:	43                   	inc    ebx
 39e:	0e                   	push   cs
 39f:	2c 45                	sub    al,0x45
 3a1:	0e                   	push   cs
 3a2:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 3a5:	34 42                	xor    al,0x42
 3a7:	0e                   	push   cs
 3a8:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 3ab:	3c 45                	cmp    al,0x45
 3ad:	0e                   	push   cs
 3ae:	40                   	inc    eax
 3af:	48                   	dec    eax
 3b0:	0e                   	push   cs
 3b1:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 3b4:	04 00                	add    al,0x0
 3b6:	00 00                	add    BYTE PTR [eax],al
 3b8:	28 00                	sub    BYTE PTR [eax],al
 3ba:	00 00                	add    BYTE PTR [eax],al
 3bc:	bc 03 00 00 50       	mov    esp,0x50000003
 3c1:	07                   	pop    es
 3c2:	00 00                	add    BYTE PTR [eax],al
 3c4:	4b                   	dec    ebx
 3c5:	00 00                	add    BYTE PTR [eax],al
 3c7:	00 00                	add    BYTE PTR [eax],al
 3c9:	43                   	inc    ebx
 3ca:	0e                   	push   cs
 3cb:	2c 45                	sub    al,0x45
 3cd:	0e                   	push   cs
 3ce:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 3d1:	34 42                	xor    al,0x42
 3d3:	0e                   	push   cs
 3d4:	38 42 0e             	cmp    BYTE PTR [edx+0xe],al
 3d7:	3c 45                	cmp    al,0x45
 3d9:	0e                   	push   cs
 3da:	40                   	inc    eax
 3db:	48                   	dec    eax
 3dc:	0e                   	push   cs
 3dd:	20 6c 0e 04          	and    BYTE PTR [esi+ecx*1+0x4],ch
 3e1:	00 00                	add    BYTE PTR [eax],al
 3e3:	00 28                	add    BYTE PTR [eax],ch
 3e5:	00 00                	add    BYTE PTR [eax],al
 3e7:	00 e8                	add    al,ch
 3e9:	03 00                	add    eax,DWORD PTR [eax]
 3eb:	00 a0 07 00 00 47    	add    BYTE PTR [eax+0x47000007],ah
 3f1:	00 00                	add    BYTE PTR [eax],al
 3f3:	00 00                	add    BYTE PTR [eax],al
 3f5:	43                   	inc    ebx
 3f6:	0e                   	push   cs
 3f7:	2c 45                	sub    al,0x45
 3f9:	0e                   	push   cs
 3fa:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 3fd:	34 42                	xor    al,0x42
 3ff:	0e                   	push   cs
 400:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 403:	3c 45                	cmp    al,0x45
 405:	0e                   	push   cs
 406:	40                   	inc    eax
 407:	48                   	dec    eax
 408:	0e                   	push   cs
 409:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 40c:	04 00                	add    al,0x0
 40e:	00 00                	add    BYTE PTR [eax],al
 410:	28 00                	sub    BYTE PTR [eax],al
 412:	00 00                	add    BYTE PTR [eax],al
 414:	14 04                	adc    al,0x4
 416:	00 00                	add    BYTE PTR [eax],al
 418:	f0 07                	lock pop es
 41a:	00 00                	add    BYTE PTR [eax],al
 41c:	47                   	inc    edi
 41d:	00 00                	add    BYTE PTR [eax],al
 41f:	00 00                	add    BYTE PTR [eax],al
 421:	43                   	inc    ebx
 422:	0e                   	push   cs
 423:	2c 45                	sub    al,0x45
 425:	0e                   	push   cs
 426:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 429:	34 42                	xor    al,0x42
 42b:	0e                   	push   cs
 42c:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 42f:	3c 45                	cmp    al,0x45
 431:	0e                   	push   cs
 432:	40                   	inc    eax
 433:	48                   	dec    eax
 434:	0e                   	push   cs
 435:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 438:	04 00                	add    al,0x0
 43a:	00 00                	add    BYTE PTR [eax],al
 43c:	28 00                	sub    BYTE PTR [eax],al
 43e:	00 00                	add    BYTE PTR [eax],al
 440:	40                   	inc    eax
 441:	04 00                	add    al,0x0
 443:	00 40 08             	add    BYTE PTR [eax+0x8],al
 446:	00 00                	add    BYTE PTR [eax],al
 448:	47                   	inc    edi
 449:	00 00                	add    BYTE PTR [eax],al
 44b:	00 00                	add    BYTE PTR [eax],al
 44d:	43                   	inc    ebx
 44e:	0e                   	push   cs
 44f:	2c 45                	sub    al,0x45
 451:	0e                   	push   cs
 452:	30 45 0e             	xor    BYTE PTR [ebp+0xe],al
 455:	34 42                	xor    al,0x42
 457:	0e                   	push   cs
 458:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 45b:	3c 45                	cmp    al,0x45
 45d:	0e                   	push   cs
 45e:	40                   	inc    eax
 45f:	48                   	dec    eax
 460:	0e                   	push   cs
 461:	20 65 0e             	and    BYTE PTR [ebp+0xe],ah
 464:	04 00                	add    al,0x0
 466:	00 00                	add    BYTE PTR [eax],al
 468:	40                   	inc    eax
 469:	00 00                	add    BYTE PTR [eax],al
 46b:	00 6c 04 00          	add    BYTE PTR [esp+eax*1+0x0],ch
 46f:	00 90 08 00 00 ad    	add    BYTE PTR [eax-0x52fffff8],dl
 475:	00 00                	add    BYTE PTR [eax],al
 477:	00 00                	add    BYTE PTR [eax],al
 479:	41                   	inc    ecx
 47a:	0e                   	push   cs
 47b:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 481:	86 03                	xchg   BYTE PTR [ebx],al
 483:	41                   	inc    ecx
 484:	0e                   	push   cs
 485:	10 83 04 02 6f 0e    	adc    BYTE PTR [ebx+0xe6f0204],al
 48b:	1c 45                	sbb    al,0x45
 48d:	0e                   	push   cs
 48e:	20 45 0e             	and    BYTE PTR [ebp+0xe],al
 491:	24 42                	and    al,0x42
 493:	0e                   	push   cs
 494:	28 42 0e             	sub    BYTE PTR [edx+0xe],al
 497:	2c 45                	sub    al,0x45
 499:	0e                   	push   cs
 49a:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 49d:	10 5d c3             	adc    BYTE PTR [ebp-0x3d],bl
 4a0:	0e                   	push   cs
 4a1:	0c 41                	or     al,0x41
 4a3:	c6                   	(bad)
 4a4:	0e                   	push   cs
 4a5:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 4a8:	0e                   	push   cs
 4a9:	04 00                	add    al,0x0
 4ab:	00 f8                	add    al,bh
 4ad:	05 00 00 b0 04       	add    eax,0x4b00000
 4b2:	00 00                	add    BYTE PTR [eax],al
 4b4:	40                   	inc    eax
 4b5:	09 00                	or     DWORD PTR [eax],eax
 4b7:	00 96 12 00 00 00    	add    BYTE PTR [esi+0x12],dl
 4bd:	41                   	inc    ecx
 4be:	0e                   	push   cs
 4bf:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 4c5:	87 03                	xchg   DWORD PTR [ebx],eax
 4c7:	41                   	inc    ecx
 4c8:	0e                   	push   cs
 4c9:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 4cf:	83 05 46 0e d0 01 55 	add    DWORD PTR ds:0x1d00e46,0x55
 4d6:	0e                   	push   cs
 4d7:	dc 01                	fadd   QWORD PTR [ecx]
 4d9:	46                   	inc    esi
 4da:	0e                   	push   cs
 4db:	e0 01                	loopne 4de <.eh_frame+0x4de>
 4dd:	4c                   	dec    esp
 4de:	0e                   	push   cs
 4df:	d0 01                	rol    BYTE PTR [ecx],1
 4e1:	7e 0e                	jle    4f1 <.eh_frame+0x4f1>
 4e3:	d8 01                	fadd   DWORD PTR [ecx]
 4e5:	41                   	inc    ecx
 4e6:	0e                   	push   cs
 4e7:	dc 01                	fadd   QWORD PTR [ecx]
 4e9:	41                   	inc    ecx
 4ea:	0e                   	push   cs
 4eb:	e0 01                	loopne 4ee <.eh_frame+0x4ee>
 4ed:	45                   	inc    ebp
 4ee:	0e                   	push   cs
 4ef:	d0 01                	rol    BYTE PTR [ecx],1
 4f1:	03 d1                	add    edx,ecx
 4f3:	01 0e                	add    DWORD PTR [esi],ecx
 4f5:	d4 01                	aam    0x1
 4f7:	46                   	inc    esi
 4f8:	0e                   	push   cs
 4f9:	d8 01                	fadd   DWORD PTR [ecx]
 4fb:	41                   	inc    ecx
 4fc:	0e                   	push   cs
 4fd:	dc 01                	fadd   QWORD PTR [ecx]
 4ff:	45                   	inc    ebp
 500:	0e                   	push   cs
 501:	e0 01                	loopne 504 <.eh_frame+0x504>
 503:	48                   	dec    eax
 504:	0e                   	push   cs
 505:	d0 01                	rol    BYTE PTR [ecx],1
 507:	67 0e                	addr16 push cs
 509:	d4 01                	aam    0x1
 50b:	45                   	inc    ebp
 50c:	0e                   	push   cs
 50d:	d8 01                	fadd   DWORD PTR [ecx]
 50f:	41                   	inc    ecx
 510:	0e                   	push   cs
 511:	dc 01                	fadd   QWORD PTR [ecx]
 513:	41                   	inc    ecx
 514:	0e                   	push   cs
 515:	e0 01                	loopne 518 <.eh_frame+0x518>
 517:	4b                   	dec    ebx
 518:	0e                   	push   cs
 519:	d0 01                	rol    BYTE PTR [ecx],1
 51b:	02 48 0e             	add    cl,BYTE PTR [eax+0xe]
 51e:	d8 01                	fadd   DWORD PTR [ecx]
 520:	46                   	inc    esi
 521:	0e                   	push   cs
 522:	dc 01                	fadd   QWORD PTR [ecx]
 524:	45                   	inc    ebp
 525:	0e                   	push   cs
 526:	e0 01                	loopne 529 <.eh_frame+0x529>
 528:	47                   	inc    edi
 529:	0e                   	push   cs
 52a:	e4 01                	in     al,0x1
 52c:	45                   	inc    ebp
 52d:	0e                   	push   cs
 52e:	e8 01 44 0e ec       	call   ec0e4934 <windows+0xec0e3d14>
 533:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 536:	f0 01 4b 0e          	lock add DWORD PTR [ebx+0xe],ecx
 53a:	dc 01                	fadd   QWORD PTR [ecx]
 53c:	41                   	inc    ecx
 53d:	0e                   	push   cs
 53e:	e0 01                	loopne 541 <.eh_frame+0x541>
 540:	4e                   	dec    esi
 541:	0e                   	push   cs
 542:	e4 01                	in     al,0x1
 544:	45                   	inc    ebp
 545:	0e                   	push   cs
 546:	e8 01 47 0e ec       	call   ec0e4c4c <windows+0xec0e402c>
 54b:	01 53 0e             	add    DWORD PTR [ebx+0xe],edx
 54e:	f0 01 4a 0e          	lock add DWORD PTR [edx+0xe],ecx
 552:	dc 01                	fadd   QWORD PTR [ecx]
 554:	41                   	inc    ecx
 555:	0e                   	push   cs
 556:	e0 01                	loopne 559 <.eh_frame+0x559>
 558:	4e                   	dec    esi
 559:	0e                   	push   cs
 55a:	e4 01                	in     al,0x1
 55c:	45                   	inc    ebp
 55d:	0e                   	push   cs
 55e:	e8 01 4f 0e ec       	call   ec0e5464 <windows+0xec0e4844>
 563:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 566:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 56a:	d0 01                	rol    BYTE PTR [ecx],1
 56c:	02 a6 0e d4 01 42    	add    ah,BYTE PTR [esi+0x4201d40e]
 572:	0e                   	push   cs
 573:	d8 01                	fadd   DWORD PTR [ecx]
 575:	41                   	inc    ecx
 576:	0e                   	push   cs
 577:	dc 01                	fadd   QWORD PTR [ecx]
 579:	44                   	inc    esp
 57a:	0e                   	push   cs
 57b:	e0 01                	loopne 57e <.eh_frame+0x57e>
 57d:	48                   	dec    eax
 57e:	0e                   	push   cs
 57f:	d0 01                	rol    BYTE PTR [ecx],1
 581:	74 0e                	je     591 <.eh_frame+0x591>
 583:	d4 01                	aam    0x1
 585:	45                   	inc    ebp
 586:	0e                   	push   cs
 587:	d8 01                	fadd   DWORD PTR [ecx]
 589:	41                   	inc    ecx
 58a:	0e                   	push   cs
 58b:	dc 01                	fadd   QWORD PTR [ecx]
 58d:	41                   	inc    ecx
 58e:	0e                   	push   cs
 58f:	e0 01                	loopne 592 <.eh_frame+0x592>
 591:	48                   	dec    eax
 592:	0e                   	push   cs
 593:	d0 01                	rol    BYTE PTR [ecx],1
 595:	02 d0                	add    dl,al
 597:	0e                   	push   cs
 598:	d4 01                	aam    0x1
 59a:	44                   	inc    esp
 59b:	0e                   	push   cs
 59c:	d8 01                	fadd   DWORD PTR [ecx]
 59e:	41                   	inc    ecx
 59f:	0e                   	push   cs
 5a0:	dc 01                	fadd   QWORD PTR [ecx]
 5a2:	47                   	inc    edi
 5a3:	0e                   	push   cs
 5a4:	e0 01                	loopne 5a7 <.eh_frame+0x5a7>
 5a6:	54                   	push   esp
 5a7:	0e                   	push   cs
 5a8:	d0 01                	rol    BYTE PTR [ecx],1
 5aa:	53                   	push   ebx
 5ab:	0e                   	push   cs
 5ac:	d4 01                	aam    0x1
 5ae:	4e                   	dec    esi
 5af:	0e                   	push   cs
 5b0:	d8 01                	fadd   DWORD PTR [ecx]
 5b2:	41                   	inc    ecx
 5b3:	0e                   	push   cs
 5b4:	dc 01                	fadd   QWORD PTR [ecx]
 5b6:	48                   	dec    eax
 5b7:	0e                   	push   cs
 5b8:	e0 01                	loopne 5bb <.eh_frame+0x5bb>
 5ba:	46                   	inc    esi
 5bb:	0e                   	push   cs
 5bc:	dc 01                	fadd   QWORD PTR [ecx]
 5be:	41                   	inc    ecx
 5bf:	0e                   	push   cs
 5c0:	d8 01                	fadd   DWORD PTR [ecx]
 5c2:	45                   	inc    ebp
 5c3:	0e                   	push   cs
 5c4:	dc 01                	fadd   QWORD PTR [ecx]
 5c6:	42                   	inc    edx
 5c7:	0e                   	push   cs
 5c8:	e0 01                	loopne 5cb <.eh_frame+0x5cb>
 5ca:	42                   	inc    edx
 5cb:	0e                   	push   cs
 5cc:	e4 01                	in     al,0x1
 5ce:	42                   	inc    edx
 5cf:	0e                   	push   cs
 5d0:	e8 01 41 0e ec       	call   ec0e46d6 <windows+0xec0e3ab6>
 5d5:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 5d8:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 5dc:	d0 01                	rol    BYTE PTR [ecx],1
 5de:	48                   	dec    eax
 5df:	0e                   	push   cs
 5e0:	d4 01                	aam    0x1
 5e2:	45                   	inc    ebp
 5e3:	0e                   	push   cs
 5e4:	d8 01                	fadd   DWORD PTR [ecx]
 5e6:	41                   	inc    ecx
 5e7:	0e                   	push   cs
 5e8:	dc 01                	fadd   QWORD PTR [ecx]
 5ea:	41                   	inc    ecx
 5eb:	0e                   	push   cs
 5ec:	e0 01                	loopne 5ef <.eh_frame+0x5ef>
 5ee:	46                   	inc    esi
 5ef:	0e                   	push   cs
 5f0:	dc 01                	fadd   QWORD PTR [ecx]
 5f2:	41                   	inc    ecx
 5f3:	0e                   	push   cs
 5f4:	d8 01                	fadd   DWORD PTR [ecx]
 5f6:	57                   	push   edi
 5f7:	0e                   	push   cs
 5f8:	dc 01                	fadd   QWORD PTR [ecx]
 5fa:	45                   	inc    ebp
 5fb:	0e                   	push   cs
 5fc:	e0 01                	loopne 5ff <.eh_frame+0x5ff>
 5fe:	42                   	inc    edx
 5ff:	0e                   	push   cs
 600:	e4 01                	in     al,0x1
 602:	42                   	inc    edx
 603:	0e                   	push   cs
 604:	e8 01 41 0e ec       	call   ec0e470a <windows+0xec0e3aea>
 609:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 60c:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 610:	d0 01                	rol    BYTE PTR [ecx],1
 612:	48                   	dec    eax
 613:	0e                   	push   cs
 614:	d4 01                	aam    0x1
 616:	45                   	inc    ebp
 617:	0e                   	push   cs
 618:	d8 01                	fadd   DWORD PTR [ecx]
 61a:	41                   	inc    ecx
 61b:	0e                   	push   cs
 61c:	dc 01                	fadd   QWORD PTR [ecx]
 61e:	41                   	inc    ecx
 61f:	0e                   	push   cs
 620:	e0 01                	loopne 623 <.eh_frame+0x623>
 622:	54                   	push   esp
 623:	0e                   	push   cs
 624:	e4 01                	in     al,0x1
 626:	45                   	inc    ebp
 627:	0e                   	push   cs
 628:	e8 01 44 0e ec       	call   ec0e4a2e <windows+0xec0e3e0e>
 62d:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 630:	f0 01 4c 0e dc       	lock add DWORD PTR [esi+ecx*1-0x24],ecx
 635:	01 57 0e             	add    DWORD PTR [edi+0xe],edx
 638:	e0 01                	loopne 63b <.eh_frame+0x63b>
 63a:	41                   	inc    ecx
 63b:	0e                   	push   cs
 63c:	e4 01                	in     al,0x1
 63e:	41                   	inc    ecx
 63f:	0e                   	push   cs
 640:	e8 01 41 0e ec       	call   ec0e4746 <windows+0xec0e3b26>
 645:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 648:	f0 01 4c 0e d0       	lock add DWORD PTR [esi+ecx*1-0x30],ecx
 64d:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 650:	dc 01                	fadd   QWORD PTR [ecx]
 652:	41                   	inc    ecx
 653:	0e                   	push   cs
 654:	e0 01                	loopne 657 <.eh_frame+0x657>
 656:	4d                   	dec    ebp
 657:	0e                   	push   cs
 658:	d0 01                	rol    BYTE PTR [ecx],1
 65a:	61                   	popa
 65b:	0e                   	push   cs
 65c:	dc 01                	fadd   QWORD PTR [ecx]
 65e:	4f                   	dec    edi
 65f:	0e                   	push   cs
 660:	e0 01                	loopne 663 <.eh_frame+0x663>
 662:	42                   	inc    edx
 663:	0e                   	push   cs
 664:	e4 01                	in     al,0x1
 666:	46                   	inc    esi
 667:	0e                   	push   cs
 668:	e8 01 41 0e ec       	call   ec0e476e <windows+0xec0e3b4e>
 66d:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 670:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 674:	d0 01                	rol    BYTE PTR [ecx],1
 676:	45                   	inc    ebp
 677:	0e                   	push   cs
 678:	d4 01                	aam    0x1
 67a:	46                   	inc    esi
 67b:	0e                   	push   cs
 67c:	d8 01                	fadd   DWORD PTR [ecx]
 67e:	41                   	inc    ecx
 67f:	0e                   	push   cs
 680:	dc 01                	fadd   QWORD PTR [ecx]
 682:	42                   	inc    edx
 683:	0e                   	push   cs
 684:	e0 01                	loopne 687 <.eh_frame+0x687>
 686:	48                   	dec    eax
 687:	0e                   	push   cs
 688:	d0 01                	rol    BYTE PTR [ecx],1
 68a:	58                   	pop    eax
 68b:	0e                   	push   cs
 68c:	d4 01                	aam    0x1
 68e:	42                   	inc    edx
 68f:	0e                   	push   cs
 690:	d8 01                	fadd   DWORD PTR [ecx]
 692:	41                   	inc    ecx
 693:	0e                   	push   cs
 694:	dc 01                	fadd   QWORD PTR [ecx]
 696:	42                   	inc    edx
 697:	0e                   	push   cs
 698:	e0 01                	loopne 69b <.eh_frame+0x69b>
 69a:	48                   	dec    eax
 69b:	0e                   	push   cs
 69c:	d0 01                	rol    BYTE PTR [ecx],1
 69e:	57                   	push   edi
 69f:	0e                   	push   cs
 6a0:	d4 01                	aam    0x1
 6a2:	42                   	inc    edx
 6a3:	0e                   	push   cs
 6a4:	d8 01                	fadd   DWORD PTR [ecx]
 6a6:	41                   	inc    ecx
 6a7:	0e                   	push   cs
 6a8:	dc 01                	fadd   QWORD PTR [ecx]
 6aa:	42                   	inc    edx
 6ab:	0e                   	push   cs
 6ac:	e0 01                	loopne 6af <.eh_frame+0x6af>
 6ae:	4a                   	dec    edx
 6af:	0e                   	push   cs
 6b0:	e4 01                	in     al,0x1
 6b2:	45                   	inc    ebp
 6b3:	0e                   	push   cs
 6b4:	e8 01 41 0e ec       	call   ec0e47ba <windows+0xec0e3b9a>
 6b9:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 6bc:	f0 01 4e 0e          	lock add DWORD PTR [esi+0xe],ecx
 6c0:	d0 01                	rol    BYTE PTR [ecx],1
 6c2:	6d                   	ins    DWORD PTR es:[edi],dx
 6c3:	0e                   	push   cs
 6c4:	d8 01                	fadd   DWORD PTR [ecx]
 6c6:	45                   	inc    ebp
 6c7:	0e                   	push   cs
 6c8:	dc 01                	fadd   QWORD PTR [ecx]
 6ca:	42                   	inc    edx
 6cb:	0e                   	push   cs
 6cc:	e0 01                	loopne 6cf <.eh_frame+0x6cf>
 6ce:	42                   	inc    edx
 6cf:	0e                   	push   cs
 6d0:	e4 01                	in     al,0x1
 6d2:	42                   	inc    edx
 6d3:	0e                   	push   cs
 6d4:	e8 01 44 0e ec       	call   ec0e4ada <windows+0xec0e3eba>
 6d9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6dc:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 6e0:	d0 01                	rol    BYTE PTR [ecx],1
 6e2:	54                   	push   esp
 6e3:	0e                   	push   cs
 6e4:	d4 01                	aam    0x1
 6e6:	47                   	inc    edi
 6e7:	0e                   	push   cs
 6e8:	d8 01                	fadd   DWORD PTR [ecx]
 6ea:	44                   	inc    esp
 6eb:	0e                   	push   cs
 6ec:	dc 01                	fadd   QWORD PTR [ecx]
 6ee:	41                   	inc    ecx
 6ef:	0e                   	push   cs
 6f0:	e0 01                	loopne 6f3 <.eh_frame+0x6f3>
 6f2:	48                   	dec    eax
 6f3:	0e                   	push   cs
 6f4:	d0 01                	rol    BYTE PTR [ecx],1
 6f6:	59                   	pop    ecx
 6f7:	0e                   	push   cs
 6f8:	d8 01                	fadd   DWORD PTR [ecx]
 6fa:	45                   	inc    ebp
 6fb:	0e                   	push   cs
 6fc:	dc 01                	fadd   QWORD PTR [ecx]
 6fe:	42                   	inc    edx
 6ff:	0e                   	push   cs
 700:	e0 01                	loopne 703 <.eh_frame+0x703>
 702:	42                   	inc    edx
 703:	0e                   	push   cs
 704:	e4 01                	in     al,0x1
 706:	42                   	inc    edx
 707:	0e                   	push   cs
 708:	e8 01 44 0e ec       	call   ec0e4b0e <windows+0xec0e3eee>
 70d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 710:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 714:	d8 01                	fadd   DWORD PTR [ecx]
 716:	48                   	dec    eax
 717:	0e                   	push   cs
 718:	dc 01                	fadd   QWORD PTR [ecx]
 71a:	42                   	inc    edx
 71b:	0e                   	push   cs
 71c:	e0 01                	loopne 71f <.eh_frame+0x71f>
 71e:	42                   	inc    edx
 71f:	0e                   	push   cs
 720:	e4 01                	in     al,0x1
 722:	42                   	inc    edx
 723:	0e                   	push   cs
 724:	e8 01 44 0e ec       	call   ec0e4b2a <windows+0xec0e3f0a>
 729:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 72c:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 730:	d0 01                	rol    BYTE PTR [ecx],1
 732:	02 6b 0e             	add    ch,BYTE PTR [ebx+0xe]
 735:	d4 01                	aam    0x1
 737:	42                   	inc    edx
 738:	0e                   	push   cs
 739:	d8 01                	fadd   DWORD PTR [ecx]
 73b:	41                   	inc    ecx
 73c:	0e                   	push   cs
 73d:	dc 01                	fadd   QWORD PTR [ecx]
 73f:	45                   	inc    ebp
 740:	0e                   	push   cs
 741:	e0 01                	loopne 744 <.eh_frame+0x744>
 743:	48                   	dec    eax
 744:	0e                   	push   cs
 745:	d0 01                	rol    BYTE PTR [ecx],1
 747:	6c                   	ins    BYTE PTR es:[edi],dx
 748:	0e                   	push   cs
 749:	d4 01                	aam    0x1
 74b:	48                   	dec    eax
 74c:	0e                   	push   cs
 74d:	d8 01                	fadd   DWORD PTR [ecx]
 74f:	46                   	inc    esi
 750:	0e                   	push   cs
 751:	dc 01                	fadd   QWORD PTR [ecx]
 753:	46                   	inc    esi
 754:	0e                   	push   cs
 755:	e0 01                	loopne 758 <.eh_frame+0x758>
 757:	02 62 0e             	add    ah,BYTE PTR [edx+0xe]
 75a:	d4 01                	aam    0x1
 75c:	47                   	inc    edi
 75d:	0e                   	push   cs
 75e:	d8 01                	fadd   DWORD PTR [ecx]
 760:	4a                   	dec    edx
 761:	0e                   	push   cs
 762:	dc 01                	fadd   QWORD PTR [ecx]
 764:	4d                   	dec    ebp
 765:	0e                   	push   cs
 766:	e0 01                	loopne 769 <.eh_frame+0x769>
 768:	4b                   	dec    ebx
 769:	0e                   	push   cs
 76a:	dc 01                	fadd   QWORD PTR [ecx]
 76c:	41                   	inc    ecx
 76d:	0e                   	push   cs
 76e:	d8 01                	fadd   DWORD PTR [ecx]
 770:	47                   	inc    edi
 771:	0e                   	push   cs
 772:	dc 01                	fadd   QWORD PTR [ecx]
 774:	45                   	inc    ebp
 775:	0e                   	push   cs
 776:	e0 01                	loopne 779 <.eh_frame+0x779>
 778:	46                   	inc    esi
 779:	0e                   	push   cs
 77a:	dc 01                	fadd   QWORD PTR [ecx]
 77c:	41                   	inc    ecx
 77d:	0e                   	push   cs
 77e:	d8 01                	fadd   DWORD PTR [ecx]
 780:	45                   	inc    ebp
 781:	0e                   	push   cs
 782:	dc 01                	fadd   QWORD PTR [ecx]
 784:	45                   	inc    ebp
 785:	0e                   	push   cs
 786:	e0 01                	loopne 789 <.eh_frame+0x789>
 788:	48                   	dec    eax
 789:	0e                   	push   cs
 78a:	d0 01                	rol    BYTE PTR [ecx],1
 78c:	4c                   	dec    esp
 78d:	0e                   	push   cs
 78e:	d4 01                	aam    0x1
 790:	42                   	inc    edx
 791:	0e                   	push   cs
 792:	d8 01                	fadd   DWORD PTR [ecx]
 794:	45                   	inc    ebp
 795:	0e                   	push   cs
 796:	dc 01                	fadd   QWORD PTR [ecx]
 798:	41                   	inc    ecx
 799:	0e                   	push   cs
 79a:	e0 01                	loopne 79d <.eh_frame+0x79d>
 79c:	46                   	inc    esi
 79d:	0e                   	push   cs
 79e:	dc 01                	fadd   QWORD PTR [ecx]
 7a0:	41                   	inc    ecx
 7a1:	0e                   	push   cs
 7a2:	d8 01                	fadd   DWORD PTR [ecx]
 7a4:	45                   	inc    ebp
 7a5:	0e                   	push   cs
 7a6:	dc 01                	fadd   QWORD PTR [ecx]
 7a8:	45                   	inc    ebp
 7a9:	0e                   	push   cs
 7aa:	e0 01                	loopne 7ad <.eh_frame+0x7ad>
 7ac:	4a                   	dec    edx
 7ad:	0e                   	push   cs
 7ae:	e4 01                	in     al,0x1
 7b0:	48                   	dec    eax
 7b1:	0e                   	push   cs
 7b2:	e8 01 46 0e ec       	call   ec0e4db8 <windows+0xec0e4198>
 7b7:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 7ba:	f0 01 68 0e          	lock add DWORD PTR [eax+0xe],ebp
 7be:	d0 01                	rol    BYTE PTR [ecx],1
 7c0:	62 0e                	bound  ecx,QWORD PTR [esi]
 7c2:	d4 01                	aam    0x1
 7c4:	42                   	inc    edx
 7c5:	0e                   	push   cs
 7c6:	d8 01                	fadd   DWORD PTR [ecx]
 7c8:	45                   	inc    ebp
 7c9:	0e                   	push   cs
 7ca:	dc 01                	fadd   QWORD PTR [ecx]
 7cc:	41                   	inc    ecx
 7cd:	0e                   	push   cs
 7ce:	e0 01                	loopne 7d1 <.eh_frame+0x7d1>
 7d0:	46                   	inc    esi
 7d1:	0e                   	push   cs
 7d2:	dc 01                	fadd   QWORD PTR [ecx]
 7d4:	41                   	inc    ecx
 7d5:	0e                   	push   cs
 7d6:	d8 01                	fadd   DWORD PTR [ecx]
 7d8:	45                   	inc    ebp
 7d9:	0e                   	push   cs
 7da:	dc 01                	fadd   QWORD PTR [ecx]
 7dc:	45                   	inc    ebp
 7dd:	0e                   	push   cs
 7de:	e0 01                	loopne 7e1 <.eh_frame+0x7e1>
 7e0:	46                   	inc    esi
 7e1:	0e                   	push   cs
 7e2:	dc 01                	fadd   QWORD PTR [ecx]
 7e4:	41                   	inc    ecx
 7e5:	0e                   	push   cs
 7e6:	d8 01                	fadd   DWORD PTR [ecx]
 7e8:	45                   	inc    ebp
 7e9:	0e                   	push   cs
 7ea:	dc 01                	fadd   QWORD PTR [ecx]
 7ec:	45                   	inc    ebp
 7ed:	0e                   	push   cs
 7ee:	e0 01                	loopne 7f1 <.eh_frame+0x7f1>
 7f0:	4a                   	dec    edx
 7f1:	0e                   	push   cs
 7f2:	d0 01                	rol    BYTE PTR [ecx],1
 7f4:	4b                   	dec    ebx
 7f5:	0e                   	push   cs
 7f6:	d4 01                	aam    0x1
 7f8:	42                   	inc    edx
 7f9:	0e                   	push   cs
 7fa:	d8 01                	fadd   DWORD PTR [ecx]
 7fc:	45                   	inc    ebp
 7fd:	0e                   	push   cs
 7fe:	dc 01                	fadd   QWORD PTR [ecx]
 800:	46                   	inc    esi
 801:	0e                   	push   cs
 802:	e0 01                	loopne 805 <.eh_frame+0x805>
 804:	46                   	inc    esi
 805:	0e                   	push   cs
 806:	dc 01                	fadd   QWORD PTR [ecx]
 808:	41                   	inc    ecx
 809:	0e                   	push   cs
 80a:	d8 01                	fadd   DWORD PTR [ecx]
 80c:	45                   	inc    ebp
 80d:	0e                   	push   cs
 80e:	dc 01                	fadd   QWORD PTR [ecx]
 810:	45                   	inc    ebp
 811:	0e                   	push   cs
 812:	e0 01                	loopne 815 <.eh_frame+0x815>
 814:	46                   	inc    esi
 815:	0e                   	push   cs
 816:	dc 01                	fadd   QWORD PTR [ecx]
 818:	41                   	inc    ecx
 819:	0e                   	push   cs
 81a:	d8 01                	fadd   DWORD PTR [ecx]
 81c:	45                   	inc    ebp
 81d:	0e                   	push   cs
 81e:	dc 01                	fadd   QWORD PTR [ecx]
 820:	45                   	inc    ebp
 821:	0e                   	push   cs
 822:	e0 01                	loopne 825 <.eh_frame+0x825>
 824:	4a                   	dec    edx
 825:	0e                   	push   cs
 826:	d0 01                	rol    BYTE PTR [ecx],1
 828:	4b                   	dec    ebx
 829:	0e                   	push   cs
 82a:	d4 01                	aam    0x1
 82c:	42                   	inc    edx
 82d:	0e                   	push   cs
 82e:	d8 01                	fadd   DWORD PTR [ecx]
 830:	45                   	inc    ebp
 831:	0e                   	push   cs
 832:	dc 01                	fadd   QWORD PTR [ecx]
 834:	46                   	inc    esi
 835:	0e                   	push   cs
 836:	e0 01                	loopne 839 <.eh_frame+0x839>
 838:	46                   	inc    esi
 839:	0e                   	push   cs
 83a:	dc 01                	fadd   QWORD PTR [ecx]
 83c:	41                   	inc    ecx
 83d:	0e                   	push   cs
 83e:	d8 01                	fadd   DWORD PTR [ecx]
 840:	45                   	inc    ebp
 841:	0e                   	push   cs
 842:	dc 01                	fadd   QWORD PTR [ecx]
 844:	45                   	inc    ebp
 845:	0e                   	push   cs
 846:	e0 01                	loopne 849 <.eh_frame+0x849>
 848:	4a                   	dec    edx
 849:	0e                   	push   cs
 84a:	e4 01                	in     al,0x1
 84c:	45                   	inc    ebp
 84d:	0e                   	push   cs
 84e:	e8 01 4d 0e ec       	call   ec0e5554 <windows+0xec0e4934>
 853:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 856:	f0 01 02             	lock add DWORD PTR [edx],eax
 859:	6b 0e d8             	imul   ecx,DWORD PTR [esi],0xffffffd8
 85c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 85f:	dc 01                	fadd   QWORD PTR [ecx]
 861:	48                   	dec    eax
 862:	0e                   	push   cs
 863:	e0 01                	loopne 866 <.eh_frame+0x866>
 865:	4a                   	dec    edx
 866:	0e                   	push   cs
 867:	e4 01                	in     al,0x1
 869:	48                   	dec    eax
 86a:	0e                   	push   cs
 86b:	e8 01 46 0e ec       	call   ec0e4e71 <windows+0xec0e4251>
 870:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 873:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 877:	d0 01                	rol    BYTE PTR [ecx],1
 879:	02 4d 0e             	add    cl,BYTE PTR [ebp+0xe]
 87c:	d4 01                	aam    0x1
 87e:	42                   	inc    edx
 87f:	0e                   	push   cs
 880:	d8 01                	fadd   DWORD PTR [ecx]
 882:	41                   	inc    ecx
 883:	0e                   	push   cs
 884:	dc 01                	fadd   QWORD PTR [ecx]
 886:	44                   	inc    esp
 887:	0e                   	push   cs
 888:	e0 01                	loopne 88b <.eh_frame+0x88b>
 88a:	48                   	dec    eax
 88b:	0e                   	push   cs
 88c:	d0 01                	rol    BYTE PTR [ecx],1
 88e:	57                   	push   edi
 88f:	0e                   	push   cs
 890:	d8 01                	fadd   DWORD PTR [ecx]
 892:	45                   	inc    ebp
 893:	0e                   	push   cs
 894:	dc 01                	fadd   QWORD PTR [ecx]
 896:	42                   	inc    edx
 897:	0e                   	push   cs
 898:	e0 01                	loopne 89b <.eh_frame+0x89b>
 89a:	45                   	inc    ebp
 89b:	0e                   	push   cs
 89c:	e4 01                	in     al,0x1
 89e:	45                   	inc    ebp
 89f:	0e                   	push   cs
 8a0:	e8 01 45 0e ec       	call   ec0e4da6 <windows+0xec0e4186>
 8a5:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 8a8:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 8ac:	dc 01                	fadd   QWORD PTR [ecx]
 8ae:	45                   	inc    ebp
 8af:	0e                   	push   cs
 8b0:	e0 01                	loopne 8b3 <.eh_frame+0x8b3>
 8b2:	45                   	inc    ebp
 8b3:	0e                   	push   cs
 8b4:	e4 01                	in     al,0x1
 8b6:	45                   	inc    ebp
 8b7:	0e                   	push   cs
 8b8:	e8 01 41 0e ec       	call   ec0e49be <windows+0xec0e3d9e>
 8bd:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 8c0:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 8c4:	d0 01                	rol    BYTE PTR [ecx],1
 8c6:	4b                   	dec    ebx
 8c7:	0e                   	push   cs
 8c8:	d4 01                	aam    0x1
 8ca:	45                   	inc    ebp
 8cb:	0e                   	push   cs
 8cc:	d8 01                	fadd   DWORD PTR [ecx]
 8ce:	41                   	inc    ecx
 8cf:	0e                   	push   cs
 8d0:	dc 01                	fadd   QWORD PTR [ecx]
 8d2:	42                   	inc    edx
 8d3:	0e                   	push   cs
 8d4:	e0 01                	loopne 8d7 <.eh_frame+0x8d7>
 8d6:	50                   	push   eax
 8d7:	0e                   	push   cs
 8d8:	e4 01                	in     al,0x1
 8da:	45                   	inc    ebp
 8db:	0e                   	push   cs
 8dc:	e8 01 41 0e ec       	call   ec0e49e2 <windows+0xec0e3dc2>
 8e1:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 8e4:	f0 01 5e 0e          	lock add DWORD PTR [esi+0xe],ebx
 8e8:	d0 01                	rol    BYTE PTR [ecx],1
 8ea:	57                   	push   edi
 8eb:	0e                   	push   cs
 8ec:	d8 01                	fadd   DWORD PTR [ecx]
 8ee:	49                   	dec    ecx
 8ef:	0e                   	push   cs
 8f0:	dc 01                	fadd   QWORD PTR [ecx]
 8f2:	42                   	inc    edx
 8f3:	0e                   	push   cs
 8f4:	e0 01                	loopne 8f7 <.eh_frame+0x8f7>
 8f6:	42                   	inc    edx
 8f7:	0e                   	push   cs
 8f8:	e4 01                	in     al,0x1
 8fa:	42                   	inc    edx
 8fb:	0e                   	push   cs
 8fc:	e8 01 41 0e ec       	call   ec0e4a02 <windows+0xec0e3de2>
 901:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 904:	f0 01 4e 0e          	lock add DWORD PTR [esi+0xe],ecx
 908:	dc 01                	fadd   QWORD PTR [ecx]
 90a:	41                   	inc    ecx
 90b:	0e                   	push   cs
 90c:	e0 01                	loopne 90f <.eh_frame+0x90f>
 90e:	4d                   	dec    ebp
 90f:	0e                   	push   cs
 910:	e4 01                	in     al,0x1
 912:	41                   	inc    ecx
 913:	0e                   	push   cs
 914:	e8 01 41 0e ec       	call   ec0e4a1a <windows+0xec0e3dfa>
 919:	01 53 0e             	add    DWORD PTR [ebx+0xe],edx
 91c:	f0 01 4e 0e          	lock add DWORD PTR [esi+0xe],ecx
 920:	dc 01                	fadd   QWORD PTR [ecx]
 922:	41                   	inc    ecx
 923:	0e                   	push   cs
 924:	e0 01                	loopne 927 <.eh_frame+0x927>
 926:	48                   	dec    eax
 927:	0e                   	push   cs
 928:	d0 01                	rol    BYTE PTR [ecx],1
 92a:	5a                   	pop    edx
 92b:	0e                   	push   cs
 92c:	d4 01                	aam    0x1
 92e:	48                   	dec    eax
 92f:	0e                   	push   cs
 930:	d8 01                	fadd   DWORD PTR [ecx]
 932:	43                   	inc    ebx
 933:	0e                   	push   cs
 934:	dc 01                	fadd   QWORD PTR [ecx]
 936:	45                   	inc    ebp
 937:	0e                   	push   cs
 938:	e0 01                	loopne 93b <.eh_frame+0x93b>
 93a:	4c                   	dec    esp
 93b:	0e                   	push   cs
 93c:	d0 01                	rol    BYTE PTR [ecx],1
 93e:	02 8e 0e d4 01 45    	add    cl,BYTE PTR [esi+0x4501d40e]
 944:	0e                   	push   cs
 945:	d8 01                	fadd   DWORD PTR [ecx]
 947:	41                   	inc    ecx
 948:	0e                   	push   cs
 949:	dc 01                	fadd   QWORD PTR [ecx]
 94b:	45                   	inc    ebp
 94c:	0e                   	push   cs
 94d:	e0 01                	loopne 950 <.eh_frame+0x950>
 94f:	48                   	dec    eax
 950:	0e                   	push   cs
 951:	d0 01                	rol    BYTE PTR [ecx],1
 953:	02 40 0e             	add    al,BYTE PTR [eax+0xe]
 956:	d4 01                	aam    0x1
 958:	48                   	dec    eax
 959:	0e                   	push   cs
 95a:	d8 01                	fadd   DWORD PTR [ecx]
 95c:	41                   	inc    ecx
 95d:	0e                   	push   cs
 95e:	dc 01                	fadd   QWORD PTR [ecx]
 960:	41                   	inc    ecx
 961:	0e                   	push   cs
 962:	e0 01                	loopne 965 <.eh_frame+0x965>
 964:	4b                   	dec    ebx
 965:	0e                   	push   cs
 966:	d0 01                	rol    BYTE PTR [ecx],1
 968:	66 0e                	pushw  cs
 96a:	d4 01                	aam    0x1
 96c:	45                   	inc    ebp
 96d:	0e                   	push   cs
 96e:	d8 01                	fadd   DWORD PTR [ecx]
 970:	41                   	inc    ecx
 971:	0e                   	push   cs
 972:	dc 01                	fadd   QWORD PTR [ecx]
 974:	41                   	inc    ecx
 975:	0e                   	push   cs
 976:	e0 01                	loopne 979 <.eh_frame+0x979>
 978:	48                   	dec    eax
 979:	0e                   	push   cs
 97a:	d0 01                	rol    BYTE PTR [ecx],1
 97c:	02 86 0e d8 01 45    	add    al,BYTE PTR [esi+0x4501d80e]
 982:	0e                   	push   cs
 983:	dc 01                	fadd   QWORD PTR [ecx]
 985:	45                   	inc    ebp
 986:	0e                   	push   cs
 987:	e0 01                	loopne 98a <.eh_frame+0x98a>
 989:	48                   	dec    eax
 98a:	0e                   	push   cs
 98b:	d0 01                	rol    BYTE PTR [ecx],1
 98d:	48                   	dec    eax
 98e:	0e                   	push   cs
 98f:	d8 01                	fadd   DWORD PTR [ecx]
 991:	45                   	inc    ebp
 992:	0e                   	push   cs
 993:	dc 01                	fadd   QWORD PTR [ecx]
 995:	45                   	inc    ebp
 996:	0e                   	push   cs
 997:	e0 01                	loopne 99a <.eh_frame+0x99a>
 999:	48                   	dec    eax
 99a:	0e                   	push   cs
 99b:	d0 01                	rol    BYTE PTR [ecx],1
 99d:	7d 0e                	jge    9ad <.eh_frame+0x9ad>
 99f:	d8 01                	fadd   DWORD PTR [ecx]
 9a1:	45                   	inc    ebp
 9a2:	0e                   	push   cs
 9a3:	dc 01                	fadd   QWORD PTR [ecx]
 9a5:	45                   	inc    ebp
 9a6:	0e                   	push   cs
 9a7:	e0 01                	loopne 9aa <.eh_frame+0x9aa>
 9a9:	48                   	dec    eax
 9aa:	0e                   	push   cs
 9ab:	d0 01                	rol    BYTE PTR [ecx],1
 9ad:	48                   	dec    eax
 9ae:	0e                   	push   cs
 9af:	d8 01                	fadd   DWORD PTR [ecx]
 9b1:	45                   	inc    ebp
 9b2:	0e                   	push   cs
 9b3:	dc 01                	fadd   QWORD PTR [ecx]
 9b5:	45                   	inc    ebp
 9b6:	0e                   	push   cs
 9b7:	e0 01                	loopne 9ba <.eh_frame+0x9ba>
 9b9:	48                   	dec    eax
 9ba:	0e                   	push   cs
 9bb:	d0 01                	rol    BYTE PTR [ecx],1
 9bd:	02 a8 0e d8 01 45    	add    ch,BYTE PTR [eax+0x4501d80e]
 9c3:	0e                   	push   cs
 9c4:	dc 01                	fadd   QWORD PTR [ecx]
 9c6:	42                   	inc    edx
 9c7:	0e                   	push   cs
 9c8:	e0 01                	loopne 9cb <.eh_frame+0x9cb>
 9ca:	42                   	inc    edx
 9cb:	0e                   	push   cs
 9cc:	e4 01                	in     al,0x1
 9ce:	42                   	inc    edx
 9cf:	0e                   	push   cs
 9d0:	e8 01 41 0e ec       	call   ec0e4ad6 <windows+0xec0e3eb6>
 9d5:	01 4e 0e             	add    DWORD PTR [esi+0xe],ecx
 9d8:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 9dc:	d0 01                	rol    BYTE PTR [ecx],1
 9de:	02 4d 0e             	add    cl,BYTE PTR [ebp+0xe]
 9e1:	d8 01                	fadd   DWORD PTR [ecx]
 9e3:	45                   	inc    ebp
 9e4:	0e                   	push   cs
 9e5:	dc 01                	fadd   QWORD PTR [ecx]
 9e7:	42                   	inc    edx
 9e8:	0e                   	push   cs
 9e9:	e0 01                	loopne 9ec <.eh_frame+0x9ec>
 9eb:	42                   	inc    edx
 9ec:	0e                   	push   cs
 9ed:	e4 01                	in     al,0x1
 9ef:	45                   	inc    ebp
 9f0:	0e                   	push   cs
 9f1:	e8 01 41 0e ec       	call   ec0e4af7 <windows+0xec0e3ed7>
 9f6:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 9f9:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 9fd:	d0 01                	rol    BYTE PTR [ecx],1
 9ff:	60                   	pusha
 a00:	0e                   	push   cs
 a01:	d4 01                	aam    0x1
 a03:	54                   	push   esp
 a04:	0e                   	push   cs
 a05:	d8 01                	fadd   DWORD PTR [ecx]
 a07:	4b                   	dec    ebx
 a08:	0e                   	push   cs
 a09:	dc 01                	fadd   QWORD PTR [ecx]
 a0b:	41                   	inc    ecx
 a0c:	0e                   	push   cs
 a0d:	e0 01                	loopne a10 <.eh_frame+0xa10>
 a0f:	4b                   	dec    ebx
 a10:	0e                   	push   cs
 a11:	d0 01                	rol    BYTE PTR [ecx],1
 a13:	02 99 0e dc 01 46    	add    bl,BYTE PTR [ecx+0x4601dc0e]
 a19:	0e                   	push   cs
 a1a:	e0 01                	loopne a1d <.eh_frame+0xa1d>
 a1c:	48                   	dec    eax
 a1d:	0e                   	push   cs
 a1e:	d0 01                	rol    BYTE PTR [ecx],1
 a20:	02 5e 0e             	add    bl,BYTE PTR [esi+0xe]
 a23:	dc 01                	fadd   QWORD PTR [ecx]
 a25:	4e                   	dec    esi
 a26:	0e                   	push   cs
 a27:	e0 01                	loopne a2a <.eh_frame+0xa2a>
 a29:	54                   	push   esp
 a2a:	0e                   	push   cs
 a2b:	e4 01                	in     al,0x1
 a2d:	45                   	inc    ebp
 a2e:	0e                   	push   cs
 a2f:	e8 01 56 0e ec       	call   ec0e6035 <windows+0xec0e5415>
 a34:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 a37:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 a3b:	d8 01                	fadd   DWORD PTR [ecx]
 a3d:	48                   	dec    eax
 a3e:	0e                   	push   cs
 a3f:	dc 01                	fadd   QWORD PTR [ecx]
 a41:	42                   	inc    edx
 a42:	0e                   	push   cs
 a43:	e0 01                	loopne a46 <.eh_frame+0xa46>
 a45:	42                   	inc    edx
 a46:	0e                   	push   cs
 a47:	e4 01                	in     al,0x1
 a49:	45                   	inc    ebp
 a4a:	0e                   	push   cs
 a4b:	e8 01 41 0e ec       	call   ec0e4b51 <windows+0xec0e3f31>
 a50:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
 a53:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 a57:	d0 01                	rol    BYTE PTR [ecx],1
 a59:	47                   	inc    edi
 a5a:	0e                   	push   cs
 a5b:	d4 01                	aam    0x1
 a5d:	41                   	inc    ecx
 a5e:	0e                   	push   cs
 a5f:	d8 01                	fadd   DWORD PTR [ecx]
 a61:	45                   	inc    ebp
 a62:	0e                   	push   cs
 a63:	dc 01                	fadd   QWORD PTR [ecx]
 a65:	42                   	inc    edx
 a66:	0e                   	push   cs
 a67:	e0 01                	loopne a6a <.eh_frame+0xa6a>
 a69:	42                   	inc    edx
 a6a:	0e                   	push   cs
 a6b:	e4 01                	in     al,0x1
 a6d:	41                   	inc    ecx
 a6e:	0e                   	push   cs
 a6f:	e8 01 44 0e ec       	call   ec0e4e75 <windows+0xec0e4255>
 a74:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 a77:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 a7b:	d0 01                	rol    BYTE PTR [ecx],1
 a7d:	48                   	dec    eax
 a7e:	0e                   	push   cs
 a7f:	dc 01                	fadd   QWORD PTR [ecx]
 a81:	42                   	inc    edx
 a82:	0e                   	push   cs
 a83:	e0 01                	loopne a86 <.eh_frame+0xa86>
 a85:	48                   	dec    eax
 a86:	0e                   	push   cs
 a87:	d0 01                	rol    BYTE PTR [ecx],1
 a89:	6d                   	ins    DWORD PTR es:[edi],dx
 a8a:	0e                   	push   cs
 a8b:	dc 01                	fadd   QWORD PTR [ecx]
 a8d:	45                   	inc    ebp
 a8e:	0e                   	push   cs
 a8f:	e0 01                	loopne a92 <.eh_frame+0xa92>
 a91:	4a                   	dec    edx
 a92:	0e                   	push   cs
 a93:	e4 01                	in     al,0x1
 a95:	45                   	inc    ebp
 a96:	0e                   	push   cs
 a97:	e8 01 41 0e ec       	call   ec0e4b9d <windows+0xec0e3f7d>
 a9c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 a9f:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 aa3:	d0 01                	rol    BYTE PTR [ecx],1
 aa5:	00 00                	add    BYTE PTR [eax],al
	...
