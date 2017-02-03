class ContactFormMailer < ApplicationMailer
  default from: 'no-reply@realbudgeting.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_form_mailer.notify_admin.subject
  #
  def notify_admin (message_details)
    @message_details = message_details
    mail(to: "jesse@realbudgeting.com", subject: message_details[:name] + "contacted Real Budgeting")
  end
end
