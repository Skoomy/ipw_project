class UserMailer < ApplicationMailer
  default from: 'notifications@job_board.com'
  
  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Bienvenue!')
  end
end
