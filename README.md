# jumpers_assembly
Demonstração de execuções dos jumpers dentro de um codigo x86 assembly compilado em nasm

# Como utilizar?
A melhor forma de rodar o programa é por meio de um terminal linux, neste exemplo usarei o ubuntu 22.

# Pre-requisitos
Para rodar o programa antes verifique-se de que os pacotes necessarios estão instalados
primeiro iremos atualizar os pacotes com

*-----------------------------------------------------*
         $ sudo apt update && sudo apt upgrade
*-----------------------------------------------------*

em seguida iremos instalar o nasm, que ira compilar o programa

*-----------------------------------------------------*
               $ sudo apt install nasm
*-----------------------------------------------------*

podemos verificar se foi instalado com o comando

*-----------------------------------------------------*
                  $ nasm --version
*-----------------------------------------------------*

que deve retornar a versão do aplicativo instalada em sua maquina, no meu caso

*-----------------------------------------------------*
              > NASM version 2.15.05
*-----------------------------------------------------*

e claro, precisamos também do git na maquina, caso não tenha ainda execute o comando

*-----------------------------------------------------*
              $ sudo apt install git
*-----------------------------------------------------*

# Clonando repositorio
Para clonar o repositorio basta copiar o link http ou ssh dependendo da sua conexão e executar junto ao comando git clone dentro do diretorio que deseja armazenar a pasta, ex

https:
*--------------------------------------------------------------------*
    $ git clone https://github.com/erickNA2/jumpers_assembly.git
*--------------------------------------------------------------------*

ssh:
*--------------------------------------------------------------------*
      $ git clone git@github.com:erickNA2/jumpers_assembly.git
*--------------------------------------------------------------------*

# Compilando o arquivo
Apos clonar o repositorio, localize o arquivo *jmp_cmp.asm* e com o terminal no diretorio execute o comando

*-----------------------------------------------------*
       $ nasm -f elf -o jmp_cmp.o jmp_cmp.asm
*-----------------------------------------------------*

esse comando ira gerar um objeto escrito em codigo de maquina que iremos transformar em um executavel atravéz do comando

*-----------------------------------------------------*
          $ ld -m elf_i386 -o jmp_cmp jmp_cmp.o
*-----------------------------------------------------*

apos a operação o executavel *jmp_cmp* sera gerado e basta executalo para velo em ação

*------------------------------------------*
              $ ./jmp_cmp
              > diferente
*------------------------------------------*

# Leitura do codigo
O proposito do programa é mostrar as diferentes condições tratadas pelos jumpers dentro de um codigo x86 assembly e par atingir esse objetivo é necessario analisar o codigo, pois encontraremos a maior parte dos jumpers de comparação da linguagem

*=========================*
        je equal
        jne notequal
        jg greater
        jge greaterorequal
        jl lesser
        jle lesserorequal
        jz zero
        jnz notzero
*==========================*

Para melhor entendimento é aconselhavel rodar o programa junto a um debuger como por exemplo <a href="https://www.onlinegdb.com/">gdb</a>.
