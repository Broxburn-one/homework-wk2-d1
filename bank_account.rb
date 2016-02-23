class BankAccount

#getter method
  # attr_reader(:holder_name, :balance, :genre)  
  # attr_accessor(:holder_name, :genre, :sortcode)  # this handles both attr_reader and attr_writer
  attr_accessor(:holder_name, :genre)
  attr_reader(:balance)

  # def initialize(holder_name, balance, genre, sortcode)
   def initialize(holder_name, balance, genre)
      @holder_name = holder_name
      @balance= balance
      @genre = genre
    # @sortcode = sortcode
   end

  # def holder_name              # getter methods replaced by attr_reader() 
  #   return @holder_name
  # end

  def balance
    return @balance
  end

#  of course name 'type' is a reserved keyword so best use something else!
  # def genre
  #   return @genre
  # end

#  setter methods substitute this:
  # def set_holder_name(updated_name)
  #   @holder_name = updated_name
  # end

  # def set_account_balance(updated_balance)
  #   @balance = updated_balance
  # end

  # def set_account_genre(updated_genre)
  #   @genre = updated_genre
  # end

# ----this eg is to practice coding a getter
  def sort_code()
    return @sort_code
  end

  def pay_in(value)
    @balance += value
  end

  def monthly_fee()
    # @balance -= 50
    @balance -= 10 if @genre == 'personal'
    @balance -= 50 if @genre == 'business'
  end


  



end


