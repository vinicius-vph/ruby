class AddRecipeTypeToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :recipe_type, null: false, foreign_key: true
  end
end
