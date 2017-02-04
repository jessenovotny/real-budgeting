class SubscribersController < ApplicationController

  def create
    subscriber = Subscriber.find_or_create_by(subscriber_params)
    LeadMagnetMailer.send_playbook(subscriber).deliver
  end

  def contact_form
    subscriber = Subscriber.find_or_create(email: params[:email])
    ContactFormMailer.notify_admin(params).deliver
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
