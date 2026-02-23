
string.o:     file format elf32-i386


Disassembly of section .text:

00000000 <memset>:
   0:	56                   	push   esi
   1:	53                   	push   ebx
   2:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
   6:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
   a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
   e:	8d 0c 33             	lea    ecx,[ebx+esi*1]
  11:	85 f6                	test   esi,esi
  13:	74 27                	je     3c <memset+0x3c>
  15:	89 ce                	mov    esi,ecx
  17:	89 d8                	mov    eax,ebx
  19:	29 de                	sub    esi,ebx
  1b:	83 e6 01             	and    esi,0x1
  1e:	74 10                	je     30 <memset+0x30>
  20:	8d 43 01             	lea    eax,[ebx+0x1]
  23:	88 50 ff             	mov    BYTE PTR [eax-0x1],dl
  26:	39 c1                	cmp    ecx,eax
  28:	74 12                	je     3c <memset+0x3c>
  2a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  30:	88 10                	mov    BYTE PTR [eax],dl
  32:	83 c0 02             	add    eax,0x2
  35:	88 50 ff             	mov    BYTE PTR [eax-0x1],dl
  38:	39 c1                	cmp    ecx,eax
  3a:	75 f4                	jne    30 <memset+0x30>
  3c:	89 d8                	mov    eax,ebx
  3e:	5b                   	pop    ebx
  3f:	5e                   	pop    esi
  40:	c3                   	ret
  41:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  48:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  4f:	00 

00000050 <memcpy>:
  50:	57                   	push   edi
  51:	56                   	push   esi
  52:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  56:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  5a:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  5e:	85 c0                	test   eax,eax
  60:	74 13                	je     75 <memcpy+0x25>
  62:	01 d0                	add    eax,edx
  64:	89 d7                	mov    edi,edx
  66:	66 90                	xchg   ax,ax
  68:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  6f:	00 
  70:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  71:	39 f8                	cmp    eax,edi
  73:	75 fb                	jne    70 <memcpy+0x20>
  75:	89 d0                	mov    eax,edx
  77:	5e                   	pop    esi
  78:	5f                   	pop    edi
  79:	c3                   	ret
  7a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

00000080 <memmove>:
  80:	57                   	push   edi
  81:	56                   	push   esi
  82:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  86:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  8a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  8e:	39 f2                	cmp    edx,esi
  90:	73 1e                	jae    b0 <memmove+0x30>
  92:	8d 0c 02             	lea    ecx,[edx+eax*1]
  95:	89 d7                	mov    edi,edx
  97:	85 c0                	test   eax,eax
  99:	74 0a                	je     a5 <memmove+0x25>
  9b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  a0:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
  a1:	39 cf                	cmp    edi,ecx
  a3:	75 fb                	jne    a0 <memmove+0x20>
  a5:	89 d0                	mov    eax,edx
  a7:	5e                   	pop    esi
  a8:	5f                   	pop    edi
  a9:	c3                   	ret
  aa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  b0:	85 c0                	test   eax,eax
  b2:	74 f1                	je     a5 <memmove+0x25>
  b4:	83 e8 01             	sub    eax,0x1
  b7:	90                   	nop
  b8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  bf:	00 
  c0:	0f b6 0c 06          	movzx  ecx,BYTE PTR [esi+eax*1]
  c4:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
  c7:	83 e8 01             	sub    eax,0x1
  ca:	73 f4                	jae    c0 <memmove+0x40>
  cc:	89 d0                	mov    eax,edx
  ce:	5e                   	pop    esi
  cf:	5f                   	pop    edi
  d0:	c3                   	ret
  d1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  df:	00 

000000e0 <strlen>:
  e0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  e4:	31 c0                	xor    eax,eax
  e6:	80 3a 00             	cmp    BYTE PTR [edx],0x0
  e9:	74 15                	je     100 <strlen+0x20>
  eb:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  f0:	83 c0 01             	add    eax,0x1
  f3:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
  f7:	75 f7                	jne    f0 <strlen+0x10>
  f9:	c3                   	ret
  fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 100:	c3                   	ret
 101:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 108:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 10f:	00 

