disp("KiCad-Companion");
disp("Created by Shawn Wolf");
disp("Copyright: Creative Commons Zero");
disp("Need assistance? Try ''HelpMe()''!");
Tolerance = 5;


//////////
//Debug//
////////



////////////
//Generic//
//////////



function HelpMe()
    disp("Enter One of the following:");
    mprintf("\tAllHelp()\n");
    mprintf("\tInductanceHelp()\n");
    mprintf("\tResistanceHelp()\n");
    mprintf("\tCapacitanceHelp()\n");
    mprintf("\tReactanceHelp()\n");
    mprintf("\tImpedanceHelp()\n");
    mprintf("\tOhmsLawHelp()\n");
    mprintf("\tToleranceHelp()\n")
    mprintf("\tConvertHelp()\n");
endfunction

function AllHelp()
    mprintf("\nResistance Help:\n");
    ResistanceHelp();
    mprintf("\nInductance Help:\n");
    InductanceHelp();
    mprintf("\nCapacitance Help:\n");
    CapacitanceHelp();
    mprintf("\nReactance Help:\n");
    ReactanceHelp();
    mprintf("\nImpedance Help:\n");
    ImpedanceHelp();
    mprintf("\nOhms Law Help:\n");
    OhmsLawHelp();
    mprintf("\nTolerance Help:\n")
    ToleranceHelp();
    mprintf("\nConversion Help:\n");
    ConvertHelp();
    mprintf("\n");
endfunction

function ResistanceHelp()
    mprintf("Calculate Series Resistance: rSer([Resistance Array])\n");
    mprintf("Calculate Parallel Resistance: rPar([Resistance Array])\n");
endfunction

function InductanceHelp()
    mprintf("Calculate Series Inductance: lSer([Inductance Array])\n");
    mprintf("Calculate Parallel Inductance: lPar([Inductance Array])\n");
endfunction

function CapacitanceHelp()
    mprintf("Calculate Series Capacitance: cSer([Capacitance Array])\n");
    mprintf("Calculate Parallel Capacitance: cPar([Capacitance Array])\n");
endfunction

function ReactanceHelp()
    mprintf("Calculate Inductive Reactance: lReact(Inductance, Frequency)\n");
    mprintf("Calculate Capacitive Reactance: cReact(Capacitance, Frequency)\n");
    mprintf("Calculate Total Reactance: tReact(Inductive Reactance, Capacitive Reactance)\n");
endfunction

function ImpedanceHelp()
    mprintf("Calculate Rectangular Form: zRect(Resistance, Reactance)\n");
    mprintf("Calculate Polar Form: zPolar(Resistance, Reactance)\n");
endfunction

function OhmsLawHelp()
    mprintf("Calculate Ohms Voltage: vOhms(Amperage, Resistance)\n");
    mprintf("Calculate Ohms Amperage: aOhms(Voltage, Resistance)\n");
    mprintf("Calculate Ohms Resistance: rOhms(Voltage, Amperage)\n");
endfunction

function ToleranceHelp()
    mprintf("Set Calculation Tolerance: setTolerance(Value)\n");
    mprintf("Get Current Tolerance: getTolerance()\n");
endfunction

function ConvertHelp()
    mprintf("Convert to Tera: teraConv(Unit)\n");
    mprintf("Convert to Giga: gigaConv(Unit)\n");
    mprintf("Convert to Mega: megaConv(Unit)\n");
    mprintf("Convert to Kilo: kiloConv(Unit)\n");
    mprintf("Convert to Milli: milliConv(Unit)\n");
    mprintf("Convert to Micro: microConv(Unit)\n");
    mprintf("Convert to Nano: nanoConv(Unit)\n");
    mprintf("Convert to Pico: picoConv(Unit)\n");
endfunction



///////////////
//Resistance//
/////////////



//Series Resistance

function x = rSer(Array) //Resistance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        s = s + Array(i)
        mprintf("Value: %g\n", Array(i));
    end

    //Final Value
    x = s

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Resistance Ideal: %g Ω\n", x);
    mprintf("   Resistance Range: %g - %g Ω\n", xL, xH);
endfunction



//Parallel Resistance

function x = rPar(Array) //Resistance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i))
        s = s + t;
        mprintf("Value: %g\n", t);
    end

    //Final Value
    x = s^-1;
    mprintf("Calculate: %g ^-1\n", s);

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Resistance Ideal: %g Ω\n", x);
    mprintf("   Resistance Range: %g - %g Ω\n", xL, xH);
endfunction



///////////////
//Inductance//
/////////////



//Series Inductance

