class CreateEleves < ActiveRecord::Migration
  def change
    create_table :eleves do |t|
      t.string :nom
      t.string :prenom
      t.integer :promotion
      t.string :email
      t.integer :num_tel

      t.timestamps null: false
    end
  end
end
