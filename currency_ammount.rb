class  CurrencyDenominationError < StandardError
end

class Currency
  attr_reader :code, :amount

  def initialize (code, amount)
    @code = code
    @amount = amount
  end

#checks that currency objects with same
# currency ammount and codes are equal
  def == (currency)
    code == currency.code && amount == currency.amount
  end

#adds together currency amounts
  def + (currency)
    if code == currency.code
      Currency.new(code, amount + currency.amount)
    else
      raise CurrencyDenominationError, "Currency Denominations must match to add"
    end
  end

#subtracts currency amounts
  def - (currency)
    if code == currency.code
       Currency.new(code, amount - currency.amount)
    else
      raise CurrencyDenominationError, "Currency Denominations must match to subtract"
    end
  end

#multiplies currency amounts
  def * (currency)
    if code == currency.code
      Currency.new(code, amount * currency.amount)
    else
      raise CurrencyDenominationError "Currency Denominations must match to multiply"
    end
  end


end
