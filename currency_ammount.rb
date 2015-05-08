class  CurrencyDenominationError < StandardError
end

class Currency

  attr_reader :code, :amount

  def initialize (code, amount)
    @code = code
    @amount = amount
  end

#lines 11-14 checks that currency objects with same
# currncy ammount and codes are equal
  def ==(currency)
    code == currency.code &&
    amount == currency.amount
  end

#lines 20-28 establishes the !equals but again not sure if I did this correct
  def + (currency)
    if code == currency.code

      Currency.new(code, amount + currency.amount)
    else
      raise CurrencyDenominationError
        puts "Currency must match to add"
    end


  end

  def - (currency)
    if code == currency.code
       Currency.new(code, amount - currency.amount)

    else
      puts "screw you, not possible"
    end
  end

  def * (currency)
    if code == currency.code
      Currency.new(code, amount * currency.amount)
    else
      "screw you, not possible"
    end
  end



end
