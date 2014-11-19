class UserMailer < ActionMailer::Base
  default from: "support@glacial-coast-6186.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @name = user.email.split('@').first

    mail to: user.email
  end
end
