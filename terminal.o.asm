
terminal.o:     file format elf32-i386


Disassembly of section .text:

00000000 <tprint>:
       0:	55                   	push   ebp
       1:	57                   	push   edi
       2:	56                   	push   esi
       3:	89 c6                	mov    esi,eax
       5:	53                   	push   ebx
       6:	83 ec 1c             	sub    esp,0x1c
       9:	8b 80 98 07 00 00    	mov    eax,DWORD PTR [eax+0x798]
       f:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
      13:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
      17:	83 f8 17             	cmp    eax,0x17
      1a:	7e 64                	jle    80 <tprint+0x80>
      1c:	89 f5                	mov    ebp,esi
      1e:	8d be 38 07 00 00    	lea    edi,[esi+0x738]
      24:	8d 9e eb 06 00 00    	lea    ebx,[esi+0x6eb]
      2a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
      30:	83 ec 04             	sub    esp,0x4
      33:	89 e8                	mov    eax,ebp
      35:	83 c5 4d             	add    ebp,0x4d
      38:	83 c7 04             	add    edi,0x4
      3b:	6a 4d                	push   0x4d
      3d:	55                   	push   ebp
      3e:	50                   	push   eax
      3f:	e8 fc ff ff ff       	call   40 <tprint+0x40>
      44:	8b 07                	mov    eax,DWORD PTR [edi]
      46:	83 c4 10             	add    esp,0x10
      49:	89 47 fc             	mov    DWORD PTR [edi-0x4],eax
      4c:	39 dd                	cmp    ebp,ebx
      4e:	75 e0                	jne    30 <tprint+0x30>
      50:	83 ec 04             	sub    esp,0x4
      53:	6a 4c                	push   0x4c
      55:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
      59:	55                   	push   ebp
      5a:	e8 fc ff ff ff       	call   5b <tprint+0x5b>
      5f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
      63:	83 c4 10             	add    esp,0x10
      66:	c6 86 37 07 00 00 00 	mov    BYTE PTR [esi+0x737],0x0
      6d:	89 86 94 07 00 00    	mov    DWORD PTR [esi+0x794],eax
      73:	83 c4 1c             	add    esp,0x1c
      76:	5b                   	pop    ebx
      77:	5e                   	pop    esi
      78:	5f                   	pop    edi
      79:	5d                   	pop    ebp
      7a:	c3                   	ret
      7b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
      80:	6b c0 4d             	imul   eax,eax,0x4d
      83:	83 ec 04             	sub    esp,0x4
      86:	6a 4c                	push   0x4c
      88:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
      8c:	01 f0                	add    eax,esi
      8e:	50                   	push   eax
      8f:	e8 fc ff ff ff       	call   90 <tprint+0x90>
      94:	8b 86 98 07 00 00    	mov    eax,DWORD PTR [esi+0x798]
      9a:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
      9e:	83 c4 10             	add    esp,0x10
      a1:	6b d0 4d             	imul   edx,eax,0x4d
      a4:	c6 44 16 4c 00       	mov    BYTE PTR [esi+edx*1+0x4c],0x0
      a9:	89 8c 86 38 07 00 00 	mov    DWORD PTR [esi+eax*4+0x738],ecx
      b0:	83 c0 01             	add    eax,0x1
      b3:	89 86 98 07 00 00    	mov    DWORD PTR [esi+0x798],eax
      b9:	83 c4 1c             	add    esp,0x1c
      bc:	5b                   	pop    ebx
      bd:	5e                   	pop    esi
      be:	5f                   	pop    edi
      bf:	5d                   	pop    ebp
      c0:	c3                   	ret
      c1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
      c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      cf:	00 

000000d0 <cmd_sysinfo>:
      d0:	53                   	push   ebx
      d1:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
      d6:	89 c3                	mov    ebx,eax
      d8:	ba 00 00 00 00       	mov    edx,0x0
      dd:	83 ec 08             	sub    esp,0x8
      e0:	e8 1b ff ff ff       	call   0 <tprint>
      e5:	89 d8                	mov    eax,ebx
      e7:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
      ec:	ba 28 00 00 00       	mov    edx,0x28
      f1:	e8 0a ff ff ff       	call   0 <tprint>
      f6:	89 d8                	mov    eax,ebx
      f8:	b9 ec c7 74 00       	mov    ecx,0x74c7ec
      fd:	ba 50 00 00 00       	mov    edx,0x50
     102:	e8 f9 fe ff ff       	call   0 <tprint>
     107:	89 d8                	mov    eax,ebx
     109:	b9 ec c7 74 00       	mov    ecx,0x74c7ec
     10e:	ba 78 00 00 00       	mov    edx,0x78
     113:	e8 e8 fe ff ff       	call   0 <tprint>
     118:	89 d8                	mov    eax,ebx
     11a:	b9 fe be b4 00       	mov    ecx,0xb4befe
     11f:	ba a4 00 00 00       	mov    edx,0xa4
     124:	e8 d7 fe ff ff       	call   0 <tprint>
     129:	89 d8                	mov    eax,ebx
     12b:	b9 fe be b4 00       	mov    ecx,0xb4befe
     130:	ba cc 00 00 00       	mov    edx,0xcc
     135:	e8 c6 fe ff ff       	call   0 <tprint>
     13a:	89 d8                	mov    eax,ebx
     13c:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     141:	ba 00 00 00 00       	mov    edx,0x0
     146:	e8 b5 fe ff ff       	call   0 <tprint>
     14b:	89 d8                	mov    eax,ebx
     14d:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     152:	ba 01 00 00 00       	mov    edx,0x1
     157:	e8 a4 fe ff ff       	call   0 <tprint>
     15c:	89 d8                	mov    eax,ebx
     15e:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     163:	ba 17 00 00 00       	mov    edx,0x17
     168:	e8 93 fe ff ff       	call   0 <tprint>
     16d:	89 d8                	mov    eax,ebx
     16f:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     174:	ba 32 00 00 00       	mov    edx,0x32
     179:	e8 82 fe ff ff       	call   0 <tprint>
     17e:	89 d8                	mov    eax,ebx
     180:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     185:	ba 46 00 00 00       	mov    edx,0x46
     18a:	e8 71 fe ff ff       	call   0 <tprint>
     18f:	89 d8                	mov    eax,ebx
     191:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     196:	ba 63 00 00 00       	mov    edx,0x63
     19b:	e8 60 fe ff ff       	call   0 <tprint>
     1a0:	89 d8                	mov    eax,ebx
     1a2:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     1a7:	ba 7e 00 00 00       	mov    edx,0x7e
     1ac:	e8 4f fe ff ff       	call   0 <tprint>
     1b1:	89 d8                	mov    eax,ebx
     1b3:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     1b8:	ba 9b 00 00 00       	mov    edx,0x9b
     1bd:	e8 3e fe ff ff       	call   0 <tprint>
     1c2:	83 c4 08             	add    esp,0x8
     1c5:	89 d8                	mov    eax,ebx
     1c7:	b9 f7 a6 cb 00       	mov    ecx,0xcba6f7
     1cc:	ba b6 00 00 00       	mov    edx,0xb6
     1d1:	5b                   	pop    ebx
     1d2:	e9 29 fe ff ff       	jmp    0 <tprint>
     1d7:	90                   	nop
     1d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     1df:	00 

000001e0 <cmd_mem>:
     1e0:	53                   	push   ebx
     1e1:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     1e6:	89 c3                	mov    ebx,eax
     1e8:	ba ec 00 00 00       	mov    edx,0xec
     1ed:	83 ec 08             	sub    esp,0x8
     1f0:	e8 0b fe ff ff       	call   0 <tprint>
     1f5:	89 d8                	mov    eax,ebx
     1f7:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     1fc:	ba d2 00 00 00       	mov    edx,0xd2
     201:	e8 fa fd ff ff       	call   0 <tprint>
     206:	89 d8                	mov    eax,ebx
     208:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     20d:	ba 14 01 00 00       	mov    edx,0x114
     212:	e8 e9 fd ff ff       	call   0 <tprint>
     217:	83 c4 08             	add    esp,0x8
     21a:	89 d8                	mov    eax,ebx
     21c:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     221:	ba e8 00 00 00       	mov    edx,0xe8
     226:	5b                   	pop    ebx
     227:	e9 d4 fd ff ff       	jmp    0 <tprint>
     22c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000230 <cmd_cowsay>:
     230:	55                   	push   ebp
     231:	57                   	push   edi
     232:	89 c7                	mov    edi,eax
     234:	56                   	push   esi
     235:	be fd 00 00 00       	mov    esi,0xfd
     23a:	53                   	push   ebx
     23b:	83 ec 6c             	sub    esp,0x6c
     23e:	85 d2                	test   edx,edx
     240:	74 06                	je     248 <cmd_cowsay+0x18>
     242:	80 3a 00             	cmp    BYTE PTR [edx],0x0
     245:	0f 45 f2             	cmovne esi,edx
     248:	83 ec 0c             	sub    esp,0xc
     24b:	bb 32 00 00 00       	mov    ebx,0x32
     250:	56                   	push   esi
     251:	e8 fc ff ff ff       	call   252 <cmd_cowsay+0x22>
     256:	c6 44 24 28 20       	mov    BYTE PTR [esp+0x28],0x20
     25b:	39 d8                	cmp    eax,ebx
     25d:	89 c5                	mov    ebp,eax
     25f:	0f 4e d8             	cmovle ebx,eax
     262:	83 c4 10             	add    esp,0x10
     265:	89 d8                	mov    eax,ebx
     267:	83 c0 01             	add    eax,0x1
     26a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     26e:	78 2e                	js     29e <cmd_cowsay+0x6e>
     270:	8d 54 1c 1b          	lea    edx,[esp+ebx*1+0x1b]
     274:	8d 44 24 19          	lea    eax,[esp+0x19]
     278:	f6 c3 01             	test   bl,0x1
     27b:	74 13                	je     290 <cmd_cowsay+0x60>
     27d:	c6 00 5f             	mov    BYTE PTR [eax],0x5f
     280:	8d 44 24 1a          	lea    eax,[esp+0x1a]
     284:	39 d0                	cmp    eax,edx
     286:	74 16                	je     29e <cmd_cowsay+0x6e>
     288:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     28f:	00 
     290:	c6 00 5f             	mov    BYTE PTR [eax],0x5f
     293:	83 c0 02             	add    eax,0x2
     296:	c6 40 ff 5f          	mov    BYTE PTR [eax-0x1],0x5f
     29a:	39 d0                	cmp    eax,edx
     29c:	75 f2                	jne    290 <cmd_cowsay+0x60>
     29e:	89 f8                	mov    eax,edi
     2a0:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     2a5:	8d 54 24 18          	lea    edx,[esp+0x18]
     2a9:	c6 44 1c 1b 00       	mov    BYTE PTR [esp+ebx*1+0x1b],0x0
     2ae:	e8 4d fd ff ff       	call   0 <tprint>
     2b3:	b8 3c 20 00 00       	mov    eax,0x203c
     2b8:	66 89 44 24 18       	mov    WORD PTR [esp+0x18],ax
     2bd:	85 ed                	test   ebp,ebp
     2bf:	0f 8e db 00 00 00    	jle    3a0 <cmd_cowsay+0x170>
     2c5:	31 c0                	xor    eax,eax
     2c7:	90                   	nop
     2c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     2cf:	00 
     2d0:	0f b6 14 06          	movzx  edx,BYTE PTR [esi+eax*1]
     2d4:	88 54 04 1a          	mov    BYTE PTR [esp+eax*1+0x1a],dl
     2d8:	83 c0 01             	add    eax,0x1
     2db:	39 c3                	cmp    ebx,eax
     2dd:	7f f1                	jg     2d0 <cmd_cowsay+0xa0>
     2df:	b8 20 3e 00 00       	mov    eax,0x3e20
     2e4:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     2e9:	8d 54 24 18          	lea    edx,[esp+0x18]
     2ed:	c6 44 1c 1c 00       	mov    BYTE PTR [esp+ebx*1+0x1c],0x0
     2f2:	66 89 44 1c 1a       	mov    WORD PTR [esp+ebx*1+0x1a],ax
     2f7:	89 f8                	mov    eax,edi
     2f9:	e8 02 fd ff ff       	call   0 <tprint>
     2fe:	c6 44 24 18 20       	mov    BYTE PTR [esp+0x18],0x20
     303:	8d 54 1c 1b          	lea    edx,[esp+ebx*1+0x1b]
     307:	8d 44 24 19          	lea    eax,[esp+0x19]
     30b:	f6 c3 01             	test   bl,0x1
     30e:	74 10                	je     320 <cmd_cowsay+0xf0>
     310:	c6 00 2d             	mov    BYTE PTR [eax],0x2d
     313:	8d 44 24 1a          	lea    eax,[esp+0x1a]
     317:	39 c2                	cmp    edx,eax
     319:	74 13                	je     32e <cmd_cowsay+0xfe>
     31b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     320:	c6 00 2d             	mov    BYTE PTR [eax],0x2d
     323:	83 c0 02             	add    eax,0x2
     326:	c6 40 ff 2d          	mov    BYTE PTR [eax-0x1],0x2d
     32a:	39 c2                	cmp    edx,eax
     32c:	75 f2                	jne    320 <cmd_cowsay+0xf0>
     32e:	8d 54 24 18          	lea    edx,[esp+0x18]
     332:	89 f8                	mov    eax,edi
     334:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     339:	c6 44 1c 1b 00       	mov    BYTE PTR [esp+ebx*1+0x1b],0x0
     33e:	e8 bd fc ff ff       	call   0 <tprint>
     343:	89 f8                	mov    eax,edi
     345:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     34a:	ba 0d 01 00 00       	mov    edx,0x10d
     34f:	e8 ac fc ff ff       	call   0 <tprint>
     354:	89 f8                	mov    eax,edi
     356:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     35b:	ba 1e 01 00 00       	mov    edx,0x11e
     360:	e8 9b fc ff ff       	call   0 <tprint>
     365:	89 f8                	mov    eax,edi
     367:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     36c:	ba 37 01 00 00       	mov    edx,0x137
     371:	e8 8a fc ff ff       	call   0 <tprint>
     376:	89 f8                	mov    eax,edi
     378:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     37d:	ba 54 01 00 00       	mov    edx,0x154
     382:	e8 79 fc ff ff       	call   0 <tprint>
     387:	89 f8                	mov    eax,edi
     389:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     38e:	ba 6e 01 00 00       	mov    edx,0x16e
     393:	e8 68 fc ff ff       	call   0 <tprint>
     398:	83 c4 6c             	add    esp,0x6c
     39b:	5b                   	pop    ebx
     39c:	5e                   	pop    esi
     39d:	5f                   	pop    edi
     39e:	5d                   	pop    ebp
     39f:	c3                   	ret
     3a0:	ba 20 3e 00 00       	mov    edx,0x3e20
     3a5:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     3aa:	89 f8                	mov    eax,edi
     3ac:	c6 44 1c 1c 00       	mov    BYTE PTR [esp+ebx*1+0x1c],0x0
     3b1:	66 89 54 1c 1a       	mov    WORD PTR [esp+ebx*1+0x1a],dx
     3b6:	8d 54 24 18          	lea    edx,[esp+0x18]
     3ba:	e8 41 fc ff ff       	call   0 <tprint>
     3bf:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
     3c3:	c6 44 24 18 20       	mov    BYTE PTR [esp+0x18],0x20
     3c8:	85 c9                	test   ecx,ecx
     3ca:	0f 88 5e ff ff ff    	js     32e <cmd_cowsay+0xfe>
     3d0:	e9 2e ff ff ff       	jmp    303 <cmd_cowsay+0xd3>
     3d5:	8d 76 00             	lea    esi,[esi+0x0]
     3d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     3df:	00 

000003e0 <cmd_ls>:
     3e0:	56                   	push   esi
     3e1:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
     3e6:	89 d6                	mov    esi,edx
     3e8:	ba 88 01 00 00       	mov    edx,0x188
     3ed:	53                   	push   ebx
     3ee:	89 c3                	mov    ebx,eax
     3f0:	83 ec 04             	sub    esp,0x4
     3f3:	e8 08 fc ff ff       	call   0 <tprint>
     3f8:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
     3fd:	ba 9c 01 00 00       	mov    edx,0x19c
     402:	89 d8                	mov    eax,ebx
     404:	e8 f7 fb ff ff       	call   0 <tprint>
     409:	83 ec 08             	sub    esp,0x8
     40c:	68 b1 01 00 00       	push   0x1b1
     411:	56                   	push   esi
     412:	e8 fc ff ff ff       	call   413 <cmd_ls+0x33>
     417:	83 c4 10             	add    esp,0x10
     41a:	85 c0                	test   eax,eax
     41c:	74 05                	je     423 <cmd_ls+0x43>
     41e:	80 3e 00             	cmp    BYTE PTR [esi],0x0
     421:	75 44                	jne    467 <cmd_ls+0x87>
     423:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     428:	ba 38 01 00 00       	mov    edx,0x138
     42d:	89 d8                	mov    eax,ebx
     42f:	e8 cc fb ff ff       	call   0 <tprint>
     434:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
     439:	ba 64 01 00 00       	mov    edx,0x164
     43e:	89 d8                	mov    eax,ebx
     440:	e8 bb fb ff ff       	call   0 <tprint>
     445:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     44a:	ba 90 01 00 00       	mov    edx,0x190
     44f:	89 d8                	mov    eax,ebx
     451:	e8 aa fb ff ff       	call   0 <tprint>
     456:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     45b:	ba bc 01 00 00       	mov    edx,0x1bc
     460:	89 d8                	mov    eax,ebx
     462:	e8 99 fb ff ff       	call   0 <tprint>
     467:	83 c4 04             	add    esp,0x4
     46a:	89 d8                	mov    eax,ebx
     46c:	b9 86 70 6c 00       	mov    ecx,0x6c7086
     471:	ba e8 01 00 00       	mov    edx,0x1e8
     476:	5b                   	pop    ebx
     477:	5e                   	pop    esi
     478:	e9 83 fb ff ff       	jmp    0 <tprint>
     47d:	8d 76 00             	lea    esi,[esi+0x0]

00000480 <cmd_time>:
     480:	55                   	push   ebp
     481:	89 c5                	mov    ebp,eax
     483:	57                   	push   edi
     484:	56                   	push   esi
     485:	53                   	push   ebx
     486:	83 ec 4c             	sub    esp,0x4c
     489:	c7 44 24 18 20 20 00 	mov    DWORD PTR [esp+0x18],0x2020
     490:	00 
     491:	8d 5c 24 18          	lea    ebx,[esp+0x18]
     495:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
     49c:	00 
     49d:	c7 44 24 20 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
     4a4:	00 
     4a5:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
     4ac:	00 
     4ad:	c7 44 24 28 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
     4b4:	00 
     4b5:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
     4bc:	00 
     4bd:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
     4c4:	00 
     4c5:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
     4cc:	00 
     4cd:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
     4d4:	00 
     4d5:	c7 44 24 3c 00 00 00 	mov    DWORD PTR [esp+0x3c],0x0
     4dc:	00 
     4dd:	e8 fc ff ff ff       	call   4de <cmd_time+0x5e>
     4e2:	89 c6                	mov    esi,eax
     4e4:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
     4e8:	e8 fc ff ff ff       	call   4e9 <cmd_time+0x69>
     4ed:	88 44 24 0e          	mov    BYTE PTR [esp+0xe],al
     4f1:	e8 fc ff ff ff       	call   4f2 <cmd_time+0x72>
     4f6:	89 c7                	mov    edi,eax
     4f8:	89 f0                	mov    eax,esi
     4fa:	3c 09                	cmp    al,0x9
     4fc:	0f 86 9e 00 00 00    	jbe    5a0 <cmd_time+0x120>
     502:	83 ec 04             	sub    esp,0x4
     505:	6a 0a                	push   0xa
     507:	8d 74 24 1c          	lea    esi,[esp+0x1c]
     50b:	56                   	push   esi
     50c:	0f b6 44 24 1b       	movzx  eax,BYTE PTR [esp+0x1b]
     511:	50                   	push   eax
     512:	e8 fc ff ff ff       	call   513 <cmd_time+0x93>
     517:	59                   	pop    ecx
     518:	58                   	pop    eax
     519:	56                   	push   esi
     51a:	53                   	push   ebx
     51b:	e8 fc ff ff ff       	call   51c <cmd_time+0x9c>
     520:	58                   	pop    eax
     521:	5a                   	pop    edx
     522:	68 b5 01 00 00       	push   0x1b5
     527:	53                   	push   ebx
     528:	e8 fc ff ff ff       	call   529 <cmd_time+0xa9>
     52d:	83 c4 10             	add    esp,0x10
     530:	80 7c 24 0e 09       	cmp    BYTE PTR [esp+0xe],0x9
     535:	0f 86 9d 00 00 00    	jbe    5d8 <cmd_time+0x158>
     53b:	83 ec 04             	sub    esp,0x4
     53e:	6a 0a                	push   0xa
     540:	56                   	push   esi
     541:	0f b6 44 24 1a       	movzx  eax,BYTE PTR [esp+0x1a]
     546:	50                   	push   eax
     547:	e8 fc ff ff ff       	call   548 <cmd_time+0xc8>
     54c:	59                   	pop    ecx
     54d:	58                   	pop    eax
     54e:	56                   	push   esi
     54f:	53                   	push   ebx
     550:	e8 fc ff ff ff       	call   551 <cmd_time+0xd1>
     555:	58                   	pop    eax
     556:	5a                   	pop    edx
     557:	68 b5 01 00 00       	push   0x1b5
     55c:	53                   	push   ebx
     55d:	e8 fc ff ff ff       	call   55e <cmd_time+0xde>
     562:	89 f8                	mov    eax,edi
     564:	83 c4 10             	add    esp,0x10
     567:	3c 09                	cmp    al,0x9
     569:	76 55                	jbe    5c0 <cmd_time+0x140>
     56b:	89 f8                	mov    eax,edi
     56d:	83 ec 04             	sub    esp,0x4
     570:	0f b6 c0             	movzx  eax,al
     573:	6a 0a                	push   0xa
     575:	56                   	push   esi
     576:	50                   	push   eax
     577:	e8 fc ff ff ff       	call   578 <cmd_time+0xf8>
     57c:	58                   	pop    eax
     57d:	5a                   	pop    edx
     57e:	56                   	push   esi
     57f:	53                   	push   ebx
     580:	e8 fc ff ff ff       	call   581 <cmd_time+0x101>
     585:	89 da                	mov    edx,ebx
     587:	89 e8                	mov    eax,ebp
     589:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
     58e:	e8 6d fa ff ff       	call   0 <tprint>
     593:	83 c4 5c             	add    esp,0x5c
     596:	5b                   	pop    ebx
     597:	5e                   	pop    esi
     598:	5f                   	pop    edi
     599:	5d                   	pop    ebp
     59a:	c3                   	ret
     59b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     5a0:	83 ec 08             	sub    esp,0x8
     5a3:	68 b3 01 00 00       	push   0x1b3
     5a8:	53                   	push   ebx
     5a9:	e8 fc ff ff ff       	call   5aa <cmd_time+0x12a>
     5ae:	83 c4 10             	add    esp,0x10
     5b1:	e9 4c ff ff ff       	jmp    502 <cmd_time+0x82>
     5b6:	66 90                	xchg   ax,ax
     5b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5bf:	00 
     5c0:	83 ec 08             	sub    esp,0x8
     5c3:	68 b3 01 00 00       	push   0x1b3
     5c8:	53                   	push   ebx
     5c9:	e8 fc ff ff ff       	call   5ca <cmd_time+0x14a>
     5ce:	83 c4 10             	add    esp,0x10
     5d1:	eb 98                	jmp    56b <cmd_time+0xeb>
     5d3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     5d8:	83 ec 08             	sub    esp,0x8
     5db:	68 b3 01 00 00       	push   0x1b3
     5e0:	53                   	push   ebx
     5e1:	e8 fc ff ff ff       	call   5e2 <cmd_time+0x162>
     5e6:	83 c4 10             	add    esp,0x10
     5e9:	e9 4d ff ff ff       	jmp    53b <cmd_time+0xbb>
     5ee:	66 90                	xchg   ax,ax

