class CreateMasseges < ActiveRecord::Migration[6.0]
  def change
    create_table :masseges do |t|
      t.string :author, default: current_user.email
      t.text :body

      t.timestamps
    end
  end
end
