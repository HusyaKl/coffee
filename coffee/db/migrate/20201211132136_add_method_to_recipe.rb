class AddMethodToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :method, :string
  end
end
