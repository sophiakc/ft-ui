require "ft_send_text"
require 'pry'

class TextsController < ApplicationController
  def create
    sender = FtSendText.new(text: params[:text], speed: params[:speed], color: params[:color])
    # sender.send
    # p "very ok"
    # binding.pry
    # pid = fork do
    #   sender.send
    # end

    # system "ls"
    system sender.send
    # p sender.send
    # puts "PID #{pid}"
    redirect_to action: :index
    # binding.pry
  end
end

