/////////
//Help//
///////



function HelpMe()
    mprintf("   Enter One of the following:\n");
    mprintf("\tAllHelp()\n");
    mprintf("\tInductanceHelp()\n");
    mprintf("\tResistanceHelp()\n");
    mprintf("\tCapacitanceHelp()\n");
    mprintf("\tReactanceHelp()\n");
    mprintf("\tImpedanceHelp()\n");
    mprintf("\tOhmsLawHelp()\n");
    mprintf("\tWattsLawHelp()\n")
    mprintf("\tToleranceHelp()\n")
    mprintf("\tConvertHelp()\n");
endfunction

function AllHelp()
    mprintf("\n   Resistance Help:\n");
    ResistanceHelp();
    mprintf("\n   Inductance Help:\n");
    InductanceHelp();
    mprintf("\n   Capacitance Help:\n");
    CapacitanceHelp();
    mprintf("\n   Reactance Help:\n");
    ReactanceHelp();
    mprintf("\n   Impedance Help:\n");
    ImpedanceHelp();
    mprintf("\n   Ohms Law Help:\n");
    OhmsLawHelp();
    mprintf("\n   Watts Law Help:\n");
    WattsLawHelp();
    mprintf("\n   Tolerance Help:\n")
    ToleranceHelp();
    mprintf("\n   Conversion Help:\n");
    ConvertHelp();
    mprintf("\n");
endfunction

function ResistanceHelp()
    mprintf("\tCalculate Series Resistance: rSer([Resistance Array])\n");
    mprintf("\tCalculate Parallel Resistance: rPar([Resistance Array])\n");
endfunction

function InductanceHelp()
    mprintf("\tCalculate Series Inductance: lSer([Inductance Array])\n");
    mprintf("\tCalculate Parallel Inductance: lPar([Inductance Array])\n");
endfunction

function CapacitanceHelp()
    mprintf("\tCalculate Series Capacitance: cSer([Capacitance Array])\n");
    mprintf("\tCalculate Parallel Capacitance: cPar([Capacitance Array])\n");
endfunction

function ReactanceHelp()
    mprintf("\tCalculate Inductive Reactance: lReact(Inductance, Frequency)\n");
    mprintf("\tCalculate Capacitive Reactance: cReact(Capacitance, Frequency)\n");
    mprintf("\tCalculate Total Reactance: tReact(Inductive Reactance, Capacitive Reactance)\n");
endfunction

function ImpedanceHelp()
    mprintf("\tCalculate Rectangular Form: zRect(Resistance, Reactance)\n");
    mprintf("\tCalculate Polar Form: zPolar(Resistance, Reactance)\n");
endfunction

function OhmsLawHelp()
    mprintf("\tCalculate Ohms Voltage: vOhm(Amperage, Resistance)\n");
    mprintf("\tCalculate Ohms Amperage: aOhm(Voltage, Resistance)\n");
    mprintf("\tCalculate Ohms Resistance: rOhm(Voltage, Amperage)\n");
endfunction

function WattsLawHelp()
    mprintf("\tCalculate Watts Wattage: wWatt(Voltage, Amperage)\n");
    mprintf("\tCalculate Watts Amperage: aWatt(Wattage, Voltage)\n");
    mprintf("\tCalculate Watts Voltage: vWatt(Wattage, Amperage)\n");
endfunction

function ToleranceHelp()
    mprintf("\tSet Calculation Tolerance: setTolerance(Value)\n");
    mprintf("\tGet Current Tolerance: getTolerance()\n");
endfunction

function ConvertHelp()
    mprintf("\tConvert to Tera: teraConv(Unit)\n");
    mprintf("\tConvert to Giga: gigaConv(Unit)\n");
    mprintf("\tConvert to Mega: megaConv(Unit)\n");
    mprintf("\tConvert to Kilo: kiloConv(Unit)\n");
    mprintf("\tConvert to Milli: milliConv(Unit)\n");
    mprintf("\tConvert to Micro: microConv(Unit)\n");
    mprintf("\tConvert to Nano: nanoConv(Unit)\n");
    mprintf("\tConvert to Pico: picoConv(Unit)\n");
endfunction