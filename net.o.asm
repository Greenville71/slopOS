
net.o:     file format elf32-i386


Disassembly of section .text:

00000000 <dhcp_parse_options>:
       0:	66 83 fa 01          	cmp    dx,0x1
       4:	0f 86 ed 00 00 00    	jbe    f7 <dhcp_parse_options+0xf7>
       a:	55                   	push   ebp
       b:	57                   	push   edi
       c:	89 c7                	mov    edi,eax
       e:	56                   	push   esi
       f:	89 d6                	mov    esi,edx
      11:	53                   	push   ebx
      12:	83 ec 0c             	sub    esp,0xc
      15:	eb 18                	jmp    2f <dhcp_parse_options+0x2f>
      17:	90                   	nop
      18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      1f:	00 
      20:	83 ee 02             	sub    esi,0x2
      23:	8d 7c 1f 02          	lea    edi,[edi+ebx*1+0x2]
      27:	29 ee                	sub    esi,ebp
      29:	66 83 fe 01          	cmp    si,0x1
      2d:	76 50                	jbe    7f <dhcp_parse_options+0x7f>
      2f:	0f b6 07             	movzx  eax,BYTE PTR [edi]
      32:	3c ff                	cmp    al,0xff
      34:	74 49                	je     7f <dhcp_parse_options+0x7f>
      36:	0f b6 6f 01          	movzx  ebp,BYTE PTR [edi+0x1]
      3a:	8d 55 02             	lea    edx,[ebp+0x2]
      3d:	89 eb                	mov    ebx,ebp
      3f:	66 39 d6             	cmp    si,dx
      42:	72 3b                	jb     7f <dhcp_parse_options+0x7f>
      44:	3c 35                	cmp    al,0x35
      46:	75 04                	jne    4c <dhcp_parse_options+0x4c>
      48:	84 db                	test   bl,bl
      4a:	75 d4                	jne    20 <dhcp_parse_options+0x20>
      4c:	80 fb 04             	cmp    bl,0x4
      4f:	0f 94 c2             	sete   dl
      52:	3c 01                	cmp    al,0x1
      54:	75 3a                	jne    90 <dhcp_parse_options+0x90>
      56:	84 d2                	test   dl,dl
      58:	74 36                	je     90 <dhcp_parse_options+0x90>
      5a:	83 ec 04             	sub    esp,0x4
      5d:	8d 47 02             	lea    eax,[edi+0x2]
      60:	8d 7c 1f 02          	lea    edi,[edi+ebx*1+0x2]
      64:	83 ee 02             	sub    esi,0x2
      67:	6a 04                	push   0x4
      69:	29 ee                	sub    esi,ebp
      6b:	50                   	push   eax
      6c:	68 6c 01 00 00       	push   0x16c
      71:	e8 fc ff ff ff       	call   72 <dhcp_parse_options+0x72>
      76:	83 c4 10             	add    esp,0x10
      79:	66 83 fe 01          	cmp    si,0x1
      7d:	77 b0                	ja     2f <dhcp_parse_options+0x2f>
      7f:	83 c4 0c             	add    esp,0xc
      82:	5b                   	pop    ebx
      83:	5e                   	pop    esi
      84:	5f                   	pop    edi
      85:	5d                   	pop    ebp
      86:	c3                   	ret
      87:	90                   	nop
      88:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      8f:	00 
      90:	80 fb 03             	cmp    bl,0x3
      93:	0f 97 c1             	seta   cl
      96:	3c 03                	cmp    al,0x3
      98:	75 26                	jne    c0 <dhcp_parse_options+0xc0>
      9a:	84 c9                	test   cl,cl
      9c:	74 22                	je     c0 <dhcp_parse_options+0xc0>
      9e:	83 ec 04             	sub    esp,0x4
      a1:	8d 47 02             	lea    eax,[edi+0x2]
      a4:	6a 04                	push   0x4
      a6:	50                   	push   eax
      a7:	68 68 01 00 00       	push   0x168
      ac:	e8 fc ff ff ff       	call   ad <dhcp_parse_options+0xad>
      b1:	83 c4 10             	add    esp,0x10
      b4:	e9 67 ff ff ff       	jmp    20 <dhcp_parse_options+0x20>
      b9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
      c0:	3c 36                	cmp    al,0x36
      c2:	75 08                	jne    cc <dhcp_parse_options+0xcc>
      c4:	84 d2                	test   dl,dl
      c6:	0f 85 54 ff ff ff    	jne    20 <dhcp_parse_options+0x20>
      cc:	3c 06                	cmp    al,0x6
      ce:	0f 85 4c ff ff ff    	jne    20 <dhcp_parse_options+0x20>
      d4:	84 c9                	test   cl,cl
      d6:	0f 84 44 ff ff ff    	je     20 <dhcp_parse_options+0x20>
      dc:	83 ec 04             	sub    esp,0x4
      df:	8d 47 02             	lea    eax,[edi+0x2]
      e2:	6a 04                	push   0x4
      e4:	50                   	push   eax
      e5:	68 70 01 00 00       	push   0x170
      ea:	e8 fc ff ff ff       	call   eb <dhcp_parse_options+0xeb>
      ef:	83 c4 10             	add    esp,0x10
      f2:	e9 29 ff ff ff       	jmp    20 <dhcp_parse_options+0x20>
      f7:	c3                   	ret
      f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
      ff:	00 

00000100 <eth_send>:
     100:	57                   	push   edi
     101:	56                   	push   esi
     102:	89 d6                	mov    esi,edx
     104:	53                   	push   ebx
     105:	89 cb                	mov    ebx,ecx
     107:	81 ec 10 06 00 00    	sub    esp,0x610
     10d:	8b 8c 24 20 06 00 00 	mov    ecx,DWORD PTR [esp+0x620]
     114:	8d 51 0e             	lea    edx,[ecx+0xe]
     117:	66 81 fa 00 06       	cmp    dx,0x600
     11c:	77 5e                	ja     17c <eth_send+0x7c>
     11e:	83 ec 04             	sub    esp,0x4
     121:	89 f7                	mov    edi,esi
     123:	6a 06                	push   0x6
     125:	50                   	push   eax
     126:	8d 74 24 1c          	lea    esi,[esp+0x1c]
     12a:	56                   	push   esi
     12b:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     12f:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
     133:	e8 fc ff ff ff       	call   134 <eth_send+0x34>
     138:	83 c4 0c             	add    esp,0xc
     13b:	6a 06                	push   0x6
     13d:	68 74 01 00 00       	push   0x174
     142:	8d 44 24 22          	lea    eax,[esp+0x22]
     146:	50                   	push   eax
     147:	e8 fc ff ff ff       	call   148 <eth_send+0x48>
     14c:	89 f8                	mov    eax,edi
     14e:	c6 44 24 2c 08       	mov    BYTE PTR [esp+0x2c],0x8
     153:	88 44 24 2d          	mov    BYTE PTR [esp+0x2d],al
     157:	0f b7 4c 24 1c       	movzx  ecx,WORD PTR [esp+0x1c]
     15c:	83 c4 0c             	add    esp,0xc
     15f:	51                   	push   ecx
     160:	53                   	push   ebx
     161:	8d 44 24 2a          	lea    eax,[esp+0x2a]
     165:	50                   	push   eax
     166:	e8 fc ff ff ff       	call   167 <eth_send+0x67>
     16b:	58                   	pop    eax
     16c:	5a                   	pop    edx
     16d:	0f b7 54 24 10       	movzx  edx,WORD PTR [esp+0x10]
     172:	52                   	push   edx
     173:	56                   	push   esi
     174:	e8 fc ff ff ff       	call   175 <eth_send+0x75>
     179:	83 c4 10             	add    esp,0x10
     17c:	81 c4 10 06 00 00    	add    esp,0x610
     182:	5b                   	pop    ebx
     183:	5e                   	pop    esi
     184:	5f                   	pop    edi
     185:	c3                   	ret
     186:	66 90                	xchg   ax,ax
     188:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     18f:	00 

00000190 <arp_lookup>:
     190:	56                   	push   esi
     191:	53                   	push   ebx
     192:	31 db                	xor    ebx,ebx
     194:	83 ec 04             	sub    esp,0x4
     197:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
     19b:	eb 0e                	jmp    1ab <arp_lookup+0x1b>
     19d:	8d 76 00             	lea    esi,[esi+0x0]
     1a0:	83 c3 10             	add    ebx,0x10
     1a3:	81 fb 00 01 00 00    	cmp    ebx,0x100
     1a9:	74 4d                	je     1f8 <arp_lookup+0x68>
     1ab:	8b 83 6c 00 00 00    	mov    eax,DWORD PTR [ebx+0x6c]
     1b1:	85 c0                	test   eax,eax
     1b3:	74 eb                	je     1a0 <arp_lookup+0x10>
     1b5:	83 ec 04             	sub    esp,0x4
     1b8:	8d 83 60 00 00 00    	lea    eax,[ebx+0x60]
     1be:	6a 04                	push   0x4
     1c0:	56                   	push   esi
     1c1:	50                   	push   eax
     1c2:	e8 fc ff ff ff       	call   1c3 <arp_lookup+0x33>
     1c7:	83 c4 10             	add    esp,0x10
     1ca:	85 c0                	test   eax,eax
     1cc:	75 d2                	jne    1a0 <arp_lookup+0x10>
     1ce:	83 ec 04             	sub    esp,0x4
     1d1:	81 c3 64 00 00 00    	add    ebx,0x64
     1d7:	6a 06                	push   0x6
     1d9:	53                   	push   ebx
     1da:	ff 74 24 20          	push   DWORD PTR [esp+0x20]
     1de:	e8 fc ff ff ff       	call   1df <arp_lookup+0x4f>
     1e3:	83 c4 10             	add    esp,0x10
     1e6:	b8 01 00 00 00       	mov    eax,0x1
     1eb:	83 c4 04             	add    esp,0x4
     1ee:	5b                   	pop    ebx
     1ef:	5e                   	pop    esi
     1f0:	c3                   	ret
     1f1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     1f8:	83 c4 04             	add    esp,0x4
     1fb:	31 c0                	xor    eax,eax
     1fd:	5b                   	pop    ebx
     1fe:	5e                   	pop    esi
     1ff:	c3                   	ret

00000200 <net_arp_cache_count>:
     200:	b8 6c 00 00 00       	mov    eax,0x6c
     205:	31 d2                	xor    edx,edx
     207:	90                   	nop
     208:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     20f:	00 
     210:	83 38 01             	cmp    DWORD PTR [eax],0x1
     213:	83 da ff             	sbb    edx,0xffffffff
     216:	83 c0 10             	add    eax,0x10
     219:	3d 6c 01 00 00       	cmp    eax,0x16c
     21e:	75 f0                	jne    210 <net_arp_cache_count+0x10>
     220:	89 d0                	mov    eax,edx
     222:	c3                   	ret
     223:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     228:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     22f:	00 

00000230 <net_arp_cache_get>:
     230:	53                   	push   ebx
     231:	31 c0                	xor    eax,eax
     233:	31 c9                	xor    ecx,ecx
     235:	83 ec 18             	sub    esp,0x18
     238:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
     23c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     240:	89 c2                	mov    edx,eax
     242:	c1 e2 04             	shl    edx,0x4
     245:	83 ba 6c 00 00 00 00 	cmp    DWORD PTR [edx+0x6c],0x0
     24c:	74 07                	je     255 <net_arp_cache_get+0x25>
     24e:	39 cb                	cmp    ebx,ecx
     250:	74 16                	je     268 <net_arp_cache_get+0x38>
     252:	83 c1 01             	add    ecx,0x1
     255:	83 c0 01             	add    eax,0x1
     258:	83 f8 10             	cmp    eax,0x10
     25b:	75 e3                	jne    240 <net_arp_cache_get+0x10>
     25d:	83 c4 18             	add    esp,0x18
     260:	31 c0                	xor    eax,eax
     262:	5b                   	pop    ebx
     263:	c3                   	ret
     264:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     268:	83 ec 04             	sub    esp,0x4
     26b:	8d 82 60 00 00 00    	lea    eax,[edx+0x60]
     271:	6a 04                	push   0x4
     273:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     277:	50                   	push   eax
     278:	ff 74 24 30          	push   DWORD PTR [esp+0x30]
     27c:	e8 fc ff ff ff       	call   27d <net_arp_cache_get+0x4d>
     281:	83 c4 0c             	add    esp,0xc
     284:	6a 06                	push   0x6
     286:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
     28a:	81 c2 64 00 00 00    	add    edx,0x64
     290:	52                   	push   edx
     291:	ff 74 24 34          	push   DWORD PTR [esp+0x34]
     295:	e8 fc ff ff ff       	call   296 <net_arp_cache_get+0x66>
     29a:	83 c4 10             	add    esp,0x10
     29d:	b8 01 00 00 00       	mov    eax,0x1
     2a2:	83 c4 18             	add    esp,0x18
     2a5:	5b                   	pop    ebx
     2a6:	c3                   	ret
     2a7:	90                   	nop
     2a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     2af:	00 

