require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new(:USD, 1)
usd_happy = Currency.new(:USD, 1)
eur = Currency.new(:EUR, 1)
ils = Currency.new(:ILS, 1)
whatever = Currency.new(:BBB, 1)
currency_values = {USD: 1.0, EUR: 0.74, ILS: 3.87}

converter = CurrencyConverter.new(currency_values)

p usd.code

p converter.convert(usd, :USD) == usd

#the below puts coresponds with line 12 in CurrencyConverter class
p converter.convert(whatever, :BBB)


#p something.something_else()
