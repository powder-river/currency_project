require "./currency_converter.rb"
require "./currency_ammount.rb"

american_dollar = Currency_Ammount.new("USD")
us_conversian_rate = Converter.new([:USD])

puts american_dollar.currency_name

puts us_conversian_rate.rates