000005f0 <execute>:
     5f0:	55                   	push   ebp
     5f1:	57                   	push   edi
     5f2:	56                   	push   esi
     5f3:	89 d6                	mov    esi,edx
     5f5:	53                   	push   ebx
     5f6:	89 c3                	mov    ebx,eax
     5f8:	81 ec e4 00 00 00    	sub    esp,0xe4
     5fe:	c6 84 24 88 00 00 00 	mov    BYTE PTR [esp+0x88],0x0
     605:	00 
     606:	68 00 00 00 00       	push   0x0
     60b:	8d bc 24 8c 00 00 00 	lea    edi,[esp+0x8c]
     612:	57                   	push   edi
     613:	e8 fc ff ff ff       	call   614 <execute+0x24>
     618:	5d                   	pop    ebp
     619:	58                   	pop    eax
     61a:	68 b7 01 00 00       	push   0x1b7
     61f:	57                   	push   edi
     620:	e8 fc ff ff ff       	call   621 <execute+0x31>
     625:	58                   	pop    eax
     626:	5a                   	pop    edx
     627:	56                   	push   esi
     628:	57                   	push   edi
     629:	e8 fc ff ff ff       	call   62a <execute+0x3a>
     62e:	b9 9c 84 7f 00       	mov    ecx,0x7f849c
     633:	89 fa                	mov    edx,edi
     635:	89 d8                	mov    eax,ebx
     637:	e8 c4 f9 ff ff       	call   0 <tprint>
     63c:	83 c4 10             	add    esp,0x10
     63f:	80 3e 00             	cmp    BYTE PTR [esi],0x0
     642:	75 0c                	jne    650 <execute+0x60>
     644:	81 c4 dc 00 00 00    	add    esp,0xdc
     64a:	5b                   	pop    ebx
     64b:	5e                   	pop    esi
     64c:	5f                   	pop    edi
     64d:	5d                   	pop    ebp
     64e:	c3                   	ret
     64f:	90                   	nop
     650:	83 ec 08             	sub    esp,0x8
     653:	68 c2 01 00 00       	push   0x1c2
     658:	56                   	push   esi
     659:	e8 fc ff ff ff       	call   65a <execute+0x6a>
     65e:	83 c4 10             	add    esp,0x10
     661:	85 c0                	test   eax,eax
     663:	0f 85 a7 01 00 00    	jne    810 <execute+0x220>
     669:	89 d8                	mov    eax,ebx
     66b:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
     670:	ba c7 01 00 00       	mov    edx,0x1c7
     675:	e8 86 f9 ff ff       	call   0 <tprint>
     67a:	89 d8                	mov    eax,ebx
     67c:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     681:	ba db 01 00 00       	mov    edx,0x1db
     686:	e8 75 f9 ff ff       	call   0 <tprint>
     68b:	89 d8                	mov    eax,ebx
     68d:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     692:	ba f9 01 00 00       	mov    edx,0x1f9
     697:	e8 64 f9 ff ff       	call   0 <tprint>
     69c:	89 d8                	mov    eax,ebx
     69e:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6a3:	ba 12 02 00 00       	mov    edx,0x212
     6a8:	e8 53 f9 ff ff       	call   0 <tprint>
     6ad:	89 d8                	mov    eax,ebx
     6af:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6b4:	ba 2e 02 00 00       	mov    edx,0x22e
     6b9:	e8 42 f9 ff ff       	call   0 <tprint>
     6be:	89 d8                	mov    eax,ebx
     6c0:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6c5:	ba 46 02 00 00       	mov    edx,0x246
     6ca:	e8 31 f9 ff ff       	call   0 <tprint>
     6cf:	89 d8                	mov    eax,ebx
     6d1:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6d6:	ba 5f 02 00 00       	mov    edx,0x25f
     6db:	e8 20 f9 ff ff       	call   0 <tprint>
     6e0:	89 d8                	mov    eax,ebx
     6e2:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6e7:	ba 7b 02 00 00       	mov    edx,0x27b
     6ec:	e8 0f f9 ff ff       	call   0 <tprint>
     6f1:	89 d8                	mov    eax,ebx
     6f3:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     6f8:	ba 93 02 00 00       	mov    edx,0x293
     6fd:	e8 fe f8 ff ff       	call   0 <tprint>
     702:	89 d8                	mov    eax,ebx
     704:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     709:	ba ac 02 00 00       	mov    edx,0x2ac
     70e:	e8 ed f8 ff ff       	call   0 <tprint>
     713:	89 d8                	mov    eax,ebx
     715:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     71a:	ba c5 02 00 00       	mov    edx,0x2c5
     71f:	e8 dc f8 ff ff       	call   0 <tprint>
     724:	89 d8                	mov    eax,ebx
     726:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     72b:	ba 14 02 00 00       	mov    edx,0x214
     730:	e8 cb f8 ff ff       	call   0 <tprint>
     735:	89 d8                	mov    eax,ebx
     737:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     73c:	ba 44 02 00 00       	mov    edx,0x244
     741:	e8 ba f8 ff ff       	call   0 <tprint>
     746:	89 d8                	mov    eax,ebx
     748:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     74d:	ba 70 02 00 00       	mov    edx,0x270
     752:	e8 a9 f8 ff ff       	call   0 <tprint>
     757:	89 d8                	mov    eax,ebx
     759:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     75e:	ba de 02 00 00       	mov    edx,0x2de
     763:	e8 98 f8 ff ff       	call   0 <tprint>
     768:	89 d8                	mov    eax,ebx
     76a:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     76f:	ba f9 02 00 00       	mov    edx,0x2f9
     774:	e8 87 f8 ff ff       	call   0 <tprint>
     779:	89 d8                	mov    eax,ebx
     77b:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     780:	ba 10 03 00 00       	mov    edx,0x310
     785:	e8 76 f8 ff ff       	call   0 <tprint>
     78a:	89 d8                	mov    eax,ebx
     78c:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     791:	ba 28 03 00 00       	mov    edx,0x328
     796:	e8 65 f8 ff ff       	call   0 <tprint>
     79b:	89 d8                	mov    eax,ebx
     79d:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7a2:	ba 3e 03 00 00       	mov    edx,0x33e
     7a7:	e8 54 f8 ff ff       	call   0 <tprint>
     7ac:	89 d8                	mov    eax,ebx
     7ae:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7b3:	ba 4e 03 00 00       	mov    edx,0x34e
     7b8:	e8 43 f8 ff ff       	call   0 <tprint>
     7bd:	89 d8                	mov    eax,ebx
     7bf:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7c4:	ba 6a 03 00 00       	mov    edx,0x36a
     7c9:	e8 32 f8 ff ff       	call   0 <tprint>
     7ce:	89 d8                	mov    eax,ebx
     7d0:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7d5:	ba 90 02 00 00       	mov    edx,0x290
     7da:	e8 21 f8 ff ff       	call   0 <tprint>
     7df:	89 d8                	mov    eax,ebx
     7e1:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7e6:	ba 83 03 00 00       	mov    edx,0x383
     7eb:	e8 10 f8 ff ff       	call   0 <tprint>
     7f0:	89 d8                	mov    eax,ebx
     7f2:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     7f7:	ba 9d 03 00 00       	mov    edx,0x39d
     7fc:	e8 ff f7 ff ff       	call   0 <tprint>
     801:	81 c4 dc 00 00 00    	add    esp,0xdc
     807:	5b                   	pop    ebx
     808:	5e                   	pop    esi
     809:	5f                   	pop    edi
     80a:	5d                   	pop    ebp
     80b:	c3                   	ret
     80c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     810:	83 ec 08             	sub    esp,0x8
     813:	68 b6 03 00 00       	push   0x3b6
     818:	56                   	push   esi
     819:	e8 fc ff ff ff       	call   81a <execute+0x22a>
     81e:	83 c4 10             	add    esp,0x10
     821:	85 c0                	test   eax,eax
     823:	75 1b                	jne    840 <execute+0x250>
     825:	c7 83 98 07 00 00 00 	mov    DWORD PTR [ebx+0x798],0x0
     82c:	00 00 00 
     82f:	81 c4 dc 00 00 00    	add    esp,0xdc
     835:	5b                   	pop    ebx
     836:	5e                   	pop    esi
     837:	5f                   	pop    edi
     838:	5d                   	pop    ebp
     839:	c3                   	ret
     83a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     840:	83 ec 08             	sub    esp,0x8
     843:	68 bc 03 00 00       	push   0x3bc
     848:	56                   	push   esi
     849:	e8 fc ff ff ff       	call   84a <execute+0x25a>
     84e:	83 c4 10             	add    esp,0x10
     851:	85 c0                	test   eax,eax
     853:	74 43                	je     898 <execute+0x2a8>
     855:	83 ec 08             	sub    esp,0x8
     858:	68 c4 03 00 00       	push   0x3c4
     85d:	56                   	push   esi
     85e:	e8 fc ff ff ff       	call   85f <execute+0x26f>
     863:	83 c4 10             	add    esp,0x10
     866:	85 c0                	test   eax,eax
     868:	74 2e                	je     898 <execute+0x2a8>
     86a:	83 ec 08             	sub    esp,0x8
     86d:	68 ca 03 00 00       	push   0x3ca
     872:	56                   	push   esi
     873:	e8 fc ff ff ff       	call   874 <execute+0x284>
     878:	83 c4 10             	add    esp,0x10
     87b:	85 c0                	test   eax,eax
     87d:	75 29                	jne    8a8 <execute+0x2b8>
     87f:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     884:	ba d0 03 00 00       	mov    edx,0x3d0
     889:	89 d8                	mov    eax,ebx
     88b:	e8 70 f7 ff ff       	call   0 <tprint>
     890:	e9 af fd ff ff       	jmp    644 <execute+0x54>
     895:	8d 76 00             	lea    esi,[esi+0x0]
     898:	89 d8                	mov    eax,ebx
     89a:	e8 31 f8 ff ff       	call   d0 <cmd_sysinfo>
     89f:	e9 a0 fd ff ff       	jmp    644 <execute+0x54>
     8a4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     8a8:	83 ec 08             	sub    esp,0x8
     8ab:	68 ed 03 00 00       	push   0x3ed
     8b0:	56                   	push   esi
     8b1:	e8 fc ff ff ff       	call   8b2 <execute+0x2c2>
     8b6:	83 c4 10             	add    esp,0x10
     8b9:	85 c0                	test   eax,eax
     8bb:	75 16                	jne    8d3 <execute+0x2e3>
     8bd:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     8c2:	ba b0 02 00 00       	mov    edx,0x2b0
     8c7:	89 d8                	mov    eax,ebx
     8c9:	e8 32 f7 ff ff       	call   0 <tprint>
     8ce:	e9 71 fd ff ff       	jmp    644 <execute+0x54>
     8d3:	83 ec 08             	sub    esp,0x8
     8d6:	68 f6 03 00 00       	push   0x3f6
     8db:	56                   	push   esi
     8dc:	e8 fc ff ff ff       	call   8dd <execute+0x2ed>
     8e1:	83 c4 10             	add    esp,0x10
     8e4:	85 c0                	test   eax,eax
     8e6:	75 0c                	jne    8f4 <execute+0x304>
     8e8:	89 d8                	mov    eax,ebx
     8ea:	e8 91 fb ff ff       	call   480 <cmd_time>
     8ef:	e9 50 fd ff ff       	jmp    644 <execute+0x54>
     8f4:	83 ec 08             	sub    esp,0x8
     8f7:	68 fb 03 00 00       	push   0x3fb
     8fc:	56                   	push   esi
     8fd:	e8 fc ff ff ff       	call   8fe <execute+0x30e>
     902:	83 c4 10             	add    esp,0x10
     905:	85 c0                	test   eax,eax
     907:	0f 85 f4 00 00 00    	jne    a01 <execute+0x411>
     90d:	c7 44 24 33 20 20 75 	mov    DWORD PTR [esp+0x33],0x70752020
     914:	70 
     915:	c7 44 24 37 20 00 00 	mov    DWORD PTR [esp+0x37],0x20
     91c:	00 
     91d:	c7 44 24 3b 00 00 00 	mov    DWORD PTR [esp+0x3b],0x0
     924:	00 
     925:	c7 44 24 3f 00 00 00 	mov    DWORD PTR [esp+0x3f],0x0
     92c:	00 
     92d:	c7 44 24 43 00 00 00 	mov    DWORD PTR [esp+0x43],0x0
     934:	00 
     935:	c7 44 24 47 00 00 00 	mov    DWORD PTR [esp+0x47],0x0
     93c:	00 
     93d:	c7 44 24 4b 00 00 00 	mov    DWORD PTR [esp+0x4b],0x0
     944:	00 
     945:	c7 44 24 4f 00 00 00 	mov    DWORD PTR [esp+0x4f],0x0
     94c:	00 
     94d:	c7 44 24 53 00 00 00 	mov    DWORD PTR [esp+0x53],0x0
     954:	00 
     955:	c7 44 24 57 00 00 00 	mov    DWORD PTR [esp+0x57],0x0
     95c:	00 
     95d:	c7 44 24 5b 00 00 00 	mov    DWORD PTR [esp+0x5b],0x0
     964:	00 
     965:	c7 44 24 5f 00 00 00 	mov    DWORD PTR [esp+0x5f],0x0
     96c:	00 
     96d:	e8 fc ff ff ff       	call   96e <execute+0x37e>
     972:	83 ec 04             	sub    esp,0x4
     975:	ba 1f 85 eb 51       	mov    edx,0x51eb851f
     97a:	6a 0a                	push   0xa
     97c:	f7 e2                	mul    edx
     97e:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     982:	89 d6                	mov    esi,edx
     984:	50                   	push   eax
     985:	c1 ee 05             	shr    esi,0x5
     988:	b8 89 88 88 88       	mov    eax,0x88888889
     98d:	f7 e6                	mul    esi
     98f:	c1 ea 05             	shr    edx,0x5
     992:	52                   	push   edx
     993:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     997:	e8 fc ff ff ff       	call   998 <execute+0x3a8>
     99c:	58                   	pop    eax
     99d:	5a                   	pop    edx
     99e:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     9a2:	50                   	push   eax
     9a3:	8d 7c 24 3f          	lea    edi,[esp+0x3f]
     9a7:	57                   	push   edi
     9a8:	e8 fc ff ff ff       	call   9a9 <execute+0x3b9>
     9ad:	59                   	pop    ecx
     9ae:	5d                   	pop    ebp
     9af:	68 02 04 00 00       	push   0x402
     9b4:	57                   	push   edi
     9b5:	e8 fc ff ff ff       	call   9b6 <execute+0x3c6>
     9ba:	83 c4 0c             	add    esp,0xc
     9bd:	6a 0a                	push   0xa
     9bf:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     9c3:	50                   	push   eax
     9c4:	6b 54 24 14 3c       	imul   edx,DWORD PTR [esp+0x14],0x3c
     9c9:	29 d6                	sub    esi,edx
     9cb:	56                   	push   esi
     9cc:	e8 fc ff ff ff       	call   9cd <execute+0x3dd>
     9d1:	58                   	pop    eax
     9d2:	5a                   	pop    edx
     9d3:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     9d7:	50                   	push   eax
     9d8:	57                   	push   edi
     9d9:	e8 fc ff ff ff       	call   9da <execute+0x3ea>
     9de:	59                   	pop    ecx
     9df:	5e                   	pop    esi
     9e0:	68 05 04 00 00       	push   0x405
     9e5:	57                   	push   edi
     9e6:	e8 fc ff ff ff       	call   9e7 <execute+0x3f7>
     9eb:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
     9f0:	89 fa                	mov    edx,edi
     9f2:	89 d8                	mov    eax,ebx
     9f4:	e8 07 f6 ff ff       	call   0 <tprint>
     9f9:	83 c4 10             	add    esp,0x10
     9fc:	e9 43 fc ff ff       	jmp    644 <execute+0x54>
     a01:	83 ec 08             	sub    esp,0x8
     a04:	68 07 04 00 00       	push   0x407
     a09:	56                   	push   esi
     a0a:	e8 fc ff ff ff       	call   a0b <execute+0x41b>
     a0f:	83 c4 10             	add    esp,0x10
     a12:	85 c0                	test   eax,eax
     a14:	74 71                	je     a87 <execute+0x497>
     a16:	55                   	push   ebp
     a17:	55                   	push   ebp
     a18:	68 0b 04 00 00       	push   0x40b
     a1d:	56                   	push   esi
     a1e:	e8 fc ff ff ff       	call   a1f <execute+0x42f>
     a23:	83 c4 10             	add    esp,0x10
     a26:	85 c0                	test   eax,eax
     a28:	74 5d                	je     a87 <execute+0x497>
     a2a:	57                   	push   edi
     a2b:	57                   	push   edi
     a2c:	68 10 04 00 00       	push   0x410
     a31:	56                   	push   esi
     a32:	e8 fc ff ff ff       	call   a33 <execute+0x443>
     a37:	83 c4 10             	add    esp,0x10
     a3a:	85 c0                	test   eax,eax
     a3c:	75 55                	jne    a93 <execute+0x4a3>
     a3e:	89 d8                	mov    eax,ebx
     a40:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
     a45:	ba 13 04 00 00       	mov    edx,0x413
     a4a:	e8 b1 f5 ff ff       	call   0 <tprint>
     a4f:	89 d8                	mov    eax,ebx
     a51:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     a56:	ba 28 04 00 00       	mov    edx,0x428
     a5b:	e8 a0 f5 ff ff       	call   0 <tprint>
     a60:	89 d8                	mov    eax,ebx
     a62:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     a67:	ba 3f 04 00 00       	mov    edx,0x43f
     a6c:	e8 8f f5 ff ff       	call   0 <tprint>
     a71:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
     a76:	ba 53 04 00 00       	mov    edx,0x453
     a7b:	89 d8                	mov    eax,ebx
     a7d:	e8 7e f5 ff ff       	call   0 <tprint>
     a82:	e9 bd fb ff ff       	jmp    644 <execute+0x54>
     a87:	89 d8                	mov    eax,ebx
     a89:	e8 52 f7 ff ff       	call   1e0 <cmd_mem>
     a8e:	e9 b1 fb ff ff       	jmp    644 <execute+0x54>
     a93:	51                   	push   ecx
     a94:	51                   	push   ecx
     a95:	68 6c 04 00 00       	push   0x46c
     a9a:	56                   	push   esi
     a9b:	e8 fc ff ff ff       	call   a9c <execute+0x4ac>
     aa0:	83 c4 10             	add    esp,0x10
     aa3:	85 c0                	test   eax,eax
     aa5:	75 3a                	jne    ae1 <execute+0x4f1>
     aa7:	8d 7c 24 37          	lea    edi,[esp+0x37]
     aab:	b9 08 00 00 00       	mov    ecx,0x8
     ab0:	c7 44 24 33 20 20 00 	mov    DWORD PTR [esp+0x33],0x2020
     ab7:	00 
     ab8:	f3 ab                	rep stos DWORD PTR es:[edi],eax
     aba:	52                   	push   edx
     abb:	52                   	push   edx
     abc:	68 00 00 00 00       	push   0x0
     ac1:	8d 74 24 3f          	lea    esi,[esp+0x3f]
     ac5:	56                   	push   esi
     ac6:	e8 fc ff ff ff       	call   ac7 <execute+0x4d7>
     acb:	b9 87 b3 fa 00       	mov    ecx,0xfab387
     ad0:	89 f2                	mov    edx,esi
     ad2:	89 d8                	mov    eax,ebx
     ad4:	e8 27 f5 ff ff       	call   0 <tprint>
     ad9:	83 c4 10             	add    esp,0x10
     adc:	e9 63 fb ff ff       	jmp    644 <execute+0x54>
     ae1:	50                   	push   eax
     ae2:	50                   	push   eax
     ae3:	68 73 04 00 00       	push   0x473
     ae8:	56                   	push   esi
     ae9:	e8 fc ff ff ff       	call   aea <execute+0x4fa>
     aee:	83 c4 10             	add    esp,0x10
     af1:	85 c0                	test   eax,eax
     af3:	75 16                	jne    b0b <execute+0x51b>
     af5:	b9 87 b3 fa 00       	mov    ecx,0xfab387
     afa:	ba 7c 04 00 00       	mov    edx,0x47c
     aff:	89 d8                	mov    eax,ebx
     b01:	e8 fa f4 ff ff       	call   0 <tprint>
     b06:	e9 39 fb ff ff       	jmp    644 <execute+0x54>
     b0b:	50                   	push   eax
     b0c:	50                   	push   eax
     b0d:	68 85 04 00 00       	push   0x485
     b12:	56                   	push   esi
     b13:	e8 fc ff ff ff       	call   b14 <execute+0x524>
     b18:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
     b1c:	83 c4 10             	add    esp,0x10
     b1f:	85 c0                	test   eax,eax
     b21:	75 5d                	jne    b80 <execute+0x590>
     b23:	e8 fc ff ff ff       	call   b24 <execute+0x534>
     b28:	89 c5                	mov    ebp,eax
     b2a:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
     b2e:	0f 84 0c 01 00 00    	je     c40 <execute+0x650>
     b34:	c6 44 24 33 00       	mov    BYTE PTR [esp+0x33],0x0
     b39:	31 f6                	xor    esi,esi
     b3b:	50                   	push   eax
     b3c:	50                   	push   eax
     b3d:	68 8e 04 00 00       	push   0x48e
     b42:	8d 7c 24 3f          	lea    edi,[esp+0x3f]
     b46:	57                   	push   edi
     b47:	e8 fc ff ff ff       	call   b48 <execute+0x558>
     b4c:	83 c4 10             	add    esp,0x10
     b4f:	50                   	push   eax
     b50:	6a 0a                	push   0xa
     b52:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     b56:	50                   	push   eax
     b57:	0f b6 44 35 00       	movzx  eax,BYTE PTR [ebp+esi*1+0x0]
     b5c:	50                   	push   eax
     b5d:	e8 fc ff ff ff       	call   b5e <execute+0x56e>
     b62:	83 c4 10             	add    esp,0x10
     b65:	85 f6                	test   esi,esi
     b67:	75 4a                	jne    bb3 <execute+0x5c3>
     b69:	51                   	push   ecx
     b6a:	be 01 00 00 00       	mov    esi,0x1
     b6f:	51                   	push   ecx
     b70:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     b74:	50                   	push   eax
     b75:	57                   	push   edi
     b76:	e8 fc ff ff ff       	call   b77 <execute+0x587>
     b7b:	83 c4 10             	add    esp,0x10
     b7e:	eb cf                	jmp    b4f <execute+0x55f>
     b80:	55                   	push   ebp
     b81:	55                   	push   ebp
     b82:	68 b4 04 00 00       	push   0x4b4
     b87:	56                   	push   esi
     b88:	e8 fc ff ff ff       	call   b89 <execute+0x599>
     b8d:	83 c4 10             	add    esp,0x10
     b90:	85 c0                	test   eax,eax
     b92:	0f 85 be 00 00 00    	jne    c56 <execute+0x666>
     b98:	e8 fc ff ff ff       	call   b99 <execute+0x5a9>
     b9d:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
     ba2:	ba b9 04 00 00       	mov    edx,0x4b9
     ba7:	89 d8                	mov    eax,ebx
     ba9:	e8 52 f4 ff ff       	call   0 <tprint>
     bae:	e9 91 fa ff ff       	jmp    644 <execute+0x54>
     bb3:	52                   	push   edx
     bb4:	83 c6 01             	add    esi,0x1
     bb7:	52                   	push   edx
     bb8:	68 96 04 00 00       	push   0x496
     bbd:	57                   	push   edi
     bbe:	e8 fc ff ff ff       	call   bbf <execute+0x5cf>
     bc3:	59                   	pop    ecx
     bc4:	58                   	pop    eax
     bc5:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     bc9:	50                   	push   eax
     bca:	57                   	push   edi
     bcb:	e8 fc ff ff ff       	call   bcc <execute+0x5dc>
     bd0:	83 c4 10             	add    esp,0x10
     bd3:	83 fe 04             	cmp    esi,0x4
     bd6:	0f 85 73 ff ff ff    	jne    b4f <execute+0x55f>
     bdc:	89 d8                	mov    eax,ebx
     bde:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
     be3:	89 fa                	mov    edx,edi
     be5:	31 f6                	xor    esi,esi
     be7:	e8 14 f4 ff ff       	call   0 <tprint>
     bec:	c6 44 24 33 00       	mov    BYTE PTR [esp+0x33],0x0
     bf1:	50                   	push   eax
     bf2:	50                   	push   eax
     bf3:	68 98 04 00 00       	push   0x498
     bf8:	57                   	push   edi
     bf9:	e8 fc ff ff ff       	call   bfa <execute+0x60a>
     bfe:	83 c4 10             	add    esp,0x10
     c01:	50                   	push   eax
     c02:	6a 10                	push   0x10
     c04:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     c08:	50                   	push   eax
     c09:	0f b6 44 35 10       	movzx  eax,BYTE PTR [ebp+esi*1+0x10]
     c0e:	50                   	push   eax
     c0f:	e8 fc ff ff ff       	call   c10 <execute+0x620>
     c14:	83 c4 10             	add    esp,0x10
     c17:	85 f6                	test   esi,esi
     c19:	0f 85 ea 00 00 00    	jne    d09 <execute+0x719>
     c1f:	80 7d 10 0f          	cmp    BYTE PTR [ebp+0x10],0xf
     c23:	0f 86 f7 00 00 00    	jbe    d20 <execute+0x730>
     c29:	56                   	push   esi
     c2a:	56                   	push   esi
     c2b:	be 01 00 00 00       	mov    esi,0x1
     c30:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     c34:	50                   	push   eax
     c35:	57                   	push   edi
     c36:	e8 fc ff ff ff       	call   c37 <execute+0x647>
     c3b:	83 c4 10             	add    esp,0x10
     c3e:	eb c1                	jmp    c01 <execute+0x611>
     c40:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
     c45:	ba e4 02 00 00       	mov    edx,0x2e4
     c4a:	89 d8                	mov    eax,ebx
     c4c:	e8 af f3 ff ff       	call   0 <tprint>
     c51:	e9 ee f9 ff ff       	jmp    644 <execute+0x54>
     c56:	57                   	push   edi
     c57:	57                   	push   edi
     c58:	68 ce 04 00 00       	push   0x4ce
     c5d:	56                   	push   esi
     c5e:	e8 fc ff ff ff       	call   c5f <execute+0x66f>
     c63:	83 c4 10             	add    esp,0x10
     c66:	85 c0                	test   eax,eax
     c68:	0f 85 4e 01 00 00    	jne    dbc <execute+0x7cc>
     c6e:	e8 fc ff ff ff       	call   c6f <execute+0x67f>
     c73:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     c77:	85 c0                	test   eax,eax
     c79:	0f 84 27 01 00 00    	je     da6 <execute+0x7b6>
     c7f:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
     c84:	ba e4 04 00 00       	mov    edx,0x4e4
     c89:	89 d8                	mov    eax,ebx
     c8b:	31 ed                	xor    ebp,ebp
     c8d:	e8 6e f3 ff ff       	call   0 <tprint>
     c92:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
     c96:	eb 03                	jmp    c9b <execute+0x6ab>
     c98:	83 c5 01             	add    ebp,0x1
     c9b:	39 6c 24 08          	cmp    DWORD PTR [esp+0x8],ebp
     c9f:	0f 8e 9f f9 ff ff    	jle    644 <execute+0x54>
     ca5:	53                   	push   ebx
     ca6:	8d 44 24 27          	lea    eax,[esp+0x27]
     caa:	50                   	push   eax
     cab:	8d 44 24 20          	lea    eax,[esp+0x20]
     caf:	50                   	push   eax
     cb0:	55                   	push   ebp
     cb1:	e8 fc ff ff ff       	call   cb2 <execute+0x6c2>
     cb6:	83 c4 10             	add    esp,0x10
     cb9:	85 c0                	test   eax,eax
     cbb:	74 db                	je     c98 <execute+0x6a8>
     cbd:	8d 7c 24 37          	lea    edi,[esp+0x37]
     cc1:	b9 0f 00 00 00       	mov    ecx,0xf
     cc6:	8d 74 24 33          	lea    esi,[esp+0x33]
     cca:	31 c0                	xor    eax,eax
     ccc:	c7 44 24 33 20 20 00 	mov    DWORD PTR [esp+0x33],0x2020
     cd3:	00 
     cd4:	8d 5c 24 1f          	lea    ebx,[esp+0x1f]
     cd8:	f3 ab                	rep stos DWORD PTR es:[edi],eax
     cda:	31 ff                	xor    edi,edi
     cdc:	51                   	push   ecx
     cdd:	6a 0a                	push   0xa
     cdf:	53                   	push   ebx
     ce0:	0f b6 44 3c 24       	movzx  eax,BYTE PTR [esp+edi*1+0x24]
     ce5:	50                   	push   eax
     ce6:	e8 fc ff ff ff       	call   ce7 <execute+0x6f7>
     ceb:	83 c4 10             	add    esp,0x10
     cee:	85 ff                	test   edi,edi
     cf0:	0f 85 bf 01 00 00    	jne    eb5 <execute+0x8c5>
     cf6:	50                   	push   eax
     cf7:	bf 01 00 00 00       	mov    edi,0x1
     cfc:	50                   	push   eax
     cfd:	53                   	push   ebx
     cfe:	56                   	push   esi
     cff:	e8 fc ff ff ff       	call   d00 <execute+0x710>
     d04:	83 c4 10             	add    esp,0x10
     d07:	eb d3                	jmp    cdc <execute+0x6ec>
     d09:	50                   	push   eax
     d0a:	50                   	push   eax
     d0b:	68 b5 01 00 00       	push   0x1b5
     d10:	57                   	push   edi
     d11:	e8 fc ff ff ff       	call   d12 <execute+0x722>
     d16:	83 c4 10             	add    esp,0x10
     d19:	80 7c 35 10 0f       	cmp    BYTE PTR [ebp+esi*1+0x10],0xf
     d1e:	77 10                	ja     d30 <execute+0x740>
     d20:	50                   	push   eax
     d21:	50                   	push   eax
     d22:	68 b3 01 00 00       	push   0x1b3
     d27:	57                   	push   edi
     d28:	e8 fc ff ff ff       	call   d29 <execute+0x739>
     d2d:	83 c4 10             	add    esp,0x10
     d30:	50                   	push   eax
     d31:	83 c6 01             	add    esi,0x1
     d34:	50                   	push   eax
     d35:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     d39:	50                   	push   eax
     d3a:	57                   	push   edi
     d3b:	e8 fc ff ff ff       	call   d3c <execute+0x74c>
     d40:	83 c4 10             	add    esp,0x10
     d43:	83 fe 06             	cmp    esi,0x6
     d46:	0f 85 b5 fe ff ff    	jne    c01 <execute+0x611>
     d4c:	b9 c8 ad a6 00       	mov    ecx,0xa6adc8
     d51:	89 fa                	mov    edx,edi
     d53:	89 d8                	mov    eax,ebx
     d55:	e8 a6 f2 ff ff       	call   0 <tprint>
     d5a:	c6 44 24 33 00       	mov    BYTE PTR [esp+0x33],0x0
     d5f:	56                   	push   esi
     d60:	56                   	push   esi
     d61:	31 f6                	xor    esi,esi
     d63:	68 9f 04 00 00       	push   0x49f
     d68:	57                   	push   edi
     d69:	e8 fc ff ff ff       	call   d6a <execute+0x77a>
     d6e:	83 c4 10             	add    esp,0x10
     d71:	51                   	push   ecx
     d72:	6a 0a                	push   0xa
     d74:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     d78:	50                   	push   eax
     d79:	0f b6 44 35 04       	movzx  eax,BYTE PTR [ebp+esi*1+0x4]
     d7e:	50                   	push   eax
     d7f:	e8 fc ff ff ff       	call   d80 <execute+0x790>
     d84:	83 c4 10             	add    esp,0x10
     d87:	85 f6                	test   esi,esi
     d89:	0f 85 a5 00 00 00    	jne    e34 <execute+0x844>
     d8f:	50                   	push   eax
     d90:	be 01 00 00 00       	mov    esi,0x1
     d95:	50                   	push   eax
     d96:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     d9a:	50                   	push   eax
     d9b:	57                   	push   edi
     d9c:	e8 fc ff ff ff       	call   d9d <execute+0x7ad>
     da1:	83 c4 10             	add    esp,0x10
     da4:	eb cb                	jmp    d71 <execute+0x781>
     da6:	b9 9c 84 7f 00       	mov    ecx,0x7f849c
     dab:	ba d2 04 00 00       	mov    edx,0x4d2
     db0:	89 d8                	mov    eax,ebx
     db2:	e8 49 f2 ff ff       	call   0 <tprint>
     db7:	e9 88 f8 ff ff       	jmp    644 <execute+0x54>
     dbc:	50                   	push   eax
     dbd:	6a 05                	push   0x5
     dbf:	68 fd 04 00 00       	push   0x4fd
     dc4:	56                   	push   esi
     dc5:	e8 fc ff ff ff       	call   dc6 <execute+0x7d6>
     dca:	83 c4 10             	add    esp,0x10
     dcd:	85 c0                	test   eax,eax
     dcf:	0f 85 d7 01 00 00    	jne    fac <execute+0x9bc>
     dd5:	83 c6 05             	add    esi,0x5
     dd8:	eb 03                	jmp    ddd <execute+0x7ed>
     dda:	83 c6 01             	add    esi,0x1
     ddd:	0f b6 06             	movzx  eax,BYTE PTR [esi]
     de0:	3c 20                	cmp    al,0x20
     de2:	74 f6                	je     dda <execute+0x7ea>
     de4:	31 ed                	xor    ebp,ebp
     de6:	84 c0                	test   al,al
     de8:	0f 84 e8 01 00 00    	je     fd6 <execute+0x9e6>
     dee:	31 d2                	xor    edx,edx
     df0:	eb 0a                	jmp    dfc <execute+0x80c>
     df2:	6b d2 0a             	imul   edx,edx,0xa
     df5:	83 c6 01             	add    esi,0x1
     df8:	8d 54 02 d0          	lea    edx,[edx+eax*1-0x30]
     dfc:	0f be 06             	movsx  eax,BYTE PTR [esi]
     dff:	8d 48 d0             	lea    ecx,[eax-0x30]
     e02:	80 f9 09             	cmp    cl,0x9
     e05:	76 eb                	jbe    df2 <execute+0x802>
     e07:	81 fa ff 00 00 00    	cmp    edx,0xff
     e0d:	0f 8f 17 03 00 00    	jg     112a <execute+0xb3a>
     e13:	88 54 2c 1f          	mov    BYTE PTR [esp+ebp*1+0x1f],dl
     e17:	8d 7c 24 1f          	lea    edi,[esp+0x1f]
     e1b:	83 fd 03             	cmp    ebp,0x3
     e1e:	0f 84 38 02 00 00    	je     105c <execute+0xa6c>
     e24:	3c 2e                	cmp    al,0x2e
     e26:	0f 85 fe 02 00 00    	jne    112a <execute+0xb3a>
     e2c:	83 c6 01             	add    esi,0x1
     e2f:	83 c5 01             	add    ebp,0x1
     e32:	eb ba                	jmp    dee <execute+0x7fe>
     e34:	50                   	push   eax
     e35:	83 c6 01             	add    esi,0x1
     e38:	50                   	push   eax
     e39:	68 96 04 00 00       	push   0x496
     e3e:	57                   	push   edi
     e3f:	e8 fc ff ff ff       	call   e40 <execute+0x850>
     e44:	58                   	pop    eax
     e45:	5a                   	pop    edx
     e46:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     e4a:	50                   	push   eax
     e4b:	57                   	push   edi
     e4c:	e8 fc ff ff ff       	call   e4d <execute+0x85d>
     e51:	83 c4 10             	add    esp,0x10
     e54:	83 fe 04             	cmp    esi,0x4
     e57:	0f 85 14 ff ff ff    	jne    d71 <execute+0x781>
     e5d:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     e62:	89 fa                	mov    edx,edi
     e64:	89 d8                	mov    eax,ebx
     e66:	e8 95 f1 ff ff       	call   0 <tprint>
     e6b:	c6 44 24 33 00       	mov    BYTE PTR [esp+0x33],0x0
     e70:	56                   	push   esi
     e71:	56                   	push   esi
     e72:	68 aa 04 00 00       	push   0x4aa
     e77:	57                   	push   edi
     e78:	e8 fc ff ff ff       	call   e79 <execute+0x889>
     e7d:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
     e81:	83 c4 10             	add    esp,0x10
     e84:	51                   	push   ecx
     e85:	6a 0a                	push   0xa
     e87:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     e8b:	50                   	push   eax
     e8c:	0f b6 44 35 08       	movzx  eax,BYTE PTR [ebp+esi*1+0x8]
     e91:	50                   	push   eax
     e92:	e8 fc ff ff ff       	call   e93 <execute+0x8a3>
     e97:	83 c4 10             	add    esp,0x10
     e9a:	85 f6                	test   esi,esi
     e9c:	75 7e                	jne    f1c <execute+0x92c>
     e9e:	50                   	push   eax
     e9f:	be 01 00 00 00       	mov    esi,0x1
     ea4:	50                   	push   eax
     ea5:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     ea9:	50                   	push   eax
     eaa:	57                   	push   edi
     eab:	e8 fc ff ff ff       	call   eac <execute+0x8bc>
     eb0:	83 c4 10             	add    esp,0x10
     eb3:	eb cf                	jmp    e84 <execute+0x894>
     eb5:	51                   	push   ecx
     eb6:	83 c7 01             	add    edi,0x1
     eb9:	51                   	push   ecx
     eba:	68 96 04 00 00       	push   0x496
     ebf:	56                   	push   esi
     ec0:	e8 fc ff ff ff       	call   ec1 <execute+0x8d1>
     ec5:	58                   	pop    eax
     ec6:	5a                   	pop    edx
     ec7:	53                   	push   ebx
     ec8:	56                   	push   esi
     ec9:	e8 fc ff ff ff       	call   eca <execute+0x8da>
     ece:	83 c4 10             	add    esp,0x10
     ed1:	83 ff 04             	cmp    edi,0x4
     ed4:	0f 85 02 fe ff ff    	jne    cdc <execute+0x6ec>
     eda:	52                   	push   edx
     edb:	31 ff                	xor    edi,edi
     edd:	52                   	push   edx
     ede:	68 f9 04 00 00       	push   0x4f9
     ee3:	56                   	push   esi
     ee4:	e8 fc ff ff ff       	call   ee5 <execute+0x8f5>
     ee9:	83 c4 10             	add    esp,0x10
     eec:	50                   	push   eax
     eed:	6a 10                	push   0x10
     eef:	53                   	push   ebx
     ef0:	0f b6 44 3c 2f       	movzx  eax,BYTE PTR [esp+edi*1+0x2f]
     ef5:	50                   	push   eax
     ef6:	e8 fc ff ff ff       	call   ef7 <execute+0x907>
     efb:	83 c4 10             	add    esp,0x10
     efe:	85 ff                	test   edi,edi
     f00:	75 56                	jne    f58 <execute+0x968>
     f02:	80 7c 24 23 0f       	cmp    BYTE PTR [esp+0x23],0xf
     f07:	76 66                	jbe    f6f <execute+0x97f>
     f09:	52                   	push   edx
     f0a:	bf 01 00 00 00       	mov    edi,0x1
     f0f:	52                   	push   edx
     f10:	53                   	push   ebx
     f11:	56                   	push   esi
     f12:	e8 fc ff ff ff       	call   f13 <execute+0x923>
     f17:	83 c4 10             	add    esp,0x10
     f1a:	eb d0                	jmp    eec <execute+0x8fc>
     f1c:	50                   	push   eax
     f1d:	83 c6 01             	add    esi,0x1
     f20:	50                   	push   eax
     f21:	68 96 04 00 00       	push   0x496
     f26:	57                   	push   edi
     f27:	e8 fc ff ff ff       	call   f28 <execute+0x938>
     f2c:	58                   	pop    eax
     f2d:	5a                   	pop    edx
     f2e:	8d 44 24 2b          	lea    eax,[esp+0x2b]
     f32:	50                   	push   eax
     f33:	57                   	push   edi
     f34:	e8 fc ff ff ff       	call   f35 <execute+0x945>
     f39:	83 c4 10             	add    esp,0x10
     f3c:	83 fe 04             	cmp    esi,0x4
     f3f:	0f 85 3f ff ff ff    	jne    e84 <execute+0x894>
     f45:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     f4a:	89 fa                	mov    edx,edi
     f4c:	89 d8                	mov    eax,ebx
     f4e:	e8 ad f0 ff ff       	call   0 <tprint>
     f53:	e9 ec f6 ff ff       	jmp    644 <execute+0x54>
     f58:	50                   	push   eax
     f59:	50                   	push   eax
     f5a:	68 b5 01 00 00       	push   0x1b5
     f5f:	56                   	push   esi
     f60:	e8 fc ff ff ff       	call   f61 <execute+0x971>
     f65:	83 c4 10             	add    esp,0x10
     f68:	80 7c 3c 23 0f       	cmp    BYTE PTR [esp+edi*1+0x23],0xf
     f6d:	77 10                	ja     f7f <execute+0x98f>
     f6f:	50                   	push   eax
     f70:	50                   	push   eax
     f71:	68 b3 01 00 00       	push   0x1b3
     f76:	56                   	push   esi
     f77:	e8 fc ff ff ff       	call   f78 <execute+0x988>
     f7c:	83 c4 10             	add    esp,0x10
     f7f:	50                   	push   eax
     f80:	83 c7 01             	add    edi,0x1
     f83:	50                   	push   eax
     f84:	53                   	push   ebx
     f85:	56                   	push   esi
     f86:	e8 fc ff ff ff       	call   f87 <execute+0x997>
     f8b:	83 c4 10             	add    esp,0x10
     f8e:	83 ff 06             	cmp    edi,0x6
     f91:	0f 85 55 ff ff ff    	jne    eec <execute+0x8fc>
     f97:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
     f9b:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     fa0:	89 f2                	mov    edx,esi
     fa2:	e8 59 f0 ff ff       	call   0 <tprint>
     fa7:	e9 ec fc ff ff       	jmp    c98 <execute+0x6a8>
     fac:	50                   	push   eax
     fad:	50                   	push   eax
     fae:	68 67 05 00 00       	push   0x567
     fb3:	56                   	push   esi
     fb4:	e8 fc ff ff ff       	call   fb5 <execute+0x9c5>
     fb9:	83 c4 10             	add    esp,0x10
     fbc:	85 c0                	test   eax,eax
     fbe:	75 2c                	jne    fec <execute+0x9fc>
     fc0:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
     fc5:	ba 6b 05 00 00       	mov    edx,0x56b
     fca:	89 d8                	mov    eax,ebx
     fcc:	e8 2f f0 ff ff       	call   0 <tprint>
     fd1:	e9 6e f6 ff ff       	jmp    644 <execute+0x54>
     fd6:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
     fdb:	ba 03 05 00 00       	mov    edx,0x503
     fe0:	89 d8                	mov    eax,ebx
     fe2:	e8 19 f0 ff ff       	call   0 <tprint>
     fe7:	e9 58 f6 ff ff       	jmp    644 <execute+0x54>
     fec:	50                   	push   eax
     fed:	50                   	push   eax
     fee:	68 78 05 00 00       	push   0x578
     ff3:	56                   	push   esi
     ff4:	e8 fc ff ff ff       	call   ff5 <execute+0xa05>
     ff9:	83 c4 10             	add    esp,0x10
     ffc:	85 c0                	test   eax,eax
     ffe:	75 16                	jne    1016 <execute+0xa26>
    1000:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    1005:	ba 7b 05 00 00       	mov    edx,0x57b
    100a:	89 d8                	mov    eax,ebx
    100c:	e8 ef ef ff ff       	call   0 <tprint>
    1011:	e9 2e f6 ff ff       	jmp    644 <execute+0x54>
    1016:	50                   	push   eax
    1017:	50                   	push   eax
    1018:	68 95 05 00 00       	push   0x595
    101d:	56                   	push   esi
    101e:	e8 fc ff ff ff       	call   101f <execute+0xa2f>
    1023:	83 c4 10             	add    esp,0x10
    1026:	85 c0                	test   eax,eax
    1028:	0f 84 ba f8 ff ff    	je     8e8 <execute+0x2f8>
    102e:	55                   	push   ebp
    102f:	55                   	push   ebp
    1030:	68 9a 05 00 00       	push   0x59a
    1035:	56                   	push   esi
    1036:	e8 fc ff ff ff       	call   1037 <execute+0xa47>
    103b:	83 c4 10             	add    esp,0x10
    103e:	85 c0                	test   eax,eax
    1040:	0f 85 fa 00 00 00    	jne    1140 <execute+0xb50>
    1046:	b9 f7 a6 cb 00       	mov    ecx,0xcba6f7
    104b:	ba 14 03 00 00       	mov    edx,0x314
    1050:	89 d8                	mov    eax,ebx
    1052:	e8 a9 ef ff ff       	call   0 <tprint>
    1057:	e9 e8 f5 ff ff       	jmp    644 <execute+0x54>
    105c:	a8 df                	test   al,0xdf
    105e:	0f 85 c6 00 00 00    	jne    112a <execute+0xb3a>
    1064:	e8 fc ff ff ff       	call   1065 <execute+0xa75>
    1069:	83 78 18 00          	cmp    DWORD PTR [eax+0x18],0x0
    106d:	0f 84 95 01 00 00    	je     1208 <execute+0xc18>
    1073:	83 ec 0c             	sub    esp,0xc
    1076:	be 3c 00 00 00       	mov    esi,0x3c
    107b:	57                   	push   edi
    107c:	e8 fc ff ff ff       	call   107d <execute+0xa8d>
    1081:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
    1086:	ba 46 05 00 00       	mov    edx,0x546
    108b:	89 d8                	mov    eax,ebx
    108d:	e8 6e ef ff ff       	call   0 <tprint>
    1092:	83 c4 10             	add    esp,0x10
    1095:	8d 7c 24 18          	lea    edi,[esp+0x18]
    1099:	eb 16                	jmp    10b1 <execute+0xac1>
    109b:	83 ec 0c             	sub    esp,0xc
    109e:	6a 32                	push   0x32
    10a0:	e8 fc ff ff ff       	call   10a1 <execute+0xab1>
    10a5:	83 c4 10             	add    esp,0x10
    10a8:	83 ee 01             	sub    esi,0x1
    10ab:	0f 84 12 01 00 00    	je     11c3 <execute+0xbd3>
    10b1:	e8 fc ff ff ff       	call   10b2 <execute+0xac2>
    10b6:	31 ed                	xor    ebp,ebp
    10b8:	83 ec 0c             	sub    esp,0xc
    10bb:	89 6c 24 24          	mov    DWORD PTR [esp+0x24],ebp
    10bf:	57                   	push   edi
    10c0:	e8 fc ff ff ff       	call   10c1 <execute+0xad1>
    10c5:	83 c4 10             	add    esp,0x10
    10c8:	85 c0                	test   eax,eax
    10ca:	74 cf                	je     109b <execute+0xaab>
    10cc:	8d 7c 24 33          	lea    edi,[esp+0x33]
    10d0:	be 33 08 00 00       	mov    esi,0x833
    10d5:	b9 03 00 00 00       	mov    ecx,0x3
    10da:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
    10dc:	8d 7c 24 3f          	lea    edi,[esp+0x3f]
    10e0:	89 c8                	mov    eax,ecx
    10e2:	b9 09 00 00 00       	mov    ecx,0x9
    10e7:	f3 ab                	rep stos DWORD PTR es:[edi],eax
    10e9:	50                   	push   eax
    10ea:	6a 0a                	push   0xa
    10ec:	8d 74 24 2b          	lea    esi,[esp+0x2b]
    10f0:	56                   	push   esi
    10f1:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
    10f5:	e8 fc ff ff ff       	call   10f6 <execute+0xb06>
    10fa:	58                   	pop    eax
    10fb:	5a                   	pop    edx
    10fc:	56                   	push   esi
    10fd:	8d 74 24 3f          	lea    esi,[esp+0x3f]
    1101:	56                   	push   esi
    1102:	e8 fc ff ff ff       	call   1103 <execute+0xb13>
    1107:	59                   	pop    ecx
    1108:	5f                   	pop    edi
    1109:	68 51 05 00 00       	push   0x551
    110e:	56                   	push   esi
    110f:	e8 fc ff ff ff       	call   1110 <execute+0xb20>
    1114:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    1119:	89 f2                	mov    edx,esi
    111b:	89 d8                	mov    eax,ebx
    111d:	e8 de ee ff ff       	call   0 <tprint>
    1122:	83 c4 10             	add    esp,0x10
    1125:	e9 1a f5 ff ff       	jmp    644 <execute+0x54>
    112a:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    112f:	ba 16 05 00 00       	mov    edx,0x516
    1134:	89 d8                	mov    eax,ebx
    1136:	e8 c5 ee ff ff       	call   0 <tprint>
    113b:	e9 04 f5 ff ff       	jmp    644 <execute+0x54>
    1140:	57                   	push   edi
    1141:	57                   	push   edi
    1142:	68 a0 05 00 00       	push   0x5a0
    1147:	56                   	push   esi
    1148:	e8 fc ff ff ff       	call   1149 <execute+0xb59>
    114d:	83 c4 10             	add    esp,0x10
    1150:	85 c0                	test   eax,eax
    1152:	0f 85 81 00 00 00    	jne    11d9 <execute+0xbe9>
    1158:	89 d8                	mov    eax,ebx
    115a:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    115f:	ba a7 05 00 00       	mov    edx,0x5a7
    1164:	e8 97 ee ff ff       	call   0 <tprint>
    1169:	89 d8                	mov    eax,ebx
    116b:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    1170:	ba ba 05 00 00       	mov    edx,0x5ba
    1175:	e8 86 ee ff ff       	call   0 <tprint>
    117a:	89 d8                	mov    eax,ebx
    117c:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    1181:	ba d0 05 00 00       	mov    edx,0x5d0
    1186:	e8 75 ee ff ff       	call   0 <tprint>
    118b:	89 d8                	mov    eax,ebx
    118d:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    1192:	ba 00 00 00 00       	mov    edx,0x0
    1197:	e8 64 ee ff ff       	call   0 <tprint>
    119c:	89 d8                	mov    eax,ebx
    119e:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    11a3:	ba eb 05 00 00       	mov    edx,0x5eb
    11a8:	e8 53 ee ff ff       	call   0 <tprint>
    11ad:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    11b2:	ba 08 06 00 00       	mov    edx,0x608
    11b7:	89 d8                	mov    eax,ebx
    11b9:	e8 42 ee ff ff       	call   0 <tprint>
    11be:	e9 81 f4 ff ff       	jmp    644 <execute+0x54>
    11c3:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    11c8:	ba 55 05 00 00       	mov    edx,0x555
    11cd:	89 d8                	mov    eax,ebx
    11cf:	e8 2c ee ff ff       	call   0 <tprint>
    11d4:	e9 6b f4 ff ff       	jmp    644 <execute+0x54>
    11d9:	51                   	push   ecx
    11da:	51                   	push   ecx
    11db:	68 1d 06 00 00       	push   0x61d
    11e0:	56                   	push   esi
    11e1:	e8 fc ff ff ff       	call   11e2 <execute+0xbf2>
    11e6:	83 c4 10             	add    esp,0x10
    11e9:	85 c0                	test   eax,eax
    11eb:	75 31                	jne    121e <execute+0xc2e>
    11ed:	e8 fc ff ff ff       	call   11ee <execute+0xbfe>
    11f2:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    11f7:	ba 22 06 00 00       	mov    edx,0x622
    11fc:	89 d8                	mov    eax,ebx
    11fe:	e8 fd ed ff ff       	call   0 <tprint>
    1203:	e9 3c f4 ff ff       	jmp    644 <execute+0x54>
    1208:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    120d:	ba 2b 05 00 00       	mov    edx,0x52b
    1212:	89 d8                	mov    eax,ebx
    1214:	e8 e7 ed ff ff       	call   0 <tprint>
    1219:	e9 26 f4 ff ff       	jmp    644 <execute+0x54>
    121e:	52                   	push   edx
    121f:	52                   	push   edx
    1220:	68 37 06 00 00       	push   0x637
    1225:	56                   	push   esi
    1226:	e8 fc ff ff ff       	call   1227 <execute+0xc37>
    122b:	83 c4 10             	add    esp,0x10
    122e:	85 c0                	test   eax,eax
    1230:	75 1b                	jne    124d <execute+0xc5d>
    1232:	e8 fc ff ff ff       	call   1233 <execute+0xc43>
    1237:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    123c:	ba 3f 06 00 00       	mov    edx,0x63f
    1241:	89 d8                	mov    eax,ebx
    1243:	e8 b8 ed ff ff       	call   0 <tprint>
    1248:	e9 f7 f3 ff ff       	jmp    644 <execute+0x54>
    124d:	50                   	push   eax
    124e:	50                   	push   eax
    124f:	68 51 06 00 00       	push   0x651
    1254:	56                   	push   esi
    1255:	e8 fc ff ff ff       	call   1256 <execute+0xc66>
    125a:	83 c4 10             	add    esp,0x10
    125d:	85 c0                	test   eax,eax
    125f:	75 1b                	jne    127c <execute+0xc8c>
    1261:	e8 fc ff ff ff       	call   1262 <execute+0xc72>
    1266:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    126b:	ba 57 06 00 00       	mov    edx,0x657
    1270:	89 d8                	mov    eax,ebx
    1272:	e8 89 ed ff ff       	call   0 <tprint>
    1277:	e9 c8 f3 ff ff       	jmp    644 <execute+0x54>
    127c:	50                   	push   eax
    127d:	50                   	push   eax
    127e:	68 6e 06 00 00       	push   0x66e
    1283:	56                   	push   esi
    1284:	e8 fc ff ff ff       	call   1285 <execute+0xc95>
    1289:	83 c4 10             	add    esp,0x10
    128c:	85 c0                	test   eax,eax
    128e:	75 1b                	jne    12ab <execute+0xcbb>
    1290:	e8 fc ff ff ff       	call   1291 <execute+0xca1>
    1295:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    129a:	ba 77 06 00 00       	mov    edx,0x677
    129f:	89 d8                	mov    eax,ebx
    12a1:	e8 5a ed ff ff       	call   0 <tprint>
    12a6:	e9 99 f3 ff ff       	jmp    644 <execute+0x54>
    12ab:	50                   	push   eax
    12ac:	50                   	push   eax
    12ad:	68 8a 06 00 00       	push   0x68a
    12b2:	56                   	push   esi
    12b3:	e8 fc ff ff ff       	call   12b4 <execute+0xcc4>
    12b8:	83 c4 10             	add    esp,0x10
    12bb:	85 c0                	test   eax,eax
    12bd:	75 1b                	jne    12da <execute+0xcea>
    12bf:	e8 fc ff ff ff       	call   12c0 <execute+0xcd0>
    12c4:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    12c9:	ba 92 06 00 00       	mov    edx,0x692
    12ce:	89 d8                	mov    eax,ebx
    12d0:	e8 2b ed ff ff       	call   0 <tprint>
    12d5:	e9 6a f3 ff ff       	jmp    644 <execute+0x54>
    12da:	50                   	push   eax
    12db:	50                   	push   eax
    12dc:	68 a8 06 00 00       	push   0x6a8
    12e1:	56                   	push   esi
    12e2:	e8 fc ff ff ff       	call   12e3 <execute+0xcf3>
    12e7:	83 c4 10             	add    esp,0x10
    12ea:	85 c0                	test   eax,eax
    12ec:	75 1b                	jne    1309 <execute+0xd19>
    12ee:	e8 fc ff ff ff       	call   12ef <execute+0xcff>
    12f3:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    12f8:	ba b1 06 00 00       	mov    edx,0x6b1
    12fd:	89 d8                	mov    eax,ebx
    12ff:	e8 fc ec ff ff       	call   0 <tprint>
    1304:	e9 3b f3 ff ff       	jmp    644 <execute+0x54>
    1309:	50                   	push   eax
    130a:	50                   	push   eax
    130b:	68 c4 06 00 00       	push   0x6c4
    1310:	56                   	push   esi
    1311:	e8 fc ff ff ff       	call   1312 <execute+0xd22>
    1316:	83 c4 10             	add    esp,0x10
    1319:	85 c0                	test   eax,eax
    131b:	75 2d                	jne    134a <execute+0xd5a>
    131d:	89 d8                	mov    eax,ebx
    131f:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
    1324:	ba cb 06 00 00       	mov    edx,0x6cb
    1329:	e8 d2 ec ff ff       	call   0 <tprint>
    132e:	83 ec 0c             	sub    esp,0xc
    1331:	68 f4 01 00 00       	push   0x1f4
    1336:	e8 fc ff ff ff       	call   1337 <execute+0xd47>
    133b:	b8 fe ff ff ff       	mov    eax,0xfffffffe
    1340:	e6 64                	out    0x64,al
    1342:	83 c4 10             	add    esp,0x10
    1345:	e9 fa f2 ff ff       	jmp    644 <execute+0x54>
    134a:	55                   	push   ebp
    134b:	55                   	push   ebp
    134c:	68 da 06 00 00       	push   0x6da
    1351:	56                   	push   esi
    1352:	e8 fc ff ff ff       	call   1353 <execute+0xd63>
    1357:	83 c4 10             	add    esp,0x10
    135a:	85 c0                	test   eax,eax
    135c:	75 11                	jne    136f <execute+0xd7f>
    135e:	ba b1 01 00 00       	mov    edx,0x1b1
    1363:	89 d8                	mov    eax,ebx
    1365:	e8 76 f0 ff ff       	call   3e0 <cmd_ls>
    136a:	e9 d5 f2 ff ff       	jmp    644 <execute+0x54>
    136f:	57                   	push   edi
    1370:	6a 03                	push   0x3
    1372:	68 dd 06 00 00       	push   0x6dd
    1377:	56                   	push   esi
    1378:	e8 fc ff ff ff       	call   1379 <execute+0xd89>
    137d:	83 c4 10             	add    esp,0x10
    1380:	85 c0                	test   eax,eax
    1382:	75 0f                	jne    1393 <execute+0xda3>
    1384:	8d 56 03             	lea    edx,[esi+0x3]
    1387:	89 d8                	mov    eax,ebx
    1389:	e8 52 f0 ff ff       	call   3e0 <cmd_ls>
    138e:	e9 b1 f2 ff ff       	jmp    644 <execute+0x54>
    1393:	51                   	push   ecx
    1394:	6a 04                	push   0x4
    1396:	68 e1 06 00 00       	push   0x6e1
    139b:	56                   	push   esi
    139c:	e8 fc ff ff ff       	call   139d <execute+0xdad>
    13a1:	83 c4 10             	add    esp,0x10
    13a4:	85 c0                	test   eax,eax
    13a6:	75 1c                	jne    13c4 <execute+0xdd4>
    13a8:	80 7e 04 00          	cmp    BYTE PTR [esi+0x4],0x0
    13ac:	75 3f                	jne    13ed <execute+0xdfd>
    13ae:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    13b3:	ba e6 06 00 00       	mov    edx,0x6e6
    13b8:	89 d8                	mov    eax,ebx
    13ba:	e8 41 ec ff ff       	call   0 <tprint>
    13bf:	e9 80 f2 ff ff       	jmp    644 <execute+0x54>
    13c4:	50                   	push   eax
    13c5:	6a 05                	push   0x5
    13c7:	68 d9 07 00 00       	push   0x7d9
    13cc:	56                   	push   esi
    13cd:	e8 fc ff ff ff       	call   13ce <execute+0xdde>
    13d2:	83 c4 10             	add    esp,0x10
    13d5:	85 c0                	test   eax,eax
    13d7:	75 74                	jne    144d <execute+0xe5d>
    13d9:	8d 56 05             	lea    edx,[esi+0x5]
    13dc:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    13e1:	89 d8                	mov    eax,ebx
    13e3:	e8 18 ec ff ff       	call   0 <tprint>
    13e8:	e9 57 f2 ff ff       	jmp    644 <execute+0x54>
    13ed:	83 c6 04             	add    esi,0x4
    13f0:	52                   	push   edx
    13f1:	52                   	push   edx
    13f2:	68 fa 06 00 00       	push   0x6fa
    13f7:	56                   	push   esi
    13f8:	e8 fc ff ff ff       	call   13f9 <execute+0xe09>
    13fd:	83 c4 10             	add    esp,0x10
    1400:	85 c0                	test   eax,eax
    1402:	75 71                	jne    1475 <execute+0xe85>
    1404:	89 d8                	mov    eax,ebx
    1406:	b9 86 70 6c 00       	mov    ecx,0x6c7086
    140b:	ba 0b 07 00 00       	mov    edx,0x70b
    1410:	e8 eb eb ff ff       	call   0 <tprint>
    1415:	89 d8                	mov    eax,ebx
    1417:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    141c:	ba 24 07 00 00       	mov    edx,0x724
    1421:	e8 da eb ff ff       	call   0 <tprint>
    1426:	89 d8                	mov    eax,ebx
    1428:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    142d:	ba 3d 07 00 00       	mov    edx,0x73d
    1432:	e8 c9 eb ff ff       	call   0 <tprint>
    1437:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    143c:	ba 53 07 00 00       	mov    edx,0x753
    1441:	89 d8                	mov    eax,ebx
    1443:	e8 b8 eb ff ff       	call   0 <tprint>
    1448:	e9 f7 f1 ff ff       	jmp    644 <execute+0x54>
    144d:	50                   	push   eax
    144e:	6a 07                	push   0x7
    1450:	68 df 07 00 00       	push   0x7df
    1455:	56                   	push   esi
    1456:	e8 fc ff ff ff       	call   1457 <execute+0xe67>
    145b:	83 c4 10             	add    esp,0x10
    145e:	85 c0                	test   eax,eax
    1460:	0f 85 92 00 00 00    	jne    14f8 <execute+0xf08>
    1466:	8d 56 07             	lea    edx,[esi+0x7]
    1469:	89 d8                	mov    eax,ebx
    146b:	e8 c0 ed ff ff       	call   230 <cmd_cowsay>
    1470:	e9 cf f1 ff ff       	jmp    644 <execute+0x54>
    1475:	50                   	push   eax
    1476:	50                   	push   eax
    1477:	68 68 07 00 00       	push   0x768
    147c:	56                   	push   esi
    147d:	e8 fc ff ff ff       	call   147e <execute+0xe8e>
    1482:	83 c4 10             	add    esp,0x10
    1485:	85 c0                	test   eax,eax
    1487:	0f 85 8d 00 00 00    	jne    151a <execute+0xf2a>
    148d:	89 d8                	mov    eax,ebx
    148f:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    1494:	ba 7c 07 00 00       	mov    edx,0x77c
    1499:	e8 62 eb ff ff       	call   0 <tprint>
    149e:	89 d8                	mov    eax,ebx
    14a0:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    14a5:	ba 98 07 00 00       	mov    edx,0x798
    14aa:	e8 51 eb ff ff       	call   0 <tprint>
    14af:	89 d8                	mov    eax,ebx
    14b1:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    14b6:	ba 40 03 00 00       	mov    edx,0x340
    14bb:	e8 40 eb ff ff       	call   0 <tprint>
    14c0:	89 d8                	mov    eax,ebx
    14c2:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    14c7:	ba 64 03 00 00       	mov    edx,0x364
    14cc:	e8 2f eb ff ff       	call   0 <tprint>
    14d1:	89 d8                	mov    eax,ebx
    14d3:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    14d8:	ba 88 03 00 00       	mov    edx,0x388
    14dd:	e8 1e eb ff ff       	call   0 <tprint>
    14e2:	b9 a1 e3 a6 00       	mov    ecx,0xa6e3a1
    14e7:	ba ad 07 00 00       	mov    edx,0x7ad
    14ec:	89 d8                	mov    eax,ebx
    14ee:	e8 0d eb ff ff       	call   0 <tprint>
    14f3:	e9 4c f1 ff ff       	jmp    644 <execute+0x54>
    14f8:	50                   	push   eax
    14f9:	50                   	push   eax
    14fa:	68 e7 07 00 00       	push   0x7e7
    14ff:	56                   	push   esi
    1500:	e8 fc ff ff ff       	call   1501 <execute+0xf11>
    1505:	83 c4 10             	add    esp,0x10
    1508:	85 c0                	test   eax,eax
    150a:	75 24                	jne    1530 <execute+0xf40>
    150c:	31 d2                	xor    edx,edx
    150e:	89 d8                	mov    eax,ebx
    1510:	e8 1b ed ff ff       	call   230 <cmd_cowsay>
    1515:	e9 2a f1 ff ff       	jmp    644 <execute+0x54>
    151a:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    151f:	ba c3 07 00 00       	mov    edx,0x7c3
    1524:	89 d8                	mov    eax,ebx
    1526:	e8 d5 ea ff ff       	call   0 <tprint>
    152b:	e9 14 f1 ff ff       	jmp    644 <execute+0x54>
    1530:	50                   	push   eax
    1531:	50                   	push   eax
    1532:	68 ee 07 00 00       	push   0x7ee
    1537:	56                   	push   esi
    1538:	e8 fc ff ff ff       	call   1539 <execute+0xf49>
    153d:	83 c4 10             	add    esp,0x10
    1540:	85 c0                	test   eax,eax
    1542:	75 16                	jne    155a <execute+0xf6a>
    1544:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    1549:	ba f3 07 00 00       	mov    edx,0x7f3
    154e:	89 d8                	mov    eax,ebx
    1550:	e8 ab ea ff ff       	call   0 <tprint>
    1555:	e9 ea f0 ff ff       	jmp    644 <execute+0x54>
    155a:	55                   	push   ebp
    155b:	55                   	push   ebp
    155c:	68 09 08 00 00       	push   0x809
    1561:	56                   	push   esi
    1562:	e8 fc ff ff ff       	call   1563 <execute+0xf73>
    1567:	83 c4 10             	add    esp,0x10
    156a:	85 c0                	test   eax,eax
    156c:	75 16                	jne    1584 <execute+0xf94>
    156e:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
    1573:	ba ac 03 00 00       	mov    edx,0x3ac
    1578:	89 d8                	mov    eax,ebx
    157a:	e8 81 ea ff ff       	call   0 <tprint>
    157f:	e9 c0 f0 ff ff       	jmp    644 <execute+0x54>
    1584:	57                   	push   edi
    1585:	6a 05                	push   0x5
    1587:	68 0e 08 00 00       	push   0x80e
    158c:	56                   	push   esi
    158d:	e8 fc ff ff ff       	call   158e <execute+0xf9e>
    1592:	83 c4 10             	add    esp,0x10
    1595:	85 c0                	test   eax,eax
    1597:	75 16                	jne    15af <execute+0xfbf>
    1599:	b9 af e2 f9 00       	mov    ecx,0xf9e2af
    159e:	ba d4 03 00 00       	mov    edx,0x3d4
    15a3:	89 d8                	mov    eax,ebx
    15a5:	e8 56 ea ff ff       	call   0 <tprint>
    15aa:	e9 95 f0 ff ff       	jmp    644 <execute+0x54>
    15af:	51                   	push   ecx
    15b0:	51                   	push   ecx
    15b1:	68 14 08 00 00       	push   0x814
    15b6:	56                   	push   esi
    15b7:	e8 fc ff ff ff       	call   15b8 <execute+0xfc8>
    15bc:	83 c4 10             	add    esp,0x10
    15bf:	85 c0                	test   eax,eax
    15c1:	75 16                	jne    15d9 <execute+0xfe9>
    15c3:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    15c8:	ba f8 03 00 00       	mov    edx,0x3f8
    15cd:	89 d8                	mov    eax,ebx
    15cf:	e8 2c ea ff ff       	call   0 <tprint>
    15d4:	e9 6b f0 ff ff       	jmp    644 <execute+0x54>
    15d9:	c6 44 24 33 00       	mov    BYTE PTR [esp+0x33],0x0
    15de:	50                   	push   eax
    15df:	50                   	push   eax
    15e0:	68 1d 08 00 00       	push   0x81d
    15e5:	8d 7c 24 3f          	lea    edi,[esp+0x3f]
    15e9:	57                   	push   edi
    15ea:	e8 fc ff ff ff       	call   15eb <execute+0xffb>
    15ef:	58                   	pop    eax
    15f0:	5a                   	pop    edx
    15f1:	56                   	push   esi
    15f2:	57                   	push   edi
    15f3:	e8 fc ff ff ff       	call   15f4 <execute+0x1004>
    15f8:	b9 a8 8b f3 00       	mov    ecx,0xf38ba8
    15fd:	89 fa                	mov    edx,edi
    15ff:	89 d8                	mov    eax,ebx
    1601:	e8 fa e9 ff ff       	call   0 <tprint>
    1606:	83 c4 10             	add    esp,0x10
    1609:	e9 36 f0 ff ff       	jmp    644 <execute+0x54>
    160e:	66 90                	xchg   ax,ax

