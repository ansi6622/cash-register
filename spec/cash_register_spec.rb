require 'cash_register'

describe CashRegister do
  describe "initialization" do
    it 'takes an initial amount' do
      cash_register = CashRegister.new(74.32)

      expect(cash_register.total).to eq(74.32)
    end
  end

  describe "#purchase" do
    it "takes a float and adds it to the total" do
      cash_register = CashRegister.new
      cash_register.purchase(10.99)

      expect(cash_register.total).to eq(10.99)
    end
  end

  describe "#pay" do
    it "takes the amount paid and returns the change that is owed" do
      cash_register = CashRegister.new
      cash_register.purchase(10.99)
      change = cash_register.pay(20.00)

      expect(change).to eq(9.01)
    end
  end
end
