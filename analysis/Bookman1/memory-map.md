# Bookman1 Memory Map

```

    $8000 = ROM start
    ????  = ROM end

```

Bootstrapped loading
- http://forum.6502.org/viewtopic.php?f=4&t=5411


### Notes from conversations

- HuC6280 / Turbografx

```
The HuC6280 has a 64 KB logical address space, but a 2 MB physical address space. The HuC6280 uses a Memory Management Unit that splits the memory space into segments of 8 KB. Each logical 8 KB segment is associated with one of 256 physical 8 KB sized segments. This can be set up with an 8-bit register (MPR0-7) that contains the most significant eight bits of the address of the 8 KB segment in physical memory. Thus the logical 64 KB address space can be overlapping, continuous or scattered in physical address space, depending on the eight MPR registers.

Two special instructions are used to access these registers:

TAMi - transfer the content of the accumulator (A) into an MPR register (0-7).

TMAi - transfer an MPR register into the accumulator.
```



```
I really think you should consider 65816. WDC still makes and sells them. You can write entirely 6502 code on them and just switch over to 65816 to copy new data down into RAM. Or whatever you want. If I were you I’d specifically search for any non-standard 6502 instructions, and see which related processors use these

The 65816 also has variable instruction and operand size which makes disassembling difficult at times

```
