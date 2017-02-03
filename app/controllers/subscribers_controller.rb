class SubscribersController < ApplicationController

  def create
    binding.pry
    subscriber = Subscriber.find_or_create_by(email: params[:email])
    LeadMagnetMailer.send_playbook(subscriber).deliver
  end
end
