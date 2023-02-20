# The Wozblaster (Reloaded)

The WozBlaster OPL4 cartridge is a sound expansion device designed for the MSX computer platform. This cartridge provides users with a range of additional audio capabilities, including support for both FM synthesis and wavetable synthesis. At its core is the OPL4 (FM Operator Type-L4) sound chip, which was developed by Yamaha and used in a variety of electronic musical instruments and computer sound cards. With the WozBlaster OPL4 cartridge, MSX computer users can enjoy high-quality sound and create complex musical arrangements with ease.

![The Wozblaster Reloaded Cartridge](images/20230216_121408225_iOS%20(Medium).jpg)

The WozBlaster cartridge is an external sound device designed for the MSX computer platform. It is a clone of the Moonsound and allows access to the advanced capabilities of the OPL4 sound chip for MSX games and other OPL4-compatible music software. The cartridge was originally designed by Gustavo Iriarte.

The OPL4 sound chip from Yamaha is typically paired with a YAC513 floating-point DAC chip, or an alternative compatible DAC chip. The YMF278 is an enhanced version of the OPL3 and, although not officially part of the standard, has been widely adopted by the MSX community, particularly in Europe.

Moonsound clones generally come equipped with 1 MB of sample-RAM and a 2 MB Yamaha YRW801-M General MIDI ROM. Although the board has the capacity to address more than 1 MB of memory, the original version of the cartridge only had two 512K memory chips.

It's worth noting that the original Wozblaster PCB cannot be fitted into a traditional MSX cartridge case. Additionally, as detailed in the building instructions, the audio jack holes on the original board are quite small, which made it difficult to find a connector that would fit.

Image below shows the original Wozblaster:

![The Original Wozblaster Board](images/20230101_212444857_iOS%20(Medium).jpg)

A reloaded version of the WozBlaster cartridge has been created with appropriately-sized holes to fit both Konami and Patola cartridge cases. Additionally, the audio jack holes have been enlarged to accommodate most common audio jack connectors. It's worth noting that some versions of the cartridge are still a work in progress.

Currently, the following versions of the WozBlaster cartridge are available (please note that this list is subject to change as new versions become available):

* [Wozblaster Reloaded v1.1](/hardware/reloaded_v1.1) - Based on the original circuit, this version features a combination of through-hole and surface-mount components. The board is smaller and can fit in both Konami and Patola cases. (Released)

![The Wozblaster Reloaded PCB](images/20230217_181151865_iOS%20(Medium).jpg)

* [Wozblaster Reloaded v1.2](/hardware/reloaded_v1.2) - This version replaces the old 27C160 EPROM with an AM29F016B flash, and all passive components are 0603 SMD. The sound is injected back to SOUNDIN in mono. The board is smaller and can fit in both Konami and Patola cases. (In development)
* [Wozblaster Reloaded v2.0](/hardware/reloaded_v2) - This version features an AM29F016B flash in place of the 27C160 EPROM, all passive components are 0603 SMD, and the YAC513 DAC is replaced by a NEC UPD6376. The sound is injected back to SOUNDIN in mono, and the LF347 OP Amps are replaced with 4558s. The audio circuit has been improved, and the board is smaller and can fit in both Konami and Patola cases. (In development)

# Resources

This GitHub repository contains all of the resources needed to build both the original WozBlaster cartridge and the reloaded versions. For detailed instructions, you can refer to the article I wrote, which includes an updated bill of materials (BOM) with links to purchase the required components. You can find the article at https://theretrohacker.com/2022/12/31/blasting-sound-for-your-msx-the-wozblaster-reloaded/.

## License 

This work is licensed under the CERN OHL-S v2. You may redistribute and modify this project and its documentation under the terms of the CERN-OHL-S v2.

![Open Hardware](https://raw.githubusercontent.com/cristianoag/trh9000/main/Images/1024px-Open-source-hardware-logo.svg.png)