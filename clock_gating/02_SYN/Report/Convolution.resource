 
****************************************
Report : resources
Design : Convolution
Version: T-2022.03
Date   : Tue Dec 19 15:04:51 2023
****************************************

Resource Sharing Report for design Convolution in file
        ./../01_RTL/Convolution.v

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r443     | DW01_inc     | width=5    |               | add_187              |
| r1280    | DW_mult_uns  | a_width=8  |               | mult_204             |
|          |              | b_width=8  |               |                      |
| r1282    | DW_mult_uns  | a_width=8  |               | mult_204_2           |
|          |              | b_width=8  |               |                      |
| r1284    | DW_mult_uns  | a_width=8  |               | mult_204_3           |
|          |              | b_width=8  |               |                      |
| r1286    | DW_mult_uns  | a_width=8  |               | mult_204_4           |
|          |              | b_width=8  |               |                      |
| r1288    | DW_mult_uns  | a_width=8  |               | mult_204_5           |
|          |              | b_width=8  |               |                      |
| r1290    | DW_mult_uns  | a_width=8  |               | mult_204_6           |
|          |              | b_width=8  |               |                      |
| r1292    | DW_mult_uns  | a_width=8  |               | mult_204_7           |
|          |              | b_width=8  |               |                      |
| r1294    | DW_mult_uns  | a_width=8  |               | mult_204_8           |
|          |              | b_width=8  |               |                      |
| r1296    | DW_mult_uns  | a_width=8  |               | mult_204_9           |
|          |              | b_width=8  |               |                      |
| r1298    | DW01_add     | width=18   |               | add_7_root_add_0_root_add_204_8 |
| r1300    | DW01_add     | width=21   |               | add_2_root_add_0_root_add_204_8 |
| r1302    | DW01_add     | width=19   |               | add_3_root_add_0_root_add_204_8 |
| r1304    | DW01_add     | width=20   |               | add_5_root_add_0_root_add_204_8 |
| r1306    | DW01_add     | width=21   |               | add_6_root_add_0_root_add_204_8 |
| r1308    | DW01_add     | width=21   |               | add_1_root_add_0_root_add_204_8 |
| r1310    | DW01_add     | width=21   |               | add_4_root_add_0_root_add_204_8 |
| r1312    | DW01_add     | width=21   |               | add_0_root_add_0_root_add_204_8 |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_0_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_1_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_2_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_3_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_5_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| add_7_root_add_0_root_add_204_8       |                    |                |
|                    | DW01_add         | rpl                |                |
| mult_204_9         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_8         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_7         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_6         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_5         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_4         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_3         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204_2         | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
| mult_204           | DW_mult_uns      | apparch (area)     |                |
|                    |                  | mult_arch: and     |                |
===============================================================================

1
