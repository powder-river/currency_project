require "./currency_converter.rb"
require "./currency_ammount.rb"
#require ".currency_trader.rb"

usd = Currency.new(:USD, 1)
eur = Currency.new(:EUR, 1)
ils = Currency.new(:ILS, 1)
#whatever = Currency.new(:BBB, 1)
currency_values = {USD: 1.0, EUR: 0.74, ILS: 3.87}
#currency_future = {USD: 1.0, EUR: 0.53, ILS: 4.21}

converter = CurrencyConverter.new(currency_values)

#currency_trading = CurrencyTrader.new(usd, currency_values, currency_future)




#========testing zone===========================================================
#this tests lines 7-10 in Currency Class
#p usd.code
#p usd.amount

#this tests lines 14-16 in Currency Class
#p usd == usd
#p usd == ils

#this tests lines addition,subtraction, and multiplication methods in Currency Class
#p usd + usd
#p usd + ils

#this tests to make sure currency conversion is working
p converter.convert(ils, :EUR)

#hard mode testing==============================================================

#p currency_trading.trade (usd, :EUR, ???)
