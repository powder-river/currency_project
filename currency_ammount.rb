
class Currency
  attr_reader :name, :amount

  def initialize (name, amount)
    @name = name
    @amount = amount
  end

#lines 11-17 sets both @amount to equal true. do not yet know why this is important
  def equals
  @amount == @amount
  @name == @name
  end

  def == (other)
    equals == other
  end

#lines 20-28 establishes the !equals but again not sure if I did this correct
  def not_equal
    @ammount != @amount
    @name != @name
  end

  def != (other)
    not_equal != other
  end

  def + (other)
    Currency.new(@name + (@amount * other), @amount)
  end




end
