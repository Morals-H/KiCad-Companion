//////////////
//Reactance//
////////////



//Inductive Reactance

function x = lReact(a, b) //Inductance, Frequency
    x = 2 * %pi * b * a;
    mprintf("   Inductive Reactance: %g Ω\n", x);
endfunction



//Capacitive Reactance

function x = cReact(a, b) //Capacitance, Frequency
    x = 1 / (2 * %pi * b * a);
    mprintf("   Capacitive Reactance: %g Ω\n", x);
endfunction



//Total Reactance

function x = tReact(a, b) //Inductive Reactance, Capacitive Reactance
    x = a - b;
    mprintf("   Total Reactance: %g Ω\n", x);
endfunction



//////////////
//Impedance//
////////////



// Impedance rectangular form

function x = zRect(a, b) //Resistance, Reactance
    x = a + b*%i;
    mprintf("   Rectangular form: %g + %gi Ω\n", real(x), imag(x));
endfunction



// Impedance polar form

function zPolar(a, b) //Resistance, Reactance
    mag = sqrt(a^2 + b^2);
    theta = atand(b, a);
    mprintf("   Polar form: %g ∠ %g° Ω\n", mag, theta);
endfunction