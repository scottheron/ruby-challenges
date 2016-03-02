class Bank
    
    @@balance = 4000

    def initialize
        
    end
    def balance
        puts "Current balance: #{@@balance}"
    end
    def withdraw
        puts "Enter withdrawl amount:"
        @amount = gets.chomp
        @@balance -= @amount.to_i
        puts "New balance: #{@@balance}"
    end
    def deposit
        puts "Enter deposit amount:"
        @amount = gets.chomp
        @@balance += @amount.to_i
        puts "New balance: #{@@balance}"
    end
end

bank = Bank.new()
puts "Your current balance is: 4000"
begin
    puts "What would you like to do? (deposit, withdraw, balance)"
    mode = gets.chomp
    if mode == "deposit"
        bank.deposit
    elsif mode == "withdraw" 
        bank.withdraw
    elsif mode == "balance" 
        bank.balance
    end
    puts "Another transaction? yes or no"
    answer = gets.chomp
end while answer == "yes"

# #Alternative Code
# BANK_DEPOSIT = 'deposit'
# BANK_WITHDRAW = 'withdraw'
# BANK_CHECK_BALANCE = 'check balance'

# class Bank
#     attr_reader :balance
    
#     def initialize
#         @balance = 0
#     end

#     def deposit(amt)
#         @balance += amt
#     end

#     def withdraw(amt)
#         if amt <= @balance
#             @balance -+ amt
#         end
#     end
# end

# done = false

# bank = Bank.new

# puts 'Your current balance is: '+bank.balance.to_s
# while done == false
#     puts 'What do you want to do? (deposit, withdraw, check balance)'
#     op = gets.chomp
#     if op == BANK_DEPOSIT
#         puts 'How much?'
#         deposit = gets.chomp.to_f
#         bank.deposit(deposit)
#     elsif op == BANK_WITHDRAW
#         puts 'How much?'
#         withdraw = gets.chomp.to_f
#         bank.withdraw(withdrawal)
#     elsif op == BANK_CHECK_BALANCE
#         puts 'Your balance is: '+bank.balance.to_s
#     else
#         puts 'Huh?'
#     end
#     puts 'Are you done?'
#     response = gets.chomp
#         done = response == 'yes'
        
# end