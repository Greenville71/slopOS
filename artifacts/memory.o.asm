
memory.o:     file format elf32-i386


Disassembly of section .text:

00000000 <heap_init>:
   0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
   4:	a3 00 00 00 00       	mov    ds:0x0,eax
   9:	03 44 24 08          	add    eax,DWORD PTR [esp+0x8]
   d:	a3 04 00 00 00       	mov    ds:0x4,eax
  12:	c3                   	ret
  13:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
  18:	2e 8d b4 26 00 00 00 	lea    esi,cs:[esi+eiz*1+0x0]
  1f:	00 

00000020 <kmalloc>:
  20:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  24:	8d 50 0f             	lea    edx,[eax+0xf]
  27:	a1 00 00 00 00       	mov    eax,ds:0x0
  2c:	83 e2 f0             	and    edx,0xfffffff0
  2f:	01 c2                	add    edx,eax
  31:	39 15 04 00 00 00    	cmp    DWORD PTR ds:0x4,edx
  37:	72 07                	jb     40 <kmalloc+0x20>
  39:	89 15 00 00 00 00    	mov    DWORD PTR ds:0x0,edx
  3f:	c3                   	ret
  40:	31 c0                	xor    eax,eax
  42:	c3                   	ret

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
  24:	13 00                	adc    eax,DWORD PTR [eax]
  26:	00 00                	add    BYTE PTR [eax],al
  28:	00 00                	add    BYTE PTR [eax],al
  2a:	00 00                	add    BYTE PTR [eax],al
  2c:	10 00                	adc    BYTE PTR [eax],al
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	30 00                	xor    BYTE PTR [eax],al
  32:	00 00                	add    BYTE PTR [eax],al
  34:	20 00                	and    BYTE PTR [eax],al
  36:	00 00                	add    BYTE PTR [eax],al
  38:	23 00                	and    eax,DWORD PTR [eax]
  3a:	00 00                	add    BYTE PTR [eax],al
  3c:	00 00                	add    BYTE PTR [eax],al
	...
