## 4. Projeto da Solução

<span style="color:red">Pré-requisitos: <a href="03-Modelagem do Processo de Negocio.md"> Modelagem do Processo de Negocio</a></span>

## 4.1. Arquitetura da solução


4.1 Arquitetura da Solução
O projeto "Doe Mais" foi desenvolvido para ajudar os usuários a localizar facilmente estabelecimentos e organizações que aceitam doações de alimentos. A solução é composta por módulos simples e eficientes para garantir a funcionalidade necessária sem adicionar complexidade excessiva.

Módulos da Solução

Frontend:

Descrição: Responsável pela interface do usuário. Permite que os usuários visualizem e busquem estabelecimentos próximos.
Tecnologias: HTML, CSS e JavaScript com suporte de um framework leve, como Bootstrap, para design responsivo.

Backend:

Descrição: Lida com a lógica de negócios simples e gerencia a comunicação entre o frontend e o banco de dados.
Tecnologias: Node.js com Express para uma API básica e fácil de implementar.

Banco de Dados:

Descrição: Armazena dados dos estabelecimentos, usuários e registros de doações.
Tecnologias: SQLite ou um banco de dados leve, como o Firebase, para simplificar a configuração e o gerenciamento.

Autenticação:

Descrição: Garante que apenas usuários registrados possam acessar certas funcionalidades, como fazer uma doação.
Tecnologias: JWT para uma autenticação simples baseada em tokens.


 

### 4.2. Protótipos de telas

Visão geral da interação do usuário pelas telas do sistema e protótipo interativo das telas com as funcionalidades que fazem parte do sistema (wireframes).
Apresente as principais interfaces da plataforma. Discuta como ela foi elaborada de forma a atender os requisitos funcionais, não funcionais e histórias de usuário abordados nas <a href="02-Especificação do Projeto.md"> Especificação do Projeto</a>.
A partir das atividades de usuário identificadas na seção anterior, elabore o protótipo de tela de cada uma delas.
![Exemplo de Wireframe](images/wireframe-example.png)

São protótipos usados em design de interface para sugerir a estrutura de um site web e seu relacionamentos entre suas páginas. Um wireframe web é uma ilustração semelhante do layout de elementos fundamentais na interface.
 
![Untitled](https://github.com/user-attachments/assets/f507070d-a9d4-419c-b98e-2dc687d0dc3a)



## Diagrama de Classes

O diagrama de classes ilustra graficamente como será a estrutura do software, e como cada uma das classes da sua estrutura estarão interligadas. Essas classes servem de modelo para materializar os objetos que executarão na memória.

![UML](/docs/images/UML.png)

## Modelo ER

O Modelo ER representa através de um diagrama como as entidades (coisas, objetos) se relacionam entre si na aplicação interativa.]



### 4.3. Modelo de dados

O desenvolvimento da solução proposta requer a existência de bases de dados que permitam efetuar os cadastros de dados e controles associados aos processos identificados, assim como recuperações.
Utilizando a notação do DER (Diagrama Entidade e Relacionamento), elaborem um modelo, na ferramenta visual indicada na disciplina, que contemple todas as entidades e atributos associados às atividades dos processos identificados. Deve ser gerado um único DER que suporte todos os processos escolhidos, visando, assim, uma base de dados integrada. O modelo deve contemplar, também, o controle de acesso de usuários (partes interessadas dos processos) de acordo com os papéis definidos nos modelos do processo de negócio.
_Apresente o modelo de dados por meio de um modelo relacional que contemple todos os conceitos e atributos apresentados na modelagem dos processos._

#### 4.3.2 Esquema Relacional

O Esquema Relacional corresponde à representação dos dados em tabelas juntamente com as restrições de integridade e chave primária.
 
![Banco](https://github.com/ICEI-PUC-Minas-PSG-ADS-TI/PBR-ADS-2024-2-P1-DoeMais/blob/main/docs/images/DER%20-%20Banco%20de%20Dados.png)




### 4.4. Tecnologias

No sistema Doe Mais, iremos utlizar as seguintes tecnologias:

- Backend 

Java 17: Versão estável da linguagem de programação, java é uma linguagem amplamente utilizada no mercado com uma comunidade forte, o que torna aplicações em java fortemente recomendado. 

Framework SpringBoot: É uma ferramenta muito utilizada em diversas áreas da programação que otimiza o trabalho dos desenvolvedores, fazendo com que ele seja focado no desenvolvimento do projeto e não nos processos de configuração e padronização. 

Apache Maven: É uma ferramenta de gerenciamento e compreensão de projetos, com ela vamos poder gerenciar o build e as dependências da nossa aplicação. 

 

- Frontend 

Angular JS: Angular é um framework de código aberto desenvolvido pelo Google para a criação de aplicativos dinâmicos e interativos da web. Ele se baseia em TypeScript, uma linguagem superset do JavaScript. 

 

- IDE 

Intellij community: Uma IDE de desenvolvimento integrado escrito em Java para o desenvolvimento de software de computador escrito em Java, Kotlin, Groovy e outras linguagens baseadas em JVM 

 

- Versionamento 

Git: Sistema de controle de versão. 

GitHub: Plataforma de hospedagem de código fonte que utiliza o git. 


| **Dimensão**   | **Tecnologia**  |
| ---            | ---             |
| SGBD           | MySQL           |
| Front end      | Angular JS      |
| Back end       | Java SpringBoot |
| Deploy         | Github Pages    |

