# Preview all emails at http://localhost:3000/rails/mailers/lead_magnet_mailer
class LeadMagnetMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lead_magnet_mailer/send_playbook
  def send_playbook
    LeadMagnetMailer.send_playbook
  end

end
