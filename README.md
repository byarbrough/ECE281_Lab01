ECE281_Lab01
============

**Two's Complement Converter**

#####Truth Table

![alt text](https://github.com/byarbrough/ECE281_Lab01/blob/master/TruthTable.PNG?raw=true "Truth Table")

#####Simulation Results

![alt text](https://github.com/byarbrough/ECE281_Lab01/blob/master/simulation.PNG?raw=true "Simulation Results")

#####Schematic

![alt text](https://github.com/byarbrough/ECE281_Lab01/blob/master/schematic.jpg?raw=true "Schematic")

#####Analysis

The simulation performed exactly as it was supposed to. Given three inputs A, B, C, the circuit produced three outputs X, Y, Z. The yellow line on the simulation results can be moved (in the GUI, not the image... clearly), this displays the inputs and outputs. These values all correspond with the truth table. This correspondence proves that the circuit schematic converts three bit two's complements, as designed.

These simulated outputs matched the truth table. What's more, this serves as a converter for a 3 bit two's compliment number.

X = Σ(1, 2, 3, 4)

Y = Σ(1, 2, 5, 6)

Z = Σ(1, 3, 5, 7)


####8 bit modification
All the above considerations are for a "manual" 3 bit code. Thw switches A, B, & C input signals into the chip. These are then run through the schematic drawn above, which prdouces the output.

The most current VHDL files have all of this code commented out. Instead, standard logic vectors are used to achieve an 8 bit converter. There are no signals or schematic associated with this method; rather, the vectors are cast to integers, NOTed, +1 is added to the result, and it is recast to logic vectors. The LEDs then output these logic values. This is accomplished by an 8 bit array, so the converter has a range of +127 to -128. For numbers of greater magnitude, a larger array would have to be declared.
