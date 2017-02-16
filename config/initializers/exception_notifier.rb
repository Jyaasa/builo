Builo::Application.configure do
  if ENV['RAILS_ENV'] == 'production' || ENV['RAILS_ENV'] == 'staging'
    config.middleware.use ExceptionNotifier, {
      email_prefix: '[Website Error]',
      sender_address: 'builo@example.com',
      exception_recipients: ['alphateam@jyaasa.com']
    }
  end
end