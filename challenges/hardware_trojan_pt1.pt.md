
Desde a década de 1990, a HARPA implacavelmente inseriu trojans de hardware em todas as CPUs sobre as quais ela foi capaz de colocar suas mãos. Com o aumento do acesso a FPGAs, a agência passou a também atacar soft-cores, implantando malware capaz de modificar o projeto do usuário durante o processo de síntese.

Mas os agentes da HARPA foram imprudentes. Eles mesmos são usuários de muitos núcleos de CPU alvos da sua própria operação. Nós recentemente descobrimos que eles estão usando protótipos de IoT baseados no núcleo Rocket RISC-V implementado em um FPGA Zynq-7020 para coletar dados críticos de infraestrutura. Conseguimos [replicar](https://github.com/rf-hw-team/fpga-zynq) essa configuração localmente e percebemos que o núcleo é infectado pelas ferramentas de síntese!

Ajude-nos a analisar o núcleo de CPU comprometido. Suspeitamos que o trojan de hardware é ativado quando uma sequência específica é escrita na memória. Anexamos abaixo a netlist do SoC infectado após a síntese. Descubra a cadeia de caracteres que ativa o trojan e a submeta (ela já está no nosso formato de flag).

**Arquivos**

 * [Link](https://cloud.ufscar.br:8080/v1/AUTH_c93b694078064b4f81afd2266a502511/static.pwn2win.party/hardware_trojan_pt1_0c3eea51be93e6007f28451b6bd187d533013fe74c0249f6ec12e777869d258a.gz)
 * [Mirror](https://static.pwn2win.party/hardware_trojan_pt1_0c3eea51be93e6007f28451b6bd187d533013fe74c0249f6ec12e777869d258a.gz)

**Informações úteis**

 * [Xilinx cells](https://github.com/YosysHQ/yosys/tree/master/techlibs/xilinx)
 * [Artigo interessante](http://www.cse.cuhk.edu.hk/~qxu/zhang-dac13.pdf)