000002b0 <net_arp_rx>:
     2b0:	55                   	push   ebp
     2b1:	57                   	push   edi
     2b2:	56                   	push   esi
     2b3:	53                   	push   ebx
     2b4:	83 ec 4c             	sub    esp,0x4c
     2b7:	8b 7c 24 60          	mov    edi,DWORD PTR [esp+0x60]
     2bb:	66 83 7c 24 64 1b    	cmp    WORD PTR [esp+0x64],0x1b
     2c1:	77 0d                	ja     2d0 <net_arp_rx+0x20>
     2c3:	83 c4 4c             	add    esp,0x4c
     2c6:	5b                   	pop    ebx
     2c7:	5e                   	pop    esi
     2c8:	5f                   	pop    edi
     2c9:	5d                   	pop    ebp
     2ca:	c3                   	ret
     2cb:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
     2d0:	83 ec 04             	sub    esp,0x4
     2d3:	8d 47 08             	lea    eax,[edi+0x8]
     2d6:	0f b7 6f 06          	movzx  ebp,WORD PTR [edi+0x6]
     2da:	6a 06                	push   0x6
     2dc:	50                   	push   eax
     2dd:	8d 74 24 2a          	lea    esi,[esp+0x2a]
     2e1:	56                   	push   esi
     2e2:	e8 fc ff ff ff       	call   2e3 <net_arp_rx+0x33>
     2e7:	83 c4 0c             	add    esp,0xc
     2ea:	8d 47 0e             	lea    eax,[edi+0xe]
     2ed:	83 c7 18             	add    edi,0x18
     2f0:	6a 04                	push   0x4
     2f2:	50                   	push   eax
     2f3:	8d 5c 24 22          	lea    ebx,[esp+0x22]
     2f7:	53                   	push   ebx
     2f8:	e8 fc ff ff ff       	call   2f9 <net_arp_rx+0x49>
     2fd:	83 c4 0c             	add    esp,0xc
     300:	6a 04                	push   0x4
     302:	57                   	push   edi
     303:	31 ff                	xor    edi,edi
     305:	8d 44 24 26          	lea    eax,[esp+0x26]
     309:	50                   	push   eax
     30a:	e8 fc ff ff ff       	call   30b <net_arp_rx+0x5b>
     30f:	83 c4 10             	add    esp,0x10
     312:	eb 1b                	jmp    32f <net_arp_rx+0x7f>
     314:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     318:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     31f:	00 
     320:	83 c7 10             	add    edi,0x10
     323:	81 ff 00 01 00 00    	cmp    edi,0x100
     329:	0f 84 f9 00 00 00    	je     428 <net_arp_rx+0x178>
     32f:	8b 97 6c 00 00 00    	mov    edx,DWORD PTR [edi+0x6c]
     335:	85 d2                	test   edx,edx
     337:	74 e7                	je     320 <net_arp_rx+0x70>
     339:	83 ec 04             	sub    esp,0x4
     33c:	8d 87 60 00 00 00    	lea    eax,[edi+0x60]
     342:	6a 04                	push   0x4
     344:	53                   	push   ebx
     345:	50                   	push   eax
     346:	e8 fc ff ff ff       	call   347 <net_arp_rx+0x97>
     34b:	83 c4 10             	add    esp,0x10
     34e:	85 c0                	test   eax,eax
     350:	75 ce                	jne    320 <net_arp_rx+0x70>
     352:	83 ec 04             	sub    esp,0x4
     355:	81 c7 64 00 00 00    	add    edi,0x64
     35b:	6a 06                	push   0x6
     35d:	56                   	push   esi
     35e:	57                   	push   edi
     35f:	e8 fc ff ff ff       	call   360 <net_arp_rx+0xb0>
     364:	83 c4 10             	add    esp,0x10
     367:	66 81 fd 00 01       	cmp    bp,0x100
     36c:	0f 85 51 ff ff ff    	jne    2c3 <net_arp_rx+0x13>
     372:	a1 7c 01 00 00       	mov    eax,ds:0x17c
     377:	85 c0                	test   eax,eax
     379:	0f 84 44 ff ff ff    	je     2c3 <net_arp_rx+0x13>
     37f:	83 ec 04             	sub    esp,0x4
     382:	6a 04                	push   0x4
     384:	68 64 01 00 00       	push   0x164
     389:	8d 44 24 26          	lea    eax,[esp+0x26]
     38d:	50                   	push   eax
     38e:	e8 fc ff ff ff       	call   38f <net_arp_rx+0xdf>
     393:	83 c4 10             	add    esp,0x10
     396:	85 c0                	test   eax,eax
     398:	0f 85 25 ff ff ff    	jne    2c3 <net_arp_rx+0x13>
     39e:	83 ec 04             	sub    esp,0x4
     3a1:	6a 1c                	push   0x1c
     3a3:	6a 00                	push   0x0
     3a5:	8d 7c 24 30          	lea    edi,[esp+0x30]
     3a9:	57                   	push   edi
     3aa:	e8 fc ff ff ff       	call   3ab <net_arp_rx+0xfb>
     3af:	c7 44 24 34 00 01 08 	mov    DWORD PTR [esp+0x34],0x80100
     3b6:	00 
     3b7:	c7 44 24 38 06 04 00 	mov    DWORD PTR [esp+0x38],0x2000406
     3be:	02 
     3bf:	83 c4 0c             	add    esp,0xc
     3c2:	6a 06                	push   0x6
     3c4:	68 74 01 00 00       	push   0x174
     3c9:	8d 44 24 38          	lea    eax,[esp+0x38]
     3cd:	50                   	push   eax
     3ce:	e8 fc ff ff ff       	call   3cf <net_arp_rx+0x11f>
     3d3:	83 c4 0c             	add    esp,0xc
     3d6:	6a 04                	push   0x4
     3d8:	68 64 01 00 00       	push   0x164
     3dd:	8d 44 24 3e          	lea    eax,[esp+0x3e]
     3e1:	50                   	push   eax
     3e2:	e8 fc ff ff ff       	call   3e3 <net_arp_rx+0x133>
     3e7:	83 c4 0c             	add    esp,0xc
     3ea:	6a 06                	push   0x6
     3ec:	56                   	push   esi
     3ed:	8d 44 24 42          	lea    eax,[esp+0x42]
     3f1:	50                   	push   eax
     3f2:	e8 fc ff ff ff       	call   3f3 <net_arp_rx+0x143>
     3f7:	83 c4 0c             	add    esp,0xc
     3fa:	6a 04                	push   0x4
     3fc:	53                   	push   ebx
     3fd:	8d 44 24 48          	lea    eax,[esp+0x48]
     401:	50                   	push   eax
     402:	e8 fc ff ff ff       	call   403 <net_arp_rx+0x153>
     407:	89 f9                	mov    ecx,edi
     409:	ba 06 08 00 00       	mov    edx,0x806
     40e:	89 f0                	mov    eax,esi
     410:	c7 04 24 1c 00 00 00 	mov    DWORD PTR [esp],0x1c
     417:	e8 e4 fc ff ff       	call   100 <eth_send>
     41c:	83 c4 10             	add    esp,0x10
     41f:	e9 9f fe ff ff       	jmp    2c3 <net_arp_rx+0x13>
     424:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     428:	a1 40 00 00 00       	mov    eax,ds:0x40
     42d:	83 ec 04             	sub    esp,0x4
     430:	6a 04                	push   0x4
     432:	99                   	cdq
     433:	53                   	push   ebx
     434:	c1 ea 1c             	shr    edx,0x1c
     437:	8d 3c 10             	lea    edi,[eax+edx*1]
     43a:	83 c0 01             	add    eax,0x1
     43d:	83 e7 0f             	and    edi,0xf
     440:	a3 40 00 00 00       	mov    ds:0x40,eax
     445:	29 d7                	sub    edi,edx
     447:	c1 e7 04             	shl    edi,0x4
     44a:	8d 97 60 00 00 00    	lea    edx,[edi+0x60]
     450:	81 c7 64 00 00 00    	add    edi,0x64
     456:	52                   	push   edx
     457:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
     45b:	e8 fc ff ff ff       	call   45c <net_arp_rx+0x1ac>
     460:	83 c4 0c             	add    esp,0xc
     463:	6a 06                	push   0x6
     465:	56                   	push   esi
     466:	57                   	push   edi
     467:	e8 fc ff ff ff       	call   468 <net_arp_rx+0x1b8>
     46c:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
     470:	83 c4 10             	add    esp,0x10
     473:	c7 42 0c 01 00 00 00 	mov    DWORD PTR [edx+0xc],0x1
     47a:	66 81 fd 00 01       	cmp    bp,0x100
     47f:	0f 84 ed fe ff ff    	je     372 <net_arp_rx+0xc2>
     485:	83 c4 4c             	add    esp,0x4c
     488:	5b                   	pop    ebx
     489:	5e                   	pop    esi
     48a:	5f                   	pop    edi
     48b:	5d                   	pop    ebp
     48c:	c3                   	ret
     48d:	8d 76 00             	lea    esi,[esi+0x0]

00000490 <arp_resolve>:
     490:	57                   	push   edi
     491:	56                   	push   esi
     492:	53                   	push   ebx
     493:	31 db                	xor    ebx,ebx
     495:	83 ec 20             	sub    esp,0x20
     498:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
     49c:	eb 0d                	jmp    4ab <arp_resolve+0x1b>
     49e:	66 90                	xchg   ax,ax
     4a0:	83 c3 10             	add    ebx,0x10
     4a3:	81 fb 00 01 00 00    	cmp    ebx,0x100
     4a9:	74 4d                	je     4f8 <arp_resolve+0x68>
     4ab:	8b 8b 6c 00 00 00    	mov    ecx,DWORD PTR [ebx+0x6c]
     4b1:	85 c9                	test   ecx,ecx
     4b3:	74 eb                	je     4a0 <arp_resolve+0x10>
     4b5:	83 ec 04             	sub    esp,0x4
     4b8:	8d 83 60 00 00 00    	lea    eax,[ebx+0x60]
     4be:	6a 04                	push   0x4
     4c0:	56                   	push   esi
     4c1:	50                   	push   eax
     4c2:	e8 fc ff ff ff       	call   4c3 <arp_resolve+0x33>
     4c7:	83 c4 10             	add    esp,0x10
     4ca:	85 c0                	test   eax,eax
     4cc:	75 d2                	jne    4a0 <arp_resolve+0x10>
     4ce:	83 ec 04             	sub    esp,0x4
     4d1:	81 c3 64 00 00 00    	add    ebx,0x64
     4d7:	6a 06                	push   0x6
     4d9:	53                   	push   ebx
     4da:	ff 74 24 40          	push   DWORD PTR [esp+0x40]
     4de:	e8 fc ff ff ff       	call   4df <arp_resolve+0x4f>
     4e3:	83 c4 10             	add    esp,0x10
     4e6:	b8 01 00 00 00       	mov    eax,0x1
     4eb:	83 c4 20             	add    esp,0x20
     4ee:	5b                   	pop    ebx
     4ef:	5e                   	pop    esi
     4f0:	5f                   	pop    edi
     4f1:	c3                   	ret
     4f2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     4f8:	c7 44 24 04 00 01 08 	mov    DWORD PTR [esp+0x4],0x80100
     4ff:	00 
     500:	83 ec 04             	sub    esp,0x4
     503:	c7 44 24 0c 06 04 00 	mov    DWORD PTR [esp+0xc],0x1000406
     50a:	01 
     50b:	6a 06                	push   0x6
     50d:	68 74 01 00 00       	push   0x174
     512:	8d 44 24 18          	lea    eax,[esp+0x18]
     516:	50                   	push   eax
     517:	e8 fc ff ff ff       	call   518 <arp_resolve+0x88>
     51c:	8b 15 7c 01 00 00    	mov    edx,DWORD PTR ds:0x17c
     522:	83 c4 10             	add    esp,0x10
     525:	b8 64 01 00 00       	mov    eax,0x164
     52a:	85 d2                	test   edx,edx
     52c:	0f 84 d9 00 00 00    	je     60b <arp_resolve+0x17b>
     532:	83 ec 04             	sub    esp,0x4
     535:	bf 14 00 00 00       	mov    edi,0x14
     53a:	6a 04                	push   0x4
     53c:	50                   	push   eax
     53d:	8d 44 24 1e          	lea    eax,[esp+0x1e]
     541:	50                   	push   eax
     542:	e8 fc ff ff ff       	call   543 <arp_resolve+0xb3>
     547:	83 c4 0c             	add    esp,0xc
     54a:	6a 06                	push   0x6
     54c:	6a 00                	push   0x0
     54e:	8d 44 24 22          	lea    eax,[esp+0x22]
     552:	50                   	push   eax
     553:	e8 fc ff ff ff       	call   554 <arp_resolve+0xc4>
     558:	83 c4 0c             	add    esp,0xc
     55b:	6a 04                	push   0x4
     55d:	56                   	push   esi
     55e:	8d 44 24 28          	lea    eax,[esp+0x28]
     562:	50                   	push   eax
     563:	e8 fc ff ff ff       	call   564 <arp_resolve+0xd4>
     568:	8d 4c 24 14          	lea    ecx,[esp+0x14]
     56c:	ba 06 08 00 00       	mov    edx,0x806
     571:	b8 00 00 00 00       	mov    eax,0x0
     576:	c7 04 24 1c 00 00 00 	mov    DWORD PTR [esp],0x1c
     57d:	e8 7e fb ff ff       	call   100 <eth_send>
     582:	83 c4 10             	add    esp,0x10
     585:	8d 76 00             	lea    esi,[esi+0x0]
     588:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     58f:	00 
     590:	83 ec 0c             	sub    esp,0xc
     593:	31 db                	xor    ebx,ebx
     595:	6a 32                	push   0x32
     597:	e8 fc ff ff ff       	call   598 <arp_resolve+0x108>
     59c:	e8 fc ff ff ff       	call   59d <arp_resolve+0x10d>
     5a1:	83 c4 10             	add    esp,0x10
     5a4:	eb 25                	jmp    5cb <arp_resolve+0x13b>
     5a6:	eb 18                	jmp    5c0 <arp_resolve+0x130>
     5a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5af:	00 
     5b0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5b7:	00 
     5b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     5bf:	00 
     5c0:	83 c3 10             	add    ebx,0x10
     5c3:	81 fb 00 01 00 00    	cmp    ebx,0x100
     5c9:	74 32                	je     5fd <arp_resolve+0x16d>
     5cb:	8b 83 6c 00 00 00    	mov    eax,DWORD PTR [ebx+0x6c]
     5d1:	85 c0                	test   eax,eax
     5d3:	74 eb                	je     5c0 <arp_resolve+0x130>
     5d5:	83 ec 04             	sub    esp,0x4
     5d8:	8d 83 60 00 00 00    	lea    eax,[ebx+0x60]
     5de:	6a 04                	push   0x4
     5e0:	56                   	push   esi
     5e1:	50                   	push   eax
     5e2:	e8 fc ff ff ff       	call   5e3 <arp_resolve+0x153>
     5e7:	83 c4 10             	add    esp,0x10
     5ea:	85 c0                	test   eax,eax
     5ec:	0f 84 dc fe ff ff    	je     4ce <arp_resolve+0x3e>
     5f2:	83 c3 10             	add    ebx,0x10
     5f5:	81 fb 00 01 00 00    	cmp    ebx,0x100
     5fb:	75 ce                	jne    5cb <arp_resolve+0x13b>
     5fd:	83 ef 01             	sub    edi,0x1
     600:	75 8e                	jne    590 <arp_resolve+0x100>
     602:	83 c4 20             	add    esp,0x20
     605:	31 c0                	xor    eax,eax
     607:	5b                   	pop    ebx
     608:	5e                   	pop    esi
     609:	5f                   	pop    edi
     60a:	c3                   	ret
     60b:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
     612:	89 e0                	mov    eax,esp
     614:	e9 19 ff ff ff       	jmp    532 <arp_resolve+0xa2>
     619:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000620 <ip_send>:
     620:	55                   	push   ebp
     621:	57                   	push   edi
     622:	56                   	push   esi
     623:	53                   	push   ebx
     624:	89 c3                	mov    ebx,eax
     626:	81 ec 2c 06 00 00    	sub    esp,0x62c
     62c:	8b 84 24 40 06 00 00 	mov    eax,DWORD PTR [esp+0x640]
     633:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
     637:	0f b7 f8             	movzx  edi,ax
     63a:	8d 77 14             	lea    esi,[edi+0x14]
     63d:	81 fe 00 06 00 00    	cmp    esi,0x600
     643:	7e 0b                	jle    650 <ip_send+0x30>
     645:	81 c4 2c 06 00 00    	add    esp,0x62c
     64b:	5b                   	pop    ebx
     64c:	5e                   	pop    esi
     64d:	5f                   	pop    edi
     64e:	5d                   	pop    ebp
     64f:	c3                   	ret
     650:	83 c0 14             	add    eax,0x14
     653:	b9 45 00 00 00       	mov    ecx,0x45
     658:	31 ed                	xor    ebp,ebp
     65a:	83 ec 04             	sub    esp,0x4
     65d:	66 c1 c0 08          	rol    ax,0x8
     661:	66 89 4c 24 24       	mov    WORD PTR [esp+0x24],cx
     666:	66 89 44 24 26       	mov    WORD PTR [esp+0x26],ax
     66b:	0f b7 05 00 00 00 00 	movzx  eax,WORD PTR ds:0x0
     672:	66 89 6c 24 2e       	mov    WORD PTR [esp+0x2e],bp
     677:	b0 40                	mov    al,0x40
     679:	c7 44 24 28 00 00 40 	mov    DWORD PTR [esp+0x28],0x400000
     680:	00 
     681:	88 d4                	mov    ah,dl
     683:	66 89 44 24 2c       	mov    WORD PTR [esp+0x2c],ax
     688:	6a 04                	push   0x4
     68a:	68 64 01 00 00       	push   0x164
     68f:	8d 44 24 38          	lea    eax,[esp+0x38]
     693:	50                   	push   eax
     694:	e8 fc ff ff ff       	call   695 <ip_send+0x75>
     699:	83 c4 0c             	add    esp,0xc
     69c:	6a 04                	push   0x4
     69e:	53                   	push   ebx
     69f:	8d 44 24 3c          	lea    eax,[esp+0x3c]
     6a3:	50                   	push   eax
     6a4:	e8 fc ff ff ff       	call   6a5 <ip_send+0x85>
     6a9:	83 c4 10             	add    esp,0x10
     6ac:	31 c9                	xor    ecx,ecx
     6ae:	8d 54 24 20          	lea    edx,[esp+0x20]
     6b2:	8d 6c 24 34          	lea    ebp,[esp+0x34]
     6b6:	66 90                	xchg   ax,ax
     6b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     6bf:	00 
     6c0:	0f b7 02             	movzx  eax,WORD PTR [edx]
     6c3:	83 c2 02             	add    edx,0x2
     6c6:	66 c1 c0 08          	rol    ax,0x8
     6ca:	0f b7 c0             	movzx  eax,ax
     6cd:	01 c1                	add    ecx,eax
     6cf:	39 ea                	cmp    edx,ebp
     6d1:	75 ed                	jne    6c0 <ip_send+0xa0>
     6d3:	89 c8                	mov    eax,ecx
     6d5:	c1 e8 10             	shr    eax,0x10
     6d8:	74 13                	je     6ed <ip_send+0xcd>
     6da:	0f b7 c9             	movzx  ecx,cx
     6dd:	01 c1                	add    ecx,eax
     6df:	0f b7 c1             	movzx  eax,cx
     6e2:	89 ca                	mov    edx,ecx
     6e4:	83 c0 01             	add    eax,0x1
     6e7:	c1 ea 10             	shr    edx,0x10
     6ea:	0f 45 c8             	cmovne ecx,eax
     6ed:	f7 d1                	not    ecx
     6ef:	83 ec 04             	sub    esp,0x4
     6f2:	66 c1 c1 08          	rol    cx,0x8
     6f6:	66 89 4c 24 2e       	mov    WORD PTR [esp+0x2e],cx
     6fb:	57                   	push   edi
     6fc:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
     700:	55                   	push   ebp
     701:	e8 fc ff ff ff       	call   702 <ip_send+0xe2>
     706:	83 c4 10             	add    esp,0x10
     709:	80 3b ff             	cmp    BYTE PTR [ebx],0xff
     70c:	75 06                	jne    714 <ip_send+0xf4>
     70e:	80 7b 01 ff          	cmp    BYTE PTR [ebx+0x1],0xff
     712:	74 3c                	je     750 <ip_send+0x130>
     714:	83 ec 08             	sub    esp,0x8
     717:	8d 7c 24 22          	lea    edi,[esp+0x22]
     71b:	57                   	push   edi
     71c:	53                   	push   ebx
     71d:	e8 fc ff ff ff       	call   71e <ip_send+0xfe>
     722:	83 c4 10             	add    esp,0x10
     725:	85 c0                	test   eax,eax
     727:	0f 84 18 ff ff ff    	je     645 <ip_send+0x25>
     72d:	83 ec 0c             	sub    esp,0xc
     730:	89 f8                	mov    eax,edi
     732:	ba 00 08 00 00       	mov    edx,0x800
     737:	56                   	push   esi
     738:	8d 4c 24 30          	lea    ecx,[esp+0x30]
     73c:	e8 bf f9 ff ff       	call   100 <eth_send>
     741:	83 c4 10             	add    esp,0x10
     744:	81 c4 2c 06 00 00    	add    esp,0x62c
     74a:	5b                   	pop    ebx
     74b:	5e                   	pop    esi
     74c:	5f                   	pop    edi
     74d:	5d                   	pop    ebp
     74e:	c3                   	ret
     74f:	90                   	nop
     750:	80 7b 02 ff          	cmp    BYTE PTR [ebx+0x2],0xff
     754:	75 be                	jne    714 <ip_send+0xf4>
     756:	80 7b 03 ff          	cmp    BYTE PTR [ebx+0x3],0xff
     75a:	75 b8                	jne    714 <ip_send+0xf4>
     75c:	83 ec 04             	sub    esp,0x4
     75f:	6a 06                	push   0x6
     761:	68 00 00 00 00       	push   0x0
     766:	8d 7c 24 26          	lea    edi,[esp+0x26]
     76a:	57                   	push   edi
     76b:	e8 fc ff ff ff       	call   76c <ip_send+0x14c>
     770:	83 c4 10             	add    esp,0x10
     773:	eb b8                	jmp    72d <ip_send+0x10d>
     775:	8d 76 00             	lea    esi,[esi+0x0]
     778:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     77f:	00 

