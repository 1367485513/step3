#objdump: -dr
#as: -mfix-24k -32
#name: 24K: Triple Store (Range Check >= 32)
#source: 24k-triple-stores-4.s

.*: +file format .*mips.*

Disassembly of section \.text:

[0-9a-f]+ <.*>:
 *[0-9a-f]+:	1a68 000a 	sb	s3,10\(t0\)
 *[0-9a-f]+:	3a68 0001 	sh	s3,1\(t0\)
 *[0-9a-f]+:	1a68 0020 	sb	s3,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 000a 	sb	s3,10\(t0\)
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	3a68 0020 	sh	s3,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0021 	sb	s3,33\(t0\)
 *[0-9a-f]+:	3a68 0037 	sh	s3,55\(t0\)
 *[0-9a-f]+:	1a68 0040 	sb	s3,64\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0021 	sb	s3,33\(t0\)
 *[0-9a-f]+:	1a68 0037 	sb	s3,55\(t0\)
 *[0-9a-f]+:	3a68 0040 	sh	s3,64\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 000c 	sb	s3,12\(t0\)
 *[0-9a-f]+:	fa68 0001 	sw	s3,1\(t0\)
 *[0-9a-f]+:	1a68 0020 	sb	s3,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 000c 	sb	s3,12\(t0\)
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	fa68 0020 	sw	s3,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0023 	sb	s3,35\(t0\)
 *[0-9a-f]+:	fa68 0037 	sw	s3,55\(t0\)
 *[0-9a-f]+:	1a68 0040 	sb	s3,64\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0023 	sb	s3,35\(t0\)
 *[0-9a-f]+:	1a68 0037 	sb	s3,55\(t0\)
 *[0-9a-f]+:	fa68 0040 	sw	s3,64\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	b808 0001 	sdc1	\$f0,1\(t0\)
 *[0-9a-f]+:	1a68 0020 	sb	s3,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	b808 0020 	sdc1	\$f0,32\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0027 	sb	s3,39\(t0\)
 *[0-9a-f]+:	b808 0037 	sdc1	\$f0,55\(t0\)
 *[0-9a-f]+:	1a68 0040 	sb	s3,64\(t0\)
 *[0-9a-f]+:	4680      	break
 *[0-9a-f]+:	1a68 0027 	sb	s3,39\(t0\)
 *[0-9a-f]+:	1a68 0037 	sb	s3,55\(t0\)
 *[0-9a-f]+:	b808 0040 	sdc1	\$f0,64\(t0\)
 *[0-9a-f]+:	4680      	break
	\.\.\.
