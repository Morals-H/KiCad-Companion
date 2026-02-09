///////////////
//Watt's Law//
/////////////



//Figure Wattage with voltage and amperage

function x = wWatt(a, b) // Voltage, Amperage
    //Variables
    global Tolerance

    //Final Value
    x = a * b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Wattage Ideal: %g W\n", x);
    mprintf("   Wattage Range: %g - %g W\n", xL, xH);
endfunction



//Figure voltage from wattage and amperage

function x = vWatt(a, b) // Wattage, Amperage
    //Variables
    global Tolerance

    //Final Value
    x = a / b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Voltage Ideal: %g V\n", x);
    mprintf("   Voltage Range: %g - %g V\n", xL, xH);
endfunction



//Figure amperage from wattage and voltage

function x = aWatt(a, b) // Wattage, Voltage
    //Variables
    global Tolerance

    //Final Value
    x = a / b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Amperage Ideal: %g A\n", x);
    mprintf("   Amperage Range: %g - %g A\n", xL, xH);
endfunction