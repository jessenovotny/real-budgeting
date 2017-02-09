class LeadMagnetMailer < ApplicationMailer
  def send_playbook(subscriber)
    @subscriber = subscriber

    # attachments["budgeting-playbook.pdf"] = File.read('app/assets/documents/budgeting-playbook.pdf')
    mail(to: subscriber.email, bcc: 'jesse@realbudgeting.com', subject: "Real Budgeting Playbook", from: "Jesse Novotny <jesse@realbudgeting.com>")
  end
end
