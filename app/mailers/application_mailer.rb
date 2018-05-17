class ApplicationMailer < ActionMailer::Base
  config/environments/{development,test}.rb
  config.action_mailer.default_url_options = { host: 'localhost:3000' }

  layout 'mailer'

  
end
