# Inclui+ — Plataforma de Acessibilidade Colaborativa  
O Inclui+ é uma plataforma web colaborativa projetada para a divulgação e avaliação da acessibilidade em estabelecimentos públicos e comerciais. O objetivo principal é facilitar o acesso a informações sobre acessibilidade, promovendo a inclusão e a conscientização sobre a importância de ambientes acessíveis para todos. 

📌 Sobre o Projeto

A aplicação permite que os usuários consultem informações sobre locais acessíveis e compartilhem suas próprias experiências através de avaliações e comentários. O sistema opera com dois perfis distintos: Usuário, focado em consulta e avaliação, e Administrador, responsável pela gestão dos dados técnicos de acessibilidade.  

Principais Objetivos: Desenvolver um site colaborativo para compartilhamento de informações de acessibilidade, reunir avaliações e comentários para ajudar pessoas a encontrarem ambientes inclusivos e promovera conscientização social sobre barreiras arquitetônicas e de acesso.  

O projeto foi construído utilizando tecnologias modernas para garantir segurança e escalabilidade

Linguagem: Python

Arquitetura: MVC (Model-View-Controller)

Banco de Dados: PostgreSQL

Persistência: ORM (Object-Relational Mapping) para gerenciamento de dados

Front-end: HTML5 e CSS3

Design/Prototipagem: Figma

🛠️ Funcionalidades (Requisitos)

 Requisitos Funcionais (RF): 
 
  RF01: Cadastro de novos usuários.  
  RF02: Login e autenticação via requisição POST segura.  
  RF03: Visualização da acessibilidade dos estabelecimentos cadastrados.  
  RF04: Envio de comentários e feedbacks sobre os locais.  
  RF05: Busca de locais acessíveis próximos.  
  RF06: Recuperação de conta através de token ou link funcional.  
  RF07: Opção de publicar comentários de forma identificada ou anônima.  
  RF08: Controle de acesso para perfis de Usuário e Administrador.  
  
 Requisitos Não Funcionais (RNF): 
 
   RNF01/02: Interface simples, acessível e responsiva (Desktop/Mobile).  
   RNF03/08: Segurança rigorosa dos dados e proteção contra acessos não autorizados.  
   RNF05: Armazenamento de senhas utilizando algoritmos de hashing avançados.  
   
Arquitetura e Estrutura

A aplicação segue o padrão MVC, garantindo a separação entre interface, lógica de negócio e dados.  

Estrutura de Pastas: 

/projeto-inclui+

├── app.py                   # Arquivo principal

├── config/                  # Configurações do banco de dados

├── models/                  # Definição de tabelas e lógica de dados

│   ├── usuario.py           # Modelagem dos perfis de usuário

│   ├── estabelecimento.py   # Dados de acessibilidade

│   └── avaliação.py         # Lógica de notas e comentários

├── controllers/             # Lógica de negócio e rotas

│   ├── auth_controller.py   # Autenticação e Recuperação

│   └── local_controller.py  # Busca e edição

├── views/                   # Interface do Usuário

│   ├── static/              # CSS, imagens e scripts

│   └── templates/           # Arquivos HTML

├── middlewares/             # Filtros de segurança

├── migrations/              # Histórico do banco de dados

└── requirements.txt         # Dependências do projeto

🔐 Regras de Negócio (RN)   

  RN01: Apenas usuários autenticados interagem com o sistema; Administradores editam dados técnicos.  
  RN02: Cada usuário pode avaliar um estabelecimento apenas uma vez para manter a integridade da média.  
  RN05: Nenhuma senha é armazenada em texto plano; todas passam por hashing.  
  RN07: Comentários ofensivos estão sujeitos a moderação e remoção.  
  RN08: Médias de avaliação são públicas para visualização, mesmo sem login.  
  
Equipe do Projeto  

 Maria: Scrum Master e Desenvolvedora (Organização, Documentação e Front-end)  
 Eliete: Desenvolvedora Back-end (Autenticação, Lógica de Perfis e Segurança)  
 Luana: Desenvolvedora Front-end (Layout, UI/UX e Integração)  
 Francianny: Banco de Dados e Testes (Modelagem PostgreSQL, ORM e Documentação Técnica)
 
Este projeto faz parte do curso de Desenvolvimento de Software Multiplataforma (3º Semestre) da Fatec Osasco.
