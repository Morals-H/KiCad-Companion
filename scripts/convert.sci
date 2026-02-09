////////////////
//Conversions//
//////////////



//Tera
function x = teraConv(a) //Unit
    x = a * 1e-12;
    mprintf("   %g T\n", x);
endfunction



//Giga
function x = gigaConv(a) //Unit
    x = a * 1e-9;
    mprintf("   %g G\n", x);
endfunction



//Mega
function x = megaConv(a) //Unit
    x = a * 1e-6;
    mprintf("   %g M\n", x);
endfunction



//Kilo
function x = kiloConv(a) //Unit
    x = a * 1e-3;
    mprintf("   %g k\n", x);
endfunction



//Milli
function x = milliConv(a) //Unit
    x = a * 1e3;
    mprintf("   %g m\n", x);
endfunction



//Micro
function x = microConv(a) //Unit
    x = a * 1e6;
    mprintf("   %g μ\n", x);
endfunction



//Nano
function x = nanoConv(a) //Unit
    x = a * 1e9;
    mprintf("   %g n\n", x);
endfunction



//Pico
function x = picoConv(a) //Unit
    x = a * 1e12;
    mprintf("   %g p\n", x);
endfunction