00001610 <terminal_create>:
    1610:	53                   	push   ebx
    1611:	31 db                	xor    ebx,ebx
    1613:	83 ec 08             	sub    esp,0x8
    1616:	a1 00 00 00 00       	mov    eax,ds:0x0
    161b:	83 f8 0f             	cmp    eax,0xf
    161e:	7f 5b                	jg     167b <terminal_create+0x6b>
    1620:	8d 50 01             	lea    edx,[eax+0x1]
    1623:	83 ec 04             	sub    esp,0x4
    1626:	69 c0 ac 18 00 00    	imul   eax,eax,0x18ac
    162c:	68 ac 18 00 00       	push   0x18ac
    1631:	6a 00                	push   0x0
    1633:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
    1639:	8d 98 20 00 00 00    	lea    ebx,[eax+0x20]
    163f:	53                   	push   ebx
    1640:	e8 fc ff ff ff       	call   1641 <terminal_create+0x31>
    1645:	b9 fa b4 89 00       	mov    ecx,0x89b4fa
    164a:	ba 20 04 00 00       	mov    edx,0x420
    164f:	89 d8                	mov    eax,ebx
    1651:	e8 aa e9 ff ff       	call   0 <tprint>
    1656:	b9 c8 ad a6 00       	mov    ecx,0xa6adc8
    165b:	ba 44 04 00 00       	mov    edx,0x444
    1660:	89 d8                	mov    eax,ebx
    1662:	e8 99 e9 ff ff       	call   0 <tprint>
    1667:	b9 f4 d6 cd 00       	mov    ecx,0xcdd6f4
    166c:	ba 00 00 00 00       	mov    edx,0x0
    1671:	89 d8                	mov    eax,ebx
    1673:	e8 88 e9 ff ff       	call   0 <tprint>
    1678:	83 c4 10             	add    esp,0x10
    167b:	83 c4 08             	add    esp,0x8
    167e:	89 d8                	mov    eax,ebx
    1680:	5b                   	pop    ebx
    1681:	c3                   	ret
    1682:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
    1688:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    168f:	00 

00001690 <terminal_draw>:
    1690:	55                   	push   ebp
    1691:	57                   	push   edi
    1692:	56                   	push   esi
    1693:	53                   	push   ebx
    1694:	83 ec 1c             	sub    esp,0x1c
    1697:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
    169b:	8b 68 68             	mov    ebp,DWORD PTR [eax+0x68]
    169e:	85 ed                	test   ebp,ebp
    16a0:	0f 84 07 01 00 00    	je     17ad <terminal_draw+0x11d>
    16a6:	8b 10                	mov    edx,DWORD PTR [eax]
    16a8:	8d 72 08             	lea    esi,[edx+0x8]
    16ab:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    16ae:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    16b1:	8d 48 e7             	lea    ecx,[eax-0x19]
    16b4:	83 e8 28             	sub    eax,0x28
    16b7:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
    16bb:	0f 49 c8             	cmovns ecx,eax
    16be:	b8 18 00 00 00       	mov    eax,0x18
    16c3:	c1 f9 04             	sar    ecx,0x4
    16c6:	83 e9 01             	sub    ecx,0x1
    16c9:	39 c1                	cmp    ecx,eax
    16cb:	0f 4f c8             	cmovg  ecx,eax
    16ce:	8b 85 98 07 00 00    	mov    eax,DWORD PTR [ebp+0x798]
    16d4:	89 c7                	mov    edi,eax
    16d6:	29 cf                	sub    edi,ecx
    16d8:	39 c8                	cmp    eax,ecx
    16da:	b9 00 00 00 00       	mov    ecx,0x0
    16df:	0f 4f cf             	cmovg  ecx,edi
    16e2:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
    16e6:	89 cb                	mov    ebx,ecx
    16e8:	39 c8                	cmp    eax,ecx
    16ea:	7e 2b                	jle    1717 <terminal_draw+0x87>
    16ec:	8d 7a 22             	lea    edi,[edx+0x22]
    16ef:	90                   	nop
    16f0:	6b c3 4d             	imul   eax,ebx,0x4d
    16f3:	ff b4 9d 38 07 00 00 	push   DWORD PTR [ebp+ebx*4+0x738]
    16fa:	83 c3 01             	add    ebx,0x1
    16fd:	01 e8                	add    eax,ebp
    16ff:	50                   	push   eax
    1700:	57                   	push   edi
    1701:	83 c7 10             	add    edi,0x10
    1704:	56                   	push   esi
    1705:	e8 fc ff ff ff       	call   1706 <terminal_draw+0x76>
    170a:	8b 85 98 07 00 00    	mov    eax,DWORD PTR [ebp+0x798]
    1710:	83 c4 10             	add    esp,0x10
    1713:	39 d8                	cmp    eax,ebx
    1715:	7f d9                	jg     16f0 <terminal_draw+0x60>
    1717:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
    171b:	2b 44 24 0c          	sub    eax,DWORD PTR [esp+0xc]
    171f:	83 ec 0c             	sub    esp,0xc
    1722:	68 00 00 00 00       	push   0x0
    1727:	c1 e0 04             	shl    eax,0x4
    172a:	8d 5c 02 22          	lea    ebx,[edx+eax*1+0x22]
    172e:	e8 fc ff ff ff       	call   172f <terminal_draw+0x9f>
    1733:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
    1737:	89 c7                	mov    edi,eax
    1739:	68 a1 e3 a6 00       	push   0xa6e3a1
    173e:	c1 e7 03             	shl    edi,0x3
    1741:	68 00 00 00 00       	push   0x0
    1746:	53                   	push   ebx
    1747:	56                   	push   esi
    1748:	e8 fc ff ff ff       	call   1749 <terminal_draw+0xb9>
    174d:	83 c4 20             	add    esp,0x20
    1750:	8d 04 37             	lea    eax,[edi+esi*1]
    1753:	68 fa b4 89 00       	push   0x89b4fa
    1758:	68 3f 08 00 00       	push   0x83f
    175d:	53                   	push   ebx
    175e:	50                   	push   eax
    175f:	e8 fc ff ff ff       	call   1760 <terminal_draw+0xd0>
    1764:	8d 44 37 38          	lea    eax,[edi+esi*1+0x38]
    1768:	68 f4 d6 cd 00       	push   0xcdd6f4
    176d:	68 47 08 00 00       	push   0x847
    1772:	53                   	push   ebx
    1773:	50                   	push   eax
    1774:	e8 fc ff ff ff       	call   1775 <terminal_draw+0xe5>
    1779:	83 c4 20             	add    esp,0x20
    177c:	8d 85 9c 07 00 00    	lea    eax,[ebp+0x79c]
    1782:	68 f4 d6 cd 00       	push   0xcdd6f4
    1787:	50                   	push   eax
    1788:	8d 44 37 50          	lea    eax,[edi+esi*1+0x50]
    178c:	53                   	push   ebx
    178d:	50                   	push   eax
    178e:	e8 fc ff ff ff       	call   178f <terminal_draw+0xff>
    1793:	8b ad a0 08 00 00    	mov    ebp,DWORD PTR [ebp+0x8a0]
    1799:	e8 fc ff ff ff       	call   179a <terminal_draw+0x10a>
    179e:	ba cd cc cc cc       	mov    edx,0xcccccccd
    17a3:	83 c4 10             	add    esp,0x10
    17a6:	f7 e2                	mul    edx
    17a8:	83 e2 20             	and    edx,0x20
    17ab:	75 0b                	jne    17b8 <terminal_draw+0x128>
    17ad:	83 c4 1c             	add    esp,0x1c
    17b0:	5b                   	pop    ebx
    17b1:	5e                   	pop    esi
    17b2:	5f                   	pop    edi
    17b3:	5d                   	pop    ebp
    17b4:	c3                   	ret
    17b5:	8d 76 00             	lea    esi,[esi+0x0]
    17b8:	83 ec 0c             	sub    esp,0xc
    17bb:	68 fa b4 89 00       	push   0x89b4fa
    17c0:	6a 10                	push   0x10
    17c2:	6a 02                	push   0x2
    17c4:	53                   	push   ebx
    17c5:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
    17c9:	8d 44 05 0a          	lea    eax,[ebp+eax*1+0xa]
    17cd:	8d 04 c6             	lea    eax,[esi+eax*8]
    17d0:	50                   	push   eax
    17d1:	e8 fc ff ff ff       	call   17d2 <terminal_draw+0x142>
    17d6:	83 c4 20             	add    esp,0x20
    17d9:	83 c4 1c             	add    esp,0x1c
    17dc:	5b                   	pop    ebx
    17dd:	5e                   	pop    esi
    17de:	5f                   	pop    edi
    17df:	5d                   	pop    ebp
    17e0:	c3                   	ret
    17e1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    17e8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    17ef:	00 