00000110 <strcpy>:
 110:	53                   	push   ebx
 111:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
 115:	31 c0                	xor    eax,eax
 117:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
 11b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 120:	0f b6 14 03          	movzx  edx,BYTE PTR [ebx+eax*1]
 124:	88 14 01             	mov    BYTE PTR [ecx+eax*1],dl
 127:	83 c0 01             	add    eax,0x1
 12a:	84 d2                	test   dl,dl
 12c:	75 f2                	jne    120 <strcpy+0x10>
 12e:	89 c8                	mov    eax,ecx
 130:	5b                   	pop    ebx
 131:	c3                   	ret
 132:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 138:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 13f:	00 

00000140 <strncpy>:
 140:	56                   	push   esi
 141:	31 c0                	xor    eax,eax
 143:	53                   	push   ebx
 144:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
 148:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
 14c:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
 150:	85 c9                	test   ecx,ecx
 152:	75 16                	jne    16a <strncpy+0x2a>
 154:	eb 48                	jmp    19e <strncpy+0x5e>
 156:	66 90                	xchg   ax,ax
 158:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 15f:	00 
 160:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
 163:	83 c0 01             	add    eax,0x1
 166:	39 c1                	cmp    ecx,eax
 168:	74 34                	je     19e <strncpy+0x5e>
 16a:	0f b6 14 06          	movzx  edx,BYTE PTR [esi+eax*1]
 16e:	84 d2                	test   dl,dl
 170:	75 ee                	jne    160 <strncpy+0x20>
 172:	39 c8                	cmp    eax,ecx
 174:	73 28                	jae    19e <strncpy+0x5e>
 176:	01 d9                	add    ecx,ebx
 178:	01 d8                	add    eax,ebx
 17a:	89 ca                	mov    edx,ecx
 17c:	29 c2                	sub    edx,eax
 17e:	83 e2 01             	and    edx,0x1
 181:	74 0d                	je     190 <strncpy+0x50>
 183:	c6 00 00             	mov    BYTE PTR [eax],0x0
 186:	83 c0 01             	add    eax,0x1
 189:	39 c1                	cmp    ecx,eax
 18b:	74 11                	je     19e <strncpy+0x5e>
 18d:	8d 76 00             	lea    esi,[esi+0x0]
 190:	c6 00 00             	mov    BYTE PTR [eax],0x0
 193:	83 c0 02             	add    eax,0x2
 196:	c6 40 ff 00          	mov    BYTE PTR [eax-0x1],0x0
 19a:	39 c1                	cmp    ecx,eax
 19c:	75 f2                	jne    190 <strncpy+0x50>
 19e:	89 d8                	mov    eax,ebx
 1a0:	5b                   	pop    ebx
 1a1:	5e                   	pop    esi
 1a2:	c3                   	ret
 1a3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 1a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1af:	00 

000001b0 <strcmp>:
 1b0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
 1b4:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
 1b8:	0f b6 01             	movzx  eax,BYTE PTR [ecx]
 1bb:	84 c0                	test   al,al
 1bd:	75 2f                	jne    1ee <strcmp+0x3e>
 1bf:	eb 3f                	jmp    200 <strcmp+0x50>
 1c1:	eb 1d                	jmp    1e0 <strcmp+0x30>
 1c3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 1c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1cf:	00 
 1d0:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1d7:	00 
 1d8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1df:	00 
 1e0:	0f b6 41 01          	movzx  eax,BYTE PTR [ecx+0x1]
 1e4:	83 c1 01             	add    ecx,0x1
 1e7:	83 c2 01             	add    edx,0x1
 1ea:	84 c0                	test   al,al
 1ec:	74 12                	je     200 <strcmp+0x50>
 1ee:	38 02                	cmp    BYTE PTR [edx],al
 1f0:	74 ee                	je     1e0 <strcmp+0x30>
 1f2:	0f b6 12             	movzx  edx,BYTE PTR [edx]
 1f5:	29 d0                	sub    eax,edx
 1f7:	c3                   	ret
 1f8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 1ff:	00 
 200:	0f b6 12             	movzx  edx,BYTE PTR [edx]
 203:	31 c0                	xor    eax,eax
 205:	29 d0                	sub    eax,edx
 207:	c3                   	ret
 208:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 20f:	00 

