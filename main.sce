////////////////////
// KiCad-Companion
////////////////////

// Set working directory
this_file = get_absolute_file_path("main.sce");
cd(this_file);

// Startup banner
mprintf("   KiCad-Companion\n");
mprintf("   Created by: Shawn Wolf\n");
mprintf("   Copyright: Creative Commons Zero\n");
mprintf("   Need assistance? Try ''HelpMe()''!\n");

// Variables
global Tolerance;
Tolerance = 5;

// Load libraries silently
files = [
    "common.sci",
    "help.sci",
    "Inductance-Resistance-Capacitance.sci",
    "Reactance-Impedance.sci",
    "ohms.sci",
    "watts.sci",
    "convert.sci"
];

for i = 1:size(files, "*")
    exec("scripts/" + files(i), -1);
end
