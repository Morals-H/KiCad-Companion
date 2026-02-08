# PCBA-Calculation-Functions
This project is intended for use in circuit diagnostics for hobbiests, technicians, students, and engineers. It cointains formulas for calculating fundamental circuit characteristics such as resistance, capacitance, inductance, and reactance.

Try me "Z = zRect(rSer([10,22,33])+rPar([100,220,330])+lPar([1e-3,2e-3,3e-3])+cPar([cSer([20e-6,40e-6,60e-6]),1e-6,2e-6,3e-6]), tReact(lReact(lSer([1e-3,2e-3,3e-3]),5000), cReact(cSer([1e-6,2e-6,3e-6]),5000))); zPolar(real(Z),imag(Z));"