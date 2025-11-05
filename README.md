### Aula 05/11
- Como simular um circuito
  - Crie o projeto com o circuito (normalmente, a unica diferença é que vc vai ter que adicionar essa config de simulação)
  - <img width="419" height="233" alt="image" src="https://github.com/user-attachments/assets/026d3af5-6b8c-4fa5-97a4-a5e45511dab4" />
  - Escreva os arquivos vhdl normalmente
  - Crie um testbench (nomeModule_tb.vhd.)
    - Crie um arquivo vhdl (ele será o testbecnh)
    - Descreva o testbench
    - <img width="697" height="573" alt="image" src="https://github.com/user-attachments/assets/5d96355d-b9a2-45c4-b181-53aa86ea0d1e" />
    - Crie um novo diretorio externo chamado nomeModule_tb, e cole nele o nomeModule.vhd e nomeModule_tb.vhd
    - <img width="638" height="170" alt="image" src="https://github.com/user-attachments/assets/b9e0e606-9b0c-4bed-886f-b2210a73384f" />
  - Abra o aplicativo questa para simular
    - file -> change directory (escolhe a pasta onde vc vai simular nomeModule_tb) 
    - Va no menu file -> novo -> project (de o nome do projeto)
    - <img width="330" height="286" alt="image" src="https://github.com/user-attachments/assets/ec2c7b8e-779c-4051-ae58-cc864da8ed0d" />
    - Aperte OK, na nova janela: add existing file -> adicione os DOIS arquivos, do modulo e modulo_tb
    - na aba library ficam o "work" que tem os arquivos vc ira compilar do projeto
    - <img width="184" height="101" alt="image" src="https://github.com/user-attachments/assets/71631167-7ecb-4476-98cd-4ffe44968b80" />
    - selecione "work", e no menu superior va para: compile -> compile all
    - compilado, botao direito em cima do nomeModule_tb -> simulate
  - Simule usando o questa
    - apoós iniciar a simulação, selecione os objetos e adicione wave
    - <img width="453" height="208" alt="image" src="https://github.com/user-attachments/assets/eb3df166-b36d-4ae2-b971-7874af1138b8" />
    
    

    