00000780 <net_icmp_rx.part.0>:
     780:	55                   	push   ebp
     781:	57                   	push   edi
     782:	89 cf                	mov    edi,ecx
     784:	56                   	push   esi
     785:	53                   	push   ebx
     786:	81 ec 1c 01 00 00    	sub    esp,0x11c
     78c:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
     78f:	0f b7 58 04          	movzx  ebx,WORD PTR [eax+0x4]
     793:	0f b7 70 06          	movzx  esi,WORD PTR [eax+0x6]
     797:	80 f9 08             	cmp    cl,0x8
     79a:	74 3c                	je     7d8 <net_icmp_rx.part.0+0x58>
     79c:	84 c9                	test   cl,cl
     79e:	75 29                	jne    7c9 <net_icmp_rx.part.0+0x49>
     7a0:	a1 0c 00 00 00       	mov    eax,ds:0xc
     7a5:	85 c0                	test   eax,eax
     7a7:	74 20                	je     7c9 <net_icmp_rx.part.0+0x49>
     7a9:	66 c1 c3 08          	rol    bx,0x8
     7ad:	66 3b 1d 16 00 00 00 	cmp    bx,WORD PTR ds:0x16
     7b4:	75 13                	jne    7c9 <net_icmp_rx.part.0+0x49>
     7b6:	89 f0                	mov    eax,esi
     7b8:	66 c1 c0 08          	rol    ax,0x8
     7bc:	66 3b 05 14 00 00 00 	cmp    ax,WORD PTR ds:0x14
     7c3:	0f 84 0b 01 00 00    	je     8d4 <net_icmp_rx.part.0+0x154>
     7c9:	81 c4 1c 01 00 00    	add    esp,0x11c
     7cf:	5b                   	pop    ebx
     7d0:	5e                   	pop    esi
     7d1:	5f                   	pop    edi
     7d2:	5d                   	pop    ebp
     7d3:	c3                   	ret
     7d4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     7d8:	8b 0d 7c 01 00 00    	mov    ecx,DWORD PTR ds:0x17c
     7de:	85 c9                	test   ecx,ecx
     7e0:	74 e7                	je     7c9 <net_icmp_rx.part.0+0x49>
     7e2:	b9 f8 00 00 00       	mov    ecx,0xf8
     7e7:	66 89 74 24 16       	mov    WORD PTR [esp+0x16],si
     7ec:	66 39 ca             	cmp    dx,cx
     7ef:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
     7f3:	0f 46 ca             	cmovbe ecx,edx
     7f6:	66 89 5c 24 14       	mov    WORD PTR [esp+0x14],bx
     7fb:	83 c0 08             	add    eax,0x8
     7fe:	83 ec 04             	sub    esp,0x4
     801:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
     808:	00 
     809:	0f b7 f1             	movzx  esi,cx
     80c:	89 cd                	mov    ebp,ecx
     80e:	8d 4e f8             	lea    ecx,[esi-0x8]
     811:	51                   	push   ecx
     812:	50                   	push   eax
     813:	8d 44 24 24          	lea    eax,[esp+0x24]
     817:	50                   	push   eax
     818:	e8 fc ff ff ff       	call   819 <net_icmp_rx.part.0+0x99>
     81d:	83 c4 10             	add    esp,0x10
     820:	66 83 7c 24 0c 01    	cmp    WORD PTR [esp+0xc],0x1
     826:	0f 86 d4 00 00 00    	jbe    900 <net_icmp_rx.part.0+0x180>
     82c:	89 f0                	mov    eax,esi
     82e:	31 c9                	xor    ecx,ecx
     830:	66 d1 e8             	shr    ax,1
     833:	0f b7 d0             	movzx  edx,ax
     836:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
     83b:	8d 5c 54 10          	lea    ebx,[esp+edx*2+0x10]
     83f:	89 d8                	mov    eax,ebx
     841:	8d 5c 24 10          	lea    ebx,[esp+0x10]
     845:	eb 19                	jmp    860 <net_icmp_rx.part.0+0xe0>
     847:	90                   	nop
     848:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     84f:	00 
     850:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     857:	00 
     858:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     85f:	00 
     860:	0f b7 13             	movzx  edx,WORD PTR [ebx]
     863:	83 c3 02             	add    ebx,0x2
     866:	66 c1 c2 08          	rol    dx,0x8
     86a:	0f b7 d2             	movzx  edx,dx
     86d:	01 d1                	add    ecx,edx
     86f:	39 c3                	cmp    ebx,eax
     871:	75 ed                	jne    860 <net_icmp_rx.part.0+0xe0>
     873:	83 e5 01             	and    ebp,0x1
     876:	0f b7 44 24 0c       	movzx  eax,WORD PTR [esp+0xc]
     87b:	74 10                	je     88d <net_icmp_rx.part.0+0x10d>
     87d:	83 e8 01             	sub    eax,0x1
     880:	0f b7 c0             	movzx  eax,ax
     883:	0f b6 44 44 12       	movzx  eax,BYTE PTR [esp+eax*2+0x12]
     888:	c1 e0 08             	shl    eax,0x8
     88b:	01 c1                	add    ecx,eax
     88d:	89 c8                	mov    eax,ecx
     88f:	c1 e8 10             	shr    eax,0x10
     892:	74 13                	je     8a7 <net_icmp_rx.part.0+0x127>
     894:	0f b7 c9             	movzx  ecx,cx
     897:	01 c1                	add    ecx,eax
     899:	0f b7 c1             	movzx  eax,cx
     89c:	89 cb                	mov    ebx,ecx
     89e:	83 c0 01             	add    eax,0x1
     8a1:	c1 eb 10             	shr    ebx,0x10
     8a4:	0f 45 c8             	cmovne ecx,eax
     8a7:	f7 d1                	not    ecx
     8a9:	83 ec 0c             	sub    esp,0xc
     8ac:	89 f8                	mov    eax,edi
     8ae:	66 c1 c1 08          	rol    cx,0x8
     8b2:	ba 01 00 00 00       	mov    edx,0x1
     8b7:	66 89 4c 24 1e       	mov    WORD PTR [esp+0x1e],cx
     8bc:	56                   	push   esi
     8bd:	8d 4c 24 20          	lea    ecx,[esp+0x20]
     8c1:	e8 5a fd ff ff       	call   620 <ip_send>
     8c6:	83 c4 10             	add    esp,0x10
     8c9:	81 c4 1c 01 00 00    	add    esp,0x11c
     8cf:	5b                   	pop    ebx
     8d0:	5e                   	pop    esi
     8d1:	5f                   	pop    edi
     8d2:	5d                   	pop    ebp
     8d3:	c3                   	ret
     8d4:	c7 05 0c 00 00 00 00 	mov    DWORD PTR ds:0xc,0x0
     8db:	00 00 00 
     8de:	e8 fc ff ff ff       	call   8df <net_icmp_rx.part.0+0x15f>
     8e3:	2b 05 10 00 00 00    	sub    eax,DWORD PTR ds:0x10
     8e9:	8d 04 80             	lea    eax,[eax+eax*4]
     8ec:	01 c0                	add    eax,eax
     8ee:	a3 08 00 00 00       	mov    ds:0x8,eax
     8f3:	e9 d1 fe ff ff       	jmp    7c9 <net_icmp_rx.part.0+0x49>
     8f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     8ff:	00 
     900:	0f b6 4c 24 10       	movzx  ecx,BYTE PTR [esp+0x10]
     905:	c1 e1 08             	shl    ecx,0x8
     908:	eb 9d                	jmp    8a7 <net_icmp_rx.part.0+0x127>
     90a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000910 <dhcp_send>:
     910:	57                   	push   edi
     911:	89 c7                	mov    edi,eax
     913:	56                   	push   esi
     914:	53                   	push   ebx
     915:	89 d3                	mov    ebx,edx
     917:	81 ec 14 07 00 00    	sub    esp,0x714
     91d:	68 f0 00 00 00       	push   0xf0
     922:	6a 00                	push   0x0
     924:	8d 74 24 14          	lea    esi,[esp+0x14]
     928:	56                   	push   esi
     929:	e8 fc ff ff ff       	call   92a <dhcp_send+0x1a>
     92e:	b9 01 01 00 00       	mov    ecx,0x101
     933:	c6 44 24 1a 06       	mov    BYTE PTR [esp+0x1a],0x6
     938:	66 89 4c 24 18       	mov    WORD PTR [esp+0x18],cx
     93d:	83 c4 0c             	add    esp,0xc
     940:	6a 06                	push   0x6
     942:	68 74 01 00 00       	push   0x174
     947:	8d 44 24 30          	lea    eax,[esp+0x30]
     94b:	50                   	push   eax
     94c:	e8 fc ff ff ff       	call   94d <dhcp_send+0x3d>
     951:	89 f8                	mov    eax,edi
     953:	83 c4 10             	add    esp,0x10
     956:	3c 03                	cmp    al,0x3
     958:	0f 85 b2 00 00 00    	jne    a10 <dhcp_send+0x100>
     95e:	85 db                	test   ebx,ebx
     960:	0f 84 aa 00 00 00    	je     a10 <dhcp_send+0x100>
     966:	0f cb                	bswap  ebx
     968:	c6 84 24 fc 00 00 00 	mov    BYTE PTR [esp+0xfc],0x4
     96f:	04 
     970:	8d 84 24 01 01 00 00 	lea    eax,[esp+0x101]
     977:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
     97b:	c7 84 24 f8 00 00 00 	mov    DWORD PTR [esp+0xf8],0x32030135
     982:	35 01 03 32 
     986:	89 9c 24 fd 00 00 00 	mov    DWORD PTR [esp+0xfd],ebx
     98d:	8d 94 24 10 07 00 00 	lea    edx,[esp+0x710]
     994:	c6 00 ff             	mov    BYTE PTR [eax],0xff
     997:	83 ec 04             	sub    esp,0x4
     99a:	29 d0                	sub    eax,edx
     99c:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffffff
     9a3:	ff 
     9a4:	8d 98 09 07 00 00    	lea    ebx,[eax+0x709]
     9aa:	66 05 11 07          	add    ax,0x711
     9ae:	c7 84 24 38 01 00 00 	mov    DWORD PTR [esp+0x138],0x43004400
     9b5:	00 44 00 43 
     9b9:	66 c1 c0 08          	rol    ax,0x8
     9bd:	0f b7 db             	movzx  ebx,bx
     9c0:	66 89 84 24 3c 01 00 	mov    WORD PTR [esp+0x13c],ax
     9c7:	00 
     9c8:	31 c0                	xor    eax,eax
     9ca:	66 89 84 24 3e 01 00 	mov    WORD PTR [esp+0x13e],ax
     9d1:	00 
     9d2:	53                   	push   ebx
     9d3:	83 c3 08             	add    ebx,0x8
     9d6:	56                   	push   esi
     9d7:	8d 84 24 48 01 00 00 	lea    eax,[esp+0x148]
     9de:	50                   	push   eax
     9df:	e8 fc ff ff ff       	call   9e0 <dhcp_send+0xd0>
     9e4:	8d 44 24 14          	lea    eax,[esp+0x14]
     9e8:	ba 11 00 00 00       	mov    edx,0x11
     9ed:	89 1c 24             	mov    DWORD PTR [esp],ebx
     9f0:	8d 8c 24 44 01 00 00 	lea    ecx,[esp+0x144]
     9f7:	e8 24 fc ff ff       	call   620 <ip_send>
     9fc:	81 c4 20 07 00 00    	add    esp,0x720
     a02:	5b                   	pop    ebx
     a03:	5e                   	pop    esi
     a04:	5f                   	pop    edi
     a05:	c3                   	ret
     a06:	66 90                	xchg   ax,ax
     a08:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a0f:	00 
     a10:	89 f8                	mov    eax,edi
     a12:	ba 35 01 00 00       	mov    edx,0x135
     a17:	88 84 24 fa 00 00 00 	mov    BYTE PTR [esp+0xfa],al
     a1e:	8d 84 24 fb 00 00 00 	lea    eax,[esp+0xfb]
     a25:	66 89 94 24 f8 00 00 	mov    WORD PTR [esp+0xf8],dx
     a2c:	00 
     a2d:	e9 5b ff ff ff       	jmp    98d <dhcp_send+0x7d>
     a32:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     a38:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     a3f:	00 