000017f0 <terminal_on_key>:
    17f0:	57                   	push   edi
    17f1:	56                   	push   esi
    17f2:	53                   	push   ebx
    17f3:	83 ec 10             	sub    esp,0x10
    17f6:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
    17fa:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
    17fe:	8b 58 68             	mov    ebx,DWORD PTR [eax+0x68]
    1801:	85 db                	test   ebx,ebx
    1803:	74 5b                	je     1860 <terminal_on_key+0x70>
    1805:	80 fa 0a             	cmp    dl,0xa
    1808:	0f 8f 22 02 00 00    	jg     1a30 <terminal_on_key+0x240>
    180e:	80 fa f8             	cmp    dl,0xf8
    1811:	7c 4d                	jl     1860 <terminal_on_key+0x70>
    1813:	83 c2 08             	add    edx,0x8
    1816:	80 fa 12             	cmp    dl,0x12
    1819:	77 45                	ja     1860 <terminal_on_key+0x70>
    181b:	0f b6 d2             	movzx  edx,dl
    181e:	ff 24 95 00 00 00 00 	jmp    DWORD PTR [edx*4+0x0]
    1825:	8d 76 00             	lea    esi,[esi+0x0]
    1828:	8b 93 a4 18 00 00    	mov    edx,DWORD PTR [ebx+0x18a4]
    182e:	8b 83 a8 18 00 00    	mov    eax,DWORD PTR [ebx+0x18a8]
    1834:	8d 4a ff             	lea    ecx,[edx-0x1]
    1837:	39 c8                	cmp    eax,ecx
    1839:	0f 8c 61 02 00 00    	jl     1aa0 <terminal_on_key+0x2b0>
    183f:	89 93 a8 18 00 00    	mov    DWORD PTR [ebx+0x18a8],edx
    1845:	c6 83 9c 07 00 00 00 	mov    BYTE PTR [ebx+0x79c],0x0
    184c:	c7 83 9c 08 00 00 00 	mov    DWORD PTR [ebx+0x89c],0x0
    1853:	00 00 00 
    1856:	c7 83 a0 08 00 00 00 	mov    DWORD PTR [ebx+0x8a0],0x0
    185d:	00 00 00 
    1860:	83 c4 10             	add    esp,0x10
    1863:	5b                   	pop    ebx
    1864:	5e                   	pop    esi
    1865:	5f                   	pop    edi
    1866:	c3                   	ret
    1867:	90                   	nop
    1868:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    186f:	00 
    1870:	8b 83 9c 08 00 00    	mov    eax,DWORD PTR [ebx+0x89c]
    1876:	89 83 a0 08 00 00    	mov    DWORD PTR [ebx+0x8a0],eax
    187c:	eb e2                	jmp    1860 <terminal_on_key+0x70>
    187e:	66 90                	xchg   ax,ax
    1880:	8b 83 a0 08 00 00    	mov    eax,DWORD PTR [ebx+0x8a0]
    1886:	8b 93 9c 08 00 00    	mov    edx,DWORD PTR [ebx+0x89c]
    188c:	39 d0                	cmp    eax,edx
    188e:	7d d0                	jge    1860 <terminal_on_key+0x70>
    1890:	83 ec 04             	sub    esp,0x4
    1893:	29 c2                	sub    edx,eax
    1895:	52                   	push   edx
    1896:	8d 94 03 9d 07 00 00 	lea    edx,[ebx+eax*1+0x79d]
    189d:	8d 84 03 9c 07 00 00 	lea    eax,[ebx+eax*1+0x79c]
    18a4:	52                   	push   edx
    18a5:	50                   	push   eax
    18a6:	e8 fc ff ff ff       	call   18a7 <terminal_on_key+0xb7>
    18ab:	83 ab 9c 08 00 00 01 	sub    DWORD PTR [ebx+0x89c],0x1
    18b2:	83 c4 10             	add    esp,0x10
    18b5:	eb a9                	jmp    1860 <terminal_on_key+0x70>
    18b7:	90                   	nop
    18b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    18bf:	00 
    18c0:	8b 83 9c 08 00 00    	mov    eax,DWORD PTR [ebx+0x89c]
    18c6:	8d bb 9c 07 00 00    	lea    edi,[ebx+0x79c]
    18cc:	c6 84 03 9c 07 00 00 	mov    BYTE PTR [ebx+eax*1+0x79c],0x0
    18d3:	00 
    18d4:	80 bb 9c 07 00 00 00 	cmp    BYTE PTR [ebx+0x79c],0x0
    18db:	74 2e                	je     190b <terminal_on_key+0x11b>
    18dd:	8b 83 a4 18 00 00    	mov    eax,DWORD PTR [ebx+0x18a4]
    18e3:	85 c0                	test   eax,eax
    18e5:	0f 8f c5 01 00 00    	jg     1ab0 <terminal_on_key+0x2c0>
    18eb:	8d 50 01             	lea    edx,[eax+0x1]
    18ee:	c1 e0 08             	shl    eax,0x8
    18f1:	05 a4 08 00 00       	add    eax,0x8a4
    18f6:	83 ec 08             	sub    esp,0x8
    18f9:	01 d8                	add    eax,ebx
    18fb:	89 93 a4 18 00 00    	mov    DWORD PTR [ebx+0x18a4],edx
    1901:	57                   	push   edi
    1902:	50                   	push   eax
    1903:	e8 fc ff ff ff       	call   1904 <terminal_on_key+0x114>
    1908:	83 c4 10             	add    esp,0x10
    190b:	89 d8                	mov    eax,ebx
    190d:	89 fa                	mov    edx,edi
    190f:	e8 dc ec ff ff       	call   5f0 <execute>
    1914:	8b 83 a4 18 00 00    	mov    eax,DWORD PTR [ebx+0x18a4]
    191a:	c7 83 9c 08 00 00 00 	mov    DWORD PTR [ebx+0x89c],0x0
    1921:	00 00 00 
    1924:	c7 83 a0 08 00 00 00 	mov    DWORD PTR [ebx+0x8a0],0x0
    192b:	00 00 00 
    192e:	c6 83 9c 07 00 00 00 	mov    BYTE PTR [ebx+0x79c],0x0
    1935:	89 83 a8 18 00 00    	mov    DWORD PTR [ebx+0x18a8],eax
    193b:	e9 20 ff ff ff       	jmp    1860 <terminal_on_key+0x70>
    1940:	8b 83 a0 08 00 00    	mov    eax,DWORD PTR [ebx+0x8a0]
    1946:	85 c0                	test   eax,eax
    1948:	0f 8e 12 ff ff ff    	jle    1860 <terminal_on_key+0x70>
    194e:	8b 93 9c 08 00 00    	mov    edx,DWORD PTR [ebx+0x89c]
    1954:	83 ec 04             	sub    esp,0x4
    1957:	29 c2                	sub    edx,eax
    1959:	83 c2 01             	add    edx,0x1
    195c:	52                   	push   edx
    195d:	8d 94 03 9c 07 00 00 	lea    edx,[ebx+eax*1+0x79c]
    1964:	8d 84 03 9b 07 00 00 	lea    eax,[ebx+eax*1+0x79b]
    196b:	52                   	push   edx
    196c:	50                   	push   eax
    196d:	e8 fc ff ff ff       	call   196e <terminal_on_key+0x17e>
    1972:	83 ab a0 08 00 00 01 	sub    DWORD PTR [ebx+0x8a0],0x1
    1979:	83 c4 10             	add    esp,0x10
    197c:	83 ab 9c 08 00 00 01 	sub    DWORD PTR [ebx+0x89c],0x1
    1983:	e9 d8 fe ff ff       	jmp    1860 <terminal_on_key+0x70>
    1988:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    198f:	00 
    1990:	8b 83 a8 18 00 00    	mov    eax,DWORD PTR [ebx+0x18a8]
    1996:	85 c0                	test   eax,eax
    1998:	0f 8e c2 fe ff ff    	jle    1860 <terminal_on_key+0x70>
    199e:	83 e8 01             	sub    eax,0x1
    19a1:	89 83 a8 18 00 00    	mov    DWORD PTR [ebx+0x18a8],eax
    19a7:	c1 e0 08             	shl    eax,0x8
    19aa:	83 ec 08             	sub    esp,0x8
    19ad:	8d 93 9c 07 00 00    	lea    edx,[ebx+0x79c]
    19b3:	8d 84 03 a4 08 00 00 	lea    eax,[ebx+eax*1+0x8a4]
    19ba:	50                   	push   eax
    19bb:	52                   	push   edx
    19bc:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
    19c0:	e8 fc ff ff ff       	call   19c1 <terminal_on_key+0x1d1>
    19c5:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
    19c9:	89 14 24             	mov    DWORD PTR [esp],edx
    19cc:	e8 fc ff ff ff       	call   19cd <terminal_on_key+0x1dd>
    19d1:	83 c4 10             	add    esp,0x10
    19d4:	89 83 9c 08 00 00    	mov    DWORD PTR [ebx+0x89c],eax
    19da:	89 83 a0 08 00 00    	mov    DWORD PTR [ebx+0x8a0],eax
    19e0:	e9 7b fe ff ff       	jmp    1860 <terminal_on_key+0x70>
    19e5:	8d 76 00             	lea    esi,[esi+0x0]
    19e8:	8b 83 a0 08 00 00    	mov    eax,DWORD PTR [ebx+0x8a0]
    19ee:	85 c0                	test   eax,eax
    19f0:	0f 8e 6a fe ff ff    	jle    1860 <terminal_on_key+0x70>
    19f6:	83 e8 01             	sub    eax,0x1
    19f9:	89 83 a0 08 00 00    	mov    DWORD PTR [ebx+0x8a0],eax
    19ff:	e9 5c fe ff ff       	jmp    1860 <terminal_on_key+0x70>
    1a04:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    1a08:	8b 83 a0 08 00 00    	mov    eax,DWORD PTR [ebx+0x8a0]
    1a0e:	3b 83 9c 08 00 00    	cmp    eax,DWORD PTR [ebx+0x89c]
    1a14:	0f 8d 46 fe ff ff    	jge    1860 <terminal_on_key+0x70>
    1a1a:	83 c0 01             	add    eax,0x1
    1a1d:	89 83 a0 08 00 00    	mov    DWORD PTR [ebx+0x8a0],eax
    1a23:	e9 38 fe ff ff       	jmp    1860 <terminal_on_key+0x70>
    1a28:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    1a2f:	00 
    1a30:	8d 42 e0             	lea    eax,[edx-0x20]
    1a33:	3c 5e                	cmp    al,0x5e
    1a35:	0f 87 25 fe ff ff    	ja     1860 <terminal_on_key+0x70>
    1a3b:	8b 83 9c 08 00 00    	mov    eax,DWORD PTR [ebx+0x89c]
    1a41:	3d fe 00 00 00       	cmp    eax,0xfe
    1a46:	0f 8f 14 fe ff ff    	jg     1860 <terminal_on_key+0x70>
    1a4c:	8b 8b a0 08 00 00    	mov    ecx,DWORD PTR [ebx+0x8a0]
    1a52:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
    1a56:	83 ec 04             	sub    esp,0x4
    1a59:	29 c8                	sub    eax,ecx
    1a5b:	83 c0 01             	add    eax,0x1
    1a5e:	50                   	push   eax
    1a5f:	8d 84 0b 9c 07 00 00 	lea    eax,[ebx+ecx*1+0x79c]
    1a66:	50                   	push   eax
    1a67:	8d 84 0b 9d 07 00 00 	lea    eax,[ebx+ecx*1+0x79d]
    1a6e:	50                   	push   eax
    1a6f:	e8 fc ff ff ff       	call   1a70 <terminal_on_key+0x280>
    1a74:	8b 83 a0 08 00 00    	mov    eax,DWORD PTR [ebx+0x8a0]
    1a7a:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
    1a7e:	83 c4 10             	add    esp,0x10
    1a81:	88 94 03 9c 07 00 00 	mov    BYTE PTR [ebx+eax*1+0x79c],dl
    1a88:	83 c0 01             	add    eax,0x1
    1a8b:	83 83 9c 08 00 00 01 	add    DWORD PTR [ebx+0x89c],0x1
    1a92:	89 83 a0 08 00 00    	mov    DWORD PTR [ebx+0x8a0],eax
    1a98:	e9 c3 fd ff ff       	jmp    1860 <terminal_on_key+0x70>
    1a9d:	8d 76 00             	lea    esi,[esi+0x0]
    1aa0:	83 c0 01             	add    eax,0x1
    1aa3:	e9 f9 fe ff ff       	jmp    19a1 <terminal_on_key+0x1b1>
    1aa8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    1aaf:	00 
    1ab0:	c1 e0 08             	shl    eax,0x8
    1ab3:	83 ec 08             	sub    esp,0x8
    1ab6:	8d 84 03 a4 07 00 00 	lea    eax,[ebx+eax*1+0x7a4]
    1abd:	57                   	push   edi
    1abe:	50                   	push   eax
    1abf:	e8 fc ff ff ff       	call   1ac0 <terminal_on_key+0x2d0>
    1ac4:	83 c4 10             	add    esp,0x10
    1ac7:	85 c0                	test   eax,eax
    1ac9:	0f 84 3c fe ff ff    	je     190b <terminal_on_key+0x11b>
    1acf:	8b 83 a4 18 00 00    	mov    eax,DWORD PTR [ebx+0x18a4]
    1ad5:	83 f8 0f             	cmp    eax,0xf
    1ad8:	0f 8e 0d fe ff ff    	jle    18eb <terminal_on_key+0xfb>
    1ade:	8d 93 a4 08 00 00    	lea    edx,[ebx+0x8a4]
    1ae4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    1ae8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    1aef:	00 
    1af0:	83 ec 04             	sub    esp,0x4
    1af3:	89 d0                	mov    eax,edx
    1af5:	81 c2 00 01 00 00    	add    edx,0x100
    1afb:	68 00 01 00 00       	push   0x100
    1b00:	52                   	push   edx
    1b01:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
    1b05:	50                   	push   eax
    1b06:	e8 fc ff ff ff       	call   1b07 <terminal_on_key+0x317>
    1b0b:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
    1b0f:	8d 83 a4 17 00 00    	lea    eax,[ebx+0x17a4]
    1b15:	83 c4 10             	add    esp,0x10
    1b18:	39 d0                	cmp    eax,edx
    1b1a:	75 d4                	jne    1af0 <terminal_on_key+0x300>
    1b1c:	b8 a4 17 00 00       	mov    eax,0x17a4
    1b21:	ba 10 00 00 00       	mov    edx,0x10
    1b26:	e9 cb fd ff ff       	jmp    18f6 <terminal_on_key+0x106>

Disassembly of section .rodata.str1.4:

00000000 <.rodata.str1.4>:
   0:	20 20                	and    BYTE PTR [eax],ah
   2:	20 20                	and    BYTE PTR [eax],ah
   4:	20 20                	and    BYTE PTR [eax],ah
   6:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
   9:	5f                   	pop    edi
   a:	5f                   	pop    edi
   b:	20 20                	and    BYTE PTR [eax],ah
   d:	5f                   	pop    edi
   e:	20 20                	and    BYTE PTR [eax],ah
  10:	20 20                	and    BYTE PTR [eax],ah
  12:	20 20                	and    BYTE PTR [eax],ah
  14:	20 20                	and    BYTE PTR [eax],ah
  16:	20 20                	and    BYTE PTR [eax],ah
  18:	20 20                	and    BYTE PTR [eax],ah
  1a:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
  1d:	5f                   	pop    edi
  1e:	5f                   	pop    edi
  1f:	20 20                	and    BYTE PTR [eax],ah
  21:	5f                   	pop    edi
  22:	5f                   	pop    edi
  23:	5f                   	pop    edi
  24:	5f                   	pop    edi
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 20                	add    BYTE PTR [eax],ah
  29:	20 20                	and    BYTE PTR [eax],ah
  2b:	20 20                	and    BYTE PTR [eax],ah
  2d:	20 2f                	and    BYTE PTR [edi],ch
  2f:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
  32:	5f                   	pop    edi
  33:	7c 7c                	jl     b1 <.rodata.str1.4+0xb1>
  35:	20 7c 20 5f          	and    BYTE PTR [eax+eiz*1+0x5f],bh
  39:	5f                   	pop    edi
  3a:	5f                   	pop    edi
  3b:	20 20                	and    BYTE PTR [eax],ah
  3d:	5f                   	pop    edi
  3e:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
  41:	20 2f                	and    BYTE PTR [edi],ch
  43:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
  46:	20 5c 2f 20          	and    BYTE PTR [edi+ebp*1+0x20],bl
  4a:	5f                   	pop    edi
  4b:	5f                   	pop    edi
  4c:	5f                   	pop    edi
  4d:	7c 00                	jl     4f <.rodata.str1.4+0x4f>
  4f:	00 20                	add    BYTE PTR [eax],ah
  51:	20 20                	and    BYTE PTR [eax],ah
  53:	20 20                	and    BYTE PTR [eax],ah
  55:	20 5c 5f 5f          	and    BYTE PTR [edi+ebx*2+0x5f],bl
  59:	5f                   	pop    edi
  5a:	20 5c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bl
  5e:	7c 2f                	jl     8f <.rodata.str1.4+0x8f>
  60:	20 5f 20             	and    BYTE PTR [edi+0x20],bl
  63:	5c                   	pop    esp
  64:	7c 20                	jl     86 <.rodata.str1.4+0x86>
  66:	27                   	daa
  67:	5f                   	pop    edi
  68:	20 5c 20 7c          	and    BYTE PTR [eax+eiz*1+0x7c],bl
  6c:	20 20                	and    BYTE PTR [eax],ah
  6e:	7c 20                	jl     90 <.rodata.str1.4+0x90>
  70:	5c                   	pop    esp
  71:	5f                   	pop    edi
  72:	5f                   	pop    edi
  73:	5f                   	pop    edi
  74:	20 5c 00 00          	and    BYTE PTR [eax+eax*1+0x0],bl
  78:	20 20                	and    BYTE PTR [eax],ah
  7a:	20 20                	and    BYTE PTR [eax],ah
  7c:	20 20                	and    BYTE PTR [eax],ah
  7e:	20 5f 5f             	and    BYTE PTR [edi+0x5f],bl
  81:	5f                   	pop    edi
  82:	29 20                	sub    DWORD PTR [eax],esp
  84:	7c 20                	jl     a6 <.rodata.str1.4+0xa6>
  86:	7c 20                	jl     a8 <.rodata.str1.4+0xa8>
  88:	28 5f 29             	sub    BYTE PTR [edi+0x29],bl
  8b:	20 7c 20 7c          	and    BYTE PTR [eax+eiz*1+0x7c],bh
  8f:	5f                   	pop    edi
  90:	29 20                	sub    DWORD PTR [eax],esp
  92:	7c 20                	jl     b4 <.rodata.str1.4+0xb4>
  94:	7c 5f                	jl     f5 <.rodata.str1.4+0xf5>
  96:	5f                   	pop    edi
  97:	7c 20                	jl     b9 <.rodata.str1.4+0xb9>
  99:	7c 5f                	jl     fa <.rodata.str1.4+0xfa>
  9b:	5f                   	pop    edi
  9c:	5f                   	pop    edi
  9d:	29 20                	sub    DWORD PTR [eax],esp
  9f:	7c 00                	jl     a1 <.rodata.str1.4+0xa1>
  a1:	00 00                	add    BYTE PTR [eax],al
  a3:	00 20                	add    BYTE PTR [eax],ah
  a5:	20 20                	and    BYTE PTR [eax],ah
  a7:	20 20                	and    BYTE PTR [eax],ah
  a9:	20 7c 5f 5f          	and    BYTE PTR [edi+ebx*2+0x5f],bh
  ad:	5f                   	pop    edi
  ae:	5f                   	pop    edi
  af:	2f                   	das
  b0:	7c 5f                	jl     111 <.rodata.str1.4+0x111>
  b2:	7c 5c                	jl     110 <.rodata.str1.4+0x110>
  b4:	5f                   	pop    edi
  b5:	5f                   	pop    edi
  b6:	5f                   	pop    edi
  b7:	2f                   	das
  b8:	7c 20                	jl     da <.rodata.str1.4+0xda>
  ba:	2e 5f                	cs pop edi
  bc:	5f                   	pop    edi
  bd:	2f                   	das
  be:	20 5c 5f 5f          	and    BYTE PTR [edi+ebx*2+0x5f],bl
  c2:	5f                   	pop    edi
  c3:	5f                   	pop    edi
  c4:	2f                   	das
  c5:	7c 5f                	jl     126 <.rodata.str1.4+0x126>
  c7:	5f                   	pop    edi
  c8:	5f                   	pop    edi
  c9:	5f                   	pop    edi
  ca:	2f                   	das
  cb:	00 20                	add    BYTE PTR [eax],ah
  cd:	20 20                	and    BYTE PTR [eax],ah
  cf:	20 20                	and    BYTE PTR [eax],ah
  d1:	20 20                	and    BYTE PTR [eax],ah
  d3:	20 20                	and    BYTE PTR [eax],ah
  d5:	20 20                	and    BYTE PTR [eax],ah
  d7:	20 20                	and    BYTE PTR [eax],ah
  d9:	20 20                	and    BYTE PTR [eax],ah
  db:	20 20                	and    BYTE PTR [eax],ah
  dd:	20 20                	and    BYTE PTR [eax],ah
  df:	20 7c 5f 7c          	and    BYTE PTR [edi+ebx*2+0x7c],bh
  e3:	20 20                	and    BYTE PTR [eax],ah
  e5:	20 20                	and    BYTE PTR [eax],ah
  e7:	76 30                	jbe    119 <.rodata.str1.4+0x119>
  e9:	2e 32 00             	xor    al,BYTE PTR cs:[eax]
  ec:	20 20                	and    BYTE PTR [eax],ah
  ee:	48                   	dec    eax
  ef:	65 61                	gs popa
  f1:	70 3a                	jo     12d <.rodata.str1.4+0x12d>
  f3:	20 20                	and    BYTE PTR [eax],ah
  f5:	20 20                	and    BYTE PTR [eax],ah
  f7:	20 20                	and    BYTE PTR [eax],ah
  f9:	20 20                	and    BYTE PTR [eax],ah
  fb:	31 36                	xor    DWORD PTR [esi],esi
  fd:	20 4d 69             	and    BYTE PTR [ebp+0x69],cl
 100:	42                   	inc    edx
 101:	20 28                	and    BYTE PTR [eax],ch
 103:	62 75 6d             	bound  esi,QWORD PTR [ebp+0x6d]
 106:	70 20                	jo     128 <.rodata.str1.4+0x128>
 108:	61                   	popa
 109:	6c                   	ins    BYTE PTR es:[edi],dx
 10a:	6c                   	ins    BYTE PTR es:[edi],dx
 10b:	6f                   	outs   dx,DWORD PTR ds:[esi]
 10c:	63 61 74             	arpl   WORD PTR [ecx+0x74],esp
 10f:	6f                   	outs   dx,DWORD PTR ds:[esi]
 110:	72 29                	jb     13b <.rodata.str1.4+0x13b>
 112:	00 00                	add    BYTE PTR [eax],al
 114:	20 20                	and    BYTE PTR [eax],ah
 116:	46                   	inc    esi
 117:	72 61                	jb     17a <.rodata.str1.4+0x17a>
 119:	6d                   	ins    DWORD PTR es:[edi],dx
 11a:	65 62 75 66          	bound  esi,QWORD PTR gs:[ebp+0x66]
 11e:	66 65 72 3a          	data16 gs jb 15c <.rodata.str1.4+0x15c>
 122:	20 33                	and    BYTE PTR [ebx],dh
 124:	20 4d 69             	and    BYTE PTR [ebp+0x69],cl
 127:	42                   	inc    edx
 128:	20 28                	and    BYTE PTR [eax],ch
 12a:	31 30                	xor    DWORD PTR [eax],esi
 12c:	32 34 78             	xor    dh,BYTE PTR [eax+edi*2]
 12f:	37                   	aaa
 130:	36 38 78 33          	cmp    BYTE PTR ss:[eax+0x33],bh
 134:	32 29                	xor    ch,BYTE PTR [ecx]
 136:	00 00                	add    BYTE PTR [eax],al
 138:	20 20                	and    BYTE PTR [eax],ah
 13a:	2d 72 77 2d 72       	sub    eax,0x722d7772
 13f:	2d 2d 72 2d 2d       	sub    eax,0x2d2d722d
 144:	20 20                	and    BYTE PTR [eax],ah
 146:	2f                   	das
 147:	65 74 63             	gs je  1ad <.rodata.str1.4+0x1ad>
 14a:	2f                   	das
 14b:	73 6c                	jae    1b9 <.rodata.str1.4+0x1b9>
 14d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 14e:	70 6f                	jo     1bf <.rodata.str1.4+0x1bf>
 150:	73 2e                	jae    180 <.rodata.str1.4+0x180>
 152:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
 155:	66 20 20             	data16 and BYTE PTR [eax],ah
 158:	20 20                	and    BYTE PTR [eax],ah
 15a:	28 34 32             	sub    BYTE PTR [edx+esi*1],dh
 15d:	20 42 29             	and    BYTE PTR [edx+0x29],al
 160:	00 00                	add    BYTE PTR [eax],al
 162:	00 00                	add    BYTE PTR [eax],al
 164:	20 20                	and    BYTE PTR [eax],ah
 166:	2d 72 77 78 72       	sub    eax,0x72787772
 16b:	2d 78 72 2d 78       	sub    eax,0x782d7278
 170:	20 20                	and    BYTE PTR [eax],ah
 172:	2f                   	das
 173:	62 69 6e             	bound  ebp,QWORD PTR [ecx+0x6e]
 176:	2f                   	das
 177:	73 6c                	jae    1e5 <.rodata.str1.4+0x1e5>
 179:	6f                   	outs   dx,DWORD PTR ds:[esi]
 17a:	70 74                	jo     1f0 <.rodata.str1.4+0x1f0>
 17c:	65 72 6d             	gs jb  1ec <.rodata.str1.4+0x1ec>
 17f:	20 20                	and    BYTE PTR [eax],ah
 181:	20 20                	and    BYTE PTR [eax],ah
 183:	20 20                	and    BYTE PTR [eax],ah
 185:	20 28                	and    BYTE PTR [eax],ch
 187:	31 33                	xor    DWORD PTR [ebx],esi
 189:	33 37                	xor    esi,DWORD PTR [edi]
 18b:	20 42 29             	and    BYTE PTR [edx+0x29],al
 18e:	00 00                	add    BYTE PTR [eax],al
 190:	20 20                	and    BYTE PTR [eax],ah
 192:	2d 72 77 2d 72       	sub    eax,0x722d7772
 197:	2d 2d 72 2d 2d       	sub    eax,0x2d2d722d
 19c:	20 20                	and    BYTE PTR [eax],ah
 19e:	2f                   	das
 19f:	68 6f 6d 65 2f       	push   0x2f656d6f
 1a4:	73 6c                	jae    212 <.rodata.str1.4+0x212>
 1a6:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1a7:	70 2f                	jo     1d8 <.rodata.str1.4+0x1d8>
 1a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
 1aa:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1ab:	74 65                	je     212 <.rodata.str1.4+0x212>
 1ad:	73 2e                	jae    1dd <.rodata.str1.4+0x1dd>
 1af:	74 78                	je     229 <.rodata.str1.4+0x229>
 1b1:	74 20                	je     1d3 <.rodata.str1.4+0x1d3>
 1b3:	28 30                	sub    BYTE PTR [eax],dh
 1b5:	20 42 29             	and    BYTE PTR [edx+0x29],al
 1b8:	00 00                	add    BYTE PTR [eax],al
 1ba:	00 00                	add    BYTE PTR [eax],al
 1bc:	20 20                	and    BYTE PTR [eax],ah
 1be:	2d 72 77 2d 72       	sub    eax,0x722d7772
 1c3:	2d 2d 72 2d 2d       	sub    eax,0x2d2d722d
 1c8:	20 20                	and    BYTE PTR [eax],ah
 1ca:	2f                   	das
 1cb:	76 61                	jbe    22e <.rodata.str1.4+0x22e>
 1cd:	72 2f                	jb     1fe <.rodata.str1.4+0x1fe>
 1cf:	6c                   	ins    BYTE PTR es:[edi],dx
 1d0:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1d1:	67 2f                	addr16 das
 1d3:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
 1d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
 1d9:	2e 6c                	cs ins BYTE PTR es:[edi],dx
 1db:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1dc:	67 20 20             	and    BYTE PTR [bx+si],ah
 1df:	28 36                	sub    BYTE PTR [esi],dh
 1e1:	39 20                	cmp    DWORD PTR [eax],esp
 1e3:	42                   	inc    edx
 1e4:	29 00                	sub    DWORD PTR [eax],eax
 1e6:	00 00                	add    BYTE PTR [eax],al
 1e8:	20 20                	and    BYTE PTR [eax],ah
 1ea:	28 76 69             	sub    BYTE PTR [esi+0x69],dh
 1ed:	72 74                	jb     263 <.rodata.str1.4+0x263>
 1ef:	75 61                	jne    252 <.rodata.str1.4+0x252>
 1f1:	6c                   	ins    BYTE PTR es:[edi],dx
 1f2:	20 66 69             	and    BYTE PTR [esi+0x69],ah
 1f5:	6c                   	ins    BYTE PTR es:[edi],dx
 1f6:	65 73 79             	gs jae 272 <.rodata.str1.4+0x272>
 1f9:	73 74                	jae    26f <.rodata.str1.4+0x26f>
 1fb:	65 6d                	gs ins DWORD PTR es:[edi],dx
 1fd:	20 2d 2d 20 6e 6f    	and    BYTE PTR ds:0x6f6e202d,ch
 203:	74 68                	je     26d <.rodata.str1.4+0x26d>
 205:	69 6e 67 20 72 65 61 	imul   ebp,DWORD PTR [esi+0x67],0x61657220
 20c:	6c                   	ins    BYTE PTR es:[edi],dx
 20d:	20 68 65             	and    BYTE PTR [eax+0x65],ch
 210:	72 65                	jb     277 <.rodata.str1.4+0x277>
 212:	29 00                	sub    DWORD PTR [eax],eax
 214:	20 20                	and    BYTE PTR [eax],ah
 216:	69 66 63 6f 6e 66 69 	imul   esp,DWORD PTR [esi+0x63],0x69666e6f
 21d:	67 20 20             	and    BYTE PTR [bx+si],ah
 220:	4e                   	dec    esi
 221:	65 74 77             	gs je  29b <.rodata.str1.4+0x29b>
 224:	6f                   	outs   dx,DWORD PTR ds:[esi]
 225:	72 6b                	jb     292 <.rodata.str1.4+0x292>
 227:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 22a:	6e                   	outs   dx,BYTE PTR ds:[esi]
 22b:	66 69 67 20 28 49    	imul   sp,WORD PTR [edi+0x20],0x4928
 231:	50                   	push   eax
 232:	2c 20                	sub    al,0x20
 234:	4d                   	dec    ebp
 235:	41                   	inc    ecx
 236:	43                   	inc    ebx
 237:	2c 20                	sub    al,0x20
 239:	67 61                	addr16 popa
 23b:	74 65                	je     2a2 <.rodata.str1.4+0x2a2>
 23d:	77 61                	ja     2a0 <.rodata.str1.4+0x2a0>
 23f:	79 29                	jns    26a <.rodata.str1.4+0x26a>
 241:	00 00                	add    BYTE PTR [eax],al
 243:	00 20                	add    BYTE PTR [eax],ah
 245:	20 70 69             	and    BYTE PTR [eax+0x69],dh
 248:	6e                   	outs   dx,BYTE PTR ds:[esi]
 249:	67 20 20             	and    BYTE PTR [bx+si],ah
 24c:	20 20                	and    BYTE PTR [eax],ah
 24e:	20 20                	and    BYTE PTR [eax],ah
 250:	50                   	push   eax
 251:	69 6e 67 20 68 6f 73 	imul   ebp,DWORD PTR [esi+0x67],0x736f6820
 258:	74 20                	je     27a <.rodata.str1.4+0x27a>
 25a:	28 65 2e             	sub    BYTE PTR [ebp+0x2e],ah
 25d:	67 2e 20 70 69       	and    BYTE PTR cs:[bx+si+0x69],dh
 262:	6e                   	outs   dx,BYTE PTR ds:[esi]
 263:	67 20 31             	and    BYTE PTR [bx+di],dh
 266:	30 2e                	xor    BYTE PTR [esi],ch
 268:	30 2e                	xor    BYTE PTR [esi],ch
 26a:	32 2e                	xor    ch,BYTE PTR [esi]
 26c:	32 29                	xor    ch,BYTE PTR [ecx]
 26e:	00 00                	add    BYTE PTR [eax],al
 270:	20 20                	and    BYTE PTR [eax],ah
 272:	64 68 63 70 20 20    	fs push 0x20207063
 278:	20 20                	and    BYTE PTR [eax],ah
 27a:	20 20                	and    BYTE PTR [eax],ah
 27c:	52                   	push   edx
 27d:	65 71 75             	gs jno 2f5 <.rodata.str1.4+0x2f5>
 280:	65 73 74             	gs jae 2f7 <.rodata.str1.4+0x2f7>
 283:	20 44 48 43          	and    BYTE PTR [eax+ecx*2+0x43],al
 287:	50                   	push   eax
 288:	20 6c 65 61          	and    BYTE PTR [ebp+eiz*2+0x61],ch
 28c:	73 65                	jae    2f3 <.rodata.str1.4+0x2f3>
 28e:	00 00                	add    BYTE PTR [eax],al
 290:	20 20                	and    BYTE PTR [eax],ah
 292:	6d                   	ins    DWORD PTR es:[edi],dx
 293:	61                   	popa
 294:	74 72                	je     308 <.rodata.str1.4+0x308>
 296:	69 78 20 20 20 20 54 	imul   edi,DWORD PTR [eax+0x20],0x54202020
 29d:	68 65 20 4d 61       	push   0x614d2065
 2a2:	74 72                	je     316 <.rodata.str1.4+0x316>
 2a4:	69 78 20 68 61 73 20 	imul   edi,DWORD PTR [eax+0x20],0x20736168
 2ab:	79 6f                	jns    31c <.rodata.str1.4+0x31c>
 2ad:	75 00                	jne    2af <.rodata.str1.4+0x2af>
 2af:	00 20                	add    BYTE PTR [eax],ah
 2b1:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
 2b4:	6f                   	outs   dx,DWORD PTR ds:[esi]
 2b5:	70 4f                	jo     306 <.rodata.str1.4+0x306>
 2b7:	53                   	push   ebx
 2b8:	20 30                	and    BYTE PTR [eax],dh
 2ba:	2e 32 20             	xor    ah,BYTE PTR cs:[eax]
 2bd:	53                   	push   ebx
 2be:	6c                   	ins    BYTE PTR es:[edi],dx
 2bf:	6f                   	outs   dx,DWORD PTR ds:[esi]
 2c0:	70 4b                	jo     30d <.rodata.str1.4+0x30d>
 2c2:	65 72 6e             	gs jb  333 <.rodata.str1.4+0x333>
 2c5:	65 6c                	gs ins BYTE PTR es:[edi],dx
 2c7:	20 69 36             	and    BYTE PTR [ecx+0x36],ch
 2ca:	38 36                	cmp    BYTE PTR [esi],dh
 2cc:	20 28                	and    BYTE PTR [eax],ch
 2ce:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
 2d1:	70 69                	jo     33c <.rodata.str1.4+0x33c>
 2d3:	6c                   	ins    BYTE PTR es:[edi],dx
 2d4:	65 64 20 46 65       	gs and BYTE PTR fs:[esi+0x65],al
 2d9:	62 20                	bound  esp,QWORD PTR [eax]
 2db:	32 32                	xor    dh,BYTE PTR [edx]
 2dd:	20 32                	and    BYTE PTR [edx],dh
 2df:	30 32                	xor    BYTE PTR [edx],dh
 2e1:	36 29 00             	sub    DWORD PTR ss:[eax],eax
 2e4:	20 20                	and    BYTE PTR [eax],ah
 2e6:	4e                   	dec    esi
 2e7:	6f                   	outs   dx,DWORD PTR ds:[esi]
 2e8:	20 49 50             	and    BYTE PTR [ecx+0x50],cl
 2eb:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 2ee:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2ef:	66 69 67 75 72 65    	imul   sp,WORD PTR [edi+0x75],0x6572
 2f5:	64 2e 20 52 75       	fs and BYTE PTR cs:[edx+0x75],dl
 2fa:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2fb:	20 27                	and    BYTE PTR [edi],ah
 2fd:	64 68 63 70 27 20    	fs push 0x20277063
 303:	74 6f                	je     374 <.rodata.str1.4+0x374>
 305:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 308:	71 75                	jno    37f <.rodata.str1.4+0x37f>
 30a:	65 73 74             	gs jae 381 <.rodata.str1.4+0x381>
 30d:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
 310:	65 2e 00 00          	gs add BYTE PTR cs:[eax],al
 314:	20 20                	and    BYTE PTR [eax],ah
 316:	54                   	push   esp
 317:	68 65 6d 65 3a       	push   0x3a656d65
 31c:	20 43 61             	and    BYTE PTR [ebx+0x61],al
 31f:	74 70                	je     391 <.rodata.str1.4+0x391>
 321:	70 75                	jo     398 <.rodata.str1.4+0x398>
 323:	63 63 69             	arpl   WORD PTR [ebx+0x69],esp
 326:	6e                   	outs   dx,BYTE PTR ds:[esi]
 327:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
 32a:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
 32d:	20 28                	and    BYTE PTR [eax],ch
 32f:	66 75 6c             	data16 jne 39e <.rodata.str1.4+0x39e>
 332:	6c                   	ins    BYTE PTR es:[edi],dx
 333:	20 70 61             	and    BYTE PTR [eax+0x61],dh
 336:	6c                   	ins    BYTE PTR es:[edi],dx
 337:	65 74 74             	gs je  3ae <.rodata.str1.4+0x3ae>
 33a:	65 29 00             	sub    DWORD PTR gs:[eax],eax
 33d:	00 00                	add    BYTE PTR [eax],al
 33f:	00 20                	add    BYTE PTR [eax],ah
 341:	20 5b 30             	and    BYTE PTR [ebx+0x30],bl
 344:	2e 30 30             	xor    BYTE PTR cs:[eax],dh
 347:	32 5d 20             	xor    bl,BYTE PTR [ebp+0x20]
 34a:	49                   	dec    ecx
 34b:	44                   	inc    esp
 34c:	54                   	push   esp
 34d:	20 6c 6f 61          	and    BYTE PTR [edi+ebp*2+0x61],ch
 351:	64 65 64 2c 20       	fs gs fs sub al,0x20
 356:	50                   	push   eax
 357:	49                   	dec    ecx
 358:	43                   	inc    ebx
 359:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 35c:	6d                   	ins    DWORD PTR es:[edi],dx
 35d:	61                   	popa
 35e:	70 70                	jo     3d0 <.rodata.str1.4+0x3d0>
 360:	65 64 00 00          	gs add BYTE PTR fs:[eax],al
 364:	20 20                	and    BYTE PTR [eax],ah
 366:	5b                   	pop    ebx
 367:	30 2e                	xor    BYTE PTR [esi],ch
 369:	30 30                	xor    BYTE PTR [eax],dh
 36b:	33 5d 20             	xor    ebx,DWORD PTR [ebp+0x20]
 36e:	46                   	inc    esi
 36f:	72 61                	jb     3d2 <.rodata.str1.4+0x3d2>
 371:	6d                   	ins    DWORD PTR es:[edi],dx
 372:	65 62 75 66          	bound  esi,QWORD PTR gs:[ebp+0x66]
 376:	66 65 72 20          	data16 gs jb 39a <.rodata.str1.4+0x39a>
 37a:	31 30                	xor    DWORD PTR [eax],esi
 37c:	32 34 78             	xor    dh,BYTE PTR [eax+edi*2]
 37f:	37                   	aaa
 380:	36 38 78 33          	cmp    BYTE PTR ss:[eax+0x33],bh
 384:	32 00                	xor    al,BYTE PTR [eax]
 386:	00 00                	add    BYTE PTR [eax],al
 388:	20 20                	and    BYTE PTR [eax],ah
 38a:	5b                   	pop    ebx
 38b:	30 2e                	xor    BYTE PTR [esi],ch
 38d:	30 31                	xor    BYTE PTR [ecx],dh
 38f:	30 5d 20             	xor    BYTE PTR [ebp+0x20],bl
 392:	50                   	push   eax
 393:	53                   	push   ebx
 394:	2f                   	das
 395:	32 20                	xor    ah,BYTE PTR [eax]
 397:	6b 65 79 62          	imul   esp,DWORD PTR [ebp+0x79],0x62
 39b:	6f                   	outs   dx,DWORD PTR ds:[esi]
 39c:	61                   	popa
 39d:	72 64                	jb     403 <.rodata.str1.4+0x403>
 39f:	20 2b                	and    BYTE PTR [ebx],ch
 3a1:	20 6d 6f             	and    BYTE PTR [ebp+0x6f],ch
 3a4:	75 73                	jne    419 <.rodata.str1.4+0x419>
 3a6:	65 20 4f 4b          	and    BYTE PTR gs:[edi+0x4b],cl
 3aa:	00 00                	add    BYTE PTR [eax],al
 3ac:	20 20                	and    BYTE PTR [eax],ah
 3ae:	59                   	pop    ecx
 3af:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3b0:	75 20                	jne    3d2 <.rodata.str1.4+0x3d2>
 3b2:	61                   	popa
 3b3:	6c                   	ins    BYTE PTR es:[edi],dx
 3b4:	72 65                	jb     41b <.rodata.str1.4+0x41b>
 3b6:	61                   	popa
 3b7:	64 79 20             	fs jns 3da <.rodata.str1.4+0x3da>
 3ba:	61                   	popa
 3bb:	72 65                	jb     422 <.rodata.str1.4+0x422>
 3bd:	20 72 6f             	and    BYTE PTR [edx+0x6f],dh
 3c0:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3c1:	74 2e                	je     3f1 <.rodata.str1.4+0x3f1>
 3c3:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
 3c6:	77 61                	ja     429 <.rodata.str1.4+0x429>
 3c8:	79 73                	jns    43d <.rodata.str1.4+0x43d>
 3ca:	20 77 65             	and    BYTE PTR [edi+0x65],dh
 3cd:	72 65                	jb     434 <.rodata.str1.4+0x434>
 3cf:	2e 00 00             	add    BYTE PTR cs:[eax],al
 3d2:	00 00                	add    BYTE PTR [eax],al
 3d4:	20 20                	and    BYTE PTR [eax],ah
 3d6:	59                   	pop    ecx
 3d7:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3d8:	75 27                	jne    401 <.rodata.str1.4+0x401>
 3da:	72 65                	jb     441 <.rodata.str1.4+0x441>
 3dc:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
 3df:	72 65                	jb     446 <.rodata.str1.4+0x446>
 3e1:	61                   	popa
 3e2:	64 79 20             	fs jns 405 <.rodata.str1.4+0x405>
 3e5:	72 6f                	jb     456 <.rodata.str1.4+0x456>
 3e7:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3e8:	74 2c                	je     416 <.rodata.str1.4+0x416>
 3ea:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 3ed:	6c                   	ins    BYTE PTR es:[edi],dx
 3ee:	6d                   	ins    DWORD PTR es:[edi],dx
 3ef:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
 3f3:	6e                   	outs   dx,BYTE PTR ds:[esi]
 3f4:	2e 00 00             	add    BYTE PTR cs:[eax],al
 3f7:	00 20                	add    BYTE PTR [eax],ah
 3f9:	20 4e 69             	and    BYTE PTR [esi+0x69],cl
 3fc:	63 65 20             	arpl   WORD PTR [ebp+0x20],esp
 3ff:	74 72                	je     473 <.rodata.str1.4+0x473>
 401:	79 2e                	jns    431 <.rodata.str1.4+0x431>
 403:	20 54 68 65          	and    BYTE PTR [eax+ebp*2+0x65],dl
 407:	72 65                	jb     46e <.rodata.str1.4+0x46e>
 409:	27                   	daa
 40a:	73 20                	jae    42c <.rodata.str1.4+0x42c>
 40c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 40d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 40e:	74 68                	je     478 <cmd_ls+0x98>
 410:	69 6e 67 20 74 6f 20 	imul   ebp,DWORD PTR [esi+0x67],0x206f7420
 417:	64 65 6c             	fs gs ins BYTE PTR es:[edi],dx
 41a:	65 74 65             	gs je  482 <cmd_time+0x2>
 41d:	2e 00 00             	add    BYTE PTR cs:[eax],al
 420:	20 57 65             	and    BYTE PTR [edi+0x65],dl
 423:	6c                   	ins    BYTE PTR es:[edi],dx
 424:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
 427:	65 20 74 6f 20       	and    BYTE PTR gs:[edi+ebp*2+0x20],dh
 42c:	53                   	push   ebx
 42d:	6c                   	ins    BYTE PTR es:[edi],dx
 42e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 42f:	70 4f                	jo     480 <cmd_time>
 431:	53                   	push   ebx
 432:	20 54 65 72          	and    BYTE PTR [ebp+eiz*2+0x72],dl
 436:	6d                   	ins    DWORD PTR es:[edi],dx
 437:	69 6e 61 6c 20 76 30 	imul   ebp,DWORD PTR [esi+0x61],0x3076206c
 43e:	2e 32 00             	xor    al,BYTE PTR cs:[eax]
 441:	00 00                	add    BYTE PTR [eax],al
 443:	00 20                	add    BYTE PTR [eax],ah
 445:	54                   	push   esp
 446:	79 70                	jns    4b8 <cmd_time+0x38>
 448:	65 20 27             	and    BYTE PTR gs:[edi],ah
 44b:	68 65 6c 70 27       	push   0x27706c65
 450:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
 453:	72 20                	jb     475 <.rodata.str1.4+0x475>
 455:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],ebp
 458:	6d                   	ins    DWORD PTR es:[edi],dx
 459:	61                   	popa
 45a:	6e                   	outs   dx,BYTE PTR ds:[esi]
 45b:	64 73 2c             	fs jae 48a <cmd_time+0xa>
 45e:	20 27                	and    BYTE PTR [edi],ah
 460:	73 79                	jae    4db <cmd_time+0x5b>
 462:	73 69                	jae    4cd <cmd_time+0x4d>
 464:	6e                   	outs   dx,BYTE PTR ds:[esi]
 465:	66 6f                	outs   dx,WORD PTR ds:[esi]
 467:	27                   	daa
 468:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
 46b:	72 20                	jb     48d <cmd_time+0xd>
 46d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 46e:	76 65                	jbe    4d5 <cmd_time+0x55>
 470:	72 76                	jb     4e8 <cmd_time+0x68>
 472:	69                   	.byte 0x69
 473:	65 77 2e             	gs ja  4a4 <cmd_time+0x24>
	...

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	00 20                	add    BYTE PTR [eax],ah
   2:	20 4f 53             	and    BYTE PTR [edi+0x53],cl
   5:	3a 20                	cmp    ah,BYTE PTR [eax]
   7:	20 20                	and    BYTE PTR [eax],ah
   9:	20 20                	and    BYTE PTR [eax],ah
   b:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
   e:	6f                   	outs   dx,DWORD PTR ds:[esi]
   f:	70 4f                	jo     60 <.rodata.str1.1+0x60>
  11:	53                   	push   ebx
  12:	20 30                	and    BYTE PTR [eax],dh
  14:	2e 32 00             	xor    al,BYTE PTR cs:[eax]
  17:	20 20                	and    BYTE PTR [eax],ah
  19:	4b                   	dec    ebx
  1a:	65 72 6e             	gs jb  8b <.rodata.str1.1+0x8b>
  1d:	65 6c                	gs ins BYTE PTR es:[edi],dx
  1f:	3a 20                	cmp    ah,BYTE PTR [eax]
  21:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
  24:	6f                   	outs   dx,DWORD PTR ds:[esi]
  25:	70 4b                	jo     72 <.rodata.str1.1+0x72>
  27:	65 72 6e             	gs jb  98 <.rodata.str1.1+0x98>
  2a:	65 6c                	gs ins BYTE PTR es:[edi],dx
  2c:	20 69 36             	and    BYTE PTR [ecx+0x36],ch
  2f:	38 36                	cmp    BYTE PTR [esi],dh
  31:	00 20                	add    BYTE PTR [eax],ah
  33:	20 53 68             	and    BYTE PTR [ebx+0x68],dl
  36:	65 6c                	gs ins BYTE PTR es:[edi],dx
  38:	6c                   	ins    BYTE PTR es:[edi],dx
  39:	3a 20                	cmp    ah,BYTE PTR [eax]
  3b:	20 20                	and    BYTE PTR [eax],ah
  3d:	53                   	push   ebx
  3e:	6c                   	ins    BYTE PTR es:[edi],dx
  3f:	6f                   	outs   dx,DWORD PTR ds:[esi]
  40:	70 54                	jo     96 <.rodata.str1.1+0x96>
  42:	65 72 6d             	gs jb  b2 <.rodata.str1.1+0xb2>
  45:	00 20                	add    BYTE PTR [eax],ah
  47:	20 57 4d             	and    BYTE PTR [edi+0x4d],dl
  4a:	3a 20                	cmp    ah,BYTE PTR [eax]
  4c:	20 20                	and    BYTE PTR [eax],ah
  4e:	20 20                	and    BYTE PTR [eax],ah
  50:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
  53:	6f                   	outs   dx,DWORD PTR ds:[esi]
  54:	70 57                	jo     ad <.rodata.str1.1+0xad>
  56:	4d                   	dec    ebp
  57:	20 28                	and    BYTE PTR [eax],ch
  59:	73 74                	jae    cf <.rodata.str1.1+0xcf>
  5b:	61                   	popa
  5c:	63 6b 69             	arpl   WORD PTR [ebx+0x69],ebp
  5f:	6e                   	outs   dx,BYTE PTR ds:[esi]
  60:	67 29 00             	sub    DWORD PTR [bx+si],eax
  63:	20 20                	and    BYTE PTR [eax],ah
  65:	44                   	inc    esp
  66:	69 73 70 6c 61 79 3a 	imul   esi,DWORD PTR [ebx+0x70],0x3a79616c
  6d:	20 31                	and    BYTE PTR [ecx],dh
  6f:	30 32                	xor    BYTE PTR [edx],dh
  71:	34 78                	xor    al,0x78
  73:	37                   	aaa
  74:	36 38 78 33          	cmp    BYTE PTR ss:[eax+0x33],bh
  78:	32 20                	xor    ah,BYTE PTR [eax]
  7a:	56                   	push   esi
  7b:	42                   	inc    edx
  7c:	45                   	inc    ebp
  7d:	00 20                	add    BYTE PTR [eax],ah
  7f:	20 48 65             	and    BYTE PTR [eax+0x65],cl
  82:	61                   	popa
  83:	70 3a                	jo     bf <.rodata.str1.1+0xbf>
  85:	20 20                	and    BYTE PTR [eax],ah
  87:	20 20                	and    BYTE PTR [eax],ah
  89:	31 36                	xor    DWORD PTR [esi],esi
  8b:	20 4d 69             	and    BYTE PTR [ebp+0x69],cl
  8e:	42                   	inc    edx
  8f:	20 62 75             	and    BYTE PTR [edx+0x75],ah
  92:	6d                   	ins    DWORD PTR es:[edi],dx
  93:	70 20                	jo     b5 <.rodata.str1.1+0xb5>
  95:	61                   	popa
  96:	6c                   	ins    BYTE PTR es:[edi],dx
  97:	6c                   	ins    BYTE PTR es:[edi],dx
  98:	6f                   	outs   dx,DWORD PTR ds:[esi]
  99:	63 00                	arpl   WORD PTR [eax],eax
  9b:	20 20                	and    BYTE PTR [eax],ah
  9d:	46                   	inc    esi
  9e:	6f                   	outs   dx,DWORD PTR ds:[esi]
  9f:	6e                   	outs   dx,BYTE PTR ds:[esi]
  a0:	74 3a                	je     dc <.rodata.str1.1+0xdc>
  a2:	20 20                	and    BYTE PTR [eax],ah
  a4:	20 20                	and    BYTE PTR [eax],ah
  a6:	56                   	push   esi
  a7:	47                   	inc    edi
  a8:	41                   	inc    ecx
  a9:	20 38                	and    BYTE PTR [eax],bh
  ab:	78 31                	js     de <.rodata.str1.1+0xde>
  ad:	36 20 62 69          	and    BYTE PTR ss:[edx+0x69],ah
  b1:	74 6d                	je     120 <.rodata.str1.1+0x120>
  b3:	61                   	popa
  b4:	70 00                	jo     b6 <.rodata.str1.1+0xb6>
  b6:	20 20                	and    BYTE PTR [eax],ah
  b8:	54                   	push   esp
  b9:	68 65 6d 65 3a       	push   0x3a656d65
  be:	20 20                	and    BYTE PTR [eax],ah
  c0:	20 43 61             	and    BYTE PTR [ebx+0x61],al
  c3:	74 70                	je     135 <.rodata.str1.1+0x135>
  c5:	70 75                	jo     13c <.rodata.str1.1+0x13c>
  c7:	63 63 69             	arpl   WORD PTR [ebx+0x69],esp
  ca:	6e                   	outs   dx,BYTE PTR ds:[esi]
  cb:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
  ce:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
  d1:	00 20                	add    BYTE PTR [eax],ah
  d3:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
  d6:	61                   	popa
  d7:	63 6b 3a             	arpl   WORD PTR [ebx+0x3a],ebp
  da:	20 20                	and    BYTE PTR [eax],ah
  dc:	20 20                	and    BYTE PTR [eax],ah
  de:	20 20                	and    BYTE PTR [eax],ah
  e0:	20 36                	and    BYTE PTR [esi],dh
  e2:	34 20                	xor    al,0x20
  e4:	4b                   	dec    ebx
  e5:	69 42 00 20 20 42 61 	imul   eax,DWORD PTR [edx+0x0],0x61422020
  ec:	63 6b 20             	arpl   WORD PTR [ebx+0x20],ebp
  ef:	62 75 66             	bound  esi,QWORD PTR [ebp+0x66]
  f2:	66 65 72 3a          	data16 gs jb 130 <.rodata.str1.1+0x130>
  f6:	20 33                	and    BYTE PTR [ebx],dh
  f8:	20 4d 69             	and    BYTE PTR [ebp+0x69],cl
  fb:	42                   	inc    edx
  fc:	00 53 6c             	add    BYTE PTR [ebx+0x6c],dl
  ff:	6f                   	outs   dx,DWORD PTR ds:[esi]
 100:	70 4f                	jo     151 <.rodata.str1.1+0x151>
 102:	53                   	push   ebx
 103:	20 67 6f             	and    BYTE PTR [edi+0x6f],ah
 106:	65 73 20             	gs jae 129 <.rodata.str1.1+0x129>
 109:	6d                   	ins    DWORD PTR es:[edi],dx
 10a:	6f                   	outs   dx,DWORD PTR ds:[esi]
 10b:	6f                   	outs   dx,DWORD PTR ds:[esi]
 10c:	00 20                	add    BYTE PTR [eax],ah
 10e:	20 20                	and    BYTE PTR [eax],ah
 110:	20 20                	and    BYTE PTR [eax],ah
 112:	20 20                	and    BYTE PTR [eax],ah
 114:	20 5c 20 20          	and    BYTE PTR [eax+eiz*1+0x20],bl
 118:	20 5e 5f             	and    BYTE PTR [esi+0x5f],bl
 11b:	5f                   	pop    edi
 11c:	5e                   	pop    esi
 11d:	00 20                	add    BYTE PTR [eax],ah
 11f:	20 20                	and    BYTE PTR [eax],ah
 121:	20 20                	and    BYTE PTR [eax],ah
 123:	20 20                	and    BYTE PTR [eax],ah
 125:	20 20                	and    BYTE PTR [eax],ah
 127:	5c                   	pop    esp
 128:	20 20                	and    BYTE PTR [eax],ah
 12a:	28 6f 6f             	sub    BYTE PTR [edi+0x6f],ch
 12d:	29 5c 5f 5f          	sub    DWORD PTR [edi+ebx*2+0x5f],ebx
 131:	5f                   	pop    edi
 132:	5f                   	pop    edi
 133:	5f                   	pop    edi
 134:	5f                   	pop    edi
 135:	5f                   	pop    edi
 136:	00 20                	add    BYTE PTR [eax],ah
 138:	20 20                	and    BYTE PTR [eax],ah
 13a:	20 20                	and    BYTE PTR [eax],ah
 13c:	20 20                	and    BYTE PTR [eax],ah
 13e:	20 20                	and    BYTE PTR [eax],ah
 140:	20 20                	and    BYTE PTR [eax],ah
 142:	20 28                	and    BYTE PTR [eax],ch
 144:	5f                   	pop    edi
 145:	5f                   	pop    edi
 146:	29 5c 20 20          	sub    DWORD PTR [eax+eiz*1+0x20],ebx
 14a:	20 20                	and    BYTE PTR [eax],ah
 14c:	20 20                	and    BYTE PTR [eax],ah
 14e:	20 29                	and    BYTE PTR [ecx],ch
 150:	5c                   	pop    esp
 151:	2f                   	das
 152:	5c                   	pop    esp
 153:	00 20                	add    BYTE PTR [eax],ah
 155:	20 20                	and    BYTE PTR [eax],ah
 157:	20 20                	and    BYTE PTR [eax],ah
 159:	20 20                	and    BYTE PTR [eax],ah
 15b:	20 20                	and    BYTE PTR [eax],ah
 15d:	20 20                	and    BYTE PTR [eax],ah
 15f:	20 20                	and    BYTE PTR [eax],ah
 161:	20 20                	and    BYTE PTR [eax],ah
 163:	20 7c 7c 2d          	and    BYTE PTR [esp+edi*2+0x2d],bh
 167:	2d 2d 2d 77 20       	sub    eax,0x20772d2d
 16c:	7c 00                	jl     16e <.rodata.str1.1+0x16e>
 16e:	20 20                	and    BYTE PTR [eax],ah
 170:	20 20                	and    BYTE PTR [eax],ah
 172:	20 20                	and    BYTE PTR [eax],ah
 174:	20 20                	and    BYTE PTR [eax],ah
 176:	20 20                	and    BYTE PTR [eax],ah
 178:	20 20                	and    BYTE PTR [eax],ah
 17a:	20 20                	and    BYTE PTR [eax],ah
 17c:	20 20                	and    BYTE PTR [eax],ah
 17e:	7c 7c                	jl     1fc <.rodata.str1.1+0x1fc>
 180:	20 20                	and    BYTE PTR [eax],ah
 182:	20 20                	and    BYTE PTR [eax],ah
 184:	20 7c 7c 00          	and    BYTE PTR [esp+edi*2+0x0],bh
 188:	20 20                	and    BYTE PTR [eax],ah
 18a:	64 72 77             	fs jb  204 <.rodata.str1.1+0x204>
 18d:	78 72                	js     201 <.rodata.str1.1+0x201>
 18f:	2d 78 72 2d 78       	sub    eax,0x782d7278
 194:	20 20                	and    BYTE PTR [eax],ah
 196:	2f                   	das
 197:	64 65 76 2f          	fs gs jbe 1ca <.rodata.str1.1+0x1ca>
 19b:	00 20                	add    BYTE PTR [eax],ah
 19d:	20 64 72 77          	and    BYTE PTR [edx+esi*2+0x77],ah
 1a1:	78 72                	js     215 <.rodata.str1.1+0x215>
 1a3:	2d 78 72 2d 78       	sub    eax,0x782d7278
 1a8:	20 20                	and    BYTE PTR [eax],ah
 1aa:	2f                   	das
 1ab:	70 72                	jo     21f <.rodata.str1.1+0x21f>
 1ad:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1ae:	63 2f                	arpl   WORD PTR [edi],ebp
 1b0:	00 2f                	add    BYTE PTR [edi],ch
 1b2:	00 30                	add    BYTE PTR [eax],dh
 1b4:	00 3a                	add    BYTE PTR [edx],bh
 1b6:	00 40 73             	add    BYTE PTR [eax+0x73],al
 1b9:	6c                   	ins    BYTE PTR es:[edi],dx
 1ba:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1bb:	70 6f                	jo     22c <.rodata.str1.1+0x22c>
 1bd:	73 20                	jae    1df <.rodata.str1.1+0x1df>
 1bf:	24 20                	and    al,0x20
 1c1:	00 68 65             	add    BYTE PTR [eax+0x65],ch
 1c4:	6c                   	ins    BYTE PTR es:[edi],dx
 1c5:	70 00                	jo     1c7 <.rodata.str1.1+0x1c7>
 1c7:	41                   	inc    ecx
 1c8:	76 61                	jbe    22b <.rodata.str1.1+0x22b>
 1ca:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x6320656c
 1d1:	63 
 1d2:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1d3:	6d                   	ins    DWORD PTR es:[edi],dx
 1d4:	6d                   	ins    DWORD PTR es:[edi],dx
 1d5:	61                   	popa
 1d6:	6e                   	outs   dx,BYTE PTR ds:[esi]
 1d7:	64 73 3a             	fs jae 214 <.rodata.str1.1+0x214>
 1da:	00 20                	add    BYTE PTR [eax],ah
 1dc:	20 68 65             	and    BYTE PTR [eax+0x65],ch
 1df:	6c                   	ins    BYTE PTR es:[edi],dx
 1e0:	70 20                	jo     202 <.rodata.str1.1+0x202>
 1e2:	20 20                	and    BYTE PTR [eax],ah
 1e4:	20 20                	and    BYTE PTR [eax],ah
 1e6:	20 53 68             	and    BYTE PTR [ebx+0x68],dl
 1e9:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1ea:	77 20                	ja     20c <.rodata.str1.1+0x20c>
 1ec:	74 68                	je     256 <.rodata.str1.1+0x256>
 1ee:	69 73 20 6d 65 73 73 	imul   esi,DWORD PTR [ebx+0x20],0x7373656d
 1f5:	61                   	popa
 1f6:	67 65 00 20          	add    BYTE PTR gs:[bx+si],ah
 1fa:	20 63 6c             	and    BYTE PTR [ebx+0x6c],ah
 1fd:	65 61                	gs popa
 1ff:	72 20                	jb     221 <.rodata.str1.1+0x221>
 201:	20 20                	and    BYTE PTR [eax],ah
 203:	20 20                	and    BYTE PTR [eax],ah
 205:	43                   	inc    ebx
 206:	6c                   	ins    BYTE PTR es:[edi],dx
 207:	65 61                	gs popa
 209:	72 20                	jb     22b <.rodata.str1.1+0x22b>
 20b:	73 63                	jae    270 <.rodata.str1.1+0x270>
 20d:	72 65                	jb     274 <.rodata.str1.1+0x274>
 20f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 211:	00 20                	add    BYTE PTR [eax],ah
 213:	20 73 79             	and    BYTE PTR [ebx+0x79],dh
 216:	73 69                	jae    281 <.rodata.str1.1+0x281>
 218:	6e                   	outs   dx,BYTE PTR ds:[esi]
 219:	66 6f                	outs   dx,WORD PTR ds:[esi]
 21b:	20 20                	and    BYTE PTR [eax],ah
 21d:	20 53 79             	and    BYTE PTR [ebx+0x79],dl
 220:	73 74                	jae    296 <.rodata.str1.1+0x296>
 222:	65 6d                	gs ins DWORD PTR es:[edi],dx
 224:	20 6f 76             	and    BYTE PTR [edi+0x76],ch
 227:	65 72 76             	gs jb  2a0 <.rodata.str1.1+0x2a0>
 22a:	69 65 77 00 20 20 75 	imul   esp,DWORD PTR [ebp+0x77],0x75202000
 231:	6e                   	outs   dx,BYTE PTR ds:[esi]
 232:	61                   	popa
 233:	6d                   	ins    DWORD PTR es:[edi],dx
 234:	65 20 20             	and    BYTE PTR gs:[eax],ah
 237:	20 20                	and    BYTE PTR [eax],ah
 239:	20 4b 65             	and    BYTE PTR [ebx+0x65],cl
 23c:	72 6e                	jb     2ac <.rodata.str1.1+0x2ac>
 23e:	65 6c                	gs ins BYTE PTR es:[edi],dx
 240:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
 243:	66 6f                	outs   dx,WORD PTR ds:[esi]
 245:	00 20                	add    BYTE PTR [eax],ah
 247:	20 74 69 6d          	and    BYTE PTR [ecx+ebp*2+0x6d],dh
 24b:	65 20 20             	and    BYTE PTR gs:[eax],ah
 24e:	20 20                	and    BYTE PTR [eax],ah
 250:	20 20                	and    BYTE PTR [eax],ah
 252:	43                   	inc    ebx
 253:	75 72                	jne    2c7 <.rodata.str1.1+0x2c7>
 255:	72 65                	jb     2bc <.rodata.str1.1+0x2bc>
 257:	6e                   	outs   dx,BYTE PTR ds:[esi]
 258:	74 20                	je     27a <.rodata.str1.1+0x27a>
 25a:	74 69                	je     2c5 <.rodata.str1.1+0x2c5>
 25c:	6d                   	ins    DWORD PTR es:[edi],dx
 25d:	65 00 20             	add    BYTE PTR gs:[eax],ah
 260:	20 75 70             	and    BYTE PTR [ebp+0x70],dh
 263:	74 69                	je     2ce <.rodata.str1.1+0x2ce>
 265:	6d                   	ins    DWORD PTR es:[edi],dx
 266:	65 20 20             	and    BYTE PTR gs:[eax],ah
 269:	20 20                	and    BYTE PTR [eax],ah
 26b:	54                   	push   esp
 26c:	69 6d 65 20 73 69 6e 	imul   ebp,DWORD PTR [ebp+0x65],0x6e697320
 273:	63 65 20             	arpl   WORD PTR [ebp+0x20],esp
 276:	62 6f 6f             	bound  ebp,QWORD PTR [edi+0x6f]
 279:	74 00                	je     27b <.rodata.str1.1+0x27b>
 27b:	20 20                	and    BYTE PTR [eax],ah
 27d:	6d                   	ins    DWORD PTR es:[edi],dx
 27e:	65 6d                	gs ins DWORD PTR es:[edi],dx
 280:	20 20                	and    BYTE PTR [eax],ah
 282:	20 20                	and    BYTE PTR [eax],ah
 284:	20 20                	and    BYTE PTR [eax],ah
 286:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
 289:	6d                   	ins    DWORD PTR es:[edi],dx
 28a:	6f                   	outs   dx,DWORD PTR ds:[esi]
 28b:	72 79                	jb     306 <.rodata.str1.1+0x306>
 28d:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
 290:	66 6f                	outs   dx,WORD PTR ds:[esi]
 292:	00 20                	add    BYTE PTR [eax],ah
 294:	20 70 73             	and    BYTE PTR [eax+0x73],dh
 297:	20 20                	and    BYTE PTR [eax],ah
 299:	20 20                	and    BYTE PTR [eax],ah
 29b:	20 20                	and    BYTE PTR [eax],ah
 29d:	20 20                	and    BYTE PTR [eax],ah
 29f:	50                   	push   eax
 2a0:	72 6f                	jb     311 <.rodata.str1.1+0x311>
 2a2:	63 65 73             	arpl   WORD PTR [ebp+0x73],esp
 2a5:	73 20                	jae    2c7 <.rodata.str1.1+0x2c7>
 2a7:	6c                   	ins    BYTE PTR es:[edi],dx
 2a8:	69 73 74 00 20 20 77 	imul   esi,DWORD PTR [ebx+0x74],0x77202000
 2af:	68 6f 61 6d 69       	push   0x696d616f
 2b4:	20 20                	and    BYTE PTR [eax],ah
 2b6:	20 20                	and    BYTE PTR [eax],ah
 2b8:	43                   	inc    ebx
 2b9:	75 72                	jne    32d <.rodata.str1.1+0x32d>
 2bb:	72 65                	jb     322 <.rodata.str1.1+0x322>
 2bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2be:	74 20                	je     2e0 <.rodata.str1.1+0x2e0>
 2c0:	75 73                	jne    335 <.rodata.str1.1+0x335>
 2c2:	65 72 00             	gs jb  2c5 <.rodata.str1.1+0x2c5>
 2c5:	20 20                	and    BYTE PTR [eax],ah
 2c7:	68 6f 73 74 6e       	push   0x6e74736f
 2cc:	61                   	popa
 2cd:	6d                   	ins    DWORD PTR es:[edi],dx
 2ce:	65 20 20             	and    BYTE PTR gs:[eax],ah
 2d1:	4d                   	dec    ebp
 2d2:	61                   	popa
 2d3:	63 68 69             	arpl   WORD PTR [eax+0x69],ebp
 2d6:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2d7:	65 20 6e 61          	and    BYTE PTR gs:[esi+0x61],ch
 2db:	6d                   	ins    DWORD PTR es:[edi],dx
 2dc:	65 00 20             	add    BYTE PTR gs:[eax],ah
 2df:	20 61 72             	and    BYTE PTR [ecx+0x72],ah
 2e2:	70 20                	jo     304 <.rodata.str1.1+0x304>
 2e4:	20 20                	and    BYTE PTR [eax],ah
 2e6:	20 20                	and    BYTE PTR [eax],ah
 2e8:	20 20                	and    BYTE PTR [eax],ah
 2ea:	53                   	push   ebx
 2eb:	68 6f 77 20 41       	push   0x4120776f
 2f0:	52                   	push   edx
 2f1:	50                   	push   eax
 2f2:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 2f5:	63 68 65             	arpl   WORD PTR [eax+0x65],ebp
 2f8:	00 20                	add    BYTE PTR [eax],ah
 2fa:	20 6c 73 20          	and    BYTE PTR [ebx+esi*2+0x20],ch
 2fe:	20 20                	and    BYTE PTR [eax],ah
 300:	20 20                	and    BYTE PTR [eax],ah
 302:	20 20                	and    BYTE PTR [eax],ah
 304:	20 4c 69 73          	and    BYTE PTR [ecx+ebp*2+0x73],cl
 308:	74 20                	je     32a <.rodata.str1.1+0x32a>
 30a:	66 69 6c 65 73 00 20 	imul   bp,WORD PTR [ebp+eiz*2+0x73],0x2000
 311:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 314:	74 20                	je     336 <.rodata.str1.1+0x336>
 316:	20 20                	and    BYTE PTR [eax],ah
 318:	20 20                	and    BYTE PTR [eax],ah
 31a:	20 20                	and    BYTE PTR [eax],ah
 31c:	52                   	push   edx
 31d:	65 61                	gs popa
 31f:	64 20 61 20          	and    BYTE PTR fs:[ecx+0x20],ah
 323:	66 69 6c 65 00 20 20 	imul   bp,WORD PTR [ebp+eiz*2+0x0],0x2020
 32a:	65 63 68 6f          	arpl   WORD PTR gs:[eax+0x6f],ebp
 32e:	20 20                	and    BYTE PTR [eax],ah
 330:	20 20                	and    BYTE PTR [eax],ah
 332:	20 20                	and    BYTE PTR [eax],ah
 334:	45                   	inc    ebp
 335:	63 68 6f             	arpl   WORD PTR [eax+0x6f],ebp
 338:	20 74 65 78          	and    BYTE PTR [ebp+eiz*2+0x78],dh
 33c:	74 00                	je     33e <.rodata.str1.1+0x33e>
 33e:	20 20                	and    BYTE PTR [eax],ah
 340:	63 6f 77             	arpl   WORD PTR [edi+0x77],ebp
 343:	73 61                	jae    3a6 <.rodata.str1.1+0x3a6>
 345:	79 20                	jns    367 <.rodata.str1.1+0x367>
 347:	20 20                	and    BYTE PTR [eax],ah
 349:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
 34c:	6f                   	outs   dx,DWORD PTR ds:[esi]
 34d:	00 20                	add    BYTE PTR [eax],ah
 34f:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 352:	6c                   	ins    BYTE PTR es:[edi],dx
 353:	63 20                	arpl   WORD PTR [eax],esp
 355:	20 20                	and    BYTE PTR [eax],ah
 357:	20 20                	and    BYTE PTR [eax],ah
 359:	20 4f 70             	and    BYTE PTR [edi+0x70],cl
 35c:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 35e:	20 43 61             	and    BYTE PTR [ebx+0x61],al
 361:	6c                   	ins    BYTE PTR es:[edi],dx
 362:	63 75 6c             	arpl   WORD PTR [ebp+0x6c],esi
 365:	61                   	popa
 366:	74 6f                	je     3d7 <.rodata.str1.1+0x3d7>
 368:	72 00                	jb     36a <.rodata.str1.1+0x36a>
 36a:	20 20                	and    BYTE PTR [eax],ah
 36c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 36d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 36e:	74 65                	je     3d5 <.rodata.str1.1+0x3d5>
 370:	70 61                	jo     3d3 <.rodata.str1.1+0x3d3>
 372:	64 20 20             	and    BYTE PTR fs:[eax],ah
 375:	20 4f 70             	and    BYTE PTR [edi+0x70],cl
 378:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 37a:	20 4e 6f             	and    BYTE PTR [esi+0x6f],cl
 37d:	74 65                	je     3e4 <.rodata.str1.1+0x3e4>
 37f:	70 61                	jo     3e2 <.rodata.str1.1+0x3e2>
 381:	64 00 20             	add    BYTE PTR fs:[eax],ah
 384:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 387:	62 6f 6f             	bound  ebp,QWORD PTR [edi+0x6f]
 38a:	74 20                	je     3ac <.rodata.str1.1+0x3ac>
 38c:	20 20                	and    BYTE PTR [eax],ah
 38e:	20 52 65             	and    BYTE PTR [edx+0x65],dl
 391:	62 6f 6f             	bound  ebp,QWORD PTR [edi+0x6f]
 394:	74 20                	je     3b6 <.rodata.str1.1+0x3b6>
 396:	73 79                	jae    411 <.rodata.str1.1+0x411>
 398:	73 74                	jae    40e <.rodata.str1.1+0x40e>
 39a:	65 6d                	gs ins DWORD PTR es:[edi],dx
 39c:	00 20                	add    BYTE PTR [eax],ah
 39e:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 3a1:	6c                   	ins    BYTE PTR es:[edi],dx
 3a2:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3a3:	72 20                	jb     3c5 <.rodata.str1.1+0x3c5>
 3a5:	20 20                	and    BYTE PTR [eax],ah
 3a7:	20 20                	and    BYTE PTR [eax],ah
 3a9:	50                   	push   eax
 3aa:	61                   	popa
 3ab:	6c                   	ins    BYTE PTR es:[edi],dx
 3ac:	65 74 74             	gs je  423 <.rodata.str1.1+0x423>
 3af:	65 20 69 6e          	and    BYTE PTR gs:[ecx+0x6e],ch
 3b3:	66 6f                	outs   dx,WORD PTR ds:[esi]
 3b5:	00 63 6c             	add    BYTE PTR [ebx+0x6c],ah
 3b8:	65 61                	gs popa
 3ba:	72 00                	jb     3bc <.rodata.str1.1+0x3bc>
 3bc:	73 79                	jae    437 <.rodata.str1.1+0x437>
 3be:	73 69                	jae    429 <.rodata.str1.1+0x429>
 3c0:	6e                   	outs   dx,BYTE PTR ds:[esi]
 3c1:	66 6f                	outs   dx,WORD PTR ds:[esi]
 3c3:	00 61 62             	add    BYTE PTR [ecx+0x62],ah
 3c6:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3c7:	75 74                	jne    43d <.rodata.str1.1+0x43d>
 3c9:	00 75 6e             	add    BYTE PTR [ebp+0x6e],dh
 3cc:	61                   	popa
 3cd:	6d                   	ins    DWORD PTR es:[edi],dx
 3ce:	65 00 20             	add    BYTE PTR gs:[eax],ah
 3d1:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
 3d4:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3d5:	70 4f                	jo     426 <.rodata.str1.1+0x426>
 3d7:	53                   	push   ebx
 3d8:	20 30                	and    BYTE PTR [eax],dh
 3da:	2e 32 20             	xor    ah,BYTE PTR cs:[eax]
 3dd:	53                   	push   ebx
 3de:	6c                   	ins    BYTE PTR es:[edi],dx
 3df:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3e0:	70 4b                	jo     42d <.rodata.str1.1+0x42d>
 3e2:	65 72 6e             	gs jb  453 <.rodata.str1.1+0x453>
 3e5:	65 6c                	gs ins BYTE PTR es:[edi],dx
 3e7:	20 69 36             	and    BYTE PTR [ecx+0x36],ch
 3ea:	38 36                	cmp    BYTE PTR [esi],dh
 3ec:	00 75 6e             	add    BYTE PTR [ebp+0x6e],dh
 3ef:	61                   	popa
 3f0:	6d                   	ins    DWORD PTR es:[edi],dx
 3f1:	65 20 2d 61 00 74 69 	and    BYTE PTR gs:0x69740061,ch
 3f8:	6d                   	ins    DWORD PTR es:[edi],dx
 3f9:	65 00 75 70          	add    BYTE PTR gs:[ebp+0x70],dh
 3fd:	74 69                	je     468 <.rodata.str1.1+0x468>
 3ff:	6d                   	ins    DWORD PTR es:[edi],dx
 400:	65 00 6d 20          	add    BYTE PTR gs:[ebp+0x20],ch
 404:	00 73 00             	add    BYTE PTR [ebx+0x0],dh
 407:	6d                   	ins    DWORD PTR es:[edi],dx
 408:	65 6d                	gs ins DWORD PTR es:[edi],dx
 40a:	00 66 72             	add    BYTE PTR [esi+0x72],ah
 40d:	65 65 00 70 73       	gs add BYTE PTR gs:[eax+0x73],dh
 412:	00 20                	add    BYTE PTR [eax],ah
 414:	20 50 49             	and    BYTE PTR [eax+0x49],dl
 417:	44                   	inc    esp
 418:	20 20                	and    BYTE PTR [eax],ah
 41a:	53                   	push   ebx
 41b:	54                   	push   esp
 41c:	41                   	inc    ecx
 41d:	54                   	push   esp
 41e:	45                   	inc    ebp
 41f:	20 20                	and    BYTE PTR [eax],ah
 421:	20 20                	and    BYTE PTR [eax],ah
 423:	4e                   	dec    esi
 424:	41                   	inc    ecx
 425:	4d                   	dec    ebp
 426:	45                   	inc    ebp
 427:	00 20                	add    BYTE PTR [eax],ah
 429:	20 20                	and    BYTE PTR [eax],ah
 42b:	20 30                	and    BYTE PTR [eax],dh
 42d:	20 20                	and    BYTE PTR [eax],ah
 42f:	72 75                	jb     4a6 <.rodata.str1.1+0x4a6>
 431:	6e                   	outs   dx,BYTE PTR ds:[esi]
 432:	6e                   	outs   dx,BYTE PTR ds:[esi]
 433:	69 6e 67 20 20 6b 65 	imul   ebp,DWORD PTR [esi+0x67],0x656b2020
 43a:	72 6e                	jb     4aa <.rodata.str1.1+0x4aa>
 43c:	65 6c                	gs ins BYTE PTR es:[edi],dx
 43e:	00 20                	add    BYTE PTR [eax],ah
 440:	20 20                	and    BYTE PTR [eax],ah
 442:	20 31                	and    BYTE PTR [ecx],dh
 444:	20 20                	and    BYTE PTR [eax],ah
 446:	72 75                	jb     4bd <.rodata.str1.1+0x4bd>
 448:	6e                   	outs   dx,BYTE PTR ds:[esi]
 449:	6e                   	outs   dx,BYTE PTR ds:[esi]
 44a:	69 6e 67 20 20 67 75 	imul   ebp,DWORD PTR [esi+0x67],0x75672020
 451:	69 00 20 20 20 20    	imul   eax,DWORD PTR [eax],0x20202020
 457:	32 20                	xor    ah,BYTE PTR [eax]
 459:	20 72 75             	and    BYTE PTR [edx+0x75],dh
 45c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 45d:	6e                   	outs   dx,BYTE PTR ds:[esi]
 45e:	69 6e 67 20 20 74 65 	imul   ebp,DWORD PTR [esi+0x67],0x65742020
 465:	72 6d                	jb     4d4 <.rodata.str1.1+0x4d4>
 467:	69 6e 61 6c 00 77 68 	imul   ebp,DWORD PTR [esi+0x61],0x6877006c
 46e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 46f:	61                   	popa
 470:	6d                   	ins    DWORD PTR es:[edi],dx
 471:	69 00 68 6f 73 74    	imul   eax,DWORD PTR [eax],0x74736f68
 477:	6e                   	outs   dx,BYTE PTR ds:[esi]
 478:	61                   	popa
 479:	6d                   	ins    DWORD PTR es:[edi],dx
 47a:	65 00 20             	add    BYTE PTR gs:[eax],ah
 47d:	20 73 6c             	and    BYTE PTR [ebx+0x6c],dh
 480:	6f                   	outs   dx,DWORD PTR ds:[esi]
 481:	70 6f                	jo     4f2 <.rodata.str1.1+0x4f2>
 483:	73 00                	jae    485 <.rodata.str1.1+0x485>
 485:	69 66 63 6f 6e 66 69 	imul   esp,DWORD PTR [esi+0x63],0x69666e6f
 48c:	67 00 20             	add    BYTE PTR [bx+si],ah
 48f:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
 492:	65 74 20             	gs je  4b5 <.rodata.str1.1+0x4b5>
 495:	00 2e                	add    BYTE PTR [esi],ch
 497:	00 20                	add    BYTE PTR [eax],ah
 499:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
 49c:	63 20                	arpl   WORD PTR [eax],esp
 49e:	00 20                	add    BYTE PTR [eax],ah
 4a0:	20 67 61             	and    BYTE PTR [edi+0x61],ah
 4a3:	74 65                	je     50a <.rodata.str1.1+0x50a>
 4a5:	77 61                	ja     508 <.rodata.str1.1+0x508>
 4a7:	79 20                	jns    4c9 <.rodata.str1.1+0x4c9>
 4a9:	00 20                	add    BYTE PTR [eax],ah
 4ab:	20 73 75             	and    BYTE PTR [ebx+0x75],dh
 4ae:	62 6e 65             	bound  ebp,QWORD PTR [esi+0x65]
 4b1:	74 20                	je     4d3 <.rodata.str1.1+0x4d3>
 4b3:	00 64 68 63          	add    BYTE PTR [eax+ebp*2+0x63],ah
 4b7:	70 00                	jo     4b9 <.rodata.str1.1+0x4b9>
 4b9:	20 20                	and    BYTE PTR [eax],ah
 4bb:	44                   	inc    esp
 4bc:	48                   	dec    eax
 4bd:	43                   	inc    ebx
 4be:	50                   	push   eax
 4bf:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 4c2:	71 75                	jno    539 <.rodata.str1.1+0x539>
 4c4:	65 73 74             	gs jae 53b <.rodata.str1.1+0x53b>
 4c7:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
 4ca:	6e                   	outs   dx,BYTE PTR ds:[esi]
 4cb:	74 2e                	je     4fb <.rodata.str1.1+0x4fb>
 4cd:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
 4d0:	70 00                	jo     4d2 <.rodata.str1.1+0x4d2>
 4d2:	20 20                	and    BYTE PTR [eax],ah
 4d4:	41                   	inc    ecx
 4d5:	52                   	push   edx
 4d6:	50                   	push   eax
 4d7:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 4da:	63 68 65             	arpl   WORD PTR [eax+0x65],ebp
 4dd:	20 65 6d             	and    BYTE PTR [ebp+0x6d],ah
 4e0:	70 74                	jo     556 <.rodata.str1.1+0x556>
 4e2:	79 00                	jns    4e4 <.rodata.str1.1+0x4e4>
 4e4:	20 20                	and    BYTE PTR [eax],ah
 4e6:	49                   	dec    ecx
 4e7:	50                   	push   eax
 4e8:	20 20                	and    BYTE PTR [eax],ah
 4ea:	20 20                	and    BYTE PTR [eax],ah
 4ec:	20 20                	and    BYTE PTR [eax],ah
 4ee:	20 20                	and    BYTE PTR [eax],ah
 4f0:	20 20                	and    BYTE PTR [eax],ah
 4f2:	20 20                	and    BYTE PTR [eax],ah
 4f4:	20 4d 41             	and    BYTE PTR [ebp+0x41],cl
 4f7:	43                   	inc    ebx
 4f8:	00 20                	add    BYTE PTR [eax],ah
 4fa:	20 20                	and    BYTE PTR [eax],ah
 4fc:	00 70 69             	add    BYTE PTR [eax+0x69],dh
 4ff:	6e                   	outs   dx,BYTE PTR ds:[esi]
 500:	67 20 00             	and    BYTE PTR [bx+si],al
 503:	20 20                	and    BYTE PTR [eax],ah
 505:	75 73                	jne    57a <.rodata.str1.1+0x57a>
 507:	61                   	popa
 508:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
 50c:	70 69                	jo     577 <.rodata.str1.1+0x577>
 50e:	6e                   	outs   dx,BYTE PTR ds:[esi]
 50f:	67 20 3c             	and    BYTE PTR [si],bh
 512:	69 70 3e 00 20 20 69 	imul   esi,DWORD PTR [eax+0x3e],0x69202000
 519:	6e                   	outs   dx,BYTE PTR ds:[esi]
 51a:	76 61                	jbe    57d <.rodata.str1.1+0x57d>
 51c:	6c                   	ins    BYTE PTR es:[edi],dx
 51d:	69 64 20 49 50 20 61 	imul   esp,DWORD PTR [eax+eiz*1+0x49],0x64612050
 524:	64 
 525:	64 72 65             	fs jb  58d <.rodata.str1.1+0x58d>
 528:	73 73                	jae    59d <.rodata.str1.1+0x59d>
 52a:	00 20                	add    BYTE PTR [eax],ah
 52c:	20 4e 6f             	and    BYTE PTR [esi+0x6f],cl
 52f:	20 49 50             	and    BYTE PTR [ecx+0x50],cl
 532:	2e 20 52 75          	and    BYTE PTR cs:[edx+0x75],dl
 536:	6e                   	outs   dx,BYTE PTR ds:[esi]
 537:	20 27                	and    BYTE PTR [edi],ah
 539:	64 68 63 70 27 20    	fs push 0x20277063
 53f:	66 69 72 73 74 2e    	imul   si,WORD PTR [edx+0x73],0x2e74
 545:	00 20                	add    BYTE PTR [eax],ah
 547:	20 50 49             	and    BYTE PTR [eax+0x49],dl
 54a:	4e                   	dec    esi
 54b:	47                   	inc    edi
 54c:	20 2e                	and    BYTE PTR [esi],ch
 54e:	2e 2e 00 20          	cs add BYTE PTR cs:[eax],ah
 552:	6d                   	ins    DWORD PTR es:[edi],dx
 553:	73 00                	jae    555 <.rodata.str1.1+0x555>
 555:	20 20                	and    BYTE PTR [eax],ah
 557:	72 65                	jb     5be <.rodata.str1.1+0x5be>
 559:	71 75                	jno    5d0 <.rodata.str1.1+0x5d0>
 55b:	65 73 74             	gs jae 5d2 <.rodata.str1.1+0x5d2>
 55e:	20 74 69 6d          	and    BYTE PTR [ecx+ebp*2+0x6d],dh
 562:	65 6f                	outs   dx,DWORD PTR gs:[esi]
 564:	75 74                	jne    5da <.rodata.str1.1+0x5da>
 566:	00 70 77             	add    BYTE PTR [eax+0x77],dh
 569:	64 00 20             	add    BYTE PTR fs:[eax],ah
 56c:	20 2f                	and    BYTE PTR [edi],ch
 56e:	68 6f 6d 65 2f       	push   0x2f656d6f
 573:	73 6c                	jae    5e1 <.rodata.str1.1+0x5e1>
 575:	6f                   	outs   dx,DWORD PTR ds:[esi]
 576:	70 00                	jo     578 <.rodata.str1.1+0x578>
 578:	69 64 00 20 20 75 69 	imul   esp,DWORD PTR [eax+eax*1+0x20],0x64697520
 57f:	64 
 580:	3d 30 28 73 6c       	cmp    eax,0x6c732830
 585:	6f                   	outs   dx,DWORD PTR ds:[esi]
 586:	70 29                	jo     5b1 <.rodata.str1.1+0x5b1>
 588:	20 67 69             	and    BYTE PTR [edi+0x69],ah
 58b:	64 3d 30 28 73 6c    	fs cmp eax,0x6c732830
 591:	6f                   	outs   dx,DWORD PTR ds:[esi]
 592:	70 29                	jo     5bd <.rodata.str1.1+0x5bd>
 594:	00 64 61 74          	add    BYTE PTR [ecx+eiz*2+0x74],ah
 598:	65 00 63 6f          	add    BYTE PTR gs:[ebx+0x6f],ah
 59c:	6c                   	ins    BYTE PTR es:[edi],dx
 59d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 59e:	72 00                	jb     5a0 <.rodata.str1.1+0x5a0>
 5a0:	6d                   	ins    DWORD PTR es:[edi],dx
 5a1:	61                   	popa
 5a2:	74 72                	je     616 <.rodata.str1.1+0x616>
 5a4:	69 78 00 20 20 57 61 	imul   edi,DWORD PTR [eax+0x0],0x61572020
 5ab:	6b 65 20 75          	imul   esp,DWORD PTR [ebp+0x20],0x75
 5af:	70 2c                	jo     5dd <.rodata.str1.1+0x5dd>
 5b1:	20 73 6c             	and    BYTE PTR [ebx+0x6c],dh
 5b4:	6f                   	outs   dx,DWORD PTR ds:[esi]
 5b5:	70 2e                	jo     5e5 <.rodata.str1.1+0x5e5>
 5b7:	2e 2e 00 20          	cs add BYTE PTR cs:[eax],ah
 5bb:	20 54 68 65          	and    BYTE PTR [eax+ebp*2+0x65],dl
 5bf:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
 5c2:	74 72                	je     636 <.rodata.str1.1+0x636>
 5c4:	69 78 20 68 61 73 20 	imul   edi,DWORD PTR [eax+0x20],0x20736168
 5cb:	79 6f                	jns    63c <.rodata.str1.1+0x63c>
 5cd:	75 2e                	jne    5fd <.rodata.str1.1+0x5fd>
 5cf:	00 20                	add    BYTE PTR [eax],ah
 5d1:	20 46 6f             	and    BYTE PTR [esi+0x6f],al
 5d4:	6c                   	ins    BYTE PTR es:[edi],dx
 5d5:	6c                   	ins    BYTE PTR es:[edi],dx
 5d6:	6f                   	outs   dx,DWORD PTR ds:[esi]
 5d7:	77 20                	ja     5f9 <.rodata.str1.1+0x5f9>
 5d9:	74 68                	je     643 <.rodata.str1.1+0x643>
 5db:	65 20 77 68          	and    BYTE PTR gs:[edi+0x68],dh
 5df:	69 74 65 20 72 61 62 	imul   esi,DWORD PTR [ebp+eiz*2+0x20],0x62626172
 5e6:	62 
 5e7:	69 74 2e 00 20 20 30 	imul   esi,DWORD PTR [esi+ebp*1+0x0],0x31302020
 5ee:	31 
 5ef:	30 30                	xor    BYTE PTR [eax],dh
 5f1:	31 31                	xor    DWORD PTR [ecx],esi
 5f3:	31 30                	xor    DWORD PTR [eax],esi
 5f5:	20 30                	and    BYTE PTR [eax],dh
 5f7:	31 31                	xor    DWORD PTR [ecx],esi
 5f9:	30 30                	xor    BYTE PTR [eax],dh
 5fb:	31 30                	xor    DWORD PTR [eax],esi
 5fd:	31 20                	xor    DWORD PTR [eax],esp
 5ff:	30 31                	xor    BYTE PTR [ecx],dh
 601:	31 30                	xor    DWORD PTR [eax],esi
 603:	31 31                	xor    DWORD PTR [ecx],esi
 605:	31 31                	xor    DWORD PTR [ecx],esi
 607:	00 20                	add    BYTE PTR [eax],ah
 609:	20 4b 6e             	and    BYTE PTR [ebx+0x6e],cl
 60c:	6f                   	outs   dx,DWORD PTR ds:[esi]
 60d:	63 6b 20             	arpl   WORD PTR [ebx+0x20],ebp
 610:	6b 6e 6f 63          	imul   ebp,DWORD PTR [esi+0x6f],0x63
 614:	6b 2c 20 73          	imul   ebp,DWORD PTR [eax+eiz*1],0x73
 618:	6c                   	ins    BYTE PTR es:[edi],dx
 619:	6f                   	outs   dx,DWORD PTR ds:[esi]
 61a:	70 2e                	jo     64a <.rodata.str1.1+0x64a>
 61c:	00 63 61             	add    BYTE PTR [ebx+0x61],ah
 61f:	6c                   	ins    BYTE PTR es:[edi],dx
 620:	63 00                	arpl   WORD PTR [eax],eax
 622:	20 20                	and    BYTE PTR [eax],ah
 624:	43                   	inc    ebx
 625:	61                   	popa
 626:	6c                   	ins    BYTE PTR es:[edi],dx
 627:	63 75 6c             	arpl   WORD PTR [ebp+0x6c],esi
 62a:	61                   	popa
 62b:	74 6f                	je     69c <.rodata.str1.1+0x69c>
 62d:	72 20                	jb     64f <.rodata.str1.1+0x64f>
 62f:	6f                   	outs   dx,DWORD PTR ds:[esi]
 630:	70 65                	jo     697 <.rodata.str1.1+0x697>
 632:	6e                   	outs   dx,BYTE PTR ds:[esi]
 633:	65 64 2e 00 6e 6f    	gs fs add BYTE PTR cs:[esi+0x6f],ch
 639:	74 65                	je     6a0 <.rodata.str1.1+0x6a0>
 63b:	70 61                	jo     69e <.rodata.str1.1+0x69e>
 63d:	64 00 20             	add    BYTE PTR fs:[eax],ah
 640:	20 4e 6f             	and    BYTE PTR [esi+0x6f],cl
 643:	74 65                	je     6aa <.rodata.str1.1+0x6aa>
 645:	70 61                	jo     6a8 <.rodata.str1.1+0x6a8>
 647:	64 20 6f 70          	and    BYTE PTR fs:[edi+0x70],ch
 64b:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 64d:	65 64 2e 00 66 69    	gs fs add BYTE PTR cs:[esi+0x69],ah
 653:	6c                   	ins    BYTE PTR es:[edi],dx
 654:	65 73 00             	gs jae 657 <.rodata.str1.1+0x657>
 657:	20 20                	and    BYTE PTR [eax],ah
 659:	46                   	inc    esi
 65a:	69 6c 65 20 4d 61 6e 	imul   ebp,DWORD PTR [ebp+eiz*2+0x20],0x616e614d
 661:	61 
 662:	67 65 72 20          	addr16 gs jb 686 <.rodata.str1.1+0x686>
 666:	6f                   	outs   dx,DWORD PTR ds:[esi]
 667:	70 65                	jo     6ce <.rodata.str1.1+0x6ce>
 669:	6e                   	outs   dx,BYTE PTR ds:[esi]
 66a:	65 64 2e 00 73 65    	gs fs add BYTE PTR cs:[ebx+0x65],dh
 670:	74 74                	je     6e6 <.rodata.str1.1+0x6e6>
 672:	69 6e 67 73 00 20 20 	imul   ebp,DWORD PTR [esi+0x67],0x20200073
 679:	53                   	push   ebx
 67a:	65 74 74             	gs je  6f1 <.rodata.str1.1+0x6f1>
 67d:	69 6e 67 73 20 6f 70 	imul   ebp,DWORD PTR [esi+0x67],0x706f2073
 684:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 686:	65 64 2e 00 70 68    	gs fs add BYTE PTR cs:[eax+0x68],dh
 68c:	79 73                	jns    701 <.rodata.str1.1+0x701>
 68e:	69 63 73 00 20 20 50 	imul   esp,DWORD PTR [ebx+0x73],0x50202000
 695:	68 79 73 69 63       	push   0x63697379
 69a:	73 20                	jae    6bc <.rodata.str1.1+0x6bc>
 69c:	4c                   	dec    esp
 69d:	61                   	popa
 69e:	62 20                	bound  esp,QWORD PTR [eax]
 6a0:	6f                   	outs   dx,DWORD PTR ds:[esi]
 6a1:	70 65                	jo     708 <.rodata.str1.1+0x708>
 6a3:	6e                   	outs   dx,BYTE PTR ds:[esi]
 6a4:	65 64 2e 00 62 72    	gs fs add BYTE PTR cs:[edx+0x72],ah
 6aa:	65 61                	gs popa
 6ac:	6b 6f 75 74          	imul   ebp,DWORD PTR [edi+0x75],0x74
 6b0:	00 20                	add    BYTE PTR [eax],ah
 6b2:	20 42 72             	and    BYTE PTR [edx+0x72],al
 6b5:	65 61                	gs popa
 6b7:	6b 6f 75 74          	imul   ebp,DWORD PTR [edi+0x75],0x74
 6bb:	20 6f 70             	and    BYTE PTR [edi+0x70],ch
 6be:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 6c0:	65 64 2e 00 72 65    	gs fs add BYTE PTR cs:[edx+0x65],dh
 6c6:	62 6f 6f             	bound  ebp,QWORD PTR [edi+0x6f]
 6c9:	74 00                	je     6cb <.rodata.str1.1+0x6cb>
 6cb:	20 20                	and    BYTE PTR [eax],ah
 6cd:	52                   	push   edx
 6ce:	65 62 6f 6f          	bound  ebp,QWORD PTR gs:[edi+0x6f]
 6d2:	74 69                	je     73d <.rodata.str1.1+0x73d>
 6d4:	6e                   	outs   dx,BYTE PTR ds:[esi]
 6d5:	67 2e 2e 2e 00 6c 73 	cs cs add BYTE PTR cs:[si+0x73],ch
 6dc:	00 6c 73 20          	add    BYTE PTR [ebx+esi*2+0x20],ch
 6e0:	00 63 61             	add    BYTE PTR [ebx+0x61],ah
 6e3:	74 20                	je     705 <.rodata.str1.1+0x705>
 6e5:	00 20                	add    BYTE PTR [eax],ah
 6e7:	20 75 73             	and    BYTE PTR [ebp+0x73],dh
 6ea:	61                   	popa
 6eb:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
 6ef:	63 61 74             	arpl   WORD PTR [ecx+0x74],esp
 6f2:	20 3c 66             	and    BYTE PTR [esi+eiz*2],bh
 6f5:	69 6c 65 3e 00 2f 65 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3e],0x74652f00
 6fc:	74 
 6fd:	63 2f                	arpl   WORD PTR [edi],ebp
 6ff:	73 6c                	jae    76d <.rodata.str1.1+0x76d>
 701:	6f                   	outs   dx,DWORD PTR ds:[esi]
 702:	70 6f                	jo     773 <.rodata.str1.1+0x773>
 704:	73 2e                	jae    734 <.rodata.str1.1+0x734>
 706:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
 709:	66 00 20             	data16 add BYTE PTR [eax],ah
 70c:	20 23                	and    BYTE PTR [ebx],ah
 70e:	20 53 6c             	and    BYTE PTR [ebx+0x6c],dl
 711:	6f                   	outs   dx,DWORD PTR ds:[esi]
 712:	70 4f                	jo     763 <.rodata.str1.1+0x763>
 714:	53                   	push   ebx
 715:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 718:	6e                   	outs   dx,BYTE PTR ds:[esi]
 719:	66 69 67 75 72 61    	imul   sp,WORD PTR [edi+0x75],0x6172
 71f:	74 69                	je     78a <.rodata.str1.1+0x78a>
 721:	6f                   	outs   dx,DWORD PTR ds:[esi]
 722:	6e                   	outs   dx,BYTE PTR ds:[esi]
 723:	00 20                	add    BYTE PTR [eax],ah
 725:	20 74 68 65          	and    BYTE PTR [eax+ebp*2+0x65],dh
 729:	6d                   	ins    DWORD PTR es:[edi],dx
 72a:	65 3d 63 61 74 70    	gs cmp eax,0x70746163
 730:	70 75                	jo     7a7 <.rodata.str1.1+0x7a7>
 732:	63 63 69             	arpl   WORD PTR [ebx+0x69],esp
 735:	6e                   	outs   dx,BYTE PTR ds:[esi]
 736:	2d 6d 6f 63 68       	sub    eax,0x68636f6d
 73b:	61                   	popa
 73c:	00 20                	add    BYTE PTR [eax],ah
 73e:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 741:	73 6f                	jae    7b2 <.rodata.str1.1+0x7b2>
 743:	6c                   	ins    BYTE PTR es:[edi],dx
 744:	75 74                	jne    7ba <.rodata.str1.1+0x7ba>
 746:	69 6f 6e 3d 31 30 32 	imul   ebp,DWORD PTR [edi+0x6e],0x3230313d
 74d:	34 78                	xor    al,0x78
 74f:	37                   	aaa
 750:	36 38 00             	cmp    BYTE PTR ss:[eax],al
 753:	20 20                	and    BYTE PTR [eax],ah
 755:	77 61                	ja     7b8 <.rodata.str1.1+0x7b8>
 757:	6c                   	ins    BYTE PTR es:[edi],dx
 758:	6c                   	ins    BYTE PTR es:[edi],dx
 759:	70 61                	jo     7bc <.rodata.str1.1+0x7bc>
 75b:	70 65                	jo     7c2 <.rodata.str1.1+0x7c2>
 75d:	72 3d                	jb     79c <.rodata.str1.1+0x79c>
 75f:	67 72 61             	addr16 jb 7c3 <.rodata.str1.1+0x7c3>
 762:	64 69 65 6e 74 00 2f 	imul   esp,DWORD PTR fs:[ebp+0x6e],0x762f0074
 769:	76 
 76a:	61                   	popa
 76b:	72 2f                	jb     79c <.rodata.str1.1+0x79c>
 76d:	6c                   	ins    BYTE PTR es:[edi],dx
 76e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 76f:	67 2f                	addr16 das
 771:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
 775:	65 6c                	gs ins BYTE PTR es:[edi],dx
 777:	2e 6c                	cs ins BYTE PTR es:[edi],dx
 779:	6f                   	outs   dx,DWORD PTR ds:[esi]
 77a:	67 00 20             	add    BYTE PTR [bx+si],ah
 77d:	20 5b 30             	and    BYTE PTR [ebx+0x30],bl
 780:	2e 30 30             	xor    BYTE PTR cs:[eax],dh
 783:	30 5d 20             	xor    BYTE PTR [ebp+0x20],bl
 786:	53                   	push   ebx
 787:	6c                   	ins    BYTE PTR es:[edi],dx
 788:	6f                   	outs   dx,DWORD PTR ds:[esi]
 789:	70 4b                	jo     7d6 <.rodata.str1.1+0x7d6>
 78b:	65 72 6e             	gs jb  7fc <.rodata.str1.1+0x7fc>
 78e:	65 6c                	gs ins BYTE PTR es:[edi],dx
 790:	20 62 6f             	and    BYTE PTR [edx+0x6f],ah
 793:	6f                   	outs   dx,DWORD PTR ds:[esi]
 794:	74 65                	je     7fb <.rodata.str1.1+0x7fb>
 796:	64 00 20             	add    BYTE PTR fs:[eax],ah
 799:	20 5b 30             	and    BYTE PTR [ebx+0x30],bl
 79c:	2e 30 30             	xor    BYTE PTR cs:[eax],dh
 79f:	31 5d 20             	xor    DWORD PTR [ebp+0x20],ebx
 7a2:	47                   	inc    edi
 7a3:	44                   	inc    esp
 7a4:	54                   	push   esp
 7a5:	20 6c 6f 61          	and    BYTE PTR [edi+ebp*2+0x61],ch
 7a9:	64 65 64 00 20       	fs gs add BYTE PTR fs:[eax],ah
 7ae:	20 5b 30             	and    BYTE PTR [ebx+0x30],bl
 7b1:	2e 30 31             	xor    BYTE PTR cs:[ecx],dh
 7b4:	35 5d 20 47 55       	xor    eax,0x5547205d
 7b9:	49                   	dec    ecx
 7ba:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
 7bd:	61                   	popa
 7be:	72 74                	jb     834 <.rodata.str1.1+0x834>
 7c0:	65 64 00 20          	gs add BYTE PTR fs:[eax],ah
 7c4:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 7c7:	74 3a                	je     803 <.rodata.str1.1+0x803>
 7c9:	20 66 69             	and    BYTE PTR [esi+0x69],ah
 7cc:	6c                   	ins    BYTE PTR es:[edi],dx
 7cd:	65 20 6e 6f          	and    BYTE PTR gs:[esi+0x6f],ch
 7d1:	74 20                	je     7f3 <.rodata.str1.1+0x7f3>
 7d3:	66 6f                	outs   dx,WORD PTR ds:[esi]
 7d5:	75 6e                	jne    845 <.rodata.str1.1+0x845>
 7d7:	64 00 65 63          	add    BYTE PTR fs:[ebp+0x63],ah
 7db:	68 6f 20 00 63       	push   0x6300206f
 7e0:	6f                   	outs   dx,DWORD PTR ds:[esi]
 7e1:	77 73                	ja     856 <execute+0x266>
 7e3:	61                   	popa
 7e4:	79 20                	jns    806 <.rodata.str1.1+0x806>
 7e6:	00 63 6f             	add    BYTE PTR [ebx+0x6f],ah
 7e9:	77 73                	ja     85e <execute+0x26e>
 7eb:	61                   	popa
 7ec:	79 00                	jns    7ee <.rodata.str1.1+0x7ee>
 7ee:	65 78 69             	gs js  85a <execute+0x26a>
 7f1:	74 00                	je     7f3 <.rodata.str1.1+0x7f3>
 7f3:	20 20                	and    BYTE PTR [eax],ah
 7f5:	54                   	push   esp
 7f6:	68 65 72 65 20       	push   0x20657265
 7fb:	69 73 20 6e 6f 20 65 	imul   esi,DWORD PTR [ebx+0x20],0x65206f6e
 802:	73 63                	jae    867 <execute+0x277>
 804:	61                   	popa
 805:	70 65                	jo     86c <execute+0x27c>
 807:	2e 00 73 75          	add    BYTE PTR cs:[ebx+0x75],dh
 80b:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 80d:	00 73 75             	add    BYTE PTR [ebx+0x75],dh
 810:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 812:	20 00                	and    BYTE PTR [eax],al
 814:	72 6d                	jb     883 <execute+0x293>
 816:	20 2d 72 66 20 2f    	and    BYTE PTR ds:0x2f206672,ch
 81c:	00 20                	add    BYTE PTR [eax],ah
 81e:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
 821:	6d                   	ins    DWORD PTR es:[edi],dx
 822:	6d                   	ins    DWORD PTR es:[edi],dx
 823:	61                   	popa
 824:	6e                   	outs   dx,BYTE PTR ds:[esi]
 825:	64 20 6e 6f          	and    BYTE PTR fs:[esi+0x6f],ch
 829:	74 20                	je     84b <execute+0x25b>
 82b:	66 6f                	outs   dx,WORD PTR ds:[esi]
 82d:	75 6e                	jne    89d <execute+0x2ad>
 82f:	64 3a 20             	cmp    ah,BYTE PTR fs:[eax]
 832:	00 20                	add    BYTE PTR [eax],ah
 834:	20 72 65             	and    BYTE PTR [edx+0x65],dh
 837:	70 6c                	jo     8a5 <execute+0x2b5>
 839:	79 20                	jns    85b <execute+0x26b>
 83b:	69 6e 20 00 40 73 6c 	imul   ebp,DWORD PTR [esi+0x20],0x6c734000
 842:	6f                   	outs   dx,DWORD PTR ds:[esi]
 843:	70 6f                	jo     8b4 <execute+0x2c4>
 845:	73 00                	jae    847 <.rodata.str1.1+0x847>
 847:	20 24 20             	and    BYTE PTR [eax+eiz*1],ah
	...

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	80 18 00             	sbb    BYTE PTR [eax],0x0
   3:	00 70 18             	add    BYTE PTR [eax+0x18],dh
   6:	00 00                	add    BYTE PTR [eax],al
   8:	56                   	push   esi
   9:	18 00                	sbb    BYTE PTR [eax],al
   b:	00 08                	add    BYTE PTR [eax],cl
   d:	1a 00                	sbb    al,BYTE PTR [eax]
   f:	00 e8                	add    al,ch
  11:	19 00                	sbb    DWORD PTR [eax],eax
  13:	00 28                	add    BYTE PTR [eax],ch
  15:	18 00                	sbb    BYTE PTR [eax],al
  17:	00 90 19 00 00 60    	add    BYTE PTR [eax+0x60000019],dl
  1d:	18 00                	sbb    BYTE PTR [eax],al
  1f:	00 60 18             	add    BYTE PTR [eax+0x18],ah
  22:	00 00                	add    BYTE PTR [eax],al
  24:	60                   	pusha
  25:	18 00                	sbb    BYTE PTR [eax],al
  27:	00 60 18             	add    BYTE PTR [eax+0x18],ah
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	60                   	pusha
  2d:	18 00                	sbb    BYTE PTR [eax],al
  2f:	00 60 18             	add    BYTE PTR [eax+0x18],ah
  32:	00 00                	add    BYTE PTR [eax],al
  34:	60                   	pusha
  35:	18 00                	sbb    BYTE PTR [eax],al
  37:	00 60 18             	add    BYTE PTR [eax+0x18],ah
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	60                   	pusha
  3d:	18 00                	sbb    BYTE PTR [eax],al
  3f:	00 40 19             	add    BYTE PTR [eax+0x19],al
  42:	00 00                	add    BYTE PTR [eax],al
  44:	60                   	pusha
  45:	18 00                	sbb    BYTE PTR [eax],al
  47:	00 c0                	add    al,al
  49:	18 00                	sbb    BYTE PTR [eax],al
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
  17:	00 7c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bh
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	c1 00 00             	rol    DWORD PTR [eax],0x0
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	41                   	inc    ecx
  34:	0e                   	push   cs
  35:	10 86 04 43 0e 14    	adc    BYTE PTR [esi+0x140e4304],al
  3b:	83 05 43 0e 30 6a 0e 	add    DWORD PTR ds:0x6a300e43,0xe
  42:	34 4a                	xor    al,0x4a
  44:	0e                   	push   cs
  45:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
  48:	3c 41                	cmp    al,0x41
  4a:	0e                   	push   cs
  4b:	40                   	inc    eax
  4c:	4a                   	dec    edx
  4d:	0e                   	push   cs
  4e:	30 4a 0e             	xor    BYTE PTR [edx+0xe],cl
  51:	34 42                	xor    al,0x42
  53:	0e                   	push   cs
  54:	38 44 0e 3c          	cmp    BYTE PTR [esi+ecx*1+0x3c],al
  58:	41                   	inc    ecx
  59:	0e                   	push   cs
  5a:	40                   	inc    eax
  5b:	4c                   	dec    esp
  5c:	0e                   	push   cs
  5d:	30 50 0a             	xor    BYTE PTR [eax+0xa],dl
  60:	0e                   	push   cs
  61:	14 41                	adc    al,0x41
  63:	c3                   	ret
  64:	0e                   	push   cs
  65:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  68:	0e                   	push   cs
  69:	0c 41                	or     al,0x41
  6b:	c7                   	(bad)
  6c:	0e                   	push   cs
  6d:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  70:	0e                   	push   cs
  71:	04 46                	add    al,0x46
  73:	0b 46 0e             	or     eax,DWORD PTR [esi+0xe]
  76:	34 42                	xor    al,0x42
  78:	0e                   	push   cs
  79:	38 44 0e 3c          	cmp    BYTE PTR [esi+ecx*1+0x3c],al
  7d:	43                   	inc    ebx
  7e:	0e                   	push   cs
  7f:	40                   	inc    eax
  80:	52                   	push   edx
  81:	0e                   	push   cs
  82:	30 5b 0e             	xor    BYTE PTR [ebx+0xe],bl
  85:	14 41                	adc    al,0x41
  87:	c3                   	ret
  88:	0e                   	push   cs
  89:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  8c:	0e                   	push   cs
  8d:	0c 41                	or     al,0x41
  8f:	c7                   	(bad)
  90:	0e                   	push   cs
  91:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  94:	0e                   	push   cs
  95:	04 00                	add    al,0x0
  97:	00 20                	add    BYTE PTR [eax],ah
  99:	00 00                	add    BYTE PTR [eax],al
  9b:	00 9c 00 00 00 d0 00 	add    BYTE PTR [eax+eax*1+0xd00000],bl
  a2:	00 00                	add    BYTE PTR [eax],al
  a4:	07                   	pop    es
  a5:	01 00                	add    DWORD PTR [eax],eax
  a7:	00 00                	add    BYTE PTR [eax],al
  a9:	41                   	inc    ecx
  aa:	0e                   	push   cs
  ab:	08 83 02 4f 0e 10    	or     BYTE PTR [ebx+0x100e4f02],al
  b1:	02 e5                	add    ah,ch
  b3:	0e                   	push   cs
  b4:	08 4d c3             	or     BYTE PTR [ebp-0x3d],cl
  b7:	0e                   	push   cs
  b8:	04 00                	add    al,0x0
  ba:	00 00                	add    BYTE PTR [eax],al
  bc:	1c 00                	sbb    al,0x0
  be:	00 00                	add    BYTE PTR [eax],al
  c0:	c0 00 00             	rol    BYTE PTR [eax],0x0
  c3:	00 e0                	add    al,ah
  c5:	01 00                	add    DWORD PTR [eax],eax
  c7:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
  cb:	00 00                	add    BYTE PTR [eax],al
  cd:	41                   	inc    ecx
  ce:	0e                   	push   cs
  cf:	08 83 02 4f 0e 10    	or     BYTE PTR [ebx+0x100e4f02],al
  d5:	6a 0e                	push   0xe
  d7:	08 4d c3             	or     BYTE PTR [ebp-0x3d],cl
  da:	0e                   	push   cs
  db:	04 4c                	add    al,0x4c
  dd:	00 00                	add    BYTE PTR [eax],al
  df:	00 e0                	add    al,ah
  e1:	00 00                	add    BYTE PTR [eax],al
  e3:	00 30                	add    BYTE PTR [eax],dh
  e5:	02 00                	add    al,BYTE PTR [eax]
  e7:	00 a5 01 00 00 00    	add    BYTE PTR [ebp+0x1],ah
  ed:	41                   	inc    ecx
  ee:	0e                   	push   cs
  ef:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  f5:	87 03                	xchg   DWORD PTR [ebx],eax
  f7:	43                   	inc    ebx
  f8:	0e                   	push   cs
  f9:	10 86 04 46 0e 14    	adc    BYTE PTR [esi+0x140e4604],al
  ff:	83 05 43 0e 80 01 4d 	add    DWORD PTR ds:0x1800e43,0x4d
 106:	0e                   	push   cs
 107:	8c 01                	mov    WORD PTR [ecx],es
 109:	46                   	inc    esi
 10a:	0e                   	push   cs
 10b:	90                   	nop
 10c:	01 54 0e 80          	add    DWORD PTR [esi+ecx*1-0x80],edx
 110:	01 03                	add    DWORD PTR [ebx],eax
 112:	36 01 0a             	add    DWORD PTR ss:[edx],ecx
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
 126:	04 41                	add    al,0x41
 128:	0b 00                	or     eax,DWORD PTR [eax]
 12a:	00 00                	add    BYTE PTR [eax],al
 12c:	34 00                	xor    al,0x0
 12e:	00 00                	add    BYTE PTR [eax],al
 130:	30 01                	xor    BYTE PTR [ecx],al
 132:	00 00                	add    BYTE PTR [eax],al
 134:	e0 03                	loopne 139 <.eh_frame+0x139>
 136:	00 00                	add    BYTE PTR [eax],al
 138:	9d                   	popf
 139:	00 00                	add    BYTE PTR [eax],al
 13b:	00 00                	add    BYTE PTR [eax],al
 13d:	41                   	inc    ecx
 13e:	0e                   	push   cs
 13f:	08 86 02 4d 0e 0c    	or     BYTE PTR [esi+0xc0e4d02],al
 145:	83 03 45             	add    DWORD PTR [ebx],0x45
 148:	0e                   	push   cs
 149:	10 59 0e             	adc    BYTE PTR [ecx+0xe],bl
 14c:	18 45 0e             	sbb    BYTE PTR [ebp+0xe],al
 14f:	1c 41                	sbb    al,0x41
 151:	0e                   	push   cs
 152:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 155:	10 02                	adc    BYTE PTR [edx],al
 157:	50                   	push   eax
 158:	0e                   	push   cs
 159:	0c 4d                	or     al,0x4d
 15b:	c3                   	ret
 15c:	0e                   	push   cs
 15d:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 160:	0e                   	push   cs
 161:	04 00                	add    al,0x0
 163:	00 d0                	add    al,dl
 165:	00 00                	add    BYTE PTR [eax],al
 167:	00 68 01             	add    BYTE PTR [eax+0x1],ch
 16a:	00 00                	add    BYTE PTR [eax],al
 16c:	80 04 00 00          	add    BYTE PTR [eax+eax*1],0x0
 170:	6e                   	outs   dx,BYTE PTR ds:[esi]
 171:	01 00                	add    DWORD PTR [eax],eax
 173:	00 00                	add    BYTE PTR [eax],al
 175:	41                   	inc    ecx
 176:	0e                   	push   cs
 177:	08 85 02 43 0e 0c    	or     BYTE PTR [ebp+0xc0e4302],al
 17d:	87 03                	xchg   DWORD PTR [ebx],eax
 17f:	41                   	inc    ecx
 180:	0e                   	push   cs
 181:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 187:	83 05 43 0e 60 02 7c 	add    DWORD PTR ds:0x2600e43,0x7c
 18e:	0e                   	push   cs
 18f:	64 42                	fs inc edx
 191:	0e                   	push   cs
 192:	68 45 0e 6c 46       	push   0x466c0e45
 197:	0e                   	push   cs
 198:	70 46                	jo     1e0 <.eh_frame+0x1e0>
 19a:	0e                   	push   cs
 19b:	6c                   	ins    BYTE PTR es:[edi],dx
 19c:	41                   	inc    ecx
 19d:	0e                   	push   cs
 19e:	68 41 0e 6c 41       	push   0x416c0e41
 1a3:	0e                   	push   cs
 1a4:	70 46                	jo     1ec <.eh_frame+0x1ec>
 1a6:	0e                   	push   cs
 1a7:	6c                   	ins    BYTE PTR es:[edi],dx
 1a8:	41                   	inc    ecx
 1a9:	0e                   	push   cs
 1aa:	68 45 0e 6c 41       	push   0x416c0e45
 1af:	0e                   	push   cs
 1b0:	70 48                	jo     1fa <.eh_frame+0x1fa>
 1b2:	0e                   	push   cs
 1b3:	60                   	pusha
 1b4:	4e                   	dec    esi
 1b5:	0e                   	push   cs
 1b6:	64 42                	fs inc edx
 1b8:	0e                   	push   cs
 1b9:	68 41 0e 6c 46       	push   0x466c0e41
 1be:	0e                   	push   cs
 1bf:	70 46                	jo     207 <.eh_frame+0x207>
 1c1:	0e                   	push   cs
 1c2:	6c                   	ins    BYTE PTR es:[edi],dx
 1c3:	41                   	inc    ecx
 1c4:	0e                   	push   cs
 1c5:	68 41 0e 6c 41       	push   0x416c0e41
 1ca:	0e                   	push   cs
 1cb:	70 46                	jo     213 <.eh_frame+0x213>
 1cd:	0e                   	push   cs
 1ce:	6c                   	ins    BYTE PTR es:[edi],dx
 1cf:	41                   	inc    ecx
 1d0:	0e                   	push   cs
 1d1:	68 45 0e 6c 41       	push   0x416c0e45
 1d6:	0e                   	push   cs
 1d7:	70 4a                	jo     223 <.eh_frame+0x223>
 1d9:	0e                   	push   cs
 1da:	60                   	pusha
 1db:	49                   	dec    ecx
 1dc:	0e                   	push   cs
 1dd:	64 45                	fs inc ebp
 1df:	0e                   	push   cs
 1e0:	68 41 0e 6c 41       	push   0x416c0e41
 1e5:	0e                   	push   cs
 1e6:	70 46                	jo     22e <.eh_frame+0x22e>
 1e8:	0e                   	push   cs
 1e9:	6c                   	ins    BYTE PTR es:[edi],dx
 1ea:	41                   	inc    ecx
 1eb:	0e                   	push   cs
 1ec:	68 41 0e 6c 41       	push   0x416c0e41
 1f1:	0e                   	push   cs
 1f2:	70 56                	jo     24a <.eh_frame+0x24a>
 1f4:	0e                   	push   cs
 1f5:	14 41                	adc    al,0x41
 1f7:	c3                   	ret
 1f8:	0e                   	push   cs
 1f9:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1fc:	0e                   	push   cs
 1fd:	0c 41                	or     al,0x41
 1ff:	c7                   	(bad)
 200:	0e                   	push   cs
 201:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 204:	0e                   	push   cs
 205:	04 46                	add    al,0x46
 207:	0e                   	push   cs
 208:	60                   	pusha
 209:	83 05 85 02 86 04 87 	add    DWORD PTR ds:0x4860285,0xffffff87
 210:	03 43 0e             	add    eax,DWORD PTR [ebx+0xe]
 213:	68 45 0e 6c 41       	push   0x416c0e45
 218:	0e                   	push   cs
 219:	70 48                	jo     263 <.eh_frame+0x263>
 21b:	0e                   	push   cs
 21c:	60                   	pusha
 21d:	52                   	push   edx
 21e:	0e                   	push   cs
 21f:	68 45 0e 6c 41       	push   0x416c0e45
 224:	0e                   	push   cs
 225:	70 48                	jo     26f <.eh_frame+0x26f>
 227:	0e                   	push   cs
 228:	60                   	pusha
 229:	4a                   	dec    edx
 22a:	0e                   	push   cs
 22b:	68 45 0e 6c 41       	push   0x416c0e45
 230:	0e                   	push   cs
 231:	70 48                	jo     27b <.eh_frame+0x27b>
 233:	0e                   	push   cs
 234:	60                   	pusha
 235:	00 00                	add    BYTE PTR [eax],al
 237:	00 1c 07             	add    BYTE PTR [edi+eax*1],bl
 23a:	00 00                	add    BYTE PTR [eax],al
 23c:	3c 02                	cmp    al,0x2
 23e:	00 00                	add    BYTE PTR [eax],al
 240:	f0 05 00 00 1e 10    	lock add eax,0x101e0000
 246:	00 00                	add    BYTE PTR [eax],al
 248:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 24b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 251:	87 03                	xchg   DWORD PTR [ebx],eax
 253:	41                   	inc    ecx
 254:	0e                   	push   cs
 255:	10 86 04 43 0e 14    	adc    BYTE PTR [esi+0x140e4304],al
 25b:	83 05 48 0e f8 01 4d 	add    DWORD PTR ds:0x1f80e48,0x4d
 262:	0e                   	push   cs
 263:	fc                   	cld
 264:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 267:	80 02 46             	add    BYTE PTR [edx],0x46
 26a:	0e                   	push   cs
 26b:	fc                   	cld
 26c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 26f:	f8                   	clc
 270:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 273:	fc                   	cld
 274:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 277:	80 02 46             	add    BYTE PTR [edx],0x46
 27a:	0e                   	push   cs
 27b:	fc                   	cld
 27c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 27f:	f8                   	clc
 280:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 283:	fc                   	cld
 284:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 287:	80 02 56             	add    BYTE PTR [edx],0x56
 28a:	0e                   	push   cs
 28b:	f0 01 4b 0a          	lock add DWORD PTR [ebx+0xa],ecx
 28f:	0e                   	push   cs
 290:	14 41                	adc    al,0x41
 292:	c3                   	ret
 293:	0e                   	push   cs
 294:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 297:	0e                   	push   cs
 298:	0c 41                	or     al,0x41
 29a:	c7                   	(bad)
 29b:	0e                   	push   cs
 29c:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 29f:	0e                   	push   cs
 2a0:	04 42                	add    al,0x42
 2a2:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 2a5:	f8                   	clc
 2a6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 2a9:	fc                   	cld
 2aa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2ad:	80 02 48             	add    BYTE PTR [edx],0x48
 2b0:	0e                   	push   cs
 2b1:	f0 01 03             	lock add DWORD PTR [ebx],eax
 2b4:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
 2b5:	01 0a                	add    DWORD PTR [edx],ecx
 2b7:	0e                   	push   cs
 2b8:	14 41                	adc    al,0x41
 2ba:	c3                   	ret
 2bb:	0e                   	push   cs
 2bc:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 2bf:	0e                   	push   cs
 2c0:	0c 41                	or     al,0x41
 2c2:	c7                   	(bad)
 2c3:	0e                   	push   cs
 2c4:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 2c7:	0e                   	push   cs
 2c8:	04 45                	add    al,0x45
 2ca:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 2cd:	f8                   	clc
 2ce:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 2d1:	fc                   	cld
 2d2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2d5:	80 02 48             	add    BYTE PTR [edx],0x48
 2d8:	0e                   	push   cs
 2d9:	f0 01 54 0a 0e       	lock add DWORD PTR [edx+ecx*1+0xe],edx
 2de:	14 41                	adc    al,0x41
 2e0:	c3                   	ret
 2e1:	0e                   	push   cs
 2e2:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 2e5:	0e                   	push   cs
 2e6:	0c 41                	or     al,0x41
 2e8:	c7                   	(bad)
 2e9:	0e                   	push   cs
 2ea:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 2ed:	0e                   	push   cs
 2ee:	04 47                	add    al,0x47
 2f0:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 2f3:	f8                   	clc
 2f4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 2f7:	fc                   	cld
 2f8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 2fb:	80 02 48             	add    BYTE PTR [edx],0x48
 2fe:	0e                   	push   cs
 2ff:	f0 01 47 0e          	lock add DWORD PTR [edi+0xe],eax
 303:	f8                   	clc
 304:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 307:	fc                   	cld
 308:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 30b:	80 02 48             	add    BYTE PTR [edx],0x48
 30e:	0e                   	push   cs
 30f:	f0 01 47 0e          	lock add DWORD PTR [edi+0xe],eax
 313:	f8                   	clc
 314:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 317:	fc                   	cld
 318:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 31b:	80 02 48             	add    BYTE PTR [edx],0x48
 31e:	0e                   	push   cs
 31f:	f0 01 70 0e          	lock add DWORD PTR [eax+0xe],esi
 323:	f8                   	clc
 324:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 327:	fc                   	cld
 328:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 32b:	80 02 48             	add    BYTE PTR [edx],0x48
 32e:	0e                   	push   cs
 32f:	f0 01 5d 0e          	lock add DWORD PTR [ebp+0xe],ebx
 333:	f8                   	clc
 334:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 337:	fc                   	cld
 338:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 33b:	80 02 48             	add    BYTE PTR [edx],0x48
 33e:	0e                   	push   cs
 33f:	f0 01 53 0e          	lock add DWORD PTR [ebx+0xe],edx
 343:	f8                   	clc
 344:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 347:	fc                   	cld
 348:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 34b:	80 02 48             	add    BYTE PTR [edx],0x48
 34e:	0e                   	push   cs
 34f:	f0 01 02             	lock add DWORD PTR [edx],eax
 352:	70 0e                	jo     362 <.eh_frame+0x362>
 354:	f4                   	hlt
 355:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
 358:	f8                   	clc
 359:	01 49 0e             	add    DWORD PTR [ecx+0xe],ecx
 35c:	fc                   	cld
 35d:	01 4e 0e             	add    DWORD PTR [esi+0xe],ecx
 360:	80 02 4a             	add    BYTE PTR [edx],0x4a
 363:	0e                   	push   cs
 364:	fc                   	cld
 365:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 368:	f8                   	clc
 369:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 36c:	fc                   	cld
 36d:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 370:	80 02 46             	add    BYTE PTR [edx],0x46
 373:	0e                   	push   cs
 374:	fc                   	cld
 375:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 378:	f8                   	clc
 379:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 37c:	fc                   	cld
 37d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 380:	80 02 48             	add    BYTE PTR [edx],0x48
 383:	0e                   	push   cs
 384:	f4                   	hlt
 385:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 388:	f8                   	clc
 389:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 38c:	fc                   	cld
 38d:	01 48 0e             	add    DWORD PTR [eax+0xe],ecx
 390:	80 02 46             	add    BYTE PTR [edx],0x46
 393:	0e                   	push   cs
 394:	fc                   	cld
 395:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 398:	f8                   	clc
 399:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 39c:	fc                   	cld
 39d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3a0:	80 02 46             	add    BYTE PTR [edx],0x46
 3a3:	0e                   	push   cs
 3a4:	fc                   	cld
 3a5:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3a8:	f8                   	clc
 3a9:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3ac:	fc                   	cld
 3ad:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3b0:	80 02 56             	add    BYTE PTR [edx],0x56
 3b3:	0e                   	push   cs
 3b4:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 3b8:	f8                   	clc
 3b9:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3bc:	fc                   	cld
 3bd:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3c0:	80 02 48             	add    BYTE PTR [edx],0x48
 3c3:	0e                   	push   cs
 3c4:	f0 01 45 0e          	lock add DWORD PTR [ebp+0xe],eax
 3c8:	f4                   	hlt
 3c9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3cc:	f8                   	clc
 3cd:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3d0:	fc                   	cld
 3d1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3d4:	80 02 48             	add    BYTE PTR [edx],0x48
 3d7:	0e                   	push   cs
 3d8:	f0 01 45 0e          	lock add DWORD PTR [ebp+0xe],eax
 3dc:	f4                   	hlt
 3dd:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3e0:	f8                   	clc
 3e1:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3e4:	fc                   	cld
 3e5:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3e8:	80 02 48             	add    BYTE PTR [edx],0x48
 3eb:	0e                   	push   cs
 3ec:	f0 01 02             	lock add DWORD PTR [edx],eax
 3ef:	5a                   	pop    edx
 3f0:	0e                   	push   cs
 3f1:	f4                   	hlt
 3f2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3f5:	f8                   	clc
 3f6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 3f9:	fc                   	cld
 3fa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 3fd:	80 02 48             	add    BYTE PTR [edx],0x48
 400:	0e                   	push   cs
 401:	f0 01 58 0e          	lock add DWORD PTR [eax+0xe],ebx
 405:	f4                   	hlt
 406:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 409:	f8                   	clc
 40a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 40d:	fc                   	cld
 40e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 411:	80 02 56             	add    BYTE PTR [edx],0x56
 414:	0e                   	push   cs
 415:	f0 01 46 0e          	lock add DWORD PTR [esi+0xe],eax
 419:	f4                   	hlt
 41a:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 41d:	f8                   	clc
 41e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 421:	fc                   	cld
 422:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 425:	80 02 48             	add    BYTE PTR [edx],0x48
 428:	0e                   	push   cs
 429:	f0 01 5b 0e          	lock add DWORD PTR [ebx+0xe],ebx
 42d:	f4                   	hlt
 42e:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 431:	f8                   	clc
 432:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 435:	fc                   	cld
 436:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 439:	80 02 4c             	add    BYTE PTR [edx],0x4c
 43c:	0e                   	push   cs
 43d:	f0 01 5d 0e          	lock add DWORD PTR [ebp+0xe],ebx
 441:	f4                   	hlt
 442:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 445:	f8                   	clc
 446:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 449:	fc                   	cld
 44a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 44d:	80 02 48             	add    BYTE PTR [edx],0x48
 450:	0e                   	push   cs
 451:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 455:	f4                   	hlt
 456:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 459:	f8                   	clc
 45a:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 45d:	fc                   	cld
 45e:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 461:	80 02 48             	add    BYTE PTR [edx],0x48
 464:	0e                   	push   cs
 465:	f0 01 45 0e          	lock add DWORD PTR [ebp+0xe],eax
 469:	f4                   	hlt
 46a:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 46d:	f8                   	clc
 46e:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 471:	fc                   	cld
 472:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 475:	80 02 48             	add    BYTE PTR [edx],0x48
 478:	0e                   	push   cs
 479:	f0 01 43 0e          	lock add DWORD PTR [ebx+0xe],eax
 47d:	f4                   	hlt
 47e:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 481:	f8                   	clc
 482:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 485:	fc                   	cld
 486:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 489:	80 02 48             	add    BYTE PTR [edx],0x48
 48c:	0e                   	push   cs
 48d:	f0 01 64 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],esp
 492:	01 44 0e f8          	add    DWORD PTR [esi+ecx*1-0x8],eax
 496:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 499:	fc                   	cld
 49a:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 49d:	80 02 46             	add    BYTE PTR [edx],0x46
 4a0:	0e                   	push   cs
 4a1:	fc                   	cld
 4a2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4a5:	f8                   	clc
 4a6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 4a9:	fc                   	cld
 4aa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4ad:	80 02 48             	add    BYTE PTR [edx],0x48
 4b0:	0e                   	push   cs
 4b1:	f0 01 5f 0e          	lock add DWORD PTR [edi+0xe],ebx
 4b5:	f4                   	hlt
 4b6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4b9:	f8                   	clc
 4ba:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 4bd:	fc                   	cld
 4be:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4c1:	80 02 48             	add    BYTE PTR [edx],0x48
 4c4:	0e                   	push   cs
 4c5:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 4c9:	f4                   	hlt
 4ca:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 4cd:	f8                   	clc
 4ce:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 4d1:	fc                   	cld
 4d2:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 4d5:	80 02 48             	add    BYTE PTR [edx],0x48
 4d8:	0e                   	push   cs
 4d9:	f0 01 53 0e          	lock add DWORD PTR [ebx+0xe],edx
 4dd:	f4                   	hlt
 4de:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4e1:	f8                   	clc
 4e2:	01 4a 0e             	add    DWORD PTR [edx+0xe],ecx
 4e5:	fc                   	cld
 4e6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4e9:	80 02 48             	add    BYTE PTR [edx],0x48
 4ec:	0e                   	push   cs
 4ed:	f0 01 59 0e          	lock add DWORD PTR [ecx+0xe],ebx
 4f1:	f4                   	hlt
 4f2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4f5:	f8                   	clc
 4f6:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 4f9:	fc                   	cld
 4fa:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 4fd:	80 02 48             	add    BYTE PTR [edx],0x48
 500:	0e                   	push   cs
 501:	f0 01 02             	lock add DWORD PTR [edx],eax
 504:	40                   	inc    eax
 505:	0e                   	push   cs
 506:	f4                   	hlt
 507:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 50a:	f8                   	clc
 50b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 50e:	fc                   	cld
 50f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 512:	80 02 48             	add    BYTE PTR [edx],0x48
 515:	0e                   	push   cs
 516:	f0 01 64 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],esp
 51b:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 51e:	f8                   	clc
 51f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 522:	fc                   	cld
 523:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 526:	80 02 48             	add    BYTE PTR [edx],0x48
 529:	0e                   	push   cs
 52a:	f0 01 49 0e          	lock add DWORD PTR [ecx+0xe],ecx
 52e:	f4                   	hlt
 52f:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 532:	f8                   	clc
 533:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 536:	fc                   	cld
 537:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 53a:	80 02 48             	add    BYTE PTR [edx],0x48
 53d:	0e                   	push   cs
 53e:	f0 01 43 0e          	lock add DWORD PTR [ebx+0xe],eax
 542:	f4                   	hlt
 543:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 546:	f8                   	clc
 547:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 54a:	fc                   	cld
 54b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 54e:	80 02 48             	add    BYTE PTR [edx],0x48
 551:	0e                   	push   cs
 552:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 556:	f4                   	hlt
 557:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 55a:	f8                   	clc
 55b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 55e:	fc                   	cld
 55f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 562:	80 02 48             	add    BYTE PTR [edx],0x48
 565:	0e                   	push   cs
 566:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 56a:	f4                   	hlt
 56b:	01 44 0e f8          	add    DWORD PTR [esi+ecx*1-0x8],eax
 56f:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 572:	fc                   	cld
 573:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 576:	80 02 48             	add    BYTE PTR [edx],0x48
 579:	0e                   	push   cs
 57a:	f0 01 5d 0e          	lock add DWORD PTR [ebp+0xe],ebx
 57e:	f4                   	hlt
 57f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 582:	f8                   	clc
 583:	01 47 0e             	add    DWORD PTR [edi+0xe],eax
 586:	fc                   	cld
 587:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 58a:	80 02 48             	add    BYTE PTR [edx],0x48
 58d:	0e                   	push   cs
 58e:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 592:	f4                   	hlt
 593:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 596:	f8                   	clc
 597:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 59a:	fc                   	cld
 59b:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 59e:	80 02 48             	add    BYTE PTR [edx],0x48
 5a1:	0e                   	push   cs
 5a2:	f0 01 49 0e          	lock add DWORD PTR [ecx+0xe],ecx
 5a6:	f4                   	hlt
 5a7:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 5aa:	f8                   	clc
 5ab:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 5ae:	fc                   	cld
 5af:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5b2:	80 02 48             	add    BYTE PTR [edx],0x48
 5b5:	0e                   	push   cs
 5b6:	f0 01 59 0e          	lock add DWORD PTR [ecx+0xe],ebx
 5ba:	f4                   	hlt
 5bb:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 5be:	f8                   	clc
 5bf:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 5c2:	fc                   	cld
 5c3:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5c6:	80 02 48             	add    BYTE PTR [edx],0x48
 5c9:	0e                   	push   cs
 5ca:	f0 01 02             	lock add DWORD PTR [edx],eax
 5cd:	68 0e f4 01 44       	push   0x4401f40e
 5d2:	0e                   	push   cs
 5d3:	f8                   	clc
 5d4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 5d7:	fc                   	cld
 5d8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5db:	80 02 46             	add    BYTE PTR [edx],0x46
 5de:	0e                   	push   cs
 5df:	fc                   	cld
 5e0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5e3:	f8                   	clc
 5e4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 5e7:	fc                   	cld
 5e8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5eb:	80 02 48             	add    BYTE PTR [edx],0x48
 5ee:	0e                   	push   cs
 5ef:	f0 01 5d 0e          	lock add DWORD PTR [ebp+0xe],ebx
 5f3:	f4                   	hlt
 5f4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5f7:	f8                   	clc
 5f8:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 5fb:	fc                   	cld
 5fc:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 5ff:	80 02 4c             	add    BYTE PTR [edx],0x4c
 602:	0e                   	push   cs
 603:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 607:	f4                   	hlt
 608:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 60b:	f8                   	clc
 60c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 60f:	fc                   	cld
 610:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 613:	80 02 48             	add    BYTE PTR [edx],0x48
 616:	0e                   	push   cs
 617:	f0 01 45 0e          	lock add DWORD PTR [ebp+0xe],eax
 61b:	f4                   	hlt
 61c:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 61f:	f8                   	clc
 620:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 623:	fc                   	cld
 624:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 627:	80 02 48             	add    BYTE PTR [edx],0x48
 62a:	0e                   	push   cs
 62b:	f0 01 43 0e          	lock add DWORD PTR [ebx+0xe],eax
 62f:	f4                   	hlt
 630:	01 44 0e f8          	add    DWORD PTR [esi+ecx*1-0x8],eax
 634:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 637:	fc                   	cld
 638:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 63b:	80 02 46             	add    BYTE PTR [edx],0x46
 63e:	0e                   	push   cs
 63f:	fc                   	cld
 640:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 643:	f8                   	clc
 644:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 647:	fc                   	cld
 648:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 64b:	80 02 48             	add    BYTE PTR [edx],0x48
 64e:	0e                   	push   cs
 64f:	f0 01 4a 0e          	lock add DWORD PTR [edx+0xe],ecx
 653:	f4                   	hlt
 654:	01 43 0e             	add    DWORD PTR [ebx+0xe],eax
 657:	f8                   	clc
 658:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 65b:	fc                   	cld
 65c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 65f:	80 02 48             	add    BYTE PTR [edx],0x48
 662:	0e                   	push   cs
 663:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 667:	f4                   	hlt
 668:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 66b:	f8                   	clc
 66c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 66f:	fc                   	cld
 670:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 673:	80 02 48             	add    BYTE PTR [edx],0x48
 676:	0e                   	push   cs
 677:	f0 01 4c 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],ecx
 67c:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 67f:	f8                   	clc
 680:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 683:	fc                   	cld
 684:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 687:	80 02 48             	add    BYTE PTR [edx],0x48
 68a:	0e                   	push   cs
 68b:	f0 01 43 0e          	lock add DWORD PTR [ebx+0xe],eax
 68f:	f4                   	hlt
 690:	01 44 0e f8          	add    DWORD PTR [esi+ecx*1-0x8],eax
 694:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 697:	fc                   	cld
 698:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 69b:	80 02 46             	add    BYTE PTR [edx],0x46
 69e:	0e                   	push   cs
 69f:	fc                   	cld
 6a0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6a3:	f8                   	clc
 6a4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 6a7:	fc                   	cld
 6a8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6ab:	80 02 48             	add    BYTE PTR [edx],0x48
 6ae:	0e                   	push   cs
 6af:	f0 01 5d 0e          	lock add DWORD PTR [ebp+0xe],ebx
 6b3:	f4                   	hlt
 6b4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6b7:	f8                   	clc
 6b8:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 6bb:	fc                   	cld
 6bc:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6bf:	80 02 48             	add    BYTE PTR [edx],0x48
 6c2:	0e                   	push   cs
 6c3:	f0 01 48 0e          	lock add DWORD PTR [eax+0xe],ecx
 6c7:	f4                   	hlt
 6c8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6cb:	f8                   	clc
 6cc:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 6cf:	fc                   	cld
 6d0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6d3:	80 02 48             	add    BYTE PTR [edx],0x48
 6d6:	0e                   	push   cs
 6d7:	f0 01 41 0e          	lock add DWORD PTR [ecx+0xe],eax
 6db:	f4                   	hlt
 6dc:	01 44 0e f8          	add    DWORD PTR [esi+ecx*1-0x8],eax
 6e0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6e3:	fc                   	cld
 6e4:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6e7:	80 02 48             	add    BYTE PTR [edx],0x48
 6ea:	0e                   	push   cs
 6eb:	f0 01 5f 0e          	lock add DWORD PTR [edi+0xe],ebx
 6ef:	f4                   	hlt
 6f0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6f3:	f8                   	clc
 6f4:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 6f7:	fc                   	cld
 6f8:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 6fb:	80 02 48             	add    BYTE PTR [edx],0x48
 6fe:	0e                   	push   cs
 6ff:	f0 01 71 0e          	lock add DWORD PTR [ecx+0xe],esi
 703:	f4                   	hlt
 704:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 707:	f8                   	clc
 708:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 70b:	fc                   	cld
 70c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 70f:	80 02 48             	add    BYTE PTR [edx],0x48
 712:	0e                   	push   cs
 713:	f0 01 5b 0e          	lock add DWORD PTR [ebx+0xe],ebx
 717:	f4                   	hlt
 718:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 71b:	f8                   	clc
 71c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 71f:	fc                   	cld
 720:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 723:	80 02 48             	add    BYTE PTR [edx],0x48
 726:	0e                   	push   cs
 727:	f0 01 49 0e          	lock add DWORD PTR [ecx+0xe],ecx
 72b:	f4                   	hlt
 72c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 72f:	f8                   	clc
 730:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 733:	fc                   	cld
 734:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 737:	80 02 48             	add    BYTE PTR [edx],0x48
 73a:	0e                   	push   cs
 73b:	f0 01 78 0e          	lock add DWORD PTR [eax+0xe],edi
 73f:	fc                   	cld
 740:	01 46 0e             	add    DWORD PTR [esi+0xe],eax
 743:	80 02 59             	add    BYTE PTR [edx],0x59
 746:	0e                   	push   cs
 747:	f0 01 49 0e          	lock add DWORD PTR [ecx+0xe],ecx
 74b:	fc                   	cld
 74c:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 74f:	80 02 48             	add    BYTE PTR [edx],0x48
 752:	0e                   	push   cs
 753:	f0 01 53 0e          	lock add DWORD PTR [ebx+0xe],edx
 757:	fc                   	cld
 758:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 75b:	80 02 48             	add    BYTE PTR [edx],0x48
 75e:	0e                   	push   cs
 75f:	f0 01 62 0e          	lock add DWORD PTR [edx+0xe],esp
 763:	f4                   	hlt
 764:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 767:	f8                   	clc
 768:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 76b:	fc                   	cld
 76c:	01 44 0e 80          	add    DWORD PTR [esi+ecx*1-0x80],eax
 770:	02 46 0e             	add    al,BYTE PTR [esi+0xe]
 773:	fc                   	cld
 774:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 777:	f8                   	clc
 778:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 77b:	fc                   	cld
 77c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 77f:	80 02 46             	add    BYTE PTR [edx],0x46
 782:	0e                   	push   cs
 783:	fc                   	cld
 784:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 787:	f8                   	clc
 788:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 78b:	fc                   	cld
 78c:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 78f:	80 02 56             	add    BYTE PTR [edx],0x56
 792:	0e                   	push   cs
 793:	f0 01 5c 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],ebx
 798:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 79b:	f8                   	clc
 79c:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 79f:	fc                   	cld
 7a0:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7a3:	80 02 48             	add    BYTE PTR [edx],0x48
 7a6:	0e                   	push   cs
 7a7:	f0 01 02             	lock add DWORD PTR [edx],eax
 7aa:	8a 0e                	mov    cl,BYTE PTR [esi]
 7ac:	f4                   	hlt
 7ad:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7b0:	f8                   	clc
 7b1:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 7b4:	fc                   	cld
 7b5:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7b8:	80 02 48             	add    BYTE PTR [edx],0x48
 7bb:	0e                   	push   cs
 7bc:	f0 01 76 0e          	lock add DWORD PTR [esi+0xe],esi
 7c0:	f4                   	hlt
 7c1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7c4:	f8                   	clc
 7c5:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 7c8:	fc                   	cld
 7c9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7cc:	80 02 48             	add    BYTE PTR [edx],0x48
 7cf:	0e                   	push   cs
 7d0:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 7d4:	f4                   	hlt
 7d5:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7d8:	f8                   	clc
 7d9:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 7dc:	fc                   	cld
 7dd:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7e0:	80 02 48             	add    BYTE PTR [edx],0x48
 7e3:	0e                   	push   cs
 7e4:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 7e8:	f4                   	hlt
 7e9:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7ec:	f8                   	clc
 7ed:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 7f0:	fc                   	cld
 7f1:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 7f4:	80 02 48             	add    BYTE PTR [edx],0x48
 7f7:	0e                   	push   cs
 7f8:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 7fc:	f4                   	hlt
 7fd:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 800:	f8                   	clc
 801:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 804:	fc                   	cld
 805:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 808:	80 02 48             	add    BYTE PTR [edx],0x48
 80b:	0e                   	push   cs
 80c:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 810:	f4                   	hlt
 811:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 814:	f8                   	clc
 815:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 818:	fc                   	cld
 819:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 81c:	80 02 48             	add    BYTE PTR [edx],0x48
 81f:	0e                   	push   cs
 820:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 824:	f4                   	hlt
 825:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 828:	f8                   	clc
 829:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 82c:	fc                   	cld
 82d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 830:	80 02 48             	add    BYTE PTR [edx],0x48
 833:	0e                   	push   cs
 834:	f0 01 58 0e          	lock add DWORD PTR [eax+0xe],ebx
 838:	fc                   	cld
 839:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 83c:	80 02 4f             	add    BYTE PTR [edx],0x4f
 83f:	0e                   	push   cs
 840:	f0 01 46 0e          	lock add DWORD PTR [esi+0xe],eax
 844:	f4                   	hlt
 845:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 848:	f8                   	clc
 849:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 84c:	fc                   	cld
 84d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 850:	80 02 48             	add    BYTE PTR [edx],0x48
 853:	0e                   	push   cs
 854:	f0 01 56 0e          	lock add DWORD PTR [esi+0xe],edx
 858:	f4                   	hlt
 859:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 85c:	f8                   	clc
 85d:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 860:	fc                   	cld
 861:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 864:	80 02 48             	add    BYTE PTR [edx],0x48
 867:	0e                   	push   cs
 868:	f0 01 54 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],edx
 86d:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 870:	f8                   	clc
 871:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 874:	fc                   	cld
 875:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 878:	80 02 48             	add    BYTE PTR [edx],0x48
 87b:	0e                   	push   cs
 87c:	f0 01 61 0e          	lock add DWORD PTR [ecx+0xe],esp
 880:	f4                   	hlt
 881:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 884:	f8                   	clc
 885:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 888:	fc                   	cld
 889:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 88c:	80 02 48             	add    BYTE PTR [edx],0x48
 88f:	0e                   	push   cs
 890:	f0 01 5c 0e f4       	lock add DWORD PTR [esi+ecx*1-0xc],ebx
 895:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 898:	f8                   	clc
 899:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 89c:	fc                   	cld
 89d:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8a0:	80 02 48             	add    BYTE PTR [edx],0x48
 8a3:	0e                   	push   cs
 8a4:	f0 01 02             	lock add DWORD PTR [edx],eax
 8a7:	4e                   	dec    esi
 8a8:	0e                   	push   cs
 8a9:	f4                   	hlt
 8aa:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 8ad:	f8                   	clc
 8ae:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 8b1:	fc                   	cld
 8b2:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8b5:	80 02 48             	add    BYTE PTR [edx],0x48
 8b8:	0e                   	push   cs
 8b9:	f0 01 58 0e          	lock add DWORD PTR [eax+0xe],ebx
 8bd:	f4                   	hlt
 8be:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8c1:	f8                   	clc
 8c2:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 8c5:	fc                   	cld
 8c6:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8c9:	80 02 48             	add    BYTE PTR [edx],0x48
 8cc:	0e                   	push   cs
 8cd:	f0 01 02             	lock add DWORD PTR [edx],eax
 8d0:	74 0e                	je     8e0 <.eh_frame+0x8e0>
 8d2:	f4                   	hlt
 8d3:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8d6:	f8                   	clc
 8d7:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 8da:	fc                   	cld
 8db:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8de:	80 02 48             	add    BYTE PTR [edx],0x48
 8e1:	0e                   	push   cs
 8e2:	f0 01 69 0e          	lock add DWORD PTR [ecx+0xe],ebp
 8e6:	f4                   	hlt
 8e7:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8ea:	f8                   	clc
 8eb:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 8ee:	fc                   	cld
 8ef:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8f2:	80 02 48             	add    BYTE PTR [edx],0x48
 8f5:	0e                   	push   cs
 8f6:	f0 01 5b 0e          	lock add DWORD PTR [ebx+0xe],ebx
 8fa:	f4                   	hlt
 8fb:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 8fe:	f8                   	clc
 8ff:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 902:	fc                   	cld
 903:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 906:	80 02 48             	add    BYTE PTR [edx],0x48
 909:	0e                   	push   cs
 90a:	f0 01 5b 0e          	lock add DWORD PTR [ebx+0xe],ebx
 90e:	f4                   	hlt
 90f:	01 42 0e             	add    DWORD PTR [edx+0xe],eax
 912:	f8                   	clc
 913:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 916:	fc                   	cld
 917:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 91a:	80 02 48             	add    BYTE PTR [edx],0x48
 91d:	0e                   	push   cs
 91e:	f0 01 5b 0e          	lock add DWORD PTR [ebx+0xe],ebx
 922:	f4                   	hlt
 923:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 926:	f8                   	clc
 927:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 92a:	fc                   	cld
 92b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 92e:	80 02 48             	add    BYTE PTR [edx],0x48
 931:	0e                   	push   cs
 932:	f0 01 60 0e          	lock add DWORD PTR [eax+0xe],esp
 936:	f4                   	hlt
 937:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 93a:	f8                   	clc
 93b:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 93e:	fc                   	cld
 93f:	01 45 0e             	add    DWORD PTR [ebp+0xe],eax
 942:	80 02 46             	add    BYTE PTR [edx],0x46
 945:	0e                   	push   cs
 946:	fc                   	cld
 947:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 94a:	f8                   	clc
 94b:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 94e:	fc                   	cld
 94f:	01 41 0e             	add    DWORD PTR [ecx+0xe],eax
 952:	80 02 56             	add    BYTE PTR [edx],0x56
 955:	0e                   	push   cs
 956:	f0 01 2c 00          	lock add DWORD PTR [eax+eax*1],ebp
 95a:	00 00                	add    BYTE PTR [eax],al
 95c:	5c                   	pop    esp
 95d:	09 00                	or     DWORD PTR [eax],eax
 95f:	00 10                	add    BYTE PTR [eax],dl
 961:	16                   	push   ss
 962:	00 00                	add    BYTE PTR [eax],al
 964:	72 00                	jb     966 <.eh_frame+0x966>
 966:	00 00                	add    BYTE PTR [eax],al
 968:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 96b:	08 83 02 45 0e 10    	or     BYTE PTR [ebx+0x100e4502],al
 971:	50                   	push   eax
 972:	0e                   	push   cs
 973:	14 4b                	adc    al,0x4b
 975:	0e                   	push   cs
 976:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 979:	1c 4d                	sbb    al,0x4d
 97b:	0e                   	push   cs
 97c:	20 7b 0e             	and    BYTE PTR [ebx+0xe],bh
 97f:	10 43 0e             	adc    BYTE PTR [ebx+0xe],al
 982:	08 43 c3             	or     BYTE PTR [ebx-0x3d],al
 985:	0e                   	push   cs
 986:	04 00                	add    al,0x0
 988:	b4 00                	mov    ah,0x0
 98a:	00 00                	add    BYTE PTR [eax],al
 98c:	8c 09                	mov    WORD PTR [ecx],cs
 98e:	00 00                	add    BYTE PTR [eax],al
 990:	90                   	nop
 991:	16                   	push   ss
 992:	00 00                	add    BYTE PTR [eax],al
 994:	51                   	push   ecx
 995:	01 00                	add    DWORD PTR [eax],eax
 997:	00 00                	add    BYTE PTR [eax],al
 999:	41                   	inc    ecx
 99a:	0e                   	push   cs
 99b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 9a1:	87 03                	xchg   DWORD PTR [ebx],eax
 9a3:	41                   	inc    ecx
 9a4:	0e                   	push   cs
 9a5:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 9ab:	83 05 43 0e 30 02 63 	add    DWORD PTR ds:0x2300e43,0x63
 9b2:	0e                   	push   cs
 9b3:	34 46                	xor    al,0x46
 9b5:	0e                   	push   cs
 9b6:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 9b9:	3c 44                	cmp    al,0x44
 9bb:	0e                   	push   cs
 9bc:	40                   	inc    eax
 9bd:	4e                   	dec    esi
 9be:	0e                   	push   cs
 9bf:	30 4f 0e             	xor    BYTE PTR [edi+0xe],cl
 9c2:	3c 45                	cmp    al,0x45
 9c4:	0e                   	push   cs
 9c5:	40                   	inc    eax
 9c6:	57                   	push   edi
 9c7:	0e                   	push   cs
 9c8:	44                   	inc    esp
 9c9:	48                   	dec    eax
 9ca:	0e                   	push   cs
 9cb:	48                   	dec    eax
 9cc:	41                   	inc    ecx
 9cd:	0e                   	push   cs
 9ce:	4c                   	dec    esp
 9cf:	41                   	inc    ecx
 9d0:	0e                   	push   cs
 9d1:	50                   	push   eax
 9d2:	48                   	dec    eax
 9d3:	0e                   	push   cs
 9d4:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 9d7:	34 45                	xor    al,0x45
 9d9:	0e                   	push   cs
 9da:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 9dd:	3c 41                	cmp    al,0x41
 9df:	0e                   	push   cs
 9e0:	40                   	inc    eax
 9e1:	4e                   	dec    esi
 9e2:	0e                   	push   cs
 9e3:	44                   	inc    esp
 9e4:	45                   	inc    ebp
 9e5:	0e                   	push   cs
 9e6:	48                   	dec    eax
 9e7:	41                   	inc    ecx
 9e8:	0e                   	push   cs
 9e9:	4c                   	dec    esp
 9ea:	41                   	inc    ecx
 9eb:	0e                   	push   cs
 9ec:	50                   	push   eax
 9ed:	48                   	dec    eax
 9ee:	0e                   	push   cs
 9ef:	30 4b 0e             	xor    BYTE PTR [ebx+0xe],cl
 9f2:	34 41                	xor    al,0x41
 9f4:	0e                   	push   cs
 9f5:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 9f8:	3c 41                	cmp    al,0x41
 9fa:	0e                   	push   cs
 9fb:	40                   	inc    eax
 9fc:	58                   	pop    eax
 9fd:	0e                   	push   cs
 9fe:	30 4a 0a             	xor    BYTE PTR [edx+0xa],cl
 a01:	0e                   	push   cs
 a02:	14 41                	adc    al,0x41
 a04:	c3                   	ret
 a05:	0e                   	push   cs
 a06:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 a09:	0e                   	push   cs
 a0a:	0c 41                	or     al,0x41
 a0c:	c7                   	(bad)
 a0d:	0e                   	push   cs
 a0e:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 a11:	0e                   	push   cs
 a12:	04 44                	add    al,0x44
 a14:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 a17:	3c 45                	cmp    al,0x45
 a19:	0e                   	push   cs
 a1a:	40                   	inc    eax
 a1b:	42                   	inc    edx
 a1c:	0e                   	push   cs
 a1d:	44                   	inc    esp
 a1e:	42                   	inc    edx
 a1f:	0e                   	push   cs
 a20:	48                   	dec    eax
 a21:	41                   	inc    ecx
 a22:	0e                   	push   cs
 a23:	4c                   	dec    esp
 a24:	4c                   	dec    esp
 a25:	0e                   	push   cs
 a26:	50                   	push   eax
 a27:	48                   	dec    eax
 a28:	0e                   	push   cs
 a29:	30 43 0e             	xor    BYTE PTR [ebx+0xe],al
 a2c:	14 41                	adc    al,0x41
 a2e:	c3                   	ret
 a2f:	0e                   	push   cs
 a30:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 a33:	0e                   	push   cs
 a34:	0c 41                	or     al,0x41
 a36:	c7                   	(bad)
 a37:	0e                   	push   cs
 a38:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 a3b:	0e                   	push   cs
 a3c:	04 00                	add    al,0x0
 a3e:	00 00                	add    BYTE PTR [eax],al
 a40:	98                   	cwde
 a41:	00 00                	add    BYTE PTR [eax],al
 a43:	00 44 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],al
 a47:	00 f0                	add    al,dh
 a49:	17                   	pop    ss
 a4a:	00 00                	add    BYTE PTR [eax],al
 a4c:	3b 03                	cmp    eax,DWORD PTR [ebx]
 a4e:	00 00                	add    BYTE PTR [eax],al
 a50:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 a53:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 a59:	86 03                	xchg   BYTE PTR [ebx],al
 a5b:	41                   	inc    ecx
 a5c:	0e                   	push   cs
 a5d:	10 83 04 43 0e 20    	adc    BYTE PTR [ebx+0x200e4304],al
 a63:	02 6d 0a             	add    ch,BYTE PTR [ebp+0xa]
 a66:	0e                   	push   cs
 a67:	10 41 c3             	adc    BYTE PTR [ecx-0x3d],al
 a6a:	0e                   	push   cs
 a6b:	0c 41                	or     al,0x41
 a6d:	c6                   	(bad)
 a6e:	0e                   	push   cs
 a6f:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 a72:	0e                   	push   cs
 a73:	04 4a                	add    al,0x4a
 a75:	0b 63 0e             	or     esp,DWORD PTR [ebx+0xe]
 a78:	24 43                	and    al,0x43
 a7a:	0e                   	push   cs
 a7b:	28 4f 0e             	sub    BYTE PTR [edi+0xe],cl
 a7e:	2c 41                	sub    al,0x41
 a80:	0e                   	push   cs
 a81:	30 4f 0e             	xor    BYTE PTR [edi+0xe],cl
 a84:	20 02                	and    BYTE PTR [edx],al
 a86:	44                   	inc    esp
 a87:	0e                   	push   cs
 a88:	28 49 0e             	sub    BYTE PTR [ecx+0xe],cl
 a8b:	2c 41                	sub    al,0x41
 a8d:	0e                   	push   cs
 a8e:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 a91:	20 02                	and    BYTE PTR [edx],al
 a93:	4c                   	dec    esp
 a94:	0e                   	push   cs
 a95:	24 46                	and    al,0x46
 a97:	0e                   	push   cs
 a98:	28 4f 0e             	sub    BYTE PTR [edi+0xe],cl
 a9b:	2c 41                	sub    al,0x41
 a9d:	0e                   	push   cs
 a9e:	30 4f 0e             	xor    BYTE PTR [edi+0xe],cl
 aa1:	20 71 0e             	and    BYTE PTR [ecx+0xe],dh
 aa4:	28 4e 0e             	sub    BYTE PTR [esi+0xe],cl
 aa7:	2c 41                	sub    al,0x41
 aa9:	0e                   	push   cs
 aaa:	30 58 0e             	xor    BYTE PTR [eax+0xe],bl
 aad:	20 02                	and    BYTE PTR [edx],al
 aaf:	85 0e                	test   DWORD PTR [esi],ecx
 ab1:	24 46                	and    al,0x46
 ab3:	0e                   	push   cs
 ab4:	28 48 0e             	sub    BYTE PTR [eax+0xe],cl
 ab7:	2c 48                	sub    al,0x48
 ab9:	0e                   	push   cs
 aba:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 abd:	20 75 0e             	and    BYTE PTR [ebp+0xe],dh
 ac0:	28 48 0e             	sub    BYTE PTR [eax+0xe],cl
 ac3:	2c 41                	sub    al,0x41
 ac5:	0e                   	push   cs
 ac6:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 ac9:	20 6c 0e 24          	and    BYTE PTR [esi+ecx*1+0x24],ch
 acd:	4d                   	dec    ebp
 ace:	0e                   	push   cs
 acf:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
 ad2:	2c 45                	sub    al,0x45
 ad4:	0e                   	push   cs
 ad5:	30 52 0e             	xor    BYTE PTR [edx+0xe],dl
 ad8:	20 00                	and    BYTE PTR [eax],al
	...
