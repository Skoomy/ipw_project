class Annonce < ActiveRecord::Base
  belongs_to :user
  
  def approved?
    self.approved == true
  end
  
end
