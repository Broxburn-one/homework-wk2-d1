require('minitest/autorun')
require('minitest/rg')  # for colours: greed/red
require_relative('../bank_account')
require_relative('../bank')

class TestBank < MiniTest::Test

  def setup
  # #  a minitest utility lets us do this
    bank_account_1 = BankAccount.new('Jay',5000,'business')
    bank_account_2 = BankAccount.new('Rick',1,'personal')
    bank_account_3 = BankAccount.new('Kat',7500,'business')
    bank_account_4 = BankAccount.new('Val',800,'personal')

    bank_accounts = [ bank_account_1, bank_account_2, bank_account_3, bank_account_4 ]

    @bank = Bank.new( bank_accounts )
  end

  def test_bank_account_initial_state
    assert_equal(4,@bank.number_of_accounts)
  end

  def test_total_cash_in_accounts
    assert_equal(13301,@bank.total_cash)
  end
end