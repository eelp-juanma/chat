class HomeController < ApplicationController
  def index
  end

  def send_comment
    #redirect_to :back
    Pusher.trigger('presence-test_channel', 'send_message', params)
    render nothing: true
  end

  def send_loc
    render nothing: true, status: :ok
  end
end
