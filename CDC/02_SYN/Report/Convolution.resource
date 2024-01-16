 
****************************************
Report : resources
Design : Convolution
Version: T-2022.03
Date   : Sun Jan  7 18:31:42 2024
****************************************

Resource Sharing Report for design Convolution in file
        ./../01_RTL/Convolution.v

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r1270    | DW_mult_uns  | a_width=8  |               | mult_142_G9          |
|          |              | b_width=8  |               |                      |
| r1272    | DW_mult_uns  | a_width=8  |               | mult_142_G8          |
|          |              | b_width=8  |               |                      |
| r1274    | DW_mult_uns  | a_width=8  |               | mult_142_G7          |
|          |              | b_width=8  |               |                      |
| r1276    | DW_mult_uns  | a_width=8  |               | mult_142_G6          |
|          |              | b_width=8  |               |                      |
| r1278    | DW_mult_uns  | a_width=8  |               | mult_142_G5          |
|          |              | b_width=8  |               |                      |
| r1280    | DW_mult_uns  | a_width=8  |               | mult_142_G4          |
|          |              | b_width=8  |               |                      |
| r1282    | DW_mult_uns  | a_width=8  |               | mult_142_G3          |
|          |              | b_width=8  |               |                      |
| r1284    | DW_mult_uns  | a_width=8  |               | mult_142_G2          |
|          |              | b_width=8  |               |                      |
| r1286    | DW_mult_uns  | a_width=8  |               | mult_142             |
|          |              | b_width=8  |               |                      |
| r1288    | DW01_add     | width=20   |               | add_5_root_add_0_root_add_146_8 |
| r1290    | DW01_add     | width=19   |               | add_3_root_add_0_root_add_146_8 |
| r1292    | DW01_add     | width=21   |               | add_2_root_add_0_root_add_146_8 |
| r1294    | DW01_add     | width=18   |               | add_7_root_add_0_root_add_146_8 |
| r1296    | DW01_add     | width=21   |               | add_1_root_add_0_root_add_146_8 |
| r1298    | DW01_add     | width=21   |               | add_6_root_add_0_root_add_146_8 |
| r1300    | DW01_add     | width=21   |               | add_4_root_add_0_root_add_146_8 |
| r1302    | DW01_add     | width=21   |               | add_0_root_add_0_root_add_146_8 |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_0_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_1_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_2_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_3_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_7_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_5_root_add_0_root_add_146_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| mult_142           | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G2        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G3        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G4        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G5        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G6        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G7        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G8        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_142_G9        | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
===============================================================================

1
