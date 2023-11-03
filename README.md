# jumpers_assembly
Demonstração de execuções dos jumpers dentro de um codigo x86 assembly compilado em nasm

# Como utilizar?
A melhor forma de rodar o programa é por meio de um terminal linux, neste exemplo usarei o ubuntu 22.

# Pre-requisitos
Para rodar o programa antes verifique-se de que os pacotes necessarios estão instalados
primeiro iremos atualizar os pacotes com

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>         $ sudo apt update && sudo apt upgrade         </li>
         <li>*-----------------------------------------------------*</li>
</ul>

em seguida iremos instalar o nasm, que ira compilar o programa

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>               $ sudo apt install nasm                 </li>
         <li>*-----------------------------------------------------*</li>
</ul>

podemos verificar se foi instalado com o comando

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>                  $ nasm --version                     </li>
         <li>*-----------------------------------------------------*</li>
</ul>

que deve retornar a versão do aplicativo instalada em sua maquina, no meu caso

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>                 > NASM version 2.15.05                </li>
         <li>*-----------------------------------------------------*</li>
</ul>

e claro, precisamos também do git na maquina, caso não tenha ainda execute o comando

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>              $ sudo apt install git                   </li>
         <li>*-----------------------------------------------------*</li>
</ul>

# Clonando repositorio
Para clonar o repositorio basta copiar o link http ou ssh dependendo da sua conexão e executar junto ao comando git clone dentro do diretorio que deseja armazenar a pasta, ex

https:
<ul style="list-style: none;">
         <li>*--------------------------------------------------------------------*</li>
         <li>    $ git clone https://github.com/erickNA2/jumpers_assembly.git      </li>
         <li>*--------------------------------------------------------------------*</li>
</ul>

ssh:
<ul style="list-style: none;">
         <li>*--------------------------------------------------------------------*</li>
         <li>      $ git clone git@github.com:erickNA2/jumpers_assembly.git        </li>
         <li>*--------------------------------------------------------------------*</li>
</ul>

# Compilando o arquivo
Apos clonar o repositorio, localize o arquivo *jmp_cmp.asm* e com o terminal no diretorio execute o comando

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>       $ nasm -f elf -o jmp_cmp.o jmp_cmp.asm          </li>
         <li>*-----------------------------------------------------*</li>
</ul>

esse comando ira gerar um objeto escrito em codigo de maquina que iremos transformar em um executavel atravéz do comando

<ul style="list-style: none;">
         <li>*-----------------------------------------------------*</li>
         <li>          $ ld -m elf_i386 -o jmp_cmp jmp_cmp.o        </li>
         <li>*-----------------------------------------------------*</li>
</ul>

apos a operação o executavel *jmp_cmp* sera gerado e basta executalo para velo em ação

<ul style="list-style: none;">
         <li>*------------------------------------------*</li>
         <li>              $ ./jmp_cmp                   </li>
         <li>              > diferente                   </li>
         <li>*------------------------------------------*</li>
</ul>

# Leitura do codigo
O proposito do programa é mostrar as diferentes condições tratadas pelos jumpers dentro de um codigo x86 assembly e par atingir esse objetivo é necessario analisar o codigo, pois encontraremos a maior parte dos jumpers de comparação da linguagem

<ul style="list-style: none;">
         <li>*==========================*</li>
         <li>        je equal            </li>
         <li>        jne notequal        </li>
         <li>        jg greater          </li>
         <li>        jge greaterorequal  </li>
         <li>        jl lesser           </li>
         <li>        jle lesserorequal   </li>
         <li>        jz zero             </li>
         <li>        jnz notzero         </li>
         <li>*==========================*</li>
</ul>

Para melhor entendimento é aconselhavel rodar o programa junto a um debuger como por exemplo <a href="https://www.onlinegdb.com/">gdb</a>.
