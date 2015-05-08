class CurrencyConverter
  attr_reader :conversion_rates

  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

  def convert(currency_object, code)
    if code == currency_object.code
      Currency.new(code, currency_object.amount)
    else
      Currency.new(code, currency_object.amount * conversion_rates[code])
    end
  end

  def god_help_me
    Currency.new()
  end



end
