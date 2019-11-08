
Since the 1990s, HARPA has relentlessly inserted hardware trojans into every CPU they could get their hands on. With the increased access to FPGAs, HARPA started also targeting soft-cores by deploying malware able to modify the user's design during the synthesis process.

But HARPA agents were reckless. They are users themselves of many CPU cores targeted by their own operation. We recently discovered they are using IoT prototypes built around the Rocket RISC-V core running on a Zynq-7020 FPGA to collect critical infrastructure data. We [replicated](https://github.com/rf-hw-team/fpga-zynq) the setup locally and found this core got infected by the synthesis tools!

Help us analyzing the compromised CPU core. We suspect the hardware trojan is triggered by writing a particular string to memory. We attached below the netlist of the SoC infected after synthesis. Find and submit the trigger string (it is already in our flag format).

**Files**

 * [Link](https://cloud.ufscar.br:8080/v1/AUTH_c93b694078064b4f81afd2266a502511/static.pwn2win.party/hardware_trojan_pt1_0c3eea51be93e6007f28451b6bd187d533013fe74c0249f6ec12e777869d258a.gz)
 * [Mirror](https://static.pwn2win.party/hardware_trojan_pt1_0c3eea51be93e6007f28451b6bd187d533013fe74c0249f6ec12e777869d258a.gz)

**Useful info**

 * [Xilinx cells](https://github.com/YosysHQ/yosys/tree/master/techlibs/xilinx)
 * [Interesting paper](http://www.cse.cuhk.edu.hk/~qxu/zhang-dac13.pdf)
