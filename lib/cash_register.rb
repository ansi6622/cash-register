class CashRegister
  attr_reader :total

  def initialize(total = 0)
    @total = total
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount)
    amount - @total
  end
end
