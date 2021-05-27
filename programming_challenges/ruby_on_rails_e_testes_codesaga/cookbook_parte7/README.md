Classificando receitas por tipo
===============================

Com validações, temos uma aplicação mais robusta, mas queremos que os usuários sejam capazes de escolher tipos para classificar suas receitas. Para evitar erros de digitação, os tipos devem ser previamente cadastrados. Neste desafio você precisa criar um novo *model* (`recipe_type`) e estabelecer a relação entre *models*: uma Receita pertence a um Tipo de Receita e um Tipo de Receita possui muitas Receitas.
Caso necessário, seguem algumas orientações:

- Passo 1: Remova o atributo antigo `recipe_type` da receita.
- Passo 2: Crie o novo *model* `recipe_type`.
- Passo 3: Leia o [**guia sobre Associations**](https://guides.rubyonrails.org/association_basics.html) e como criar uma amarração entre os dois *models*.
- Passo 4: Adicione a relação entre dois *models* nas *migrations*. Para isso, procure por `references` no guia.
- Passo 5: Comece resolvendo os problemas nas telas mais simples (home, detalhes de uma receita etc).
- Passo 6: Após criar a relação, você precisa atualizar o formulário de cadastro de receita para receber um tipo de receita.

Algumas referências que podem te ajudar no desafio:

- [Active Record Associations: The Has Many Association](https://guides.rubyonrails.org/association_basics.html#the-has-many-association)
- [Active Record Associations: The Belongs To Association](https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association)
- [Action View Form Helpers: Select Boxes for Dealing with Models](https://guides.rubyonrails.org/form_helpers.html#select-boxes-for-dealing-with-models)
