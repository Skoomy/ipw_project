class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :annonces
  
  before_save :assign_role
  
  after_create :send_admin_mail, :send_user_welcome_mail
  
  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval.deliver_now
  end
  
  def send_user_welcome_mail
    UserMailer.welcome_email(self).deliver_now
  end

  def assign_role
    self.role = Role.select(:id).find_by name: "Classique" if self.role.nil?
  end
  
  def active_for_authentication?
    super && approved?
  end
  
  def inactive_message
    if !approved
      :not_approved
    else
      super 
    end
  end
  
  def admin?
    self.role.name == "Admin"
  end
  
end
