class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@job_board.com'
  layout 'mailer'
end
