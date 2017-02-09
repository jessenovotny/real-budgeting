class SubscribersController < ApplicationController

  def create
    subscriber = Subscriber.find_or_create_by(subscriber_params)
    LeadMagnetMailer.send_playbook(subscriber).deliver_now
  end

  def contact_form
    subscriber = Subscriber.find_or_create_by(email: params[:email])
    ContactFormMailer.notify_admin(params).deliver_now
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
