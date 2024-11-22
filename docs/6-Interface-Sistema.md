
# 6. Interface do Sistema

<span style="color:red">Pré-requisitos: <a href="4-Projeto-Solucao.md"> Projeto da Solução</a></span>

Com base nas imagens fornecidas, é possível identificar as seguintes interfaces principais da plataforma e sua interação com o usuário:

1. Tela de Cadastro de Parceiros:

• Destinada ao registro de empresas parceiras.

• Contém campos como Razão Social, Nome, CNPJ, E-mail, Tipo, Endereço e Senha.

• Botão “Cadastrar” ao final para confirmar o registro.

2. Tela de Cadastro de Usuário:

• Voltada para o cadastro de usuários gerais.

• Campos incluem Nome, CPF, E-mail e Senha.

• Também apresenta o botão “Cadastrar” para finalização.

3. Tela de Lista de Estabelecimentos:

• Interface de busca e exibição de estabelecimentos cadastrados.

• Apresenta cartões com o nome e endereço dos estabelecimentos, além de um ícone de cesta de compras.

• Barra de pesquisa para localizar estabelecimentos.

• Menu superior com opções como “Início”, “Ajuda”, “Pedidos” e “Perfil”.



Resumo da Interação do Usuário:



• O sistema organiza os cadastros em diferentes categorias, como “Parceiros” e “Usuários”.

• A interface é minimalista e direta, com elementos visuais simples e fáceis de entender.

• O usuário pode navegar entre as telas para registrar informações ou buscar estabelecimentos de forma intuitiva.

## 6.1. Tela principal do sistema


### **Tela Principal:  Mercados Próximos**

1. **Cabeçalho e Navegação**
   - Exibe as opções principais: **Início**, **Ajuda**, **Pedidos** e **Perfil**, para fácil acesso a cada seção.

2. **Lista de Mercados**
   - Mostra mercados próximos com nome, endereço, distância (ex.: "Mercado 01 - Av. Afonso Pena, 2 KM") e horário de funcionamento. Inclui uma opção de **"Solicitar"**.

3. **Detalhes de Sacolas**
   - Exibe o número de sacolas disponíveis e os principais produtos nelas (ex.: "Arroz, Feijão, Macarrão").

4. **Navegação Inferior**
   - Menu fixo com ícones para acesso rápido às seções principais: **Início**, **Ajuda**, **Pedidos** e **Perfil**.

Essa tela oferece uma visão rápida das ofertas e mercados próximos, focada na praticidade e navegação simples.

<img width="479" alt="image" src="https://github.com/user-attachments/assets/7a9c85cc-02ae-44cb-aeb4-05ce81a9423a">


## 6.2. Telas do processo 1

### **Tela de Cadastro**

Cadastro de Usuário

Campos: Nome, CPF, E-mail e Senha.
Botão Cadastrar para concluir o cadastro pessoal.

<img width="478" alt="image" src="https://github.com/user-attachments/assets/3a5315f9-6c0d-4cfe-8070-ebbfd9c8f152">





## 6.3. Telas do processo 2

### **Tela de Cadastro**

**Cadastro de Parceiro**

Campos: Razão Social, Nome, CNPJ, Endereço, E-mail, Senha e Tipo (para identificar o tipo de parceiro).
Botão Cadastrar para finalizar o cadastro de parceiros.

<img width="476" alt="image" src="https://github.com/user-attachments/assets/ceb6bccc-cf4b-49fe-89e2-cf7919ff69c4">



#### 4.3.3 Modelo Físico

Insira aqui o script de criação das tabelas do banco de dados.
[Arquivo SQL](/src/db/CriacaoVazio.sql)