00000a40 <dhcp_rx_cb>:
     a40:	55                   	push   ebp
     a41:	57                   	push   edi
     a42:	56                   	push   esi
     a43:	53                   	push   ebx
     a44:	83 ec 1c             	sub    esp,0x1c
     a47:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
     a4b:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
     a4f:	66 3d ef 00          	cmp    ax,0xef
     a53:	0f 86 f6 00 00 00    	jbe    b4f <dhcp_rx_cb+0x10f>
     a59:	80 3b 02             	cmp    BYTE PTR [ebx],0x2
     a5c:	0f 85 ed 00 00 00    	jne    b4f <dhcp_rx_cb+0x10f>
     a62:	8d 88 10 ff ff ff    	lea    ecx,[eax-0xf0]
     a68:	89 cf                	mov    edi,ecx
     a6a:	66 83 f9 01          	cmp    cx,0x1
     a6e:	0f 86 db 00 00 00    	jbe    b4f <dhcp_rx_cb+0x10f>
     a74:	8d 93 f0 00 00 00    	lea    edx,[ebx+0xf0]
     a7a:	89 dd                	mov    ebp,ebx
     a7c:	89 cb                	mov    ebx,ecx
     a7e:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
     a82:	eb 1e                	jmp    aa2 <dhcp_rx_cb+0x62>
     a84:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     a88:	0f b6 c8             	movzx  ecx,al
     a8b:	8d 54 0a 02          	lea    edx,[edx+ecx*1+0x2]
     a8f:	b9 fe ff ff ff       	mov    ecx,0xfffffffe
     a94:	29 c1                	sub    ecx,eax
     a96:	01 cb                	add    ebx,ecx
     a98:	66 83 fb 01          	cmp    bx,0x1
     a9c:	0f 86 ad 00 00 00    	jbe    b4f <dhcp_rx_cb+0x10f>
     aa2:	0f b6 0a             	movzx  ecx,BYTE PTR [edx]
     aa5:	80 f9 ff             	cmp    cl,0xff
     aa8:	0f 84 a1 00 00 00    	je     b4f <dhcp_rx_cb+0x10f>
     aae:	0f b6 42 01          	movzx  eax,BYTE PTR [edx+0x1]
     ab2:	80 f9 35             	cmp    cl,0x35
     ab5:	75 d1                	jne    a88 <dhcp_rx_cb+0x48>
     ab7:	84 c0                	test   al,al
     ab9:	74 cd                	je     a88 <dhcp_rx_cb+0x48>
     abb:	0f b6 42 02          	movzx  eax,BYTE PTR [edx+0x2]
     abf:	3c 02                	cmp    al,0x2
     ac1:	75 4d                	jne    b10 <dhcp_rx_cb+0xd0>
     ac3:	83 ec 04             	sub    esp,0x4
     ac6:	8d 45 10             	lea    eax,[ebp+0x10]
     ac9:	6a 04                	push   0x4
     acb:	50                   	push   eax
     acc:	68 64 01 00 00       	push   0x164
     ad1:	e8 fc ff ff ff       	call   ad2 <dhcp_rx_cb+0x92>
     ad6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     ad9:	0f b7 d7             	movzx  edx,di
     adc:	b9 02 00 00 00       	mov    ecx,0x2
     ae1:	0f c8                	bswap  eax
     ae3:	a3 00 00 00 00       	mov    ds:0x0,eax
     ae8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
     aec:	e8 0f f5 ff ff       	call   0 <dhcp_parse_options>
     af1:	8b 15 00 00 00 00    	mov    edx,DWORD PTR ds:0x0
     af7:	83 c4 2c             	add    esp,0x2c
     afa:	b8 03 00 00 00       	mov    eax,0x3
     aff:	5b                   	pop    ebx
     b00:	5e                   	pop    esi
     b01:	5f                   	pop    edi
     b02:	5d                   	pop    ebp
     b03:	e9 08 fe ff ff       	jmp    910 <dhcp_send>
     b08:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     b0f:	00 
     b10:	3c 05                	cmp    al,0x5
     b12:	75 3b                	jne    b4f <dhcp_rx_cb+0x10f>
     b14:	83 ec 04             	sub    esp,0x4
     b17:	8d 5d 10             	lea    ebx,[ebp+0x10]
     b1a:	6a 04                	push   0x4
     b1c:	53                   	push   ebx
     b1d:	68 64 01 00 00       	push   0x164
     b22:	e8 fc ff ff ff       	call   b23 <dhcp_rx_cb+0xe3>
     b27:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
     b2b:	0f b7 d7             	movzx  edx,di
     b2e:	b9 05 00 00 00       	mov    ecx,0x5
     b33:	e8 c8 f4 ff ff       	call   0 <dhcp_parse_options>
     b38:	83 c4 10             	add    esp,0x10
     b3b:	c7 05 7c 01 00 00 01 	mov    DWORD PTR ds:0x17c,0x1
     b42:	00 00 00 
     b45:	c7 05 04 00 00 00 01 	mov    DWORD PTR ds:0x4,0x1
     b4c:	00 00 00 
     b4f:	83 c4 1c             	add    esp,0x1c
     b52:	5b                   	pop    ebx
     b53:	5e                   	pop    esi
     b54:	5f                   	pop    edi
     b55:	5d                   	pop    ebp
     b56:	c3                   	ret
     b57:	90                   	nop
     b58:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     b5f:	00 

00000b60 <net_ip_rx>:
     b60:	55                   	push   ebp
     b61:	57                   	push   edi
     b62:	56                   	push   esi
     b63:	53                   	push   ebx
     b64:	83 ec 2c             	sub    esp,0x2c
     b67:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
     b6b:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
     b6f:	66 83 f9 13          	cmp    cx,0x13
     b73:	0f 86 35 01 00 00    	jbe    cae <net_ip_rx+0x14e>
     b79:	0f b6 06             	movzx  eax,BYTE PTR [esi]
     b7c:	83 e0 0f             	and    eax,0xf
     b7f:	c1 e0 02             	shl    eax,0x2
     b82:	0f b6 f8             	movzx  edi,al
     b85:	3c 13                	cmp    al,0x13
     b87:	0f 86 21 01 00 00    	jbe    cae <net_ip_rx+0x14e>
     b8d:	66 39 cf             	cmp    di,cx
     b90:	0f 87 18 01 00 00    	ja     cae <net_ip_rx+0x14e>
     b96:	0f b7 5e 02          	movzx  ebx,WORD PTR [esi+0x2]
     b9a:	0f b7 e9             	movzx  ebp,cx
     b9d:	0f b6 c0             	movzx  eax,al
     ba0:	0f b6 56 09          	movzx  edx,BYTE PTR [esi+0x9]
     ba4:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     ba8:	89 e8                	mov    eax,ebp
     baa:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
     bae:	29 f9                	sub    ecx,edi
     bb0:	66 c1 c3 08          	rol    bx,0x8
     bb4:	88 54 24 08          	mov    BYTE PTR [esp+0x8],dl
     bb8:	29 fb                	sub    ebx,edi
     bba:	29 e8                	sub    eax,ebp
     bbc:	0f b7 d3             	movzx  edx,bx
     bbf:	39 c2                	cmp    edx,eax
     bc1:	8d 46 0c             	lea    eax,[esi+0xc]
     bc4:	0f 4f d9             	cmovg  ebx,ecx
     bc7:	83 ec 04             	sub    esp,0x4
     bca:	6a 04                	push   0x4
     bcc:	50                   	push   eax
     bcd:	8d 7c 24 28          	lea    edi,[esp+0x28]
     bd1:	57                   	push   edi
     bd2:	e8 fc ff ff ff       	call   bd3 <net_ip_rx+0x73>
     bd7:	83 c4 10             	add    esp,0x10
     bda:	80 7c 24 08 01       	cmp    BYTE PTR [esp+0x8],0x1
     bdf:	0f 84 b3 00 00 00    	je     c98 <net_ip_rx+0x138>
     be5:	80 7c 24 08 11       	cmp    BYTE PTR [esp+0x8],0x11
     bea:	0f 85 be 00 00 00    	jne    cae <net_ip_rx+0x14e>
     bf0:	66 83 fb 07          	cmp    bx,0x7
     bf4:	0f 86 b4 00 00 00    	jbe    cae <net_ip_rx+0x14e>
     bfa:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
     bfe:	01 f0                	add    eax,esi
     c00:	0f b7 50 04          	movzx  edx,WORD PTR [eax+0x4]
     c04:	66 c1 c2 08          	rol    dx,0x8
     c08:	66 83 fa 07          	cmp    dx,0x7
     c0c:	0f 86 9c 00 00 00    	jbe    cae <net_ip_rx+0x14e>
     c12:	66 39 d3             	cmp    bx,dx
     c15:	0f 82 93 00 00 00    	jb     cae <net_ip_rx+0x14e>
     c1b:	8b 0d 18 00 00 00    	mov    ecx,DWORD PTR ds:0x18
     c21:	85 c9                	test   ecx,ecx
     c23:	0f 8e 85 00 00 00    	jle    cae <net_ip_rx+0x14e>
     c29:	0f b7 08             	movzx  ecx,WORD PTR [eax]
     c2c:	8d 5a f8             	lea    ebx,[edx-0x8]
     c2f:	8d 68 08             	lea    ebp,[eax+0x8]
     c32:	31 f6                	xor    esi,esi
     c34:	0f b7 db             	movzx  ebx,bx
     c37:	66 c1 c1 08          	rol    cx,0x8
     c3b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
     c3f:	66 89 4c 24 08       	mov    WORD PTR [esp+0x8],cx
     c44:	0f b7 48 02          	movzx  ecx,WORD PTR [eax+0x2]
     c48:	0f b7 44 24 08       	movzx  eax,WORD PTR [esp+0x8]
     c4d:	66 c1 c1 08          	rol    cx,0x8
     c51:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     c55:	89 cb                	mov    ebx,ecx
     c57:	eb 12                	jmp    c6b <net_ip_rx+0x10b>
     c59:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     c60:	83 c6 01             	add    esi,0x1
     c63:	3b 35 18 00 00 00    	cmp    esi,DWORD PTR ds:0x18
     c69:	7d 43                	jge    cae <net_ip_rx+0x14e>
     c6b:	66 3b 1c f5 20 00 00 	cmp    bx,WORD PTR [esi*8+0x20]
     c72:	00 
     c73:	75 eb                	jne    c60 <net_ip_rx+0x100>
     c75:	8b 04 f5 24 00 00 00 	mov    eax,DWORD PTR [esi*8+0x24]
     c7c:	85 c0                	test   eax,eax
     c7e:	74 e0                	je     c60 <net_ip_rx+0x100>
     c80:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
     c84:	57                   	push   edi
     c85:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
     c89:	55                   	push   ebp
     c8a:	ff d0                	call   eax
     c8c:	83 c4 10             	add    esp,0x10
     c8f:	eb cf                	jmp    c60 <net_ip_rx+0x100>
     c91:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     c98:	66 83 fb 07          	cmp    bx,0x7
     c9c:	76 10                	jbe    cae <net_ip_rx+0x14e>
     c9e:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
     ca2:	89 f9                	mov    ecx,edi
     ca4:	0f b7 d3             	movzx  edx,bx
     ca7:	01 f0                	add    eax,esi
     ca9:	e8 d2 fa ff ff       	call   780 <net_icmp_rx.part.0>
     cae:	83 c4 2c             	add    esp,0x2c
     cb1:	5b                   	pop    ebx
     cb2:	5e                   	pop    esi
     cb3:	5f                   	pop    edi
     cb4:	5d                   	pop    ebp
     cb5:	c3                   	ret
     cb6:	66 90                	xchg   ax,ax
     cb8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     cbf:	00 

00000cc0 <net_rx_packet>:
     cc0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
     cc4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     cc8:	66 83 f8 0d          	cmp    ax,0xd
     ccc:	76 11                	jbe    cdf <net_rx_packet+0x1f>
     cce:	0f b7 4a 0c          	movzx  ecx,WORD PTR [edx+0xc]
     cd2:	66 81 f9 08 06       	cmp    cx,0x608
     cd7:	74 27                	je     d00 <net_rx_packet+0x40>
     cd9:	66 83 f9 08          	cmp    cx,0x8
     cdd:	74 01                	je     ce0 <net_rx_packet+0x20>
     cdf:	c3                   	ret
     ce0:	83 e8 0e             	sub    eax,0xe
     ce3:	83 c2 0e             	add    edx,0xe
     ce6:	0f b7 c0             	movzx  eax,ax
     ce9:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     ced:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     cf1:	e9 6a fe ff ff       	jmp    b60 <net_ip_rx>
     cf6:	66 90                	xchg   ax,ax
     cf8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     cff:	00 
     d00:	83 e8 0e             	sub    eax,0xe
     d03:	83 c2 0e             	add    edx,0xe
     d06:	0f b7 c0             	movzx  eax,ax
     d09:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     d0d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     d11:	e9 9a f5 ff ff       	jmp    2b0 <net_arp_rx>
     d16:	66 90                	xchg   ax,ax
     d18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d1f:	00 

00000d20 <net_icmp_rx>:
     d20:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
     d24:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
     d28:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
     d2c:	66 83 fa 07          	cmp    dx,0x7
     d30:	76 0e                	jbe    d40 <net_icmp_rx+0x20>
     d32:	0f b7 d2             	movzx  edx,dx
     d35:	e9 46 fa ff ff       	jmp    780 <net_icmp_rx.part.0>
     d3a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     d40:	c3                   	ret
     d41:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
     d48:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d4f:	00 

