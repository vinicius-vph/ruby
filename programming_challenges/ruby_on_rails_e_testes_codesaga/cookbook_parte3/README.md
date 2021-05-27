Detalhes de uma receita
=======================

Nossa aplicação está evoluindo, mas os visitantes ainda não podem ver todas as informações para o preparo de uma receita. Nesse desafio você deve permitir que o usuário clique em uma receita e veja, além dos dados da listagem, outras informações como:

- Ingredientes (texto longo - *text*)
- Como preparar (texto longo - *text*)

Para isso, você precisa criar um link para a página de detalhes de uma receita. Lembre de usar o método `link_to` e de receber o `id` da receita via *controller*. Para adicionar atributos no *model* `Recipe`, você deve criar uma nova *migration* usando o comando `rails generate migration add_attributes_to_recipe` informando os atributos que deseja adicionar.

- [Active Record Migrations: creating a migration](https://guides.rubyonrails.org/active_record_migrations.html#creating-a-migration)