00000210 <strncmp>:
 210:	53                   	push   ebx
 211:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 215:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
 219:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
 21d:	85 d2                	test   edx,edx
 21f:	75 16                	jne    237 <strncmp+0x27>
 221:	eb 2d                	jmp    250 <strncmp+0x40>
 223:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 228:	3a 19                	cmp    bl,BYTE PTR [ecx]
 22a:	75 12                	jne    23e <strncmp+0x2e>
 22c:	83 c0 01             	add    eax,0x1
 22f:	83 c1 01             	add    ecx,0x1
 232:	83 ea 01             	sub    edx,0x1
 235:	74 19                	je     250 <strncmp+0x40>
 237:	0f b6 18             	movzx  ebx,BYTE PTR [eax]
 23a:	84 db                	test   bl,bl
 23c:	75 ea                	jne    228 <strncmp+0x18>
 23e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 241:	0f b6 11             	movzx  edx,BYTE PTR [ecx]
 244:	5b                   	pop    ebx
 245:	29 d0                	sub    eax,edx
 247:	c3                   	ret
 248:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 24f:	00 
 250:	31 c0                	xor    eax,eax
 252:	5b                   	pop    ebx
 253:	c3                   	ret
 254:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 258:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 25f:	00 

00000260 <memcmp>:
 260:	56                   	push   esi
 261:	53                   	push   ebx
 262:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
 266:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
 26a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
 26e:	85 f6                	test   esi,esi
 270:	74 2e                	je     2a0 <memcmp+0x40>
 272:	01 c6                	add    esi,eax
 274:	eb 14                	jmp    28a <memcmp+0x2a>
 276:	66 90                	xchg   ax,ax
 278:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 27f:	00 
 280:	83 c0 01             	add    eax,0x1
 283:	83 c2 01             	add    edx,0x1
 286:	39 f0                	cmp    eax,esi
 288:	74 16                	je     2a0 <memcmp+0x40>
 28a:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
 28d:	0f b6 1a             	movzx  ebx,BYTE PTR [edx]
 290:	38 d9                	cmp    cl,bl
 292:	74 ec                	je     280 <memcmp+0x20>
 294:	0f b6 c1             	movzx  eax,cl
 297:	29 d8                	sub    eax,ebx
 299:	5b                   	pop    ebx
 29a:	5e                   	pop    esi
 29b:	c3                   	ret
 29c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 2a0:	31 c0                	xor    eax,eax
 2a2:	5b                   	pop    ebx
 2a3:	5e                   	pop    esi
 2a4:	c3                   	ret
 2a5:	8d 76 00             	lea    esi,[esi+0x0]
 2a8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2af:	00 

