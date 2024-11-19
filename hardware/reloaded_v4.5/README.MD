# The Wozblaster Reloaded v4.5

- Interactive bill of materials: [BOM](https://htmlpreview.github.io/?https://github.com/cristianoag/wozblaster/blob/main/hardware/reloaded_v4.5/MSX%20OPL4%20Wozblaster/bom/ibom.html)
- Adafruit UDA1334 module - https://github.com/adafruit/Adafruit-UDA1334A-I2S-Stereo-DAC-PCB
- Gerber Files [MSX_OPL4_Wozblaster_Reloaded_4.5.zip](/MSX%20OPL4%20Wozblaster/production/MSX_OPL4_Wozblaster_Reloaded_5.0.zip)

## Bill of Materials - Purchase List

|References|Value|Footprint|Quantity|Link|
|----------|-----|---------|--------|----|
|C2, C3, C4, C5, C8, C9, C11, C12|0.1uF|C_0603_1608Metric|	8|[Ali Express](https://s.click.aliexpress.com/e/_DmZ8Brh)|
|C6, C7|12pF	|C_0603_1608Metric	|2|[Ali Express](https://s.click.aliexpress.com/e/_DmZ8Brh)|
|C1|	10uF/10v	|CP_EIA-3216-18_Kemet-A|	1|[Ali Express](https://s.click.aliexpress.com/e/_DDWaCDp)|
|R2, R3	|330R|R_0603_1608Metric	|2|[Ali Express](https://s.click.aliexpress.com/e/_DDKvQnz)|
|R4, R5	|1K	|R_0603_1608Metric	|5|[Ali Express](https://s.click.aliexpress.com/e/_DDKvQnz)|
|R1	|3.3K|	R_0603_1608Metric	|1|[Ali Express](https://s.click.aliexpress.com/e/_DDKvQnz)|
|U1|EPM7064STC44-7 (or EPM7032STC44)|QFP80P1200X1200X120-44N	|1|[Ali Express](https://s.click.aliexpress.com/e/_DkdMPh3)|
|U2	|UDA1334MOD	|UDA1334MOD	|1|[Ali Express](https://www.aliexpress.com/item/1005003524298218.html?spm=a2g0o.productlist.main.1.2dee4758Vxlh9Y&algo_pvid=8f4d3d67-2602-4ff6-843d-f845be27fd5e&algo_exp_id=8f4d3d67-2602-4ff6-843d-f845be27fd5e-0&pdp_npi=4%40dis%21USD%213.48%213.48%21%21%213.48%21%21%402101c6e316955904478808686effb6%2112000026168918433%21sea%21BR%21178731568%21&curPageLogUid=I97rRJH0ohZ9)|
|U3	|YMF278B-F|	80-QFP|1|[The Retro Hacker Store](https://theretrohacker.com/shop)|
|U4	|AM29F016B-120EC|	SOP50P2000X120-48N	|1|[Ali Express](https://s.click.aliexpress.com/e/_Dm44l5V)|
|U5	|CY62167ELL|	SOP50P2000X120-48N	|1|[Ali Express](https://s.click.aliexpress.com/e/_DkopT8T)|
|Q1	|33.8688|	Crystal_HC49-U_Vertical|1|[Ali Express](https://s.click.aliexpress.com/e/_DlvdCQT)|
|J1|AVR-JTAG-10	|PinHeader_2x05_P2.54mm_Vertical	|1|[Ali Express](https://s.click.aliexpress.com/e/_DFQLUzR)|

## CPLD Code

The Wozblaster Reloaded 4.5 uses a EPM7064STC44 (or EPM7032STC44) CPLD. The code is available in the `cpld` folder. The code was written in Verilog and compiled using the Quartus II software. The compiled file `msx_opl4.pof` is also available in the `cpld` folder. Please use the appropriate version depending on the CPLD you selected.

It implements the selection of the OPL4 chip and its registers. 

The I/O of the OPL4 can be done on the following I/O ports:

|Port|Binary|Function|
|-----|---------|----|
|07Eh |01111110 | wave register	|
|07Fh |01111111 | wave data|				
|0C4h |11000100 | FM bank 1 register|
|0C5h |11000101 | FM data|
|0C6h |11000110 | FM bank 2 register|


0C7h is a mirror of the FM data register but use of 0C5h is preferred.

The selection of the EPM7064STC44 (or EPM7032STC44) CPLD was due to the fact that it is a common CPLD supporting 5V and can be found in several sources. It is also less subject to JTAG locking than other versions of those CPLDs based on PLCC. The 
EPM7032STC44 can also be used as it is pin compatible with the EPM7064STC44 and the size of synthesis is small enough to fit in the EPM7032STC44.

## SOUNDIN

The SOUNDIN signal for the MSX computer is obtained by combining the two stereo channels into a single mono channel over a set of resistors a a filter capacitor. 

## License
![Open Hardware](../../images/ccans.png)

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

* If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
* You may not use the material for commercial purposes.
* You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

**ATTENTION**

This project was made for the retro community and not for commercial purposes. So only retro hardware forums and individual people can build this project.

THE SALE OF ANY PART OF THIS PROJECT WITHOUT EXPRESS AUTHORIZATION IS PROHIBITED!