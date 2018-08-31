require 'espeak'

class TvShow
  attr_accessor :quote, :fact, :characters, :show_name

  def initialize(show_name, characters=nil, quote=nil, fact=nil)
    @show_name = show_name
    @characters = characters
    @quote = quote
    @fact = fact
    self.class.all << self
  end
  
  @tvshows = []

  def self.all
    @tvshows
  end

  def self.print_all
    @tvshows.each do |tvshow|
      puts "|" + "#{tvshow.show_name}".center(25) + "|"
    end
  end

  def self.count
    puts @tvshows.count
  end

  def print_quote
    puts @quote
  end

  def speak_quote
    speech = ESpeak::Speech.new(@quote)
    speech.speak # invokes espeak
  end
end