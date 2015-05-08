#require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new("USD", 1)
#us_conversian_rate = Converter.new([:USD])

puts usd.name
puts usd.amount
