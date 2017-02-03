class SubscribersController < ApplicationController

  def create
    binding.pry
    subscriber = Subscriber.find_or_create_by(email: params[:email])
    LeadMagnetMailer.send_playbook(subscriber).deliver
    LeadMagnetMailer.notify_admin(subscriber).deliver
  end

  def contact_form
    subscriber = Subscriber.find_or_create_by(email: params[:email])
    ContactFormMailer.notify_admin(params).deliver
  end
end
