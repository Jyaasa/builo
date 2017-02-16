ActionMailer::Base.smtp_settings = {
  address: ENV['MAILER_ADDRESS'],
  port: ENV['MAILER_PORT'],
  domain: ENV['MAILER_DOMAIN'],
  authentication: 'plain',
  enable_starttls_auto: true,
  user_name: ENV['GMAIL_USERNAME'],
  password: ENV['GMAIL_PASSWORD']
}
