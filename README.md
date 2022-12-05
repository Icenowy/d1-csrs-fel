# d1-csrs-fel
Acquire D1 CSRs via FEL.

## Results

```
CSRs:
mapbaddr:       0x000000010000000
mcpuid:         0x00000000910090D
mcpuid:         0x000000011002000
mcpuid:         0x0000000260C0001
mcpuid:         0x000000030030066
mcpuid:         0x000000042180000
mcpuid:         0x000000050000000
mcpuid:         0x000000060000853
```

### MCPUID decoded

#### Index 0

arch: `2'b10`
family: `2'b0100`
class: `2'b0100`
model: `10'b0000001001`
isa revision: `5'b1`
version: `3'b101`

#### Index 1

revision: `4'b0001`
sub revision: `6'b000000`
patch: `6'b000010`
product id: `12'b000000000000`

#### Index 2

bus0: `4'b0110`
bus1: `4'b0000`
intc: `1'b1`
*unused*: `1'b1`
ctim: `2'b0`
coprocessor: `16'b0000000000000001`

#### Index 3

*unused*: `3'b000`
ibp: `3'b000`
btb: `3'b000`
bht: `3'b011`
dspm: `4'b0000`  
ispm: `4'b0000`
dcache: `4'b0110`
icache: `4'b0110`

#### Index 4

I$ way info: `2'b00`
I$ line size: `2'b10`
I# ECC: `2'b00`
D$ way info: `2'b01`
D$ line size: `2'b10`
D$ ECC: `2'b00`
*unused*: `4'b0000`
L2$ way info: `4'b0000`
L2$ line size: `2'b00`
L2$ ECC: `2'b00`
L2$ size : `4'b0000`

#### Index 5

*unused*: `24'b000000000000000000000000`
slaveIF: `1'b0`
corenum: `3'b000`

#### Index 6

*unused*: `16'b0000000000000000`
MMU TLB: `4'b1000`
Mgu zone size: `4'b0101`
Mgu zone num: `4'b0011`
