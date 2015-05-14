class AddApprovedToAnnonces < ActiveRecord::Migration
  def change
    add_column :annonces, :approved, :boolean, default: false
  end
end
