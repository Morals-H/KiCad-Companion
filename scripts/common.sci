///////////
//Common//
/////////



//set Tolerance

function setTolerance(a) //Unit
    //Final Value
    global Tolerance

    Tolerance = a
    mprintf("Tolerance: %g%% \n", a);
endfunction



//get Tolerance

function getTolerance()
    //Final Value
    global Tolerance

    mprintf("Tolerance: %g%% \n", Tolerance);
endfunction



//Get Tolerance Range

function [xL, xH] = applyTolerance(value)
    //Variables
    global Tolerance

    //Math
    xH = value * (1 + Tolerance / 100);
    xL = value * (1 - Tolerance / 100);
endfunction



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