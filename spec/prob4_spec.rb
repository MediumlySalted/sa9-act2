require 'prob4'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank_account = BankAccount.new(40)
      bank_account.deposit(20)
      expect(bank_account.balance).to eq(60)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bank_account = BankAccount.new(40)
      bank_account.withdraw(40)
      expect(bank_account.balance).to eq(0)
    end

    it "does not change the balance if insufficient funds" do
      bank_account = BankAccount.new(20)
      bank_account.withdraw(40)
      expect(bank_account.balance).to eq(20)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      bank_account = BankAccount.new(40)
      expect(bank_account.balance).to eq(40)
    end
  end
end
