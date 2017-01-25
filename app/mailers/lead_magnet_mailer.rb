class LeadMagnetMailer < ApplicationMailer
  default from: 'jesse@realbudgeting.com'
  layout 'mailer'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_magnet_mailer.send_playbook.subject
  #
  def send_playbook(user)
    @user = user
    attachments["budgeting-playbook.pdf"]
    @greeting = "Hi"

    mail to: @user.email
  end
end
