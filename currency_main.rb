require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new(:USD, 1)
usd_happy = Currency.new(:USD, 2.4)
eur = Currency.new(:EUR, 0.74)

currency_values = {USD: 1.0, EUR: 0.74, ILS:1,}

converter = CurrencyConverter.new(currency_values)

p usd.code

p converter.convert(usd, :USD) == usd
#the below puts coresponds with line 12 in CurrencyConverter class
p converter.convert(usd, :USD)


#p something.something_else()
