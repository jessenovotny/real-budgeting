class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    # render component: 'Home'
    @subscriber = Subscriber.new
  end
  
end
