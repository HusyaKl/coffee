class AddCategoryToMassege < ActiveRecord::Migration[6.0]
  def change
    add_reference :masseges, :category, null: false, foreign_key: {on_delete: cascade}
  end
end
