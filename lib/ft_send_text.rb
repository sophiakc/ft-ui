require 'pry'

class FtSendText

  attr_reader :font_path, :host, :text, :once, :speed, :color

  BASE_PATH="/Users/sophiakc/code/sophiakc/noisebridge/flaschen-taschen/client"

  def initialize(
    font_path:  "#{BASE_PATH}/fonts/5x5.bdf",
    # layer:      15,
    host:       "localhost",
    text:       "hello world",
    once:       true,
    speed:      60,
    color:      "#cff0000"
  )
    @font_path  = font_path
    # @layer      = layer
    @host       = host
    @text       = text
    @once       = once_option
    @speed      = speed
    @color      = color
  end

  def send
    "#{BASE_PATH}/send-text -f #{@font_path} -c#{@color} -h #{@host} -s #{@speed} #{@once} #{@text}"
  end

  def once_option
    "-o" if once
  end

end
