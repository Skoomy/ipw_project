class Eleve < ActiveRecord::Base
  attr_accessor :nom, :prenom, :promotion, :email, :num_tel
end
