class FtSendText

  attr_reader :font_path, :host, :text, :once, :speed, :color

  BASE_PATH="~/src/protonight/flaschen-taschen/client"

  def initialize(
    font_path:"#{BASE_PATH}/fonts/10x20.bdf",
    host:"localhost",
    text:"hello world",
    once: true,
    speed: 60,
    color: "#FFFFFF"
  )
    @font_path = font_path
    @host = host
    @text = text
    @once = once
    @speed = speed
    @color = color
  end

  def send
    `#{BASE_PATH}/send-text -f #{font_path} -h #{host} -s #{speed} #{once_option} -c #{color} #{text}`
  end

  def once_option
    "-o" if once
  end

end
