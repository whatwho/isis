require 'isis/plugins/base'
# require 'dinabaztag'

class Isis::Plugin::Dinabaztag < Isis::Plugin::Base

  def initialize
    @dinabaztag = ""
  end

  def respond_to_msg?(msg, speaker)
    commands = msg.split
    
    puts commands.inspect
    
    return false unless commands.shift == "!dinabaztag"

    @message = commands.join( " " )
    
    true
  end

  def response
    "dinabaztag: #{@message}"
  end

end
