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
    binding.pry
    attachments["budgeting-playbook.pdf"] = File.read('app/assets/documents/budgeting-playbook.pdf')
    mail to: @subscriber.email, subject: "Real Budgeting Playbook" do |format|
      format.text
      format.html { render "lead_magnet_mailer/send_playbook" }
    end
  end
end
