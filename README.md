
[![license mit](https://img.shields.io/github/license/robsoncartes/prog-avancada-bd?color=RED)](https://img.shields.io/github/license/robsoncartes/prog-avancada-bd/blob/master/LICENSE.md)

## FATEC SJC - Professor Jessen Vidal

### **Disciplina:** Programação Avançada de Banco de Dados

### **Professor:** Carlos Augusto Lombardi Garcia

## Descrição do Problema

Na tabela employees existe um trigger que é executado a cada mudança de cargo ou departamento. Faça as alterações necessárias para registrar o salário recebido pelo empregado no cargo/departamento anterior e no novo cargo/departamento no momento da troca. Antes de terminar o trigger, exiba uma mensagem mostrando o aumento salarial que o funcionário teve enquanto esteve no cargo/departamento anterior.

## Project setup
**1.** Instalação de Docker como seguindo instruções em https://www.docker.com/
**2. ** Coleta de imagem: Abrir Prompt de Comando/Terminal e executar comando:
`docker pull wnameless/oracle-xe-11g-r2 `
**3. ** Rodar container utilizando o seguinte comando no Prompt de Comando/Terminal: 
`docker run -d -p 49161:1521 wnameless/oracle-xe-11g-r2`
**4. ** Conectar, utilizando o SQLDeveloper, no usuário **system**, senha **oracle**, utilizando a porta 49161;
**5. ** Rodar os dois comandos SQL a seguir, para desbloqueio do usuário **HR**, e informando a senha **oracle**:
```sql
ALTER USER hr ACCOUNT UNLOCK; 
ALTER USER hr IDENTIFIED BY oracle;
```
**6. ** Conectar pelo SQLDeveloper ao usuário **HR**, senha **oracle**, utilizando a porta 49161;

### Resolução do Problema
A solução do problema proposto está contido na pasta "ScriptsSQL". Os dois arquivos fazem parte da solução, e devem ser executados na ordem numerada.
Para executar, basta inserir o código do arquivo no SQLDeveloper e utilizar o botão "Executar Script", ou a tecla de atalho **F5**.

### Membros do Grupo

|             **Nome**    	     |             **Email**           |                **Github**            	 |
|:------------------------------:|:-------------------------------:|:---------------------------------------:|
| Francilei Augusto dos Santos   |  augustodossantos.ti@gmail.com  |  https://github.com/augustodossantosti  |
| Jonathan Cezar de Souza Silva  |  joohnnathans@gmail.com   	   |  https://github.com/joohnnathans	     |
| Matheus Henrique Gonçalves  	 |  matheushgf.ferreira@gmail.com  |  https://github.com/matheushgf 	     |
| Railson Tales de Oliveira  	 |  railson777@gmail.com  	       |  https://github.com/RailsonTales  	     |
| Robson de Sousa 	             |  robsoncartes@outlook.com       |  https://github.com/robsoncartes  	     |
