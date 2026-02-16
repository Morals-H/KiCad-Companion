///////////////
//Resistance//
/////////////



//Series Resistance

function x = rSer(Array) //Resistance
    //Variables
    global Tolerance
    s = 0;

    //Math
    for i = 1:length(Array)
        s = s + Array(i);
    end

    //Final Value
    x = s;

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
    s = 0;

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i));
        s = s + t;
    end

    //Final Value
    x = s^-1;

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
    s = 0;

    //Math
    for i = 1:length(Array)
        s = s + Array(i);
    end
    
    //Final Value
    x = s;

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
    s = 0;

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i));
        s = s +  t;
    end

    //Final Value
    x = s^-1;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispInd(x)
    mprintf("   Inductance Ideal: %g H\n", x);
    mprintf("   Inductance Range: %g - %g H\n", xL, xH);
endfunction



//Discharge Inductance

function x = lDis(a, b) //Inductance, Resistance
    //Variables
    global Tolerance

    //Final Value
    x = a / b;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Time Constant Ideal: %g Second(s)\n", x);
    mprintf("   Time Constant Range: %g - %g Second(s)\n", xL, xH);
    mprintf("   Discharge Ideal: %g Second(s)\n", (x * 5));
endfunction



////////////////
//Capacitance//
//////////////



//Series Capacitance

function x = cSer(Array) //Capacitance
    //Variables
    global Tolerance
    s = 0;

    //Math
    for i = 1:length(Array)
        t = (1 / Array(i));
        s = s +  t;
    end

    //Final Value
    x = s^-1;

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
    s = 0;

    //Math
    for i = 1:length(Array)
        s = s + Array(i);
    end
    
    //Final Value
    x = s;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    dispCap(x)
    mprintf("   Capacitance Ideal: %g F\n", x);
    mprintf("   Capacitance Range: %g - %g F\n", xL, xH);
endfunction



//Discharge Capacitor 

function x = cDis(a, b) //Capacitance, Resistance
    //Variables
    global Tolerance

    //Final Value
    x = b * a;

    //Figure Tolerance
    [xL, xH] = applyTolerance(x);

    //Final Output
    mprintf("   Time Constant Ideal: %g Second(s)\n", x);
    mprintf("   Time Constant Range: %g - %g Second(s)\n", xL, xH);
    mprintf("   Discharge Ideal: %g Second(s)\n", (x * 5));
endfunction
