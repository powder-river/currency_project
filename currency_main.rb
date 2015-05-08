#require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new("USD", 1)
usd_happy = Currency.new("USD", 2)
eur = Currency.new("Eur", 0.75)

equality = (usd),(eur)
#us_conversian_rate = Converter.new([:USD])

puts usd.name
puts usd.amount

puts eur.name
puts eur.amount

puts usd.equals
puts eur.equals

puts usd.not_equal
puts eur.not_equal

puts usd == eur

puts usd.amount + usd_happy.amount
