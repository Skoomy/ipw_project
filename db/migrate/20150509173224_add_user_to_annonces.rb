class AddUserToAnnonces < ActiveRecord::Migration
  def change
    add_reference :annonces, :user, index: true
    add_foreign_key :annonces, :users
  end
end
