class Bank
    def initialize(input_accounts)
      @accounts = input_accounts
    end

    def number_of_accounts
      @accounts.length
    end

    def test_total_cash_in_accounts
        assert_equal(13301,@bank.total_cash)
    end


    def total_cash
      total = 0
      for account in @accounts
        total += account.balance
      end
      return total
    end
end