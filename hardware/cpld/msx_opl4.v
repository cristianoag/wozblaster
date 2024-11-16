// Verilog implementation for the MSX Wozblaster Reloaded OPL4 Cartridge
// Based on the work of Gustavo Iriarte for the MSX Wozblaster
// Author: Cristiano Goncalves

module msx_opl4 (
	input msx_A1,      // CPLD pin 18
   input msx_A2,      // CPLD pin 19
	input msx_A3,      // CPLD pin 20
	input msx_A4,      // CPLD pin 21
	input msx_A5,      // CPLD pin 22
	input msx_A6,      // CPLD pin 14
	input msx_A7,      // CPLD pin 15
   input msx_RD,      // CPLD pin 13
   input msx_IORQ,    // CPLD pin 12
    
   output y_A2,       // CPLD pin 5
   output y_CS,       // CPLD pin 8
   output y_A1,       // CPLD pin 6
   output msx_busdir  // CPLD pin 11
);

	// The YMF278B is accessed through ports 7Eh (0111 1110) and 7Fh (0111 1111)
	// this is gustavo's selection logic
   //assign y_CS = ~( ~msx_IORQ & ~msx_A5 & ~msx_A4 & ~msx_A3 & msx_A6 & msx_A7);
	// this is mine 
	assign y_CS = ~( ~msx_IORQ & ~msx_A7 & msx_A6 & msx_A5 & msx_A4 & msx_A3 & msx_A2 & msx_A1);
	assign y_A1 = ~( ~msx_A7 & msx_A1 );           
   assign y_A2 = ~( msx_A7 );   
    
	assign msx_busdir = ~( ~msx_RD & ~y_CS );                  

endmodule