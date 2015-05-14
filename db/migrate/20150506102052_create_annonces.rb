class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :entreprise
      t.string :titre
      t.string :type_offre
      t.text :description
      t.integer :duree
      t.date :date_debut
      t.string :moyen_contact

      t.timestamps null: false
    end
  end
end
