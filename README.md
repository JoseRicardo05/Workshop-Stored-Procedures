# IV Workshop Uniprocessus de TI: Stored Procedures 🚀

Este repositório foi desenvolvido para o **IV Workshop Uniprocessus de TI (2026)** pelo grupo de alunos do curso de Análise e Desenvolvimento de Sistemas. O objetivo é demonstrar a aplicação prática e os benefícios de performance e segurança dos Procedimentos Armazenados (Stored Procedures) em bancos de dados relacionais.

## 📌 Sobre o Projeto

As *Stored Procedures* são blocos de código SQL armazenados diretamente no servidor de banco de dados. Elas permitem centralizar a lógica de negócio, reduzir o tráfego de rede e aumentar a segurança contra ataques como SQL Injection.

### Principais Benefícios Analisados:
*   **Performance:** Execução pré-compilada no lado do servidor.
*   **Segurança:** Controle de acesso granular e encapsulamento de lógica.
*   **Escalabilidade:** Redução do overhead de comunicação entre aplicação e banco[cite: 2].

## 💻 Exemplo Prático: Controle de Estoque

O arquivo [`Exemplo_procedure_sql.sql`](./Exemplo_procedure_sql.sql) contido neste repositório apresenta uma procedure clássica de baixa de estoque. Ela demonstra o uso de **Lógica de Controle (IF/ELSE)** dentro do banco, garantindo que um produto só seja vendido se houver quantidade suficiente em estoque.

## 👥 Integrantes do Grupo

*   Guilherme Massafera
*   Iarlley Santos
*   Higor Elias
*   José Ricardo Carvalho

## 📚 Referências Acadêmicas

*   ELMASRI, Ramez; NAVATHE, Shamkant B. **Sistemas de banco de dados**. 7. ed. Pearson, 2018[cite: 2].
*   DATE, C. J. **Introdução a sistemas de bancos de dados**. 8. ed. Elsevier, 2004[cite: 2].
