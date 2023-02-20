# The Wozblaster (Reloaded)

The WozBlaster OPL4 cartridge is a sound expansion device for the MSX computer platform that provides additional audio capabilities, including support for FM synthesis and wavetable synthesis. It uses the OPL4 (FM Operator Type-L4) sound chip developed by Yamaha that was used in a variety of electronic musical instruments and computer sound cards. 

![The Wozblaster Reloaded Cartridge](images/20230216_121408225_iOS (Medium).jpg)

The cartridge is an external device, clone of another sound cartridge for the MSX called Moonsound and allows access to the capabilities of the OPL4 sound chip from MSX games and general OPL4 compatible music software. It was originally designed by Gustavo Iriarte.

The Yamaha chip (OPL4) usually paired with a YAC513 companion floating-point DAC chip or an alternative compatible DAC chip. It is an upgraded version of the OPL3. Although not officially part of the standard, it has been adopted by the MSX scene, especially in Europe.

Moonsound clones usually have 1 MB of sample-RAM and have the 2 MB Yamaha YRW801-M General MIDI ROM on board.  In fact the board has capacity to address more than 1MB, but the original one had only two 512K memory chips.

The original Wozblaster PCB can't be fitted into a traditional MSX cartridge case, also as you will see when following the building instructions, the audio jack holes are so small in the original board that we couldn't find a connector.

Image below shows the original Wozblaster:

![The Original Wozblaster Board](images/20230101_212444857_iOS%20(Medium).jpg)

The reloaded version was then created with the appropriate holes for the Konami as well as the Patola cartridge cases. We also enlarged the holes for the audio jack allowing a most common audio jack connectors to fit. The following versions are available at this moment (please note that some are working in progress):

* Wozblaster Reloaded v1.1 - Based on the original circuit, combination of THT and SMD components. Reduced board which fits on both Konami and Patola cases. (released)
* Wozblaster Reloaded v1.2 - Replaced the 27C160 old EPROM by AM29F016B flash. All passive components are 0603 SMD. Sound is injected back to SOUNDIN in mono. Reduced board which fits on both Konami and Patola cases. (in development)
* Wozblaster Reloaded v2.0 - Replaced the 27C160 old EPROM by AM29F016B flash. All passive components are 0603 SMD. YAC513 DAC replaced by NEC UPD6376. Sound is injected back to SOUNDIN in mono. LF347 OP Amps replaced by 4558s. Improved audio circuit. Reduced board which fits on both Konami and Patola cases. (in development)


# Resources

This GitHub repository stores everything collected and resources required to build the original Wozblaster or the reloaded version. You can check the article I wrote with detailed instructions as well as the updated BOM with purchase links at https://theretrohacker.com/2022/12/31/blasting-sound-for-your-msx-the-wozblaster-reloaded/

## License 

This work is licensed under the CERN OHL-S v2. You may redistribute and modify this project and its documentation under the terms of the CERN-OHL-S v2.

![Open Hardware](https://raw.githubusercontent.com/cristianoag/trh9000/main/Images/1024px-Open-source-hardware-logo.svg.png)