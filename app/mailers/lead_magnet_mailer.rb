class LeadMagnetMailer < ApplicationMailer
  default from: 'jesse@realbudgeting.com'
  layout 'mailer'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_magnet_mailer.send_playbook.subject
  #
  def send_playbook(subscriber)
    @subscriber = subscriber
    attachments["budgeting-playbook.pdf"] = File.read('app/assets/documents/budgeting-playbook.pdf')
    mail(to: @subscriber.email, bcc: "jesse@realbudgeting.com", subject: "Real Budgeting Playbook", from: 'jesse@realbudgeting.com')
  end
end
