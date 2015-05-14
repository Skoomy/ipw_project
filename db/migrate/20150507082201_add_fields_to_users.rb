class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :promotion, :integer
    add_column :users, :num_tel, :integer
  end
end
