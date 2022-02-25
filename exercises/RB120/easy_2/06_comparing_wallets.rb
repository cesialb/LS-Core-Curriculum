# Problem:
  # Modify this code so it works

# Rules:
  # Do not make the amount in the wallet accessible to any method outside of the Wallet class

# Mental Model:
  # What is wrong with it? Look at errors:
    # <=> method: "Undefined local variable or method amount"

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    self.amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end