class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :recipe_type
      t.string :cuisine
      t.string :difficulty
      t.integer :cook_time

      t.timestamps
    end
  end
end
