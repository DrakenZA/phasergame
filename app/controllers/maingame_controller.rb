class MaingameController < ApplicationController
  def index

  end

  def create
    @inputfromuser = params[:q]
    PrivatePub.publish_to "/test", :chat_message => @inputfromuser




  end
end
