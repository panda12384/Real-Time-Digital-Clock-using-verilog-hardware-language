**# Real-Time-Digital-Clock-using-verilog-hardware-language**

Components of the Clock
Clock Divider: Divides the system clock to generate a 1 Hz signal.
Seconds Counter: Counts from 0 to 59 and then resets to 0.
Minutes Counter: Counts from 0 to 59 and then resets to 0.
Hours Counter: Counts from 0 to 23 (24-hour format) and then resets to 0.


![th](https://github.com/panda12384/Real-Time-Digital-Clock-using-verilog-hardware-language/assets/160568759/8998692e-dda7-44bb-af17-4680376cddc2)


Clock Divider: This module generates a 1 Hz clock signal from the input clock. Adjust the DIVISOR parameter based on your input clock frequency (e.g., 50 MHz).
Real-Time Clock: This module increments the seconds counter every 1 Hz clock tick. When seconds reach 59, it resets to 0 and increments the minutes counter. The same logic applies to the minutes and hours counters.
Top Module: This connects the clock divider and real-time clock modules.



**output:**
![Screenshot 2024-07-02 185924](https://github.com/panda12384/Real-Time-Digital-Clock-using-verilog-hardware-language/assets/160568759/5f674b97-ca81-4e55-a272-a3cf272e1194)
