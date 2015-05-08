#require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new("USD", 1)
eur = Currency.new("Eur", 0.75)
#us_conversian_rate = Converter.new([:USD])

puts usd.name
puts usd.amount
puts eur.name
puts eur.amount

puts usd.equals
