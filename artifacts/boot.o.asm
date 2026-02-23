
boot.o:     file format elf32-i386


Disassembly of section .multiboot:

00000000 <.multiboot>:
   0:	02 b0 ad 1b 07 00    	add    dh,BYTE PTR [eax+0x71bad]
   6:	00 00                	add    BYTE PTR [eax],al
   8:	f7 4f 52 e4 00 00 00 	test   DWORD PTR [edi+0x52],0xe4
	...
  23:	00 00                	add    BYTE PTR [eax],al
  25:	04 00                	add    al,0x0
  27:	00 00                	add    BYTE PTR [eax],al
  29:	03 00                	add    eax,DWORD PTR [eax]
  2b:	00 20                	add    BYTE PTR [eax],ah
  2d:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .text:

00000000 <_start>:
   0:	bc 00 00 01 00       	mov    esp,0x10000
   5:	53                   	push   ebx
   6:	50                   	push   eax
   7:	e8 fc ff ff ff       	call   8 <_start+0x8>
   c:	fa                   	cli

0000000d <_start.hang>:
   d:	f4                   	hlt
   e:	eb fd                	jmp    d <_start.hang>

00000010 <gdt_flush>:
  10:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  14:	0f 01 10             	lgdtd  [eax]
  17:	66 b8 10 00          	mov    ax,0x10
  1b:	8e d8                	mov    ds,eax
  1d:	8e c0                	mov    es,eax
  1f:	8e e0                	mov    fs,eax
  21:	8e e8                	mov    gs,eax
  23:	8e d0                	mov    ss,eax
  25:	ea 2c 00 00 00 08 00 	jmp    0x8:0x2c

0000002c <gdt_flush.done>:
  2c:	c3                   	ret

0000002d <idt_flush>:
  2d:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  31:	0f 01 18             	lidtd  [eax]
  34:	c3                   	ret

00000035 <isr0>:
  35:	6a 00                	push   0x0
  37:	6a 00                	push   0x0
  39:	e9 54 01 00 00       	jmp    192 <isr_common_stub>

0000003e <isr1>:
  3e:	6a 00                	push   0x0
  40:	6a 01                	push   0x1
  42:	e9 4b 01 00 00       	jmp    192 <isr_common_stub>

00000047 <isr2>:
  47:	6a 00                	push   0x0
  49:	6a 02                	push   0x2
  4b:	e9 42 01 00 00       	jmp    192 <isr_common_stub>

00000050 <isr3>:
  50:	6a 00                	push   0x0
  52:	6a 03                	push   0x3
  54:	e9 39 01 00 00       	jmp    192 <isr_common_stub>

00000059 <isr4>:
  59:	6a 00                	push   0x0
  5b:	6a 04                	push   0x4
  5d:	e9 30 01 00 00       	jmp    192 <isr_common_stub>

00000062 <isr5>:
  62:	6a 00                	push   0x0
  64:	6a 05                	push   0x5
  66:	e9 27 01 00 00       	jmp    192 <isr_common_stub>

0000006b <isr6>:
  6b:	6a 00                	push   0x0
  6d:	6a 06                	push   0x6
  6f:	e9 1e 01 00 00       	jmp    192 <isr_common_stub>

00000074 <isr7>:
  74:	6a 00                	push   0x0
  76:	6a 07                	push   0x7
  78:	e9 15 01 00 00       	jmp    192 <isr_common_stub>

0000007d <isr8>:
  7d:	6a 08                	push   0x8
  7f:	e9 0e 01 00 00       	jmp    192 <isr_common_stub>

00000084 <isr9>:
  84:	6a 00                	push   0x0
  86:	6a 09                	push   0x9
  88:	e9 05 01 00 00       	jmp    192 <isr_common_stub>

0000008d <isr10>:
  8d:	6a 0a                	push   0xa
  8f:	e9 fe 00 00 00       	jmp    192 <isr_common_stub>

00000094 <isr11>:
  94:	6a 0b                	push   0xb
  96:	e9 f7 00 00 00       	jmp    192 <isr_common_stub>

0000009b <isr12>:
  9b:	6a 0c                	push   0xc
  9d:	e9 f0 00 00 00       	jmp    192 <isr_common_stub>

