require "ft_send_text"
require 'pry'

class TextsController < ApplicationController
  def create
    sender = FtSendText.new(text: params[:text], speed: params[:speed], color: params[:color])
    pid = fork do
      sender.send
    end
    puts "PID #{pid}"
    redirect_to action: :index
  end
end
