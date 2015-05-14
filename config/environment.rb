# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Rails.application.configure do
#  config.action_mailer.default_url_options = { :host => 'IP ADDRESS HERE:3000' }
#   config.action_mailer.delivery_method = :smtp
#   config.action_mailer.smtp_settings = {
#       :address              => 'smtp.gmail.com',
#       :port                 => 587,
#       :domain               => 'gmail.com',
#       :user_name            => 'EMAIL_ADDRESS@gmail.com',
#       :password             => 'pass',
#       :authentication       => 'login',
#       :enable_starttls_auto => true
#   }
# end