00000d50 <icmp_ping>:
     d50:	53                   	push   ebx
     d51:	31 db                	xor    ebx,ebx
     d53:	83 ec 18             	sub    esp,0x18
     d56:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
     d5d:	00 
     d5e:	e8 fc ff ff ff       	call   d5f <icmp_ping+0xf>
     d63:	b9 00 01 00 00       	mov    ecx,0x100
     d68:	ba 01 00 00 00       	mov    edx,0x1
     d6d:	66 a3 16 00 00 00    	mov    ds:0x16,ax
     d73:	66 c1 c0 08          	rol    ax,0x8
     d77:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
     d7c:	66 89 4c 24 0e       	mov    WORD PTR [esp+0xe],cx
     d81:	66 89 15 14 00 00 00 	mov    WORD PTR ds:0x14,dx
     d88:	8d 54 24 08          	lea    edx,[esp+0x8]
     d8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     d90:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d97:	00 
     d98:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     d9f:	00 
     da0:	0f b7 02             	movzx  eax,WORD PTR [edx]
     da3:	83 c2 02             	add    edx,0x2
     da6:	66 c1 c0 08          	rol    ax,0x8
     daa:	0f b7 c0             	movzx  eax,ax
     dad:	01 c3                	add    ebx,eax
     daf:	8d 44 24 10          	lea    eax,[esp+0x10]
     db3:	39 c2                	cmp    edx,eax
     db5:	75 e9                	jne    da0 <icmp_ping+0x50>
     db7:	89 d8                	mov    eax,ebx
     db9:	c1 e8 10             	shr    eax,0x10
     dbc:	74 13                	je     dd1 <icmp_ping+0x81>
     dbe:	0f b7 db             	movzx  ebx,bx
     dc1:	01 c3                	add    ebx,eax
     dc3:	0f b7 c3             	movzx  eax,bx
     dc6:	89 da                	mov    edx,ebx
     dc8:	83 c0 01             	add    eax,0x1
     dcb:	c1 ea 10             	shr    edx,0x10
     dce:	0f 45 d8             	cmovne ebx,eax
     dd1:	f7 d3                	not    ebx
     dd3:	66 c1 c3 08          	rol    bx,0x8
     dd7:	66 89 5c 24 0a       	mov    WORD PTR [esp+0xa],bx
     ddc:	e8 fc ff ff ff       	call   ddd <icmp_ping+0x8d>
     de1:	83 ec 0c             	sub    esp,0xc
     de4:	ba 01 00 00 00       	mov    edx,0x1
     de9:	c7 05 0c 00 00 00 01 	mov    DWORD PTR ds:0xc,0x1
     df0:	00 00 00 
     df3:	6a 08                	push   0x8
     df5:	a3 10 00 00 00       	mov    ds:0x10,eax
     dfa:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
     dfe:	8d 4c 24 18          	lea    ecx,[esp+0x18]
     e02:	e8 19 f8 ff ff       	call   620 <ip_send>
     e07:	83 c4 28             	add    esp,0x28
     e0a:	5b                   	pop    ebx
     e0b:	c3                   	ret
     e0c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000e10 <icmp_ping_done>:
     e10:	a1 0c 00 00 00       	mov    eax,ds:0xc
     e15:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     e19:	85 c0                	test   eax,eax
     e1b:	0f 94 c0             	sete   al
     e1e:	85 d2                	test   edx,edx
     e20:	74 0c                	je     e2e <icmp_ping_done+0x1e>
     e22:	84 c0                	test   al,al
     e24:	74 08                	je     e2e <icmp_ping_done+0x1e>
     e26:	8b 0d 08 00 00 00    	mov    ecx,DWORD PTR ds:0x8
     e2c:	89 0a                	mov    DWORD PTR [edx],ecx
     e2e:	0f b6 c0             	movzx  eax,al
     e31:	c3                   	ret
     e32:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     e38:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     e3f:	00 

00000e40 <udp_send>:
     e40:	57                   	push   edi
     e41:	56                   	push   esi
     e42:	53                   	push   ebx
     e43:	81 ec f0 05 00 00    	sub    esp,0x5f0
     e49:	8b 84 24 10 06 00 00 	mov    eax,DWORD PTR [esp+0x610]
     e50:	0f b7 c8             	movzx  ecx,ax
     e53:	8d 51 08             	lea    edx,[ecx+0x8]
     e56:	81 fa dc 05 00 00    	cmp    edx,0x5dc
     e5c:	7f 6f                	jg     ecd <udp_send+0x8d>
     e5e:	0f b7 9c 24 08 06 00 	movzx  ebx,WORD PTR [esp+0x608]
     e65:	00 
     e66:	83 c0 08             	add    eax,0x8
     e69:	83 ec 04             	sub    esp,0x4
     e6c:	66 c1 c0 08          	rol    ax,0x8
     e70:	66 c1 c3 08          	rol    bx,0x8
     e74:	66 89 44 24 1c       	mov    WORD PTR [esp+0x1c],ax
     e79:	31 c0                	xor    eax,eax
     e7b:	89 de                	mov    esi,ebx
     e7d:	0f b7 9c 24 08 06 00 	movzx  ebx,WORD PTR [esp+0x608]
     e84:	00 
     e85:	66 89 44 24 1e       	mov    WORD PTR [esp+0x1e],ax
     e8a:	66 89 74 24 18       	mov    WORD PTR [esp+0x18],si
     e8f:	66 c1 c3 08          	rol    bx,0x8
     e93:	66 89 5c 24 1a       	mov    WORD PTR [esp+0x1a],bx
     e98:	51                   	push   ecx
     e99:	ff b4 24 14 06 00 00 	push   DWORD PTR [esp+0x614]
     ea0:	8d 44 24 28          	lea    eax,[esp+0x28]
     ea4:	50                   	push   eax
     ea5:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
     ea9:	e8 fc ff ff ff       	call   eaa <udp_send+0x6a>
     eae:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
     eb2:	8b 84 24 10 06 00 00 	mov    eax,DWORD PTR [esp+0x610]
     eb9:	8d 4c 24 24          	lea    ecx,[esp+0x24]
     ebd:	89 14 24             	mov    DWORD PTR [esp],edx
     ec0:	ba 11 00 00 00       	mov    edx,0x11
     ec5:	e8 56 f7 ff ff       	call   620 <ip_send>
     eca:	83 c4 10             	add    esp,0x10
     ecd:	81 c4 f0 05 00 00    	add    esp,0x5f0
     ed3:	5b                   	pop    ebx
     ed4:	5e                   	pop    esi
     ed5:	5f                   	pop    edi
     ed6:	c3                   	ret
     ed7:	90                   	nop
     ed8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     edf:	00 

00000ee0 <net_udp_rx>:
     ee0:	55                   	push   ebp
     ee1:	57                   	push   edi
     ee2:	56                   	push   esi
     ee3:	53                   	push   ebx
     ee4:	83 ec 1c             	sub    esp,0x1c
     ee7:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
     eeb:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
     eef:	66 83 fa 07          	cmp    dx,0x7
     ef3:	76 55                	jbe    f4a <net_udp_rx+0x6a>
     ef5:	0f b7 41 04          	movzx  eax,WORD PTR [ecx+0x4]
     ef9:	66 c1 c0 08          	rol    ax,0x8
     efd:	66 83 f8 07          	cmp    ax,0x7
     f01:	76 47                	jbe    f4a <net_udp_rx+0x6a>
     f03:	66 39 d0             	cmp    ax,dx
     f06:	77 42                	ja     f4a <net_udp_rx+0x6a>
     f08:	8b 15 18 00 00 00    	mov    edx,DWORD PTR ds:0x18
     f0e:	85 d2                	test   edx,edx
     f10:	7e 38                	jle    f4a <net_udp_rx+0x6a>
     f12:	0f b7 59 02          	movzx  ebx,WORD PTR [ecx+0x2]
     f16:	0f b7 11             	movzx  edx,WORD PTR [ecx]
     f19:	8d 79 08             	lea    edi,[ecx+0x8]
     f1c:	66 c1 c3 08          	rol    bx,0x8
     f20:	66 c1 c2 08          	rol    dx,0x8
     f24:	89 de                	mov    esi,ebx
     f26:	8d 58 f8             	lea    ebx,[eax-0x8]
     f29:	0f b7 ea             	movzx  ebp,dx
     f2c:	31 c0                	xor    eax,eax
     f2e:	0f b7 cb             	movzx  ecx,bx
     f31:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
     f35:	66 3b 34 c5 20 00 00 	cmp    si,WORD PTR [eax*8+0x20]
     f3c:	00 
     f3d:	74 19                	je     f58 <net_udp_rx+0x78>
     f3f:	83 c0 01             	add    eax,0x1
     f42:	3b 05 18 00 00 00    	cmp    eax,DWORD PTR ds:0x18
     f48:	7c eb                	jl     f35 <net_udp_rx+0x55>
     f4a:	83 c4 1c             	add    esp,0x1c
     f4d:	5b                   	pop    ebx
     f4e:	5e                   	pop    esi
     f4f:	5f                   	pop    edi
     f50:	5d                   	pop    ebp
     f51:	c3                   	ret
     f52:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     f58:	8b 14 c5 24 00 00 00 	mov    edx,DWORD PTR [eax*8+0x24]
     f5f:	85 d2                	test   edx,edx
     f61:	74 dc                	je     f3f <net_udp_rx+0x5f>
     f63:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     f67:	55                   	push   ebp
     f68:	ff 74 24 3c          	push   DWORD PTR [esp+0x3c]
     f6c:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
     f70:	57                   	push   edi
     f71:	ff d2                	call   edx
     f73:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
     f77:	83 c4 10             	add    esp,0x10
     f7a:	eb c3                	jmp    f3f <net_udp_rx+0x5f>
     f7c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000f80 <udp_listen>:
     f80:	a1 18 00 00 00       	mov    eax,ds:0x18
     f85:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     f89:	83 f8 03             	cmp    eax,0x3
     f8c:	7f 22                	jg     fb0 <udp_listen+0x30>
     f8e:	66 89 14 c5 20 00 00 	mov    WORD PTR [eax*8+0x20],dx
     f95:	00 
     f96:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
     f9a:	89 14 c5 24 00 00 00 	mov    DWORD PTR [eax*8+0x24],edx
     fa1:	83 c0 01             	add    eax,0x1
     fa4:	a3 18 00 00 00       	mov    ds:0x18,eax
     fa9:	31 c0                	xor    eax,eax
     fab:	c3                   	ret
     fac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
     fb0:	b8 ff ff ff ff       	mov    eax,0xffffffff
     fb5:	c3                   	ret
     fb6:	66 90                	xchg   ax,ax
     fb8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
     fbf:	00 

00000fc0 <dhcp_discover>:
     fc0:	a1 60 01 00 00       	mov    eax,ds:0x160
     fc5:	85 c0                	test   eax,eax
     fc7:	75 07                	jne    fd0 <dhcp_discover+0x10>
     fc9:	c3                   	ret
     fca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
     fd0:	31 d2                	xor    edx,edx
     fd2:	b8 01 00 00 00       	mov    eax,0x1
     fd7:	c7 05 04 00 00 00 00 	mov    DWORD PTR ds:0x4,0x0
     fde:	00 00 00 
     fe1:	c7 05 7c 01 00 00 00 	mov    DWORD PTR ds:0x17c,0x0
     fe8:	00 00 00 
     feb:	e9 20 f9 ff ff       	jmp    910 <dhcp_send>

00000ff0 <dhcp_request>:
     ff0:	a1 60 01 00 00       	mov    eax,ds:0x160
     ff5:	85 c0                	test   eax,eax
     ff7:	75 07                	jne    1000 <dhcp_request+0x10>
     ff9:	c3                   	ret
     ffa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
    1000:	31 d2                	xor    edx,edx
    1002:	b8 01 00 00 00       	mov    eax,0x1
    1007:	c7 05 04 00 00 00 00 	mov    DWORD PTR ds:0x4,0x0
    100e:	00 00 00 
    1011:	c7 05 7c 01 00 00 00 	mov    DWORD PTR ds:0x17c,0x0
    1018:	00 00 00 
    101b:	e9 f0 f8 ff ff       	jmp    910 <dhcp_send>

00001020 <dhcp_ready>:
    1020:	a1 04 00 00 00       	mov    eax,ds:0x4
    1025:	c3                   	ret
    1026:	66 90                	xchg   ax,ax
    1028:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    102f:	00 

00001030 <net_init>:
    1030:	83 ec 10             	sub    esp,0x10
    1033:	6a 1c                	push   0x1c
    1035:	6a 00                	push   0x0
    1037:	68 64 01 00 00       	push   0x164
    103c:	e8 fc ff ff ff       	call   103d <net_init+0xd>
    1041:	83 c4 0c             	add    esp,0xc
    1044:	68 00 01 00 00       	push   0x100
    1049:	6a 00                	push   0x0
    104b:	68 60 00 00 00       	push   0x60
    1050:	e8 fc ff ff ff       	call   1051 <net_init+0x21>
    1055:	c7 05 40 00 00 00 00 	mov    DWORD PTR ds:0x40,0x0
    105c:	00 00 00 
    105f:	c7 05 18 00 00 00 00 	mov    DWORD PTR ds:0x18,0x0
    1066:	00 00 00 
    1069:	c7 05 0c 00 00 00 00 	mov    DWORD PTR ds:0xc,0x0
    1070:	00 00 00 
    1073:	c7 05 04 00 00 00 00 	mov    DWORD PTR ds:0x4,0x0
    107a:	00 00 00 
    107d:	e8 fc ff ff ff       	call   107e <net_init+0x4e>
    1082:	83 c4 10             	add    esp,0x10
    1085:	85 c0                	test   eax,eax
    1087:	75 07                	jne    1090 <net_init+0x60>
    1089:	83 c4 0c             	add    esp,0xc
    108c:	c3                   	ret
    108d:	8d 76 00             	lea    esi,[esi+0x0]
    1090:	83 ec 0c             	sub    esp,0xc
    1093:	68 74 01 00 00       	push   0x174
    1098:	e8 fc ff ff ff       	call   1099 <net_init+0x69>
    109d:	a1 18 00 00 00       	mov    eax,ds:0x18
    10a2:	83 c4 10             	add    esp,0x10
    10a5:	83 f8 03             	cmp    eax,0x3
    10a8:	7f 20                	jg     10ca <net_init+0x9a>
    10aa:	c7 04 c5 24 00 00 00 	mov    DWORD PTR [eax*8+0x24],0xa40
    10b1:	40 0a 00 00 
    10b5:	ba 44 00 00 00       	mov    edx,0x44
    10ba:	66 89 14 c5 20 00 00 	mov    WORD PTR [eax*8+0x20],dx
    10c1:	00 
    10c2:	83 c0 01             	add    eax,0x1
    10c5:	a3 18 00 00 00       	mov    ds:0x18,eax
    10ca:	c7 05 60 01 00 00 01 	mov    DWORD PTR ds:0x160,0x1
    10d1:	00 00 00 
    10d4:	83 c4 0c             	add    esp,0xc
    10d7:	c3                   	ret
    10d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    10df:	00 

000010e0 <net_poll>:
    10e0:	a1 60 01 00 00       	mov    eax,ds:0x160
    10e5:	85 c0                	test   eax,eax
    10e7:	75 07                	jne    10f0 <net_poll+0x10>
    10e9:	c3                   	ret
    10ea:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
    10f0:	e9 fc ff ff ff       	jmp    10f1 <net_poll+0x11>
    10f5:	8d 76 00             	lea    esi,[esi+0x0]
    10f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
    10ff:	00 

00001100 <net_get_config>:
    1100:	b8 64 01 00 00       	mov    eax,0x164
    1105:	c3                   	ret

Disassembly of section .rodata:

00000000 <broadcast_mac>:
   0:	ff                   	(bad)
   1:	ff                   	(bad)
   2:	ff                   	(bad)
   3:	ff                   	(bad)
   4:	ff                   	(bad)
   5:	ff                   	.byte 0xff

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
  17:	00 70 00             	add    BYTE PTR [eax+0x0],dh
  1a:	00 00                	add    BYTE PTR [eax],al
  1c:	1c 00                	sbb    al,0x0
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	f8                   	clc
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 00                	add    BYTE PTR [eax],al
  29:	4b                   	dec    ebx
  2a:	0e                   	push   cs
  2b:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
  31:	87 03                	xchg   DWORD PTR [ebx],eax
  33:	43                   	inc    ebx
  34:	0e                   	push   cs
  35:	10 86 04 43 0e 14    	adc    BYTE PTR [esi+0x140e4304],al
  3b:	83 05 43 0e 20 02 48 	add    DWORD PTR ds:0x2200e43,0x48
  42:	0e                   	push   cs
  43:	24 4c                	and    al,0x4c
  45:	0e                   	push   cs
  46:	28 43 0e             	sub    BYTE PTR [ebx+0xe],al
  49:	2c 45                	sub    al,0x45
  4b:	0e                   	push   cs
  4c:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
  4f:	20 49 0a             	and    BYTE PTR [ecx+0xa],cl
  52:	0e                   	push   cs
  53:	14 41                	adc    al,0x41
  55:	c3                   	ret
  56:	0e                   	push   cs
  57:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
  5a:	0e                   	push   cs
  5b:	0c 41                	or     al,0x41
  5d:	c7                   	(bad)
  5e:	0e                   	push   cs
  5f:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
  62:	0e                   	push   cs
  63:	04 4a                	add    al,0x4a
  65:	0b 51 0e             	or     edx,DWORD PTR [ecx+0xe]
  68:	24 45                	and    al,0x45
  6a:	0e                   	push   cs
  6b:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
  6e:	2c 45                	sub    al,0x45
  70:	0e                   	push   cs
  71:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
  74:	20 6b 0e             	and    BYTE PTR [ebx+0xe],ch
  77:	24 45                	and    al,0x45
  79:	0e                   	push   cs
  7a:	28 41 0e             	sub    BYTE PTR [ecx+0xe],al
  7d:	2c 45                	sub    al,0x45
  7f:	0e                   	push   cs
  80:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
  83:	20 45 0e             	and    BYTE PTR [ebp+0xe],al
  86:	04 c3                	add    al,0xc3
  88:	c5 c6 c7             	(bad)
  8b:	00 74 00 00          	add    BYTE PTR [eax+eax*1+0x0],dh
  8f:	00 90 00 00 00 00    	add    BYTE PTR [eax+0x0],dl
  95:	01 00                	add    DWORD PTR [eax],eax
  97:	00 86 00 00 00 00    	add    BYTE PTR [esi+0x0],al
  9d:	41                   	inc    ecx
  9e:	0e                   	push   cs
  9f:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  a5:	86 03                	xchg   BYTE PTR [ebx],al
  a7:	43                   	inc    ebx
  a8:	0e                   	push   cs
  a9:	10 83 04 48 0e a0    	adc    BYTE PTR [ebx-0x5ff1b7fc],al
  af:	0c 54                	or     al,0x54
  b1:	0e                   	push   cs
  b2:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  b3:	0c 44                	or     al,0x44
  b5:	0e                   	push   cs
  b6:	a8 0c                	test   al,0xc
  b8:	41                   	inc    ecx
  b9:	0e                   	push   cs
  ba:	ac                   	lods   al,BYTE PTR ds:[esi]
  bb:	0c 45                	or     al,0x45
  bd:	0e                   	push   cs
  be:	b0 0c                	mov    al,0xc
  c0:	50                   	push   eax
  c1:	0e                   	push   cs
  c2:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  c3:	0c 42                	or     al,0x42
  c5:	0e                   	push   cs
  c6:	a8 0c                	test   al,0xc
  c8:	45                   	inc    ebp
  c9:	0e                   	push   cs
  ca:	ac                   	lods   al,BYTE PTR ds:[esi]
  cb:	0c 45                	or     al,0x45
  cd:	0e                   	push   cs
  ce:	b0 0c                	mov    al,0xc
  d0:	58                   	pop    eax
  d1:	0e                   	push   cs
  d2:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  d3:	0c 41                	or     al,0x41
  d5:	0e                   	push   cs
  d6:	a8 0c                	test   al,0xc
  d8:	41                   	inc    ecx
  d9:	0e                   	push   cs
  da:	ac                   	lods   al,BYTE PTR ds:[esi]
  db:	0c 45                	or     al,0x45
  dd:	0e                   	push   cs
  de:	b0 0c                	mov    al,0xc
  e0:	46                   	inc    esi
  e1:	0e                   	push   cs
  e2:	ac                   	lods   al,BYTE PTR ds:[esi]
  e3:	0c 41                	or     al,0x41
  e5:	0e                   	push   cs
  e6:	a8 0c                	test   al,0xc
  e8:	46                   	inc    esi
  e9:	0e                   	push   cs
  ea:	ac                   	lods   al,BYTE PTR ds:[esi]
  eb:	0c 41                	or     al,0x41
  ed:	0e                   	push   cs
  ee:	b0 0c                	mov    al,0xc
  f0:	48                   	dec    eax
  f1:	0e                   	push   cs
  f2:	a0 0c 46 0e 10       	mov    al,ds:0x100e460c
  f7:	41                   	inc    ecx
  f8:	c3                   	ret
  f9:	0e                   	push   cs
  fa:	0c 41                	or     al,0x41
  fc:	c6                   	(bad)
  fd:	0e                   	push   cs
  fe:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 101:	0e                   	push   cs
 102:	04 00                	add    al,0x0
 104:	54                   	push   esp
 105:	00 00                	add    BYTE PTR [eax],al
 107:	00 08                	add    BYTE PTR [eax],cl
 109:	01 00                	add    DWORD PTR [eax],eax
 10b:	00 90 01 00 00 70    	add    BYTE PTR [eax+0x70000001],dl
 111:	00 00                	add    BYTE PTR [eax],al
 113:	00 00                	add    BYTE PTR [eax],al
 115:	41                   	inc    ecx
 116:	0e                   	push   cs
 117:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
 11d:	83 03 45             	add    DWORD PTR [ebx],0x45
 120:	0e                   	push   cs
 121:	10 61 0e             	adc    BYTE PTR [ecx+0xe],ah
 124:	14 48                	adc    al,0x48
 126:	0e                   	push   cs
 127:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
 12a:	1c 41                	sbb    al,0x41
 12c:	0e                   	push   cs
 12d:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 130:	10 47 0e             	adc    BYTE PTR [edi+0xe],al
 133:	14 48                	adc    al,0x48
 135:	0e                   	push   cs
 136:	18 41 0e             	sbb    BYTE PTR [ecx+0xe],al
 139:	1c 44                	sbb    al,0x44
 13b:	0e                   	push   cs
 13c:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 13f:	10 48 0a             	adc    BYTE PTR [eax+0xa],cl
 142:	0e                   	push   cs
 143:	0c 41                	or     al,0x41
 145:	c3                   	ret
 146:	0e                   	push   cs
 147:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 14a:	0e                   	push   cs
 14b:	04 48                	add    al,0x48
 14d:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 150:	0c 43                	or     al,0x43
 152:	c3                   	ret
 153:	0e                   	push   cs
 154:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 157:	0e                   	push   cs
 158:	04 00                	add    al,0x0
 15a:	00 00                	add    BYTE PTR [eax],al
 15c:	10 00                	adc    BYTE PTR [eax],al
 15e:	00 00                	add    BYTE PTR [eax],al
 160:	60                   	pusha
 161:	01 00                	add    DWORD PTR [eax],eax
 163:	00 00                	add    BYTE PTR [eax],al
 165:	02 00                	add    al,BYTE PTR [eax]
 167:	00 23                	add    BYTE PTR [ebx],ah
 169:	00 00                	add    BYTE PTR [eax],al
 16b:	00 00                	add    BYTE PTR [eax],al
 16d:	00 00                	add    BYTE PTR [eax],al
 16f:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
 173:	00 74 01 00          	add    BYTE PTR [ecx+eax*1+0x0],dh
 177:	00 30                	add    BYTE PTR [eax],dh
 179:	02 00                	add    al,BYTE PTR [eax]
 17b:	00 77 00             	add    BYTE PTR [edi+0x0],dh
 17e:	00 00                	add    BYTE PTR [eax],al
 180:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 183:	08 83 02 47 0e 20    	or     BYTE PTR [ebx+0x200e4702],al
 189:	68 0a 0e 08 43       	push   0x43080e0a
 18e:	c3                   	ret
 18f:	0e                   	push   cs
 190:	04 45                	add    al,0x45
 192:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 195:	24 48                	and    al,0x48
 197:	0e                   	push   cs
 198:	28 45 0e             	sub    BYTE PTR [ebp+0xe],al
 19b:	2c 44                	sub    al,0x44
 19d:	0e                   	push   cs
 19e:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 1a1:	24 42                	and    al,0x42
 1a3:	0e                   	push   cs
 1a4:	28 4b 0e             	sub    BYTE PTR [ebx+0xe],cl
 1a7:	2c 44                	sub    al,0x44
 1a9:	0e                   	push   cs
 1aa:	30 48 0e             	xor    BYTE PTR [eax+0xe],cl
 1ad:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 1b0:	08 41 c3             	or     BYTE PTR [ecx-0x3d],al
 1b3:	0e                   	push   cs
 1b4:	04 00                	add    al,0x0
 1b6:	00 00                	add    BYTE PTR [eax],al
 1b8:	fc                   	cld
 1b9:	00 00                	add    BYTE PTR [eax],al
 1bb:	00 bc 01 00 00 b0 02 	add    BYTE PTR [ecx+eax*1+0x2b00000],bh
 1c2:	00 00                	add    BYTE PTR [eax],al
 1c4:	dd 01                	fld    QWORD PTR [ecx]
 1c6:	00 00                	add    BYTE PTR [eax],al
 1c8:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 1cb:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 1d1:	87 03                	xchg   DWORD PTR [ebx],eax
 1d3:	41                   	inc    ecx
 1d4:	0e                   	push   cs
 1d5:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 1db:	83 05 43 0e 60 4f 0a 	add    DWORD PTR ds:0x4f600e43,0xa
 1e2:	0e                   	push   cs
 1e3:	14 41                	adc    al,0x41
 1e5:	c3                   	ret
 1e6:	0e                   	push   cs
 1e7:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1ea:	0e                   	push   cs
 1eb:	0c 41                	or     al,0x41
 1ed:	c7                   	(bad)
 1ee:	0e                   	push   cs
 1ef:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1f2:	0e                   	push   cs
 1f3:	04 46                	add    al,0x46
 1f5:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 1f8:	64 49                	fs dec ecx
 1fa:	0e                   	push   cs
 1fb:	68 41 0e 6c 45       	push   0x456c0e41
 200:	0e                   	push   cs
 201:	70 48                	jo     24b <.eh_frame+0x24b>
 203:	0e                   	push   cs
 204:	64 48                	fs dec eax
 206:	0e                   	push   cs
 207:	68 41 0e 6c 45       	push   0x456c0e41
 20c:	0e                   	push   cs
 20d:	70 48                	jo     257 <.eh_frame+0x257>
 20f:	0e                   	push   cs
 210:	64 42                	fs inc edx
 212:	0e                   	push   cs
 213:	68 41 0e 6c 47       	push   0x476c0e41
 218:	0e                   	push   cs
 219:	70 48                	jo     263 <.eh_frame+0x263>
 21b:	0e                   	push   cs
 21c:	60                   	pusha
 21d:	6a 0e                	push   0xe
 21f:	64 48                	fs dec eax
 221:	0e                   	push   cs
 222:	68 41 0e 6c 41       	push   0x416c0e41
 227:	0e                   	push   cs
 228:	70 48                	jo     272 <.eh_frame+0x272>
 22a:	0e                   	push   cs
 22b:	60                   	pusha
 22c:	47                   	inc    edi
 22d:	0e                   	push   cs
 22e:	64 48                	fs dec eax
 230:	0e                   	push   cs
 231:	68 41 0e 6c 41       	push   0x416c0e41
 236:	0e                   	push   cs
 237:	70 48                	jo     281 <.eh_frame+0x281>
 239:	0e                   	push   cs
 23a:	60                   	pusha
 23b:	5b                   	pop    ebx
 23c:	0e                   	push   cs
 23d:	64 42                	fs inc edx
 23f:	0e                   	push   cs
 240:	68 45 0e 6c 45       	push   0x456c0e45
 245:	0e                   	push   cs
 246:	70 48                	jo     290 <.eh_frame+0x290>
 248:	0e                   	push   cs
 249:	60                   	pusha
 24a:	4b                   	dec    ebx
 24b:	0e                   	push   cs
 24c:	64 42                	fs inc edx
 24e:	0e                   	push   cs
 24f:	68 42 0e 6c 45       	push   0x456c0e42
 254:	0e                   	push   cs
 255:	70 58                	jo     2af <.eh_frame+0x2af>
 257:	0e                   	push   cs
 258:	64 42                	fs inc edx
 25a:	0e                   	push   cs
 25b:	68 45 0e 6c 45       	push   0x456c0e45
 260:	0e                   	push   cs
 261:	70 48                	jo     2ab <.eh_frame+0x2ab>
 263:	0e                   	push   cs
 264:	64 42                	fs inc edx
 266:	0e                   	push   cs
 267:	68 45 0e 6c 45       	push   0x456c0e45
 26c:	0e                   	push   cs
 26d:	70 48                	jo     2b7 <.eh_frame+0x2b7>
 26f:	0e                   	push   cs
 270:	64 42                	fs inc edx
 272:	0e                   	push   cs
 273:	68 41 0e 6c 45       	push   0x456c0e41
 278:	0e                   	push   cs
 279:	70 48                	jo     2c3 <.eh_frame+0x2c3>
 27b:	0e                   	push   cs
 27c:	64 42                	fs inc edx
 27e:	0e                   	push   cs
 27f:	68 41 0e 6c 45       	push   0x456c0e41
 284:	0e                   	push   cs
 285:	70 5d                	jo     2e4 <.eh_frame+0x2e4>
 287:	0e                   	push   cs
 288:	60                   	pusha
 289:	51                   	push   ecx
 28a:	0e                   	push   cs
 28b:	64 42                	fs inc edx
 28d:	0e                   	push   cs
 28e:	68 42 0e 6c 63       	push   0x636c0e42
 293:	0e                   	push   cs
 294:	70 4c                	jo     2e2 <.eh_frame+0x2e2>
 296:	0e                   	push   cs
 297:	64 42                	fs inc edx
 299:	0e                   	push   cs
 29a:	68 41 0e 6c 41       	push   0x416c0e41
 29f:	0e                   	push   cs
 2a0:	70 4c                	jo     2ee <.eh_frame+0x2ee>
 2a2:	0e                   	push   cs
 2a3:	60                   	pusha
 2a4:	55                   	push   ebp
 2a5:	0e                   	push   cs
 2a6:	14 41                	adc    al,0x41
 2a8:	c3                   	ret
 2a9:	0e                   	push   cs
 2aa:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 2ad:	0e                   	push   cs
 2ae:	0c 41                	or     al,0x41
 2b0:	c7                   	(bad)
 2b1:	0e                   	push   cs
 2b2:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 2b5:	0e                   	push   cs
 2b6:	04 00                	add    al,0x0
 2b8:	b0 00                	mov    al,0x0
 2ba:	00 00                	add    BYTE PTR [eax],al
 2bc:	bc 02 00 00 90       	mov    esp,0x90000002
 2c1:	04 00                	add    al,0x0
 2c3:	00 89 01 00 00 00    	add    BYTE PTR [ecx+0x1],cl
 2c9:	41                   	inc    ecx
 2ca:	0e                   	push   cs
 2cb:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 2d1:	86 03                	xchg   BYTE PTR [ebx],al
 2d3:	41                   	inc    ecx
 2d4:	0e                   	push   cs
 2d5:	10 83 04 45 0e 30    	adc    BYTE PTR [ebx+0x300e4504],al
 2db:	60                   	pusha
 2dc:	0e                   	push   cs
 2dd:	34 48                	xor    al,0x48
 2df:	0e                   	push   cs
 2e0:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 2e3:	3c 41                	cmp    al,0x41
 2e5:	0e                   	push   cs
 2e6:	40                   	inc    eax
 2e7:	48                   	dec    eax
 2e8:	0e                   	push   cs
 2e9:	30 47 0e             	xor    BYTE PTR [edi+0xe],al
 2ec:	34 48                	xor    al,0x48
 2ee:	0e                   	push   cs
 2ef:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 2f2:	3c 44                	cmp    al,0x44
 2f4:	0e                   	push   cs
 2f5:	40                   	inc    eax
 2f6:	48                   	dec    eax
 2f7:	0e                   	push   cs
 2f8:	30 48 0a             	xor    BYTE PTR [eax+0xa],cl
 2fb:	0e                   	push   cs
 2fc:	10 41 c3             	adc    BYTE PTR [ecx-0x3d],al
 2ff:	0e                   	push   cs
 300:	0c 41                	or     al,0x41
 302:	c6                   	(bad)
 303:	0e                   	push   cs
 304:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 307:	0e                   	push   cs
 308:	04 47                	add    al,0x47
 30a:	0b 4b 0e             	or     ecx,DWORD PTR [ebx+0xe]
 30d:	34 4a                	xor    al,0x4a
 30f:	0e                   	push   cs
 310:	38 45 0e             	cmp    BYTE PTR [ebp+0xe],al
 313:	3c 45                	cmp    al,0x45
 315:	0e                   	push   cs
 316:	40                   	inc    eax
 317:	4e                   	dec    esi
 318:	0e                   	push   cs
 319:	30 50 0e             	xor    BYTE PTR [eax+0xe],dl
 31c:	34 47                	xor    al,0x47
 31e:	0e                   	push   cs
 31f:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 322:	3c 45                	cmp    al,0x45
 324:	0e                   	push   cs
 325:	40                   	inc    eax
 326:	48                   	dec    eax
 327:	0e                   	push   cs
 328:	34 42                	xor    al,0x42
 32a:	0e                   	push   cs
 32b:	38 42 0e             	cmp    BYTE PTR [edx+0xe],al
 32e:	3c 45                	cmp    al,0x45
 330:	0e                   	push   cs
 331:	40                   	inc    eax
 332:	48                   	dec    eax
 333:	0e                   	push   cs
 334:	34 42                	xor    al,0x42
 336:	0e                   	push   cs
 337:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 33a:	3c 45                	cmp    al,0x45
 33c:	0e                   	push   cs
 33d:	40                   	inc    eax
 33e:	62 0e                	bound  ecx,QWORD PTR [esi]
 340:	30 4e 0e             	xor    BYTE PTR [esi+0xe],cl
 343:	3c 44                	cmp    al,0x44
 345:	0e                   	push   cs
 346:	40                   	inc    eax
 347:	4d                   	dec    ebp
 348:	0e                   	push   cs
 349:	30 74 0e 34          	xor    BYTE PTR [esi+ecx*1+0x34],dh
 34d:	48                   	dec    eax
 34e:	0e                   	push   cs
 34f:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 352:	3c 41                	cmp    al,0x41
 354:	0e                   	push   cs
 355:	40                   	inc    eax
 356:	48                   	dec    eax
 357:	0e                   	push   cs
 358:	30 5b 0a             	xor    BYTE PTR [ebx+0xa],bl
 35b:	0e                   	push   cs
 35c:	10 43 c3             	adc    BYTE PTR [ebx-0x3d],al
 35f:	0e                   	push   cs
 360:	0c 41                	or     al,0x41
 362:	c6                   	(bad)
 363:	0e                   	push   cs
 364:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 367:	0e                   	push   cs
 368:	04 41                	add    al,0x41
 36a:	0b 00                	or     eax,DWORD PTR [eax]
 36c:	bc 00 00 00 70       	mov    esp,0x70000000
 371:	03 00                	add    eax,DWORD PTR [eax]
 373:	00 20                	add    BYTE PTR [eax],ah
 375:	06                   	push   es
 376:	00 00                	add    BYTE PTR [eax],al
 378:	55                   	push   ebp
 379:	01 00                	add    DWORD PTR [eax],eax
 37b:	00 00                	add    BYTE PTR [eax],al
 37d:	41                   	inc    ecx
 37e:	0e                   	push   cs
 37f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 385:	87 03                	xchg   DWORD PTR [ebx],eax
 387:	41                   	inc    ecx
 388:	0e                   	push   cs
 389:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 38f:	83 05 48 0e c0 0c 5f 	add    DWORD PTR ds:0xcc00e48,0x5f
 396:	0a 0e                	or     cl,BYTE PTR [esi]
 398:	14 41                	adc    al,0x41
 39a:	c3                   	ret
 39b:	0e                   	push   cs
 39c:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 39f:	0e                   	push   cs
 3a0:	0c 41                	or     al,0x41
 3a2:	c7                   	(bad)
 3a3:	0e                   	push   cs
 3a4:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 3a7:	0e                   	push   cs
 3a8:	04 41                	add    al,0x41
 3aa:	0b 4d 0e             	or     ecx,DWORD PTR [ebp+0xe]
 3ad:	c4 0c 6d 0e c8 0c 45 	les    ecx,FWORD PTR [ebp*2+0x450cc80e]
 3b4:	0e                   	push   cs
 3b5:	cc                   	int3
 3b6:	0c 45                	or     al,0x45
 3b8:	0e                   	push   cs
 3b9:	d0 0c 48             	ror    BYTE PTR [eax+ecx*2],1
 3bc:	0e                   	push   cs
 3bd:	c4 0c 42             	les    ecx,FWORD PTR [edx+eax*2]
 3c0:	0e                   	push   cs
 3c1:	c8 0c 41 0e          	enter  0x410c,0xe
 3c5:	cc                   	int3
 3c6:	0c 45                	or     al,0x45
 3c8:	0e                   	push   cs
 3c9:	d0 0c 48             	ror    BYTE PTR [eax+ecx*2],1
 3cc:	0e                   	push   cs
 3cd:	c0 0c 02 46          	ror    BYTE PTR [edx+eax*1],0x46
 3d1:	0e                   	push   cs
 3d2:	c4 0c 4a             	les    ecx,FWORD PTR [edx+ecx*2]
 3d5:	0e                   	push   cs
 3d6:	c8 0c 44 0e          	enter  0x440c,0xe
 3da:	cc                   	int3
 3db:	0c 41                	or     al,0x41
 3dd:	0e                   	push   cs
 3de:	d0 0c 48             	ror    BYTE PTR [eax+ecx*2],1
 3e1:	0e                   	push   cs
 3e2:	c0 0c 4e 0e          	ror    BYTE PTR [esi+ecx*2],0xe
 3e6:	c8 0c 45 0e          	enter  0x450c,0xe
 3ea:	cc                   	int3
 3eb:	0c 41                	or     al,0x41
 3ed:	0e                   	push   cs
 3ee:	d0 0c 48             	ror    BYTE PTR [eax+ecx*2],1
 3f1:	0e                   	push   cs
 3f2:	c0 0c 4b 0e          	ror    BYTE PTR [ebx+ecx*2],0xe
 3f6:	cc                   	int3
 3f7:	0c 48                	or     al,0x48
 3f9:	0e                   	push   cs
 3fa:	d0 0c 4c             	ror    BYTE PTR [esp+ecx*2],1
 3fd:	0e                   	push   cs
 3fe:	c0 0c 46 0a          	ror    BYTE PTR [esi+eax*2],0xa
 402:	0e                   	push   cs
 403:	14 41                	adc    al,0x41
 405:	c3                   	ret
 406:	0e                   	push   cs
 407:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 40a:	0e                   	push   cs
 40b:	0c 41                	or     al,0x41
 40d:	c7                   	(bad)
 40e:	0e                   	push   cs
 40f:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 412:	0e                   	push   cs
 413:	04 42                	add    al,0x42
 415:	0b 4f 0e             	or     ecx,DWORD PTR [edi+0xe]
 418:	c4 0c 42             	les    ecx,FWORD PTR [edx+eax*2]
 41b:	0e                   	push   cs
 41c:	c8 0c 45 0e          	enter  0x450c,0xe
 420:	cc                   	int3
 421:	0c 45                	or     al,0x45
 423:	0e                   	push   cs
 424:	d0 0c 48             	ror    BYTE PTR [eax+ecx*2],1
 427:	0e                   	push   cs
 428:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
 42c:	74 00                	je     42e <.eh_frame+0x42e>
 42e:	00 00                	add    BYTE PTR [eax],al
 430:	30 04 00             	xor    BYTE PTR [eax+eax*1],al
 433:	00 80 07 00 00 8a    	add    BYTE PTR [eax-0x75fffff9],al
 439:	01 00                	add    DWORD PTR [eax],eax
 43b:	00 00                	add    BYTE PTR [eax],al
 43d:	41                   	inc    ecx
 43e:	0e                   	push   cs
 43f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 445:	87 03                	xchg   DWORD PTR [ebx],eax
 447:	43                   	inc    ebx
 448:	0e                   	push   cs
 449:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 44f:	83 05 46 0e b0 02 02 	add    DWORD PTR ds:0x2b00e46,0x2
 456:	43                   	inc    ebx
 457:	0a 0e                	or     cl,BYTE PTR [esi]
 459:	14 41                	adc    al,0x41
 45b:	c3                   	ret
 45c:	0e                   	push   cs
 45d:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 460:	0e                   	push   cs
 461:	0c 41                	or     al,0x41
 463:	c7                   	(bad)
 464:	0e                   	push   cs
 465:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 468:	0e                   	push   cs
 469:	04 45                	add    al,0x45
 46b:	0b 69 0e             	or     ebp,DWORD PTR [ecx+0xe]
 46e:	b4 02                	mov    ah,0x2
 470:	51                   	push   ecx
 471:	0e                   	push   cs
 472:	b8 02 41 0e bc       	mov    eax,0xbc0e4102
 477:	02 45 0e             	add    al,BYTE PTR [ebp+0xe]
 47a:	c0 02 48             	rol    BYTE PTR [edx],0x48
 47d:	0e                   	push   cs
 47e:	b0 02                	mov    al,0x2
 480:	02 8c 0e bc 02 51 0e 	add    cl,BYTE PTR [esi+ecx*1+0xe5102bc]
 487:	c0 02 4c             	rol    BYTE PTR [edx],0x4c
 48a:	0e                   	push   cs
 48b:	b0 02                	mov    al,0x2
 48d:	46                   	inc    esi
 48e:	0a 0e                	or     cl,BYTE PTR [esi]
 490:	14 41                	adc    al,0x41
 492:	c3                   	ret
 493:	0e                   	push   cs
 494:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 497:	0e                   	push   cs
 498:	0c 41                	or     al,0x41
 49a:	c7                   	(bad)
 49b:	0e                   	push   cs
 49c:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 49f:	0e                   	push   cs
 4a0:	04 41                	add    al,0x41
 4a2:	0b 00                	or     eax,DWORD PTR [eax]
 4a4:	6c                   	ins    BYTE PTR es:[edi],dx
 4a5:	00 00                	add    BYTE PTR [eax],al
 4a7:	00 a8 04 00 00 10    	add    BYTE PTR [eax+0x10000004],ch
 4ad:	09 00                	or     DWORD PTR [eax],eax
 4af:	00 22                	add    BYTE PTR [edx],ah
 4b1:	01 00                	add    DWORD PTR [eax],eax
 4b3:	00 00                	add    BYTE PTR [eax],al
 4b5:	41                   	inc    ecx
 4b6:	0e                   	push   cs
 4b7:	08 87 02 43 0e 0c    	or     BYTE PTR [edi+0xc0e4302],al
 4bd:	86 03                	xchg   BYTE PTR [ebx],al
 4bf:	41                   	inc    ecx
 4c0:	0e                   	push   cs
 4c1:	10 83 04 48 0e a4    	adc    BYTE PTR [ebx-0x5bf1b7fc],al
 4c7:	0e                   	push   cs
 4c8:	45                   	inc    ebp
 4c9:	0e                   	push   cs
 4ca:	a8 0e                	test   al,0xe
 4cc:	42                   	inc    edx
 4cd:	0e                   	push   cs
 4ce:	ac                   	lods   al,BYTE PTR ds:[esi]
 4cf:	0e                   	push   cs
 4d0:	45                   	inc    ebp
 4d1:	0e                   	push   cs
 4d2:	b0 0e                	mov    al,0xe
 4d4:	57                   	push   edi
 4d5:	0e                   	push   cs
 4d6:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 4d7:	0e                   	push   cs
 4d8:	42                   	inc    edx
 4d9:	0e                   	push   cs
 4da:	a8 0e                	test   al,0xe
 4dc:	45                   	inc    ebp
 4dd:	0e                   	push   cs
 4de:	ac                   	lods   al,BYTE PTR ds:[esi]
 4df:	0e                   	push   cs
 4e0:	45                   	inc    ebp
 4e1:	0e                   	push   cs
 4e2:	b0 0e                	mov    al,0xe
 4e4:	4a                   	dec    edx
 4e5:	0e                   	push   cs
 4e6:	a0 0e 02 44 0e       	mov    al,ds:0xe44020e
 4eb:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
 4ec:	0e                   	push   cs
 4ed:	79 0e                	jns    4fd <.eh_frame+0x4fd>
 4ef:	a8 0e                	test   al,0xe
 4f1:	44                   	inc    esp
 4f2:	0e                   	push   cs
 4f3:	ac                   	lods   al,BYTE PTR ds:[esi]
 4f4:	0e                   	push   cs
 4f5:	48                   	dec    eax
 4f6:	0e                   	push   cs
 4f7:	b0 0e                	mov    al,0xe
 4f9:	63 0e                	arpl   WORD PTR [esi],ecx
 4fb:	10 41 c3             	adc    BYTE PTR [ecx-0x3d],al
 4fe:	0e                   	push   cs
 4ff:	0c 41                	or     al,0x41
 501:	c6                   	(bad)
 502:	0e                   	push   cs
 503:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 506:	0e                   	push   cs
 507:	04 4b                	add    al,0x4b
 509:	0e                   	push   cs
 50a:	a0 0e 83 04 86       	mov    al,ds:0x8604830e
 50f:	03 87 02 00 00 74    	add    eax,DWORD PTR [edi+0x74000002]
 515:	00 00                	add    BYTE PTR [eax],al
 517:	00 18                	add    BYTE PTR [eax],bl
 519:	05 00 00 40 0a       	add    eax,0xa400000
 51e:	00 00                	add    BYTE PTR [eax],al
 520:	17                   	pop    ss
 521:	01 00                	add    DWORD PTR [eax],eax
 523:	00 00                	add    BYTE PTR [eax],al
 525:	41                   	inc    ecx
 526:	0e                   	push   cs
 527:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 52d:	87 03                	xchg   DWORD PTR [ebx],eax
 52f:	41                   	inc    ecx
 530:	0e                   	push   cs
 531:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 537:	83 05 43 0e 30 02 7f 	add    DWORD PTR ds:0x2300e43,0x7f
 53e:	0e                   	push   cs
 53f:	34 45                	xor    al,0x45
 541:	0e                   	push   cs
 542:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 545:	3c 45                	cmp    al,0x45
 547:	0e                   	push   cs
 548:	40                   	inc    eax
 549:	69 0e 14 46 c3 0e    	imul   ecx,DWORD PTR [esi],0xec34614
 54f:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 552:	0e                   	push   cs
 553:	0c 41                	or     al,0x41
 555:	c7                   	(bad)
 556:	0e                   	push   cs
 557:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 55a:	0e                   	push   cs
 55b:	04 4d                	add    al,0x4d
 55d:	0e                   	push   cs
 55e:	30 83 05 85 02 86    	xor    BYTE PTR [ebx-0x79fd7afb],al
 564:	04 87                	add    al,0x87
 566:	03 47 0e             	add    eax,DWORD PTR [edi+0xe]
 569:	34 45                	xor    al,0x45
 56b:	0e                   	push   cs
 56c:	38 41 0e             	cmp    BYTE PTR [ecx+0xe],al
 56f:	3c 45                	cmp    al,0x45
 571:	0e                   	push   cs
 572:	40                   	inc    eax
 573:	59                   	pop    ecx
 574:	0e                   	push   cs
 575:	30 57 0e             	xor    BYTE PTR [edi+0xe],dl
 578:	14 41                	adc    al,0x41
 57a:	c3                   	ret
 57b:	0e                   	push   cs
 57c:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 57f:	0e                   	push   cs
 580:	0c 41                	or     al,0x41
 582:	c7                   	(bad)
 583:	0e                   	push   cs
 584:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 587:	0e                   	push   cs
 588:	04 00                	add    al,0x0
 58a:	00 00                	add    BYTE PTR [eax],al
 58c:	58                   	pop    eax
 58d:	00 00                	add    BYTE PTR [eax],al
 58f:	00 90 05 00 00 60    	add    BYTE PTR [eax+0x60000005],dl
 595:	0b 00                	or     eax,DWORD PTR [eax]
 597:	00 56 01             	add    BYTE PTR [esi+0x1],dl
 59a:	00 00                	add    BYTE PTR [eax],al
 59c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 59f:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 5a5:	87 03                	xchg   DWORD PTR [ebx],eax
 5a7:	41                   	inc    ecx
 5a8:	0e                   	push   cs
 5a9:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 5af:	83 05 43 0e 40 02 63 	add    DWORD PTR ds:0x2400e43,0x63
 5b6:	0e                   	push   cs
 5b7:	44                   	inc    esp
 5b8:	42                   	inc    edx
 5b9:	0e                   	push   cs
 5ba:	48                   	dec    eax
 5bb:	41                   	inc    ecx
 5bc:	0e                   	push   cs
 5bd:	4c                   	dec    esp
 5be:	45                   	inc    ebp
 5bf:	0e                   	push   cs
 5c0:	50                   	push   eax
 5c1:	48                   	dec    eax
 5c2:	0e                   	push   cs
 5c3:	40                   	inc    eax
 5c4:	02 aa 0e 44 41 0e    	add    ch,BYTE PTR [edx+0xe41440e]
 5ca:	48                   	dec    eax
 5cb:	44                   	inc    esp
 5cc:	0e                   	push   cs
 5cd:	4c                   	dec    esp
 5ce:	41                   	inc    ecx
 5cf:	0e                   	push   cs
 5d0:	50                   	push   eax
 5d1:	45                   	inc    ebp
 5d2:	0e                   	push   cs
 5d3:	40                   	inc    eax
 5d4:	62 0e                	bound  ecx,QWORD PTR [esi]
 5d6:	14 41                	adc    al,0x41
 5d8:	c3                   	ret
 5d9:	0e                   	push   cs
 5da:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 5dd:	0e                   	push   cs
 5de:	0c 41                	or     al,0x41
 5e0:	c7                   	(bad)
 5e1:	0e                   	push   cs
 5e2:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 5e5:	0e                   	push   cs
 5e6:	04 00                	add    al,0x0
 5e8:	10 00                	adc    BYTE PTR [eax],al
 5ea:	00 00                	add    BYTE PTR [eax],al
 5ec:	ec                   	in     al,dx
 5ed:	05 00 00 c0 0c       	add    eax,0xcc00000
 5f2:	00 00                	add    BYTE PTR [eax],al
 5f4:	56                   	push   esi
 5f5:	00 00                	add    BYTE PTR [eax],al
 5f7:	00 00                	add    BYTE PTR [eax],al
 5f9:	00 00                	add    BYTE PTR [eax],al
 5fb:	00 10                	add    BYTE PTR [eax],dl
 5fd:	00 00                	add    BYTE PTR [eax],al
 5ff:	00 00                	add    BYTE PTR [eax],al
 601:	06                   	push   es
 602:	00 00                	add    BYTE PTR [eax],al
 604:	20 0d 00 00 21 00    	and    BYTE PTR ds:0x210000,cl
 60a:	00 00                	add    BYTE PTR [eax],al
 60c:	00 00                	add    BYTE PTR [eax],al
 60e:	00 00                	add    BYTE PTR [eax],al
 610:	24 00                	and    al,0x0
 612:	00 00                	add    BYTE PTR [eax],al
 614:	14 06                	adc    al,0x6
 616:	00 00                	add    BYTE PTR [eax],al
 618:	50                   	push   eax
 619:	0d 00 00 bc 00       	or     eax,0xbc0000
 61e:	00 00                	add    BYTE PTR [eax],al
 620:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 623:	08 83 02 45 0e 20    	or     BYTE PTR [ebx+0x200e4502],al
 629:	02 8e 0e 2c 51 0e    	add    cl,BYTE PTR [esi+0xe512c0e]
 62f:	30 55 0e             	xor    BYTE PTR [ebp+0xe],dl
 632:	08 41 c3             	or     BYTE PTR [ecx-0x3d],al
 635:	0e                   	push   cs
 636:	04 00                	add    al,0x0
 638:	10 00                	adc    BYTE PTR [eax],al
 63a:	00 00                	add    BYTE PTR [eax],al
 63c:	3c 06                	cmp    al,0x6
 63e:	00 00                	add    BYTE PTR [eax],al
 640:	10 0e                	adc    BYTE PTR [esi],cl
 642:	00 00                	add    BYTE PTR [eax],al
 644:	22 00                	and    al,BYTE PTR [eax]
 646:	00 00                	add    BYTE PTR [eax],al
 648:	00 00                	add    BYTE PTR [eax],al
 64a:	00 00                	add    BYTE PTR [eax],al
 64c:	44                   	inc    esp
 64d:	00 00                	add    BYTE PTR [eax],al
 64f:	00 50 06             	add    BYTE PTR [eax+0x6],dl
 652:	00 00                	add    BYTE PTR [eax],al
 654:	40                   	inc    eax
 655:	0e                   	push   cs
 656:	00 00                	add    BYTE PTR [eax],al
 658:	97                   	xchg   edi,eax
 659:	00 00                	add    BYTE PTR [eax],al
 65b:	00 00                	add    BYTE PTR [eax],al
 65d:	41                   	inc    ecx
 65e:	0e                   	push   cs
 65f:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
 665:	86 03                	xchg   BYTE PTR [ebx],al
 667:	41                   	inc    ecx
 668:	0e                   	push   cs
 669:	10 83 04 46 0e 80    	adc    BYTE PTR [ebx-0x7ff1b9fc],al
 66f:	0c 63                	or     al,0x63
 671:	0e                   	push   cs
 672:	84 0c 6d 0e 88 0c 47 	test   BYTE PTR [ebp*2+0x470c880e],cl
 679:	0e                   	push   cs
 67a:	8c 0c 45 0e 90 0c 68 	mov    WORD PTR [eax*2+0x680c900e],cs
 681:	0e                   	push   cs
 682:	80 0c 46 0e          	or     BYTE PTR [esi+eax*2],0xe
 686:	10 41 c3             	adc    BYTE PTR [ecx-0x3d],al
 689:	0e                   	push   cs
 68a:	0c 41                	or     al,0x41
 68c:	c6                   	(bad)
 68d:	0e                   	push   cs
 68e:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
 691:	0e                   	push   cs
 692:	04 00                	add    al,0x0
 694:	4c                   	dec    esp
 695:	00 00                	add    BYTE PTR [eax],al
 697:	00 98 06 00 00 e0    	add    BYTE PTR [eax-0x1ffffffa],bl
 69d:	0e                   	push   cs
 69e:	00 00                	add    BYTE PTR [eax],al
 6a0:	9c                   	pushf
 6a1:	00 00                	add    BYTE PTR [eax],al
 6a3:	00 00                	add    BYTE PTR [eax],al
 6a5:	41                   	inc    ecx
 6a6:	0e                   	push   cs
 6a7:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 6ad:	87 03                	xchg   DWORD PTR [ebx],eax
 6af:	41                   	inc    ecx
 6b0:	0e                   	push   cs
 6b1:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 6b7:	83 05 43 0e 30 02 66 	add    DWORD PTR ds:0x2300e43,0x66
 6be:	0a 0e                	or     cl,BYTE PTR [esi]
 6c0:	14 41                	adc    al,0x41
 6c2:	c3                   	ret
 6c3:	0e                   	push   cs
 6c4:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 6c7:	0e                   	push   cs
 6c8:	0c 41                	or     al,0x41
 6ca:	c7                   	(bad)
 6cb:	0e                   	push   cs
 6cc:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 6cf:	0e                   	push   cs
 6d0:	04 47                	add    al,0x47
 6d2:	0b 50 0e             	or     edx,DWORD PTR [eax+0xe]
 6d5:	34 44                	xor    al,0x44
 6d7:	0e                   	push   cs
 6d8:	38 44 0e 3c          	cmp    BYTE PTR [esi+ecx*1+0x3c],al
 6dc:	41                   	inc    ecx
 6dd:	0e                   	push   cs
 6de:	40                   	inc    eax
 6df:	49                   	dec    ecx
 6e0:	0e                   	push   cs
 6e1:	30 00                	xor    BYTE PTR [eax],al
 6e3:	00 10                	add    BYTE PTR [eax],dl
 6e5:	00 00                	add    BYTE PTR [eax],al
 6e7:	00 e8                	add    al,ch
 6e9:	06                   	push   es
 6ea:	00 00                	add    BYTE PTR [eax],al
 6ec:	80 0f 00             	or     BYTE PTR [edi],0x0
 6ef:	00 36                	add    BYTE PTR [esi],dh
 6f1:	00 00                	add    BYTE PTR [eax],al
 6f3:	00 00                	add    BYTE PTR [eax],al
 6f5:	00 00                	add    BYTE PTR [eax],al
 6f7:	00 10                	add    BYTE PTR [eax],dl
 6f9:	00 00                	add    BYTE PTR [eax],al
 6fb:	00 fc                	add    ah,bh
 6fd:	06                   	push   es
 6fe:	00 00                	add    BYTE PTR [eax],al
 700:	c0 0f 00             	ror    BYTE PTR [edi],0x0
 703:	00 30                	add    BYTE PTR [eax],dh
 705:	00 00                	add    BYTE PTR [eax],al
 707:	00 00                	add    BYTE PTR [eax],al
 709:	00 00                	add    BYTE PTR [eax],al
 70b:	00 10                	add    BYTE PTR [eax],dl
 70d:	00 00                	add    BYTE PTR [eax],al
 70f:	00 10                	add    BYTE PTR [eax],dl
 711:	07                   	pop    es
 712:	00 00                	add    BYTE PTR [eax],al
 714:	f0 0f 00 00          	lock sldt WORD PTR [eax]
 718:	30 00                	xor    BYTE PTR [eax],al
 71a:	00 00                	add    BYTE PTR [eax],al
 71c:	00 00                	add    BYTE PTR [eax],al
 71e:	00 00                	add    BYTE PTR [eax],al
 720:	10 00                	adc    BYTE PTR [eax],al
 722:	00 00                	add    BYTE PTR [eax],al
 724:	24 07                	and    al,0x7
 726:	00 00                	add    BYTE PTR [eax],al
 728:	20 10                	and    BYTE PTR [eax],dl
 72a:	00 00                	add    BYTE PTR [eax],al
 72c:	06                   	push   es
 72d:	00 00                	add    BYTE PTR [eax],al
 72f:	00 00                	add    BYTE PTR [eax],al
 731:	00 00                	add    BYTE PTR [eax],al
 733:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
 736:	00 00                	add    BYTE PTR [eax],al
 738:	38 07                	cmp    BYTE PTR [edi],al
 73a:	00 00                	add    BYTE PTR [eax],al
 73c:	30 10                	xor    BYTE PTR [eax],dl
 73e:	00 00                	add    BYTE PTR [eax],al
 740:	a8 00                	test   al,0x0
 742:	00 00                	add    BYTE PTR [eax],al
 744:	00 43 0e             	add    BYTE PTR [ebx+0xe],al
 747:	14 42                	adc    al,0x42
 749:	0e                   	push   cs
 74a:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 74d:	1c 45                	sbb    al,0x45
 74f:	0e                   	push   cs
 750:	20 48 0e             	and    BYTE PTR [eax+0xe],cl
 753:	14 45                	adc    al,0x45
 755:	0e                   	push   cs
 756:	18 42 0e             	sbb    BYTE PTR [edx+0xe],al
 759:	1c 45                	sbb    al,0x45
 75b:	0e                   	push   cs
 75c:	20 75 0e             	and    BYTE PTR [ebp+0xe],dh
 75f:	10 47 0a             	adc    BYTE PTR [edi+0xa],al
 762:	0e                   	push   cs
 763:	04 44                	add    al,0x44
 765:	0b 43 0e             	or     eax,DWORD PTR [ebx+0xe]
 768:	1c 45                	sbb    al,0x45
 76a:	0e                   	push   cs
 76b:	20 4d 0e             	and    BYTE PTR [ebp+0xe],cl
 76e:	10 72 0e             	adc    BYTE PTR [edx+0xe],dh
 771:	04 00                	add    al,0x0
 773:	00 10                	add    BYTE PTR [eax],dl
 775:	00 00                	add    BYTE PTR [eax],al
 777:	00 78 07             	add    BYTE PTR [eax+0x7],bh
 77a:	00 00                	add    BYTE PTR [eax],al
 77c:	e0 10                	loopne 78e <.eh_frame+0x78e>
 77e:	00 00                	add    BYTE PTR [eax],al
 780:	15 00 00 00 00       	adc    eax,0x0
 785:	00 00                	add    BYTE PTR [eax],al
 787:	00 10                	add    BYTE PTR [eax],dl
 789:	00 00                	add    BYTE PTR [eax],al
 78b:	00 8c 07 00 00 00 11 	add    BYTE PTR [edi+eax*1+0x11000000],cl
 792:	00 00                	add    BYTE PTR [eax],al
 794:	06                   	push   es
 795:	00 00                	add    BYTE PTR [eax],al
 797:	00 00                	add    BYTE PTR [eax],al
 799:	00 00                	add    BYTE PTR [eax],al
	...
