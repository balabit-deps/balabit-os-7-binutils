#name: C6X unknown attribute merging 5
#as: -mlittle-endian
#ld: -r -melf32_tic6x_le
#source: attr-unknown-1000-1.s
#source: attr-unknown-1000-1.s
#warning: .*warning: unknown EABI object attribute 1000
#readelf: -A

Attribute Section: c6xabi
File Attributes
  Tag_ISA: C674x
  Tag_unknown_1000: 1 \(0x1\)
