# Problem
# write test for CashRegister#accept_money

require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money
    assert_equal previous_amount + 20, current_amount
  end
end