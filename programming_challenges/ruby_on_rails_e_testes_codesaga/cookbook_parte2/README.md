Visualizando receitas
=====================

O objetivo de uma aplicação de receitas é mostrar receitas para os visitantes, então vamos utilizar a página inicial do site para que o usuário visualize um resumo de cada receita contendo:

- `title` (Título) (texto simples - *string*)
- `recipe_type` (Tipo da receita) (massas, carnes, entrada, sobremesa, bebida... em texto simples - *string*)
- `cuisine` (Cozinha) (brasileira, árabe, italiana... em texto simples - *string*)
- `difficulty` (Dificuldade) (fácil, médio, difícil, em texto simples - *string*)
- `cook_time` (Tempo de preparo em minutos) (número inteiro - *integer*)

Para realizar esse desafio você precisa criar um *model*. Os erros do `rspec` vão indicar a ausência de uma `constant Recipe`. Lembre-se que em Ruby todas as classes começam com letra maiúscula (assim como as constantes!), então entenda esse erro como "uma classe que está faltando". No Rails vamos criar basicamente dois tipos de classes: *models* e *controllers*. Nesse caso o nome da classe nos indica que é um *model*. Para isso, use o comando `rails generate` model informando o nome da classe e os atributos de acordo com o teste e a especificação acima. :)

- [Active Record Migrations: model generators](https://guides.rubyonrails.org/active_record_migrations.html#model-generators)
