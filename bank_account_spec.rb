require('minitest/autorun')
require('minitest/rg')  # for colours: greed/red
require_relative('bank_account')

class TestBankAccount < MiniTest::Test

#  setup lets us not have to type BankAccount instantiation for each test
  #  MiniTest::Test checks chode to look for methods prefixed by test_
  def setup
   # @account = BankAccount.new('Jay', 5000, 'business', "20-20-20")
   @account = BankAccount.new('Jay', 5000, 'business')

  end
  
  def test_account_name
    assert_equal('Jay', @account.holder_name)
  end

  def test_account_balance
    assert_equal(5000, @account.balance)
  end

  def test_account_genre
    assert_equal('business', @account.genre)
  end

  def test_set_account_name
    # @account.set_holder_name("Valerie")  # this was way you do it when you have old way setter method (ie not attr_setter)
    @account.holder_name = "Valerie"
    assert_equal("Valerie", @account.holder_name)
  end

  # def test_set_account_balance
  #   # @account.set_account_balance(30)
  #   @account.balance = 30
  #   assert_equal(30, @account.balance)
  # end

  def test_set_account_genre
    # @account.set_account_genre("Personal")
    @account.genre = "Personal"
    assert_equal('Personal', @account.genre)
  end

# ----this eg is to practice coding a getter
  # def test_sort_code
  #   assert_equal('20-20-20', @account.sortcode)
  # end

def test_pay_into_account
  @account.pay_in(1000)
  assert_equal(6000, @account.balance)
end

 def test_monthly_fee
    @account.monthly_fee
    assert_equal(4950, @account.balance)
 end

def test_monthly_fee_business
  @account.monthly_fee
  assert_equal(4950, @account.balance)
end

# def test_monthly_fee_personal
#   @account.monthly_fee
#   assert_equal(4990, @account.balance)
# end




















end
