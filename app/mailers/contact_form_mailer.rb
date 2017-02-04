class ContactFormMailer < ApplicationMailer
  def notify_admin (message_details)
    @message_details = message_details
    mail(to: "jesse@realbudgeting.com", subject: message_details[:name] + " contacted Real Budgeting", from: message_details["email"])
  end
end
