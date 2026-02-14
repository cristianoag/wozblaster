// Verilog implementation for the MSX Wozblaster Reloaded OPL4 Cartridge
// Based on the work of Gustavo Iriarte for the MSX Wozblaster
// Author: Cristiano Goncalves

module msxopl4 (
	input msx_A1,      // CPLD pin 18
   input msx_A2,      // CPLD pin 19
	input msx_A3,      // CPLD pin 20
	input msx_A4,      // CPLD pin 21
	input msx_A5,      // CPLD pin 22
	input msx_A6,      // CPLD pin 14
	input msx_A7,      // CPLD pin 15
   input msx_RD,      // CPLD pin 13
	input msx_WR,		 // CPLD pin 10
   input msx_IORQ,    // CPLD pin 12
	input msx_M1,		 // CPLD pin 23
    
   output y_A2,       // CPLD pin 5
   output y_CS,       // CPLD pin 8
   output y_A1,       // CPLD pin 6
   output msx_busdir  // CPLD pin 11
);

	// The I/O of the OPL4 can be done on the following I/O ports:
   // 07Eh wave register		0111 1110
	// 07Fh wave data				0111 1111
	// 0C4h FM bank 1 register 1100 0100
	//	0C5h FM data				1100 0101
	// 0C6h FM bank 2 register 1100 0110
	//
	// 0C7h is a mirror of the FM data register but use of 0C5h is preferred.

	// IO = /IORQ & M1
	wire IO = (~msx_IORQ) & msx_M1;

   // /yA1 = /A7 & A1 + A7 & /A1
   // => y_A1 is active-low output
   assign y_A1 = ~((~msx_A7 & msx_A1) | (msx_A7 & ~msx_A1));


    // yA2 = /A7 (active-high when A7=0)
    assign y_A2 = ~msx_A7;

    // /yCS = A6 & A2 & IO & /A5 & /A4 & /A3 & A7
    //      + A6 & A2 & IO &  A5 &  A4 &  A3 & /A7
    wire cs_term_c4_c7 =
        msx_A6 & msx_A2 & IO &
        (~msx_A5) & (~msx_A4) & (~msx_A3) &
        msx_A7;

    wire cs_term_7c_7f =
        msx_A6 & msx_A2 & IO &
        (msx_A5) & (msx_A4) & (msx_A3) &
        (~msx_A7);

    // y_CS is active-low (since equation is for /yCS)
    assign y_CS = ~(cs_term_c4_c7 | cs_term_7c_7f);

    // /BUSDIR = /RD & /yCS
    // msx_busdir is active-low (drives low only on read + selected)
    assign msx_busdir = ~((~msx_RD) & (~y_CS));

endmodule
