require 'faker'
require_relative 'tvshow'

rm = TvShow.new('Rick and Morty')
fg = TvShow.new('Family Guy')
cn = TvShow.new('Chuck Norris')
bb = TvShow.new('Breaking Bad')

while true do
  system('clear')
  puts '-----------------------------'
  puts '|       Friday App          |'
  puts '|    1) Rick and Morty      |'
  puts '|    2) Family Guy          |'
  puts '|    3) Chuck Norris        |'
  puts '|    4) Breaking Bad        |'
  puts '|    5) Exit                |'
  puts '|                           |'
  puts '-----------------------------'
  # TvShow.print_all
  print 'Choose Option 1-5: '
  response = gets.chomp
  # Generates quotes based on user input
  if response == '1'
    rm.quote = Faker::RickAndMorty.quote
    rm.speak_quote
  elsif response == '2'
    quote = Faker::FamilyGuy.quote
  elsif response == '3'
    quote = Faker::ChuckNorris.fact
  elsif response == '4'
    quote = Faker::BreakingBad.episode
  # Exits program
  elsif response == '5'
    break
  else
    puts 'Incorrect Input'
  end

  # Speak out quote
  speech = ESpeak::Speech.new(quote)
  speech.speak # invokes espeak
end
