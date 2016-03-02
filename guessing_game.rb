class Guess
    
    def guess_higher_or_lower
        @@computer_guess = rand(1..10)
        begin
            puts "Guess a number between 1 and 10:"
            @@user_guess = gets.chomp
            if @@user_guess.to_i > @@computer_guess
                puts "Too high, try again"
            elsif @@user_guess.to_i < @@computer_guess
                puts "Too low, try again"
            elsif @@user_guess.to_i == @@computer_guess
                puts "CORRECT!"
            end
        end while @@user_guess.to_i != @@computer_guess
        
    end
end

guess = Guess.new

guess.guess_higher_or_lower