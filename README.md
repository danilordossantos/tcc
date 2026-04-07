# MedAcad 🏥

> Sistema web de gestão para clínica médica acadêmica — Trabalho de Conclusão de Curso (ADS)

![Java](https://img.shields.io/badge/Java-8-orange?style=flat-square&logo=openjdk)
![MySQL](https://img.shields.io/badge/MySQL-8-blue?style=flat-square&logo=mysql)
![Tomcat](https://img.shields.io/badge/Apache_Tomcat-9-red?style=flat-square&logo=apachetomcat)
![NetBeans](https://img.shields.io/badge/NetBeans-8.2-green?style=flat-square&logo=apachenetbeanside)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat-square)

---

## Sobre o projeto

MedAcad é uma aplicação web de gestão para clínicas médicas, desenvolvida como Trabalho de Conclusão de Curso no curso de Análise e Desenvolvimento de Sistemas. O sistema contempla três perfis de acesso: **administração**, **atendimento** e **médico**.

---

## Pré-requisitos

Antes de começar, instale os seguintes softwares:

| Software | Versão |
|---|---|
| MySQL | 8 |
| MySQL Workbench | 8 |
| JDK | 8 |
| NetBeans IDE | 8.2 |
| Apache Tomcat | 9 |
| mysql-connector-j | 8.0.32 |

> ⚠️ **Atenção:** configure o MySQL Workbench com a senha `AdMiN.12` antes de prosseguir.

> ⬇️ Faça o download do driver: [mysql-connector-j-8.0.32](https://dev.mysql.com/downloads/connector/j/)

---

## Instalação

**1. Criar o banco de dados**

Abra o arquivo `clinica_medica.sql` no MySQL Workbench e execute-o para criar o banco de dados do sistema.

**2. Configurar o servidor web**

No NetBeans, crie um novo servidor web utilizando o Apache Tomcat 9.

**3. Adicionar o driver JDBC**

Em **Bibliotecas**, clique com o botão direito em *Adicionar JAR/Pasta* e selecione o arquivo `mysql-connector-j-8.0.32.jar`.

**4. Criar o usuário administrador**

> ⚠️ **Etapa importante:** crie um usuário do tipo **administrador** com todas as permissões de acesso. Ele será responsável por cadastrar os demais usuários (médicos e atendentes). Isso pode ser feito diretamente no banco de dados ou pelo NetBeans.

**5. Importar o projeto**

Vá em *Arquivo → Importar do Zip* e selecione o arquivo `clinica_medica.zip`.

---

## Executando o projeto

No NetBeans, clique em **Limpar e Construir** e depois em **Executar**.

Ao abrir no navegador, acesse o sistema digitando a URL correspondente ao perfil:

| Perfil | URL |
|---|---|
| Administração | `http://localhost:8080/clinica_medica/login_administracao.html` |
| Atendimento | `http://localhost:8080/clinica_medica/login_atendimento.html` |
| Médico | `http://localhost:8080/clinica_medica/login_medico.html` |

---

## Autor

**Danilo "Abranches" Ribeiro dos Santos**

Críticas, sugestões e elogios são bem-vindos! Este projeto representa meu aprendizado na época do curso — desenvolvido com o melhor do conhecimento que eu tinha. 🖖🏾