function x = lSer(Array) //Inductance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        s = s + Array(i)
        mprintf("Value: %g\n", Array(i));
    end
    
    //Final Value
    x = s

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispInd(x)
    mprintf("   Inductance Ideal: %g H\n", x);
    mprintf("   Inductance Range: %g - %g H\n", xL, xH);
endfunction



//Parallel Inductance

function x = lPar(Array) //Inductance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i))
        s = s +  t;
        mprintf("Value: %g\n", t);
    end

    //Final Value
    x = s^-1;
     mprintf("Calculate: %g ^-1\n", s);

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispInd(x)
    mprintf("   Inductance Ideal: %g H\n", x);
    mprintf("   Inductance Range: %g - %g H\n", xL, xH);
endfunction



////////////////
//Capacitance//
//////////////



//Series Capacitance

function x = cSer(Array) //Capacitance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i))
        s = s +  t;
        mprintf("Value: %g\n", t);
    end

    //Final Value
    x = s^-1;
    mprintf("Calculate: %g ^-1\n", s);

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispCap(x)
    mprintf("   Capacitance Ideal: %g F\n", x);
    mprintf("   Capacitance Range: %g - %g F\n", xL, xH);
endfunction



//Parallel Capacitance

function x = cPar(Array) //Capacitance
    //Variables
    global Tolerance
    s = 0

    //Math
    for i = 1:length(Array)
        s = s + Array(i)
        mprintf("Value: %g\n", Array(i));
    end
    
    //Final Value
    x = s

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispCap(x)
    mprintf("   Capacitance Ideal: %g F\n", x);
    mprintf("   Capacitance Range: %g - %g F\n", xL, xH);
endfunction



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
    theta = atan(b, a) * 180 / %pi;
    mprintf("   Polar form: %g ∠ %g° Ω\n", mag, theta);
endfunction



/////////////
//Ohms Law//
///////////


// Ohms Voltage

function x = vOhms(a, b) // amperage, resistance
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

function x = aOhms(a, b) // voltage, resistance
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

function x = rOhms(a, b) // voltage, amperage
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



//////////////
//Tolerance//
////////////



function setTolerance(a) //Unit
    //Final Value
    global Tolerance

    Tolerance = a
    mprintf("Tolerance: %g%% \n", a);
endfunction

function getTolerance()
    //Final Value
    global Tolerance

    mprintf("Tolerance: %g%% \n", Tolerance);
endfunction

////////////////
//Conversions//
//////////////



function x = teraConv(a) //Unit
    x = a * 1e-12;
    mprintf("   %g T\n", x);
endfunction

function x = gigaConv(a) //Unit
    x = a * 1e-9;
    mprintf("   %g G\n", x);
endfunction

function x = megaConv(a) //Unit
    x = a * 1e-6;
    mprintf("   %g M\n", x);
endfunction

function x = kiloConv(a) //Unit
    x = a * 1e-3;
    mprintf("   %g k\n", x);
endfunction

function x = milliConv(a) //Unit
    x = a * 1e3;
    mprintf("   %g m\n", x);
endfunction

function x = microConv(a) //Unit
    x = a * 1e6;
    mprintf("   %g μ\n", x);
endfunction

function x = nanoConv(a) //Unit
    x = a * 1e9;
    mprintf("   %g n\n", x);
endfunction

function x = picoConv(a) //Unit
    x = a * 1e12;
    mprintf("   %g p\n", x);
endfunction


///////////
//Common//
/////////


//Get Tolerance Range

function [xL, xH] = applyTolerance(value)
    //Variables
    global Tolerance

    //Math
    xH = value * (1 + Tolerance / 100);
    xL = value * (1 - Tolerance / 100);
end



//Readable Inductance

function dispInd(a)
    if a >= 1 then
        mprintf("   Readable: %g H\n", a);
    elseif a >= 1e-3 then
        mprintf("   Readable: %g mH\n", a*1e3);
    elseif a >= 1e-6 then
        mprintf("   Readable: %g µH\n", a*1e6);
    elseif a >= 1e-9 then
        mprintf("   Readable: %g nH\n", a*1e9);
    else
        mprintf("   Readable: %g pH\n", a*1e12);
    end
endfunction



//Readable Capacitance

function dispCap(a)
    if a >= 1 then
        mprintf("   Readable: %g F\n", a);
    elseif a >= 1e-3 then
        mprintf("   Readable: %g mF\n", a*1e3);
    elseif a >= 1e-6 then
        mprintf("   Readable: %g µF\n", a*1e6);
    elseif a >= 1e-9 then
        mprintf("   Readable: %g nF\n", a*1e9);
    else
        mprintf("   Readable: %g pF\n", a*1e12);
    end
endfunction