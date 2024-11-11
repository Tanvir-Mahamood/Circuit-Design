# Navigation
1. [Multisim](#Multisim)
2. [Logisim](#Logisim)
3. [Verilog](#Verilog)
4. [Logisim Evolution](#logisim-evolution)

# Multisim
These circuits were designed during my **Electronic Drives and Circuits Sessionals** course.
## Description:
- Decade Counter (Digital Logic Design Sessional Assignment)
- Counter: (Digital Logic Design Sessional Assignment)
- Logic Gates using TTL
- Clipper & Clamper circuit
- Diod's forward bias
- Half wave rectifier
- Full wave rectifier
- Oscilloscope connection
- Transistor
- VI Characteristics of Silicon Diode
- Zenner Diode
## Software Installation:
[Multisim](https://www.ni.com/en/support/downloads/software-products/download.multisim.html?srsltid=AfmBOopgT5CnLHW1L-3T4yTjzEIg2e8oA2W0uIiR0OcU6_kQkyEpZWBh#452133)

<br><hr>
# Logisim:
These were designed for my **Digital Logic Design** course.
- Counter: Asynchronous, Synchronous, Decade, Decade using D Flip-Flop
- Asynchronous Counter using: JK, T, D Flip-Flop
- Synchronous Counter using: JK, T Flipflop
- Flipflop: D, JK, SR, T

- Labworks: Asynchronous counter, D and T clocked Flip-Flop, D and T Flip-Flop, DecadeCounter, Flip-Flop module,
	JK Flip-Flop, MOD5 Counter, Multiplexer and Decoder, SR Flip-Flop, Synchronous Counter

- Register: PIPO, PISO, SIPO, SISO, Shift register
  - PIPO = Parallel In Parallel Out
  - PISO = Parallel In Serial Out
  - SIPO = Serial In Parallel Out
  - SISO = Serial In Serial Out

- TTL: Basic Logic Gates (AND, OR, NOT, NAND, NOR using CMOS Transistors)

- 4bit Binary Adder
- 4x16 Decoder construction type-1,2,3
- 8bit Adder
- BCD Adder
- Binary Subtractor
- Binary to Gray Code converter
- Gray Code to Binary converter
- Decade counter with 7-Segment display
- Decoder
- Encoder
- Full adder

- JK Flipflop
- Mod60 counter
- 7 segment display (1Digit)
- Universal gates
## Software: 
[Logisim](https://sourceforge.net/projects/circuit/)

<br><hr>
# Verilog
In **Computer Architecture** course, I am learning Verilog. Verilog, standardized as IEEE 1364, is a hardware description language (HDL) used to model electronic systems. 
- Combinational Circuit:
	- comb1
  - Decoder
  - Demultiplexer
  - Encoder
  - Multiplexer
  - Operators
  - Priority encoder
- Sequential circuit:
  - D Flip-Flop
  - D Flip-Flop with Synchronour Reset
  - D Flip-Flop with Asynchronous Enable Pin
  - Register
- SDM(Synchronous Design Methodology)
  - Counter
  - D_ff
  - Register
- self:
  - Increment with clock
    
## Software Installation:
Download and Install Verilog from [here](https://bleyer.org/icarus/). Youtube [Tutorial](https://www.youtube.com/watch?v=hg9splN_83Y)
> [!IMPORTANT]
> Make sure to click “Add Icarus Verilog executables folder to the system PATH”.

For Linux installation,

```
sudo apt-get update
sudo apt-get install iverilog
sudo apt-get install gtkwave
```

**IDE**: VSCode <br>

## How to Run:
[Youtube](https://www.youtube.com/watch?v=rwVFDfy2xVI)<br>
- Step1: Write verilog code. Save it as `comb1.v`.
- Step2: Write test bench	and save it as `comb1_tb.v`
- Step3: Save both the files
- Step4: Go to terminal & write
  
```
iverilog -o comb1.vpp comb1.v comb1_tb.v
vvp out.vpp
```

> [!NOTE]
> An outfile file `comb1.vpp` will be created and output will be visible in terminal.

- Step5: To watch graphical representation: Add two lines in test bench code.

```verilog
$dumpfile("comb1.vcd");
$dumpvars(0,comb1_tb);
```

- Step6: Go to terminal & write:

```
iverilog -o out.vpp comb1.v comb1_tb.v
vvp out.vpp
gtkwave comb1.vcd
```

> [!NOTE]
> An a graphical outfile file `comb1.vcd` will be created and output will be visible in a new window.


# Logisim Evolution
Install **Logisim-evolution** version 3.8.0 using [link](https://github.com/logisim-evolution/logisim-evolution/releases). <br>
Logisim-evolution is a Java application; therefore, it can run on any operating system supporting the Java runtime environment. 
It requires Java 16 (or newer). If JAVA is not installed, install using [link](https://www.oracle.com/java/technologies/downloads/)
> [!NOTE]
>  For Intel Laptop with Windows OS should install logisim-evolution-3.8.0-x86.msi file


