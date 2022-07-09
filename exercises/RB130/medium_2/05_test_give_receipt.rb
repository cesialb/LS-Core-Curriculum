# Problem
# write test for CashRegister#give_receipt
# ensure it displays a valid receipt

# build objects first

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

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(20)

    transaction.amount_paid = 100
    assert_equal 80, register.change(transaction)
  end

  def test_give_receipt
    register = CashRegister.new(100)
    transaction = Transaction.new(20)

    assert_output ("You've paid #{transaction.item_cost}.\n") do 
      register.give_receipt(transaction)
    end
  end
end