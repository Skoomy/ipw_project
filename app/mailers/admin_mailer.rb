class AdminMailer < ApplicationMailer
  default from: 'notifications@job_board.com'
  
  def new_user_waiting_for_approval
    mail(to: ENV['gmail_username'], subject: 'Nouvel utilisateur')
  end
end
