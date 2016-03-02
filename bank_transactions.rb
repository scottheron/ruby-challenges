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