000000a2 <isr13>:
  a2:	6a 0d                	push   0xd
  a4:	e9 e9 00 00 00       	jmp    192 <isr_common_stub>

000000a9 <isr14>:
  a9:	6a 0e                	push   0xe
  ab:	e9 e2 00 00 00       	jmp    192 <isr_common_stub>

000000b0 <isr15>:
  b0:	6a 00                	push   0x0
  b2:	6a 0f                	push   0xf
  b4:	e9 d9 00 00 00       	jmp    192 <isr_common_stub>

000000b9 <isr16>:
  b9:	6a 00                	push   0x0
  bb:	6a 10                	push   0x10
  bd:	e9 d0 00 00 00       	jmp    192 <isr_common_stub>

000000c2 <isr17>:
  c2:	6a 11                	push   0x11
  c4:	e9 c9 00 00 00       	jmp    192 <isr_common_stub>

000000c9 <isr18>:
  c9:	6a 00                	push   0x0
  cb:	6a 12                	push   0x12
  cd:	e9 c0 00 00 00       	jmp    192 <isr_common_stub>

000000d2 <isr19>:
  d2:	6a 00                	push   0x0
  d4:	6a 13                	push   0x13
  d6:	e9 b7 00 00 00       	jmp    192 <isr_common_stub>

000000db <isr20>:
  db:	6a 00                	push   0x0
  dd:	6a 14                	push   0x14
  df:	e9 ae 00 00 00       	jmp    192 <isr_common_stub>

000000e4 <isr21>:
  e4:	6a 15                	push   0x15
  e6:	e9 a7 00 00 00       	jmp    192 <isr_common_stub>

000000eb <isr22>:
  eb:	6a 00                	push   0x0
  ed:	6a 16                	push   0x16
  ef:	e9 9e 00 00 00       	jmp    192 <isr_common_stub>

000000f4 <isr23>:
  f4:	6a 00                	push   0x0
  f6:	6a 17                	push   0x17
  f8:	e9 95 00 00 00       	jmp    192 <isr_common_stub>

000000fd <isr24>:
  fd:	6a 00                	push   0x0
  ff:	6a 18                	push   0x18
 101:	e9 8c 00 00 00       	jmp    192 <isr_common_stub>

00000106 <isr25>:
 106:	6a 00                	push   0x0
 108:	6a 19                	push   0x19
 10a:	e9 83 00 00 00       	jmp    192 <isr_common_stub>

0000010f <isr26>:
 10f:	6a 00                	push   0x0
 111:	6a 1a                	push   0x1a
 113:	eb 7d                	jmp    192 <isr_common_stub>

00000115 <isr27>:
 115:	6a 00                	push   0x0
 117:	6a 1b                	push   0x1b
 119:	eb 77                	jmp    192 <isr_common_stub>

0000011b <isr28>:
 11b:	6a 00                	push   0x0
 11d:	6a 1c                	push   0x1c
 11f:	eb 71                	jmp    192 <isr_common_stub>

00000121 <isr29>:
 121:	6a 1d                	push   0x1d
 123:	eb 6d                	jmp    192 <isr_common_stub>

00000125 <isr30>:
 125:	6a 1e                	push   0x1e
 127:	eb 69                	jmp    192 <isr_common_stub>

00000129 <isr31>:
 129:	6a 00                	push   0x0
 12b:	6a 1f                	push   0x1f
 12d:	eb 63                	jmp    192 <isr_common_stub>

0000012f <irq0>:
 12f:	6a 00                	push   0x0
 131:	6a 20                	push   0x20
 133:	e9 82 00 00 00       	jmp    1ba <irq_common_stub>

00000138 <irq1>:
 138:	6a 00                	push   0x0
 13a:	6a 21                	push   0x21
 13c:	eb 7c                	jmp    1ba <irq_common_stub>

0000013e <irq2>:
 13e:	6a 00                	push   0x0
 140:	6a 22                	push   0x22
 142:	eb 76                	jmp    1ba <irq_common_stub>

00000144 <irq3>:
 144:	6a 00                	push   0x0
 146:	6a 23                	push   0x23
 148:	eb 70                	jmp    1ba <irq_common_stub>

0000014a <irq4>:
 14a:	6a 00                	push   0x0
 14c:	6a 24                	push   0x24
 14e:	eb 6a                	jmp    1ba <irq_common_stub>

00000150 <irq5>:
 150:	6a 00                	push   0x0
 152:	6a 25                	push   0x25
 154:	eb 64                	jmp    1ba <irq_common_stub>

00000156 <irq6>:
 156:	6a 00                	push   0x0
 158:	6a 26                	push   0x26
 15a:	eb 5e                	jmp    1ba <irq_common_stub>

0000015c <irq7>:
 15c:	6a 00                	push   0x0
 15e:	6a 27                	push   0x27
 160:	eb 58                	jmp    1ba <irq_common_stub>

00000162 <irq8>:
 162:	6a 00                	push   0x0
 164:	6a 28                	push   0x28
 166:	eb 52                	jmp    1ba <irq_common_stub>

00000168 <irq9>:
 168:	6a 00                	push   0x0
 16a:	6a 29                	push   0x29
 16c:	eb 4c                	jmp    1ba <irq_common_stub>

0000016e <irq10>:
 16e:	6a 00                	push   0x0
 170:	6a 2a                	push   0x2a
 172:	eb 46                	jmp    1ba <irq_common_stub>

00000174 <irq11>:
 174:	6a 00                	push   0x0
 176:	6a 2b                	push   0x2b
 178:	eb 40                	jmp    1ba <irq_common_stub>

0000017a <irq12>:
 17a:	6a 00                	push   0x0
 17c:	6a 2c                	push   0x2c
 17e:	eb 3a                	jmp    1ba <irq_common_stub>

00000180 <irq13>:
 180:	6a 00                	push   0x0
 182:	6a 2d                	push   0x2d
 184:	eb 34                	jmp    1ba <irq_common_stub>

00000186 <irq14>:
 186:	6a 00                	push   0x0
 188:	6a 2e                	push   0x2e
 18a:	eb 2e                	jmp    1ba <irq_common_stub>

0000018c <irq15>:
 18c:	6a 00                	push   0x0
 18e:	6a 2f                	push   0x2f
 190:	eb 28                	jmp    1ba <irq_common_stub>

00000192 <isr_common_stub>:
 192:	60                   	pusha
 193:	66 8c d8             	mov    ax,ds
 196:	50                   	push   eax
 197:	66 b8 10 00          	mov    ax,0x10
 19b:	8e d8                	mov    ds,eax
 19d:	8e c0                	mov    es,eax
 19f:	8e e0                	mov    fs,eax
 1a1:	8e e8                	mov    gs,eax
 1a3:	54                   	push   esp
 1a4:	e8 fc ff ff ff       	call   1a5 <isr_common_stub+0x13>
 1a9:	83 c4 04             	add    esp,0x4
 1ac:	58                   	pop    eax
 1ad:	8e d8                	mov    ds,eax
 1af:	8e c0                	mov    es,eax
 1b1:	8e e0                	mov    fs,eax
 1b3:	8e e8                	mov    gs,eax
 1b5:	61                   	popa
 1b6:	83 c4 08             	add    esp,0x8
 1b9:	cf                   	iret

000001ba <irq_common_stub>:
 1ba:	60                   	pusha
 1bb:	66 8c d8             	mov    ax,ds
 1be:	50                   	push   eax
 1bf:	66 b8 10 00          	mov    ax,0x10
 1c3:	8e d8                	mov    ds,eax
 1c5:	8e c0                	mov    es,eax
 1c7:	8e e0                	mov    fs,eax
 1c9:	8e e8                	mov    gs,eax
 1cb:	54                   	push   esp
 1cc:	e8 fc ff ff ff       	call   1cd <irq_common_stub+0x13>
 1d1:	83 c4 04             	add    esp,0x4
 1d4:	58                   	pop    eax
 1d5:	8e d8                	mov    ds,eax
 1d7:	8e c0                	mov    es,eax
 1d9:	8e e0                	mov    fs,eax
 1db:	8e e8                	mov    gs,eax
 1dd:	61                   	popa
 1de:	83 c4 08             	add    esp,0x8
 1e1:	cf                   	iret