000002b0 <strcat>:
 2b0:	56                   	push   esi
 2b1:	53                   	push   ebx
 2b2:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
 2b6:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
 2ba:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
 2bd:	74 39                	je     2f8 <strcat+0x48>
 2bf:	31 c0                	xor    eax,eax
 2c1:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 2c8:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 2cf:	00 
 2d0:	83 c0 01             	add    eax,0x1
 2d3:	80 3c 03 00          	cmp    BYTE PTR [ebx+eax*1],0x0
 2d7:	75 f7                	jne    2d0 <strcat+0x20>
 2d9:	8d 14 03             	lea    edx,[ebx+eax*1]
 2dc:	31 c0                	xor    eax,eax
 2de:	66 90                	xchg   ax,ax
 2e0:	0f b6 0c 06          	movzx  ecx,BYTE PTR [esi+eax*1]
 2e4:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
 2e7:	83 c0 01             	add    eax,0x1
 2ea:	84 c9                	test   cl,cl
 2ec:	75 f2                	jne    2e0 <strcat+0x30>
 2ee:	89 d8                	mov    eax,ebx
 2f0:	5b                   	pop    ebx
 2f1:	5e                   	pop    esi
 2f2:	c3                   	ret
 2f3:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 2f8:	89 da                	mov    edx,ebx
 2fa:	eb e0                	jmp    2dc <strcat+0x2c>
 2fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000300 <itoa>:
 300:	55                   	push   ebp
 301:	57                   	push   edi
 302:	56                   	push   esi
 303:	53                   	push   ebx
 304:	83 ec 04             	sub    esp,0x4
 307:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 30b:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
 30f:	8d 45 fe             	lea    eax,[ebp-0x2]
 312:	83 f8 0e             	cmp    eax,0xe
 315:	0f 87 8d 00 00 00    	ja     3a8 <itoa+0xa8>
 31b:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
 31f:	85 f6                	test   esi,esi
 321:	79 7d                	jns    3a0 <itoa+0xa0>
 323:	83 fd 0a             	cmp    ebp,0xa
 326:	75 78                	jne    3a0 <itoa+0xa0>
 328:	c6 07 2d             	mov    BYTE PTR [edi],0x2d
 32b:	8d 5f 01             	lea    ebx,[edi+0x1]
 32e:	f7 de                	neg    esi
 330:	89 1c 24             	mov    DWORD PTR [esp],ebx
 333:	89 d9                	mov    ecx,ebx
 335:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
 339:	eb 0a                	jmp    345 <itoa+0x45>
 33b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 340:	89 c6                	mov    esi,eax
 342:	83 c1 01             	add    ecx,0x1
 345:	31 d2                	xor    edx,edx
 347:	89 f0                	mov    eax,esi
 349:	f7 f5                	div    ebp
 34b:	8d 7a 30             	lea    edi,[edx+0x30]
 34e:	8d 5a 57             	lea    ebx,[edx+0x57]
 351:	83 fa 09             	cmp    edx,0x9
 354:	0f 46 df             	cmovbe ebx,edi
 357:	88 19                	mov    BYTE PTR [ecx],bl
 359:	39 ee                	cmp    esi,ebp
 35b:	73 e3                	jae    340 <itoa+0x40>
 35d:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 360:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
 364:	c6 41 01 00          	mov    BYTE PTR [ecx+0x1],0x0
 368:	39 cb                	cmp    ebx,ecx
 36a:	73 2a                	jae    396 <itoa+0x96>
 36c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 370:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 377:	00 
 378:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
 37f:	00 
 380:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
 383:	0f b6 11             	movzx  edx,BYTE PTR [ecx]
 386:	83 c3 01             	add    ebx,0x1
 389:	83 e9 01             	sub    ecx,0x1
 38c:	88 53 ff             	mov    BYTE PTR [ebx-0x1],dl
 38f:	88 41 01             	mov    BYTE PTR [ecx+0x1],al
 392:	39 cb                	cmp    ebx,ecx
 394:	72 ea                	jb     380 <itoa+0x80>
 396:	83 c4 04             	add    esp,0x4
 399:	89 f8                	mov    eax,edi
 39b:	5b                   	pop    ebx
 39c:	5e                   	pop    esi
 39d:	5f                   	pop    edi
 39e:	5d                   	pop    ebp
 39f:	c3                   	ret
 3a0:	89 fb                	mov    ebx,edi
 3a2:	eb 8c                	jmp    330 <itoa+0x30>
 3a4:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 3a8:	c6 07 00             	mov    BYTE PTR [edi],0x0
 3ab:	83 c4 04             	add    esp,0x4
 3ae:	89 f8                	mov    eax,edi
 3b0:	5b                   	pop    ebx
 3b1:	5e                   	pop    esi
 3b2:	5f                   	pop    edi
 3b3:	5d                   	pop    ebp
 3b4:	c3                   	ret

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
  17:	00 20                	add    BYTE PTR [eax],ah
  19:	00 00                	add    BYTE PTR [eax],al
  1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	00 00                	add    BYTE PTR [eax],al
  22:	00 00                	add    BYTE PTR [eax],al
  24:	41                   	inc    ecx
  25:	00 00                	add    BYTE PTR [eax],al
  27:	00 00                	add    BYTE PTR [eax],al
  29:	41                   	inc    ecx
  2a:	0e                   	push   cs
  2b:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
  31:	83 03 7d             	add    DWORD PTR [ebx],0x7d
  34:	c3                   	ret
  35:	0e                   	push   cs
  36:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  39:	0e                   	push   cs
  3a:	04 00                	add    al,0x0
  3c:	20 00                	and    BYTE PTR [eax],al
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	40                   	inc    eax
  41:	00 00                	add    BYTE PTR [eax],al
  43:	00 50 00             	add    BYTE PTR [eax+0x0],dl
  46:	00 00                	add    BYTE PTR [eax],al
  48:	2a 00                	sub    al,BYTE PTR [eax]
  4a:	00 00                	add    BYTE PTR [eax],al
  4c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  4f:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  55:	86 03                	xchg   BYTE PTR [ebx],al
  57:	66 c6                	data16 (bad)
  59:	0e                   	push   cs
  5a:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  5d:	0e                   	push   cs
  5e:	04 00                	add    al,0x0
  60:	2c 00                	sub    al,0x0
  62:	00 00                	add    BYTE PTR [eax],al
  64:	64 00 00             	add    BYTE PTR fs:[eax],al
  67:	00 80 00 00 00 51    	add    BYTE PTR [eax+0x51000000],al
  6d:	00 00                	add    BYTE PTR [eax],al
  6f:	00 00                	add    BYTE PTR [eax],al
  71:	41                   	inc    ecx
  72:	0e                   	push   cs
  73:	08 87 02 41 0e 0c    	or     BYTE PTR [edi+0xc0e4102],al
  79:	86 03                	xchg   BYTE PTR [ebx],al
  7b:	66 0a c6             	data16 or al,dh
  7e:	0e                   	push   cs
  7f:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  82:	0e                   	push   cs
  83:	04 47                	add    al,0x47
  85:	0b 5f c6             	or     ebx,DWORD PTR [edi-0x3a]
  88:	0e                   	push   cs
  89:	08 41 c7             	or     BYTE PTR [ecx-0x39],al
  8c:	0e                   	push   cs
  8d:	04 00                	add    al,0x0
  8f:	00 10                	add    BYTE PTR [eax],dl
  91:	00 00                	add    BYTE PTR [eax],al
  93:	00 94 00 00 00 e0 00 	add    BYTE PTR [eax+eax*1+0xe00000],dl
  9a:	00 00                	add    BYTE PTR [eax],al
  9c:	21 00                	and    DWORD PTR [eax],eax
  9e:	00 00                	add    BYTE PTR [eax],al
  a0:	00 00                	add    BYTE PTR [eax],al
  a2:	00 00                	add    BYTE PTR [eax],al
  a4:	18 00                	sbb    BYTE PTR [eax],al
  a6:	00 00                	add    BYTE PTR [eax],al
  a8:	a8 00                	test   al,0x0
  aa:	00 00                	add    BYTE PTR [eax],al
  ac:	10 01                	adc    BYTE PTR [ecx],al
  ae:	00 00                	add    BYTE PTR [eax],al
  b0:	22 00                	and    al,BYTE PTR [eax]
  b2:	00 00                	add    BYTE PTR [eax],al
  b4:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  b7:	08 83 02 60 c3 0e    	or     BYTE PTR [ebx+0xec36002],al
  bd:	04 00                	add    al,0x0
  bf:	00 20                	add    BYTE PTR [eax],ah
  c1:	00 00                	add    BYTE PTR [eax],al
  c3:	00 c4                	add    ah,al
  c5:	00 00                	add    BYTE PTR [eax],al
  c7:	00 40 01             	add    BYTE PTR [eax+0x1],al
  ca:	00 00                	add    BYTE PTR [eax],al
  cc:	63 00                	arpl   WORD PTR [eax],eax
  ce:	00 00                	add    BYTE PTR [eax],al
  d0:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
  d3:	08 86 02 43 0e 0c    	or     BYTE PTR [esi+0xc0e4302],al
  d9:	83 03 02             	add    DWORD PTR [ebx],0x2
  dc:	5d                   	pop    ebp
  dd:	c3                   	ret
  de:	0e                   	push   cs
  df:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
  e2:	0e                   	push   cs
  e3:	04 10                	add    al,0x10
  e5:	00 00                	add    BYTE PTR [eax],al
  e7:	00 e8                	add    al,ch
  e9:	00 00                	add    BYTE PTR [eax],al
  eb:	00 b0 01 00 00 58    	add    BYTE PTR [eax+0x58000001],dh
  f1:	00 00                	add    BYTE PTR [eax],al
  f3:	00 00                	add    BYTE PTR [eax],al
  f5:	00 00                	add    BYTE PTR [eax],al
  f7:	00 20                	add    BYTE PTR [eax],ah
  f9:	00 00                	add    BYTE PTR [eax],al
  fb:	00 fc                	add    ah,bh
  fd:	00 00                	add    BYTE PTR [eax],al
  ff:	00 10                	add    BYTE PTR [eax],dl
 101:	02 00                	add    al,BYTE PTR [eax]
 103:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
 107:	00 00                	add    BYTE PTR [eax],al
 109:	41                   	inc    ecx
 10a:	0e                   	push   cs
 10b:	08 83 02 74 0a c3    	or     BYTE PTR [ebx-0x3cf58bfe],al
 111:	0e                   	push   cs
 112:	04 4b                	add    al,0x4b
 114:	0b 43 c3             	or     eax,DWORD PTR [ebx-0x3d]
 117:	0e                   	push   cs
 118:	04 00                	add    al,0x0
 11a:	00 00                	add    BYTE PTR [eax],al
 11c:	2c 00                	sub    al,0x0
 11e:	00 00                	add    BYTE PTR [eax],al
 120:	20 01                	and    BYTE PTR [ecx],al
 122:	00 00                	add    BYTE PTR [eax],al
 124:	60                   	pusha
 125:	02 00                	add    al,BYTE PTR [eax]
 127:	00 45 00             	add    BYTE PTR [ebp+0x0],al
 12a:	00 00                	add    BYTE PTR [eax],al
 12c:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 12f:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
 135:	83 03 78             	add    DWORD PTR [ebx],0x78
 138:	0a c3                	or     al,bl
 13a:	0e                   	push   cs
 13b:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 13e:	0e                   	push   cs
 13f:	04 45                	add    al,0x45
 141:	0b 43 c3             	or     eax,DWORD PTR [ebx-0x3d]
 144:	0e                   	push   cs
 145:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 148:	0e                   	push   cs
 149:	04 00                	add    al,0x0
 14b:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
 14e:	00 00                	add    BYTE PTR [eax],al
 150:	50                   	push   eax
 151:	01 00                	add    DWORD PTR [eax],eax
 153:	00 b0 02 00 00 4c    	add    BYTE PTR [eax+0x4c000002],dh
 159:	00 00                	add    BYTE PTR [eax],al
 15b:	00 00                	add    BYTE PTR [eax],al
 15d:	41                   	inc    ecx
 15e:	0e                   	push   cs
 15f:	08 86 02 41 0e 0c    	or     BYTE PTR [esi+0xc0e4102],al
 165:	83 03 7f             	add    DWORD PTR [ebx],0x7f
 168:	0a c3                	or     al,bl
 16a:	0e                   	push   cs
 16b:	08 41 c6             	or     BYTE PTR [ecx-0x3a],al
 16e:	0e                   	push   cs
 16f:	04 46                	add    al,0x46
 171:	0b 00                	or     eax,DWORD PTR [eax]
 173:	00 50 00             	add    BYTE PTR [eax+0x0],dl
 176:	00 00                	add    BYTE PTR [eax],al
 178:	78 01                	js     17b <.eh_frame+0x17b>
 17a:	00 00                	add    BYTE PTR [eax],al
 17c:	00 03                	add    BYTE PTR [ebx],al
 17e:	00 00                	add    BYTE PTR [eax],al
 180:	b5 00                	mov    ch,0x0
 182:	00 00                	add    BYTE PTR [eax],al
 184:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
 187:	08 85 02 41 0e 0c    	or     BYTE PTR [ebp+0xc0e4102],al
 18d:	87 03                	xchg   DWORD PTR [ebx],eax
 18f:	41                   	inc    ecx
 190:	0e                   	push   cs
 191:	10 86 04 41 0e 14    	adc    BYTE PTR [esi+0x140e4104],al
 197:	83 05 43 0e 18 02 92 	add    DWORD PTR ds:0x2180e43,0xffffff92
 19e:	0a 0e                	or     cl,BYTE PTR [esi]
 1a0:	14 43                	adc    al,0x43
 1a2:	c3                   	ret
 1a3:	0e                   	push   cs
 1a4:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1a7:	0e                   	push   cs
 1a8:	0c 41                	or     al,0x41
 1aa:	c7                   	(bad)
 1ab:	0e                   	push   cs
 1ac:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1af:	0e                   	push   cs
 1b0:	04 41                	add    al,0x41
 1b2:	0b 4e 0e             	or     ecx,DWORD PTR [esi+0xe]
 1b5:	14 43                	adc    al,0x43
 1b7:	c3                   	ret
 1b8:	0e                   	push   cs
 1b9:	10 41 c6             	adc    BYTE PTR [ecx-0x3a],al
 1bc:	0e                   	push   cs
 1bd:	0c 41                	or     al,0x41
 1bf:	c7                   	(bad)
 1c0:	0e                   	push   cs
 1c1:	08 41 c5             	or     BYTE PTR [ecx-0x3b],al
 1c4:	0e                   	push   cs
 1c5:	04 00                	add    al,0x0
	...
