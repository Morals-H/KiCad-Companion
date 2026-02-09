/////////////
//Ohms Law//
///////////



// Ohms Voltage

function x = vOhm(a, b) // Amperage, Resistance
    //Variables
    global Tolerance

    //Final Value
    x = a * b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Voltage Ideal: %g V\n", x);
    mprintf("   Voltage Range: %g - %g V\n", xL, xH);
endfunction



// Ohms Amperage

function x = aOhm(a, b) // Voltage, Resistance
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



// Ohms Resistance

function x = rOhm(a, b) // Voltage, Amperage
    //Variables
    global Tolerance

    //Final Value
    x = a / b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Resistance Ideal: %g Ω\n", x);
    mprintf("   Resistance Range: %g - %g Ω\n", xL, xH);
endfunction