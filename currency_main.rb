require "./currency_converter.rb"
require "./currency_ammount.rb"

usd = Currency.new("USD", 1)
usd_happy = Currency.new("USD", 2.4)
eur = Currency.new("Eur", 0.75)

currency_values = {USD: 1, EUR: 1, GBP: 1, ILS:1, IQD: 1, CNY: 1, }

#equality = (usd),(eur)
#us_conversian_rate = Converter.new([:USD])

#def i_must_have_value(value)
#  raise TypeError, "you must give me truth" if value == false
#end
#
#i_must_have_value(false)
# p usd.name
p usd + eur

# p usd != usd

# usd.equal(usd_happy)
#puts usd == usd
