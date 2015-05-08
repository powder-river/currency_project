class  CurrencyDenominationError < StandardError
end

class CurrencyConverter
  attr_reader :conversion_rates, :currency_object, :code

  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

  def convert (currency_object, code)
    if  !conversion_rates.include?(code) || !conversion_rates.include?(currency_object.code)
       raise CurrencyDenominationError, "Currency Denomination Not Found!"
    elsif code == currency_object.code
      Currency.new(code, currency_object.amount)
    else
      Currency.new(code, currency_object.amount * conversion_rates[code] / conversion_rates[currency_object.code])
    end
  end